.class public abstract Lorg/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.java"


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static PKCS12PasswordToBytes([C)[B
    .locals 4
    .param p0, "password"    # [C

    .prologue
    .line 139
    array-length v2, p0

    if-lez v2, :cond_0

    .line 142
    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 144
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 146
    mul-int/lit8 v2, v1, 0x2

    aget-char v3, p0, v1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 147
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    new-array v0, v2, [B

    :cond_1
    return-object v0
.end method

.method public static PKCS5PasswordToBytes([C)[B
    .locals 3
    .param p0, "password"    # [C

    .prologue
    .line 106
    array-length v2, p0

    new-array v0, v2, [B

    .line 108
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 110
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v0
.end method

.method public static PKCS5PasswordToUTF8Bytes([C)[B
    .locals 1
    .param p0, "password"    # [C

    .prologue
    .line 126
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public getIterationCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return v0
.end method

.method public getPassword()[B
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    return-object v0
.end method

.method public init([B[BI)V
    .locals 0
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .prologue
    .line 34
    iput-object p1, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    .line 35
    iput-object p2, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    .line 36
    iput p3, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    .line 37
    return-void
.end method
