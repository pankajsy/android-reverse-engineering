.class public Lorg/bouncycastle/asn1/BEROctetStringGenerator;
.super Lorg/bouncycastle/asn1/BERGenerator;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 14
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 25
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getOctetOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x3e8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOctetOutputStream([B)Ljava/io/OutputStream;
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;-><init>(Lorg/bouncycastle/asn1/BEROctetStringGenerator;[B)V

    return-object v0
.end method
