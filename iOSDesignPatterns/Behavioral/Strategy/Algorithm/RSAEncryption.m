//
//  RSAEncryption.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "RSAEncryption.h"
// 填充模式
// kSecPaddingNone 每次加密结果是固定的   kSecPaddingPKCS1 是随机的
#define kTypeOfWrapPadding        kSecPaddingPKCS1

// 公钥/私钥标签
#define kPublicKeyTag            "com.itheima.sample.publickey"
#define kPrivateKeyTag            "com.itheima.sample.privatekey"

static const uint8_t publicKeyIdentifier[]        = kPublicKeyTag;
static const uint8_t privateKeyIdentifier[]        = kPrivateKeyTag;

@interface RSAEncryption() {
    SecKeyRef publicKeyRef;                             // 公钥引用
    SecKeyRef privateKeyRef;                            // 私钥引用
}

@property (nonatomic, retain) NSData *publicTag;        // 公钥标签
@property (nonatomic, retain) NSData *privateTag;       // 私钥标签

@end

@implementation RSAEncryption

- (instancetype)init {
    self = [super init];
    if (self) {
        // 查询密钥的标签
        _privateTag = [[NSData alloc] initWithBytes:privateKeyIdentifier length:sizeof(privateKeyIdentifier)];
        _publicTag = [[NSData alloc] initWithBytes:publicKeyIdentifier length:sizeof(publicKeyIdentifier)];
    }
    return self;
}

-(NSString*)encrypt:(NSString*)data key:(NSString*)key iv:(NSData*)iv{
    NSData* plainData = [data dataUsingEncoding:NSUTF8StringEncoding];
    
    OSStatus sanityCheck = noErr;
    size_t cipherBufferSize = 0;
    size_t keyBufferSize = 0;
    
    NSAssert(plainData != nil, @"明文数据为空");
    NSAssert(publicKeyRef != nil, @"公钥为空");
    
    NSData *cipher = nil;
    uint8_t *cipherBuffer = NULL;
    
    // 计算缓冲区大小
    cipherBufferSize = SecKeyGetBlockSize(publicKeyRef);
    keyBufferSize = [plainData length];
    
    if (kTypeOfWrapPadding == kSecPaddingNone) {
        NSAssert(keyBufferSize <= cipherBufferSize, @"加密内容太大");
    } else {
        NSAssert(keyBufferSize <= (cipherBufferSize - 11), @"加密内容太大");
    }
    
    // 分配缓冲区
    cipherBuffer = malloc(cipherBufferSize * sizeof(uint8_t));
    memset((void *)cipherBuffer, 0x0, cipherBufferSize);
    
    // 使用公钥加密
    sanityCheck = SecKeyEncrypt(publicKeyRef,
                                kTypeOfWrapPadding,
                                (const uint8_t *)[plainData bytes],
                                keyBufferSize,
                                cipherBuffer,
                                &cipherBufferSize
                                );
    
    NSAssert(sanityCheck == noErr, @"加密错误，OSStatus == %d", sanityCheck);
    
    // 生成密文数据
    cipher = [NSData dataWithBytes:(const void *)cipherBuffer length:(NSUInteger)cipherBufferSize];
    
    if (cipherBuffer) free(cipherBuffer);
    
    return [[NSString alloc] initWithData:cipher encoding:NSUTF8StringEncoding];
}

-(NSString*)decrypt:(NSString*)data key:(NSString*)key iv:(NSData*)iv{
    
    NSData* cipherData = [data dataUsingEncoding:NSUTF8StringEncoding];
    
    OSStatus sanityCheck = noErr;
    size_t cipherBufferSize = 0;
    size_t keyBufferSize = 0;
    
    uint8_t *keyBuffer = NULL;
    
    SecKeyRef privateKey = NULL;
    
    privateKey = [self getPrivateKeyRef];
    NSAssert(privateKey != NULL, @"私钥不存在");
    
    // 计算缓冲区大小
    cipherBufferSize = SecKeyGetBlockSize(privateKey);
    keyBufferSize = [cipherData length];
    
    NSAssert(keyBufferSize <= cipherBufferSize, @"解密内容太大");
    
    // 分配缓冲区
    keyBuffer = malloc(keyBufferSize * sizeof(uint8_t));
    memset((void *)keyBuffer, 0x0, keyBufferSize);
    
    // 使用私钥解密
    sanityCheck = SecKeyDecrypt(privateKey,
                                kTypeOfWrapPadding,
                                (const uint8_t *)[cipherData bytes],
                                cipherBufferSize,
                                keyBuffer,
                                &keyBufferSize
                                );
    
    NSAssert1(sanityCheck == noErr, @"解密错误，OSStatus == %d", sanityCheck);
    
    // 生成明文数据
    NSData *keyData = [NSData dataWithBytes:(const void *)keyBuffer length:(NSUInteger)keyBufferSize];
    
    if (keyBuffer) free(keyBuffer);
    
    return [[NSString alloc] initWithData:keyData encoding:NSUTF8StringEncoding];
}

#pragma mark - 密钥处理
/**
 *  生成密钥对
 */
- (void)generateKeyPair:(NSUInteger)keySize {
    OSStatus sanityCheck = noErr;
    publicKeyRef = NULL;
    privateKeyRef = NULL;
    
    NSAssert1((keySize == 512 || keySize == 1024 || keySize == 2048), @"密钥尺寸无效 %tu", keySize);
    
    // 删除当前密钥对
    [self deleteAsymmetricKeys];
    
    // 容器字典
    NSMutableDictionary *privateKeyAttr = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *publicKeyAttr = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *keyPairAttr = [[NSMutableDictionary alloc] init];
    
    // 设置密钥对的顶级字典
    [keyPairAttr setObject:(__bridge id)kSecAttrKeyTypeRSA forKey:(__bridge id)kSecAttrKeyType];
    [keyPairAttr setObject:[NSNumber numberWithUnsignedInteger:keySize] forKey:(__bridge id)kSecAttrKeySizeInBits];
    
    // 设置私钥字典
    [privateKeyAttr setObject:[NSNumber numberWithBool:YES] forKey:(__bridge id)kSecAttrIsPermanent];
    [privateKeyAttr setObject:_privateTag forKey:(__bridge id)kSecAttrApplicationTag];
    
    // 设置公钥字典
    [publicKeyAttr setObject:[NSNumber numberWithBool:YES] forKey:(__bridge id)kSecAttrIsPermanent];
    [publicKeyAttr setObject:_publicTag forKey:(__bridge id)kSecAttrApplicationTag];
    
    // 设置顶级字典属性
    [keyPairAttr setObject:privateKeyAttr forKey:(__bridge id)kSecPrivateKeyAttrs];
    [keyPairAttr setObject:publicKeyAttr forKey:(__bridge id)kSecPublicKeyAttrs];
    
    // SecKeyGeneratePair 返回密钥对引用
    sanityCheck = SecKeyGeneratePair((__bridge CFDictionaryRef)keyPairAttr, &publicKeyRef, &privateKeyRef);
    NSAssert((sanityCheck == noErr && publicKeyRef != NULL && privateKeyRef != NULL), @"生成密钥对失败");
}

/**
 *  加载公钥
 */
- (void)loadPublicKey:(NSString *)publicKeyPath {
    
    NSAssert(publicKeyPath.length != 0, @"公钥路径为空");
    
    // 删除当前公钥
    if (publicKeyRef) CFRelease(publicKeyRef);
    
    // 从一个 DER 表示的证书创建一个证书对象
    NSData *certificateData = [NSData dataWithContentsOfFile:publicKeyPath];
    SecCertificateRef certificateRef = SecCertificateCreateWithData(kCFAllocatorDefault, (__bridge CFDataRef)certificateData);
    NSAssert(certificateRef != NULL, @"公钥文件错误");
    
    // 返回一个默认 X509 策略的公钥对象，使用之后需要调用 CFRelease 释放
    SecPolicyRef policyRef = SecPolicyCreateBasicX509();
    // 包含信任管理信息的结构体
    SecTrustRef trustRef;
    
    // 基于证书和策略创建一个信任管理对象
    OSStatus status = SecTrustCreateWithCertificates(certificateRef, policyRef, &trustRef);
    NSAssert(status == errSecSuccess, @"创建信任管理对象失败");
    
    // 信任结果
    SecTrustResultType trustResult;
    // 评估指定证书和策略的信任管理是否有效
    status = SecTrustEvaluate(trustRef, &trustResult);
    NSAssert(status == errSecSuccess, @"信任评估失败");
    
    // 评估之后返回公钥子证书
    publicKeyRef = SecTrustCopyPublicKey(trustRef);
    NSAssert(publicKeyRef != NULL, @"公钥创建失败");
    
    if (certificateRef) CFRelease(certificateRef);
    if (policyRef) CFRelease(policyRef);
    if (trustRef) CFRelease(trustRef);
}

/**
 *  删除非对称密钥
 */
- (void)deleteAsymmetricKeys {
    OSStatus sanityCheck = noErr;
    NSMutableDictionary *queryPublicKey = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *queryPrivateKey = [[NSMutableDictionary alloc] init];
    
    // 设置公钥查询字典
    [queryPublicKey setObject:(__bridge id)kSecClassKey forKey:(__bridge id)kSecClass];
    [queryPublicKey setObject:_publicTag forKey:(__bridge id)kSecAttrApplicationTag];
    [queryPublicKey setObject:(__bridge id)kSecAttrKeyTypeRSA forKey:(__bridge id)kSecAttrKeyType];
    
    // 设置私钥查询字典
    [queryPrivateKey setObject:(__bridge id)kSecClassKey forKey:(__bridge id)kSecClass];
    [queryPrivateKey setObject:_privateTag forKey:(__bridge id)kSecAttrApplicationTag];
    [queryPrivateKey setObject:(__bridge id)kSecAttrKeyTypeRSA forKey:(__bridge id)kSecAttrKeyType];
    
    // 删除私钥
    sanityCheck = SecItemDelete((__bridge CFDictionaryRef)queryPrivateKey);
    NSAssert1((sanityCheck == noErr || sanityCheck == errSecItemNotFound), @"删除私钥错误，OSStatus == %d", sanityCheck);
    
    // 删除公钥
    sanityCheck = SecItemDelete((__bridge CFDictionaryRef)queryPublicKey);
    NSAssert1((sanityCheck == noErr || sanityCheck == errSecItemNotFound), @"删除公钥错误，OSStatus == %d", sanityCheck);
    
    if (publicKeyRef) CFRelease(publicKeyRef);
    if (privateKeyRef) CFRelease(privateKeyRef);
}

/**
 *  获得私钥引用
 */
- (SecKeyRef)getPrivateKeyRef {
    OSStatus sanityCheck = noErr;
    SecKeyRef privateKeyReference = NULL;
    
    if (privateKeyRef == NULL) {
        NSMutableDictionary * queryPrivateKey = [[NSMutableDictionary alloc] init];
        
        // 设置私钥查询字典
        [queryPrivateKey setObject:(__bridge id)kSecClassKey forKey:(__bridge id)kSecClass];
        [queryPrivateKey setObject:_privateTag forKey:(__bridge id)kSecAttrApplicationTag];
        [queryPrivateKey setObject:(__bridge id)kSecAttrKeyTypeRSA forKey:(__bridge id)kSecAttrKeyType];
        [queryPrivateKey setObject:[NSNumber numberWithBool:YES] forKey:(__bridge id)kSecReturnRef];
        
        // 获得密钥
        sanityCheck = SecItemCopyMatching((__bridge CFDictionaryRef)queryPrivateKey, (CFTypeRef *)&privateKeyReference);
        
        if (sanityCheck != noErr) {
            privateKeyReference = NULL;
        }
    } else {
        privateKeyReference = privateKeyRef;
    }
    
    return privateKeyReference;
}
@end
