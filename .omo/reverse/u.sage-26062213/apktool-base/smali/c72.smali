.class public abstract Lc72;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt52;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Llc0;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Llc0;-><init>(Lne1;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lc72;->a:Llc0;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lag1;)Lcc4;
    .locals 3

    .line 1
    sget-object v0, Lc72;->a:Llc0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcc4;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const v0, 0x4b1d16e8    # 1.0295016E7f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lag1;->W(I)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lea;->f:Lis3;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    .line 26
    invoke-static {v0}, Lkt4;->y(Landroid/view/View;)Lcc4;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {p0, v1}, Lag1;->p(Z)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    const v2, 0x4b1d128c    # 1.02939E7f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lag1;->W(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0
.end method
