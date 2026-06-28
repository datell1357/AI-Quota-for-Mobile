.class public final Lt01;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public q:Ljo1;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;

.field public t:Lw33;

.field public u:Lw33;

.field public v:Lw33;

.field public w:Lw33;

.field public synthetic x:Ljava/lang/Object;

.field public final synthetic y:Lx01;

.field public z:I


# direct methods
.method public constructor <init>(Lx01;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt01;->y:Lx01;

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
    .locals 6

    .line 1
    iput-object p1, p0, Lt01;->x:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lt01;->z:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lt01;->z:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v0, p0, Lt01;->y:Lx01;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lx01;->b(Lx01;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lfh0;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
