.class public Lorg/bouncycastle/asn1/util/DERDump;
.super Lorg/bouncycastle/asn1/util/ASN1Dump;
.source "DERDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/asn1/util/ASN1Dump;-><init>()V

    return-void
.end method

.method public static dumpAsString(Lorg/bouncycastle/asn1/DEREncodable;)Ljava/lang/String;
    .locals 4
    .param p0, "obj"    # Lorg/bouncycastle/asn1/DEREncodable;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpAsString(Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # Lorg/bouncycastle/asn1/DERObject;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v0}, Lorg/bouncycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
