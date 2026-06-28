.class public final Lxy;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lzy;

.field public s:I


# direct methods
.method public constructor <init>(Lzy;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxy;->r:Lzy;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh0;-><init>(Ldh0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lxy;->q:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lxy;->s:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lxy;->s:I

    .line 9
    .line 10
    iget-object p1, p0, Lxy;->r:Lzy;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lzy;->I(Lzy;Lfh0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lri0;->n:Lri0;

    .line 17
    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance p1, Lz30;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lz30;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method
