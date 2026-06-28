.class public final La23;
.super Lpo3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final e:Lpe1;

.field public f:I


# direct methods
.method public constructor <init>(JLuo3;Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lpo3;-><init>(JLuo3;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, La23;->e:Lpe1;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, La23;->f:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpo3;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, La23;->l()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lpo3;->c:Z

    .line 10
    .line 11
    sget-object v0, Lwo3;->c:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lpo3;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0

    .line 22
    :cond_0
    return-void
.end method

.method public final e()Lpe1;
    .locals 0

    .line 1
    iget-object p0, p0, La23;->e:Lpe1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final i()Lpe1;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget v0, p0, La23;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, La23;->f:I

    .line 6
    .line 7
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget v0, p0, La23;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, La23;->f:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lpo3;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(Lbs3;)V
    .locals 0

    .line 1
    sget-object p0, Lwo3;->a:Ljd3;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 4
    .line 5
    const-string p1, "Cannot modify a state object in a read-only snapshot"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw p0
.end method

.method public final u(Lpe1;)Lpo3;
    .locals 6

    .line 1
    invoke-static {p0}, Lwo3;->c(Lpo3;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpk2;

    .line 5
    .line 6
    iget-wide v1, p0, Lpo3;->b:J

    .line 7
    .line 8
    iget-object v3, p0, Lpo3;->a:Luo3;

    .line 9
    .line 10
    iget-object v4, p0, La23;->e:Lpe1;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    invoke-static {p1, v4, v5}, Lwo3;->k(Lpe1;Lpe1;Z)Lpe1;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    move-object v5, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Lpk2;-><init>(JLuo3;Lpe1;Lpo3;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
