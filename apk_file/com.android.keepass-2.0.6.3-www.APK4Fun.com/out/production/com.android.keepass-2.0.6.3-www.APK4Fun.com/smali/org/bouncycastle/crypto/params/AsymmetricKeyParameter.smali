.class public Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.super Ljava/lang/Object;
.source "AsymmetricKeyParameter.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field privateKey:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "privateKey"    # Z

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    .line 14
    return-void
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    return v0
.end method
