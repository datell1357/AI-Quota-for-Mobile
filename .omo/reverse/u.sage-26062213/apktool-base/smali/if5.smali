.class public final Lif5;
.super Lwe5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lve5;


# instance fields
.field public final t:Ljava/lang/Exception;

.field public final u:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lve5;Lnf5;ZLqf5;)V
    .locals 1

    .line 1
    sget-object v0, Lmf5;->f:Lnf5;

    .line 2
    .line 3
    invoke-static {p3, v0}, Lnf5;->a(Lnf5;Lnf5;)Lnf5;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const-string v0, "<missing root>:"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    move-object v0, p2

    .line 14
    check-cast v0, Lte5;

    .line 15
    .line 16
    invoke-direct {p0, p1, v0, p3, p5}, Lwe5;-><init>(Ljava/lang/String;Lte5;Lnf5;Lqf5;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Lve5;->a()Ljava/lang/Exception;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lif5;->t:Ljava/lang/Exception;

    .line 24
    .line 25
    iput-boolean p4, p0, Lif5;->u:Z

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Lnf5;Ljava/lang/Exception;Lqf5;)V
    .locals 7

    .line 28
    sget-object v0, Lmf5;->f:Lnf5;

    .line 29
    invoke-static {p4, v0}, Lnf5;->a(Lnf5;Lnf5;)Lnf5;

    move-result-object v5

    const-string p4, "<missing root>:"

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p6

    .line 30
    invoke-direct/range {v1 .. v6}, Lwe5;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lnf5;Lqf5;)V

    iput-object p5, v1, Lif5;->t:Ljava/lang/Exception;

    const/4 p0, 0x0

    iput-boolean p0, v1, Lif5;->u:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lif5;->t:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Lnf5;
    .locals 0

    .line 1
    sget-object p0, Lmf5;->e:Lnf5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q(Ljava/lang/String;Lnf5;Lqf5;)Lrf5;
    .locals 1

    .line 1
    sget-object v0, Lye5;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0, p3}, Lif5;->t(Ljava/lang/String;Lnf5;ZLqf5;)Lif5;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final t(Ljava/lang/String;Lnf5;ZLqf5;)Lif5;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lif5;->u:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lye5;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    :cond_0
    new-instance v2, Lif5;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move-object v4, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v5, p2

    .line 20
    move-object v7, p4

    .line 21
    move v6, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const/4 v1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :goto_2
    invoke-direct/range {v2 .. v7}, Lif5;-><init>(Ljava/lang/String;Lve5;Lnf5;ZLqf5;)V

    .line 29
    .line 30
    .line 31
    return-object v2
.end method
