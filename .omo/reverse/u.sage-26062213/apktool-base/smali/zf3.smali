.class public final Lzf3;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public q:Lv33;

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ldg3;

.field public t:I


# direct methods
.method public constructor <init>(Ldg3;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzf3;->s:Ldg3;

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
    .locals 2

    .line 1
    iput-object p1, p0, Lzf3;->r:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lzf3;->t:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lzf3;->t:I

    .line 9
    .line 10
    iget-object p1, p0, Lzf3;->s:Ldg3;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, p0}, Ldg3;->a(JLfh0;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
