.class public final Ln23;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public q:Lx63;

.field public r:Ljo1;

.field public s:Lj21;

.field public t:Lao1;

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Lo23;

.field public w:I


# direct methods
.method public constructor <init>(Lo23;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln23;->v:Lo23;

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
    iput-object p1, p0, Ln23;->u:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Ln23;->w:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Ln23;->w:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Ln23;->v:Lo23;

    .line 13
    .line 14
    invoke-virtual {v1, p1, v0, p0}, Lo23;->a(Ljo1;ILfh0;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
