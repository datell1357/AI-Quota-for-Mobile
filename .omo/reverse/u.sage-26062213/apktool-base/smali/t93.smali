.class public final Lt93;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public A:Lpi1;

.field public B:Ljava/lang/String;

.field public synthetic C:Ljava/lang/Object;

.field public final synthetic D:Lu/sage/worker/RollingWindowWorker;

.field public E:I

.field public q:J

.field public r:Z

.field public s:Z

.field public t:I

.field public u:Landroid/content/Context;

.field public v:Lr50;

.field public w:Ljf;

.field public x:Lp50;

.field public y:Ln8;

.field public z:Lv50;


# direct methods
.method public constructor <init>(Lu/sage/worker/RollingWindowWorker;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt93;->D:Lu/sage/worker/RollingWindowWorker;

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
    iput-object p1, p0, Lt93;->C:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lt93;->E:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lt93;->E:I

    .line 9
    .line 10
    sget-object p1, Lu/sage/worker/RollingWindowWorker;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iget-object v0, p0, Lt93;->D:Lu/sage/worker/RollingWindowWorker;

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v5, p0

    .line 19
    invoke-virtual/range {v0 .. v5}, Lu/sage/worker/RollingWindowWorker;->d(JZILfh0;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
