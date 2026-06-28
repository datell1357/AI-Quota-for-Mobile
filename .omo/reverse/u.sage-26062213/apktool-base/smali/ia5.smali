.class public final Lia5;
.super Lj05;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public c:Lrk4;

.field public d:Z

.field public final e:Lgt4;

.field public final f:Lx23;

.field public final g:Lpc4;


# direct methods
.method public constructor <init>(Lr45;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lj05;-><init>(Lr45;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lia5;->d:Z

    .line 6
    .line 7
    new-instance p1, Lgt4;

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-direct {p1, v0, p0}, Lgt4;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lia5;->e:Lgt4;

    .line 15
    .line 16
    new-instance p1, Lx23;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lx23;-><init>(Lia5;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lia5;->f:Lx23;

    .line 22
    .line 23
    new-instance p1, Lpc4;

    .line 24
    .line 25
    const/16 v0, 0x14

    .line 26
    .line 27
    invoke-direct {p1, v0, p0}, Lpc4;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lia5;->g:Lpc4;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final y()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lia5;->c:Lrk4;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lrk4;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lrk4;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lia5;->c:Lrk4;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
