.class public final Lao2;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ldh1;

.field public s:I


# direct methods
.method public constructor <init>(Ldh1;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lao2;->r:Ldh1;

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
    iput-object p1, p0, Lao2;->q:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lao2;->s:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lao2;->s:I

    .line 9
    .line 10
    iget-object p1, p0, Lao2;->r:Ldh1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Ldh1;->n(Lv30;Lfh0;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lri0;->n:Lri0;

    .line 17
    .line 18
    return-object p0
.end method
