.class public abstract Lqr2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz82;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lz82;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Llc0;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Llc0;-><init>(Lpe1;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lqr2;->a:Llc0;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Lag1;)Lwa;
    .locals 10

    .line 1
    const v0, 0x10dd5ab0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lag1;->W(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lqr2;->a:Llc0;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lxa;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lag1;->p(Z)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p0, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Lag1;->K()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    sget-object v2, Lrb0;->a:Lbx3;

    .line 34
    .line 35
    if-ne v3, v2, :cond_2

    .line 36
    .line 37
    :cond_1
    new-instance v4, Lwa;

    .line 38
    .line 39
    iget-object v5, v0, Lxa;->a:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v6, v0, Lxa;->b:Las0;

    .line 42
    .line 43
    iget-wide v7, v0, Lxa;->c:J

    .line 44
    .line 45
    iget-object v9, v0, Lxa;->d:Lzr2;

    .line 46
    .line 47
    invoke-direct/range {v4 .. v9}, Lwa;-><init>(Landroid/content/Context;Las0;JLzr2;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object v3, v4

    .line 54
    :cond_2
    check-cast v3, Lwa;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lag1;->p(Z)V

    .line 57
    .line 58
    .line 59
    return-object v3
.end method
