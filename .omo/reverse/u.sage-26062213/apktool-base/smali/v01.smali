.class public final Lv01;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public q:Lda0;

.field public r:Ljo1;

.field public s:Ljava/lang/Object;

.field public t:Ler2;

.field public u:Lj21;

.field public v:I

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lx01;

.field public y:I


# direct methods
.method public constructor <init>(Lx01;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv01;->x:Lx01;

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
    .locals 7

    .line 1
    iput-object p1, p0, Lv01;->w:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lv01;->y:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lv01;->y:I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v0, p0, Lv01;->x:Lx01;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v6, p0

    .line 18
    invoke-virtual/range {v0 .. v6}, Lx01;->c(Lda0;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lfh0;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
