.class Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;
.super Ljava/lang/ref/WeakReference;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakRef"
.end annotation


# instance fields
.field private hash:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "q"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 902
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 903
    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;->hash:I

    .line 904
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;->hash:I

    return v0
.end method
