.class public final Lku3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lce0;


# instance fields
.field public final n:Ldd1;


# direct methods
.method public constructor <init>(Ldd1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lku3;->n:Ldd1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final G(ZLdf1;Lfh0;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lku3;->n:Ldd1;

    .line 2
    .line 3
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lmu3;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p1, Lou3;

    .line 11
    .line 12
    new-instance v0, Lju3;

    .line 13
    .line 14
    invoke-interface {p0}, Lmu3;->f0()Lee1;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lju3;-><init>(Lee1;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Lou3;-><init>(Lju3;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p1, p3}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lku3;->n:Ldd1;

    .line 2
    .line 3
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lmu3;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
