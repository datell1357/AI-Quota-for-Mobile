.class public abstract Lnk1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyp3;


# instance fields
.field public final n:Lcn1;

.field public final o:Lcc1;

.field public p:Z

.field public final synthetic q:Lsk1;


# direct methods
.method public constructor <init>(Lsk1;Lcn1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnk1;->q:Lsk1;

    .line 8
    .line 9
    iput-object p2, p0, Lnk1;->n:Lcn1;

    .line 10
    .line 11
    new-instance p2, Lcc1;

    .line 12
    .line 13
    iget-object p1, p1, Lsk1;->c:Leh;

    .line 14
    .line 15
    iget-object p1, p1, Leh;->p:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ld23;

    .line 18
    .line 19
    iget-object p1, p1, Ld23;->n:Lyp3;

    .line 20
    .line 21
    invoke-interface {p1}, Lyp3;->g()Lmz3;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Lcc1;-><init>(Lmz3;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lnk1;->o:Lcc1;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final b(Lkj1;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnk1;->q:Lsk1;

    .line 5
    .line 6
    iget v1, v0, Lsk1;->d:I

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x5

    .line 13
    if-ne v1, v3, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lnk1;->o:Lcc1;

    .line 16
    .line 17
    iget-object v3, v1, Lcc1;->e:Lmz3;

    .line 18
    .line 19
    sget-object v4, Lmz3;->d:Llz3;

    .line 20
    .line 21
    iput-object v4, v1, Lcc1;->e:Lmz3;

    .line 22
    .line 23
    invoke-virtual {v3}, Lmz3;->a()Lmz3;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lmz3;->b()Lmz3;

    .line 27
    .line 28
    .line 29
    iput v2, v0, Lsk1;->d:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lkj1;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lsk1;->a:Lio2;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lio2;->j:Lmj1;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lnk1;->n:Lcn1;

    .line 46
    .line 47
    invoke-static {v0, p0, p1}, Ldm1;->b(Lmj1;Lcn1;Lkj1;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    const-string p0, "state: "

    .line 52
    .line 53
    iget p1, v0, Lsk1;->d:I

    .line 54
    .line 55
    invoke-static {p1, p0}, Lp61;->d(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final g()Lmz3;
    .locals 0

    .line 1
    iget-object p0, p0, Lnk1;->o:Lcc1;

    .line 2
    .line 3
    return-object p0
.end method

.method public l(JLsy;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lnk1;->q:Lsk1;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lsk1;->c:Leh;

    .line 7
    .line 8
    iget-object v1, v1, Leh;->p:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ld23;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2, p3}, Ld23;->l(JLsy;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-wide p0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    iget-object p2, v0, Lsk1;->b:Lx21;

    .line 19
    .line 20
    invoke-interface {p2}, Lx21;->k()V

    .line 21
    .line 22
    .line 23
    sget-object p2, Lsk1;->f:Lkj1;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lnk1;->b(Lkj1;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
