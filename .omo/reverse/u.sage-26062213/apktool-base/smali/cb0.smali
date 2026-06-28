.class public final Lcb0;
.super Lnq0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final c:Lqi0;

.field public d:Ldf1;

.field public e:Lzy;

.field public f:Lir3;

.field public g:Z


# direct methods
.method public constructor <init>(Lqi0;Llx2;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lnq0;-><init>(Lon4;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcb0;->c:Lqi0;

    .line 5
    .line 6
    new-instance p1, Lkc;

    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, p2, v1, v0}, Lkc;-><init>(ILdh0;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcb0;->d:Ldf1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcb0;->e:Lzy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 6
    .line 7
    const-string v2, "onBack cancelled"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Lzy;->g(Ljava/lang/Throwable;Z)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcb0;->f:Lir3;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lbv1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object v1, p0, Lcb0;->e:Lzy;

    .line 25
    .line 26
    iput-object v1, p0, Lcb0;->f:Lir3;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcb0;->g:Z

    .line 30
    .line 31
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcb0;->e:Lzy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcb0;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcb0;->g()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcb0;->e:Lzy;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iput-boolean v2, p0, Lcb0;->g:Z

    .line 19
    .line 20
    sget-object v0, Lvy;->n:Lvy;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    const/4 v4, -0x2

    .line 24
    invoke-static {v4, v3, v0}, Lix;->c(IILvy;)Lzy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcb0;->e:Lzy;

    .line 29
    .line 30
    new-instance v0, Ln;

    .line 31
    .line 32
    const/16 v3, 0xb

    .line 33
    .line 34
    invoke-direct {v0, p0, v1, v3}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    iget-object v4, p0, Lcb0;->c:Lqi0;

    .line 39
    .line 40
    invoke-static {v4, v1, v1, v0, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcb0;->f:Lir3;

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcb0;->e:Lzy;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lzy;->a(Ljava/lang/Throwable;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    iput-boolean v2, p0, Lcb0;->g:Z

    .line 54
    .line 55
    return-void
.end method

.method public final i(Lsp;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb0;->e:Lzy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcb0;->g()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lnq0;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcb0;->g:Z

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    const/4 v1, -0x2

    .line 15
    sget-object v2, Lvy;->n:Lvy;

    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lix;->c(IILvy;)Lzy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcb0;->e:Lzy;

    .line 22
    .line 23
    new-instance v0, Ln;

    .line 24
    .line 25
    const/16 v1, 0xb

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, p0, v2, v1}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    iget-object v3, p0, Lcb0;->c:Lqi0;

    .line 33
    .line 34
    invoke-static {v3, v2, v2, v0, v1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcb0;->f:Lir3;

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final l(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0}, Lnq0;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcb0;->f:Lir3;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lbv1;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcb0;->g()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lnq0;->a:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lup;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lup;->e(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lnq0;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Ltp;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lek2;->g(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
