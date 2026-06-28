.class public Lum1;
.super Le1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lan1;


# instance fields
.field public final n:Lom1;

.field public final o:Lem1;

.field public final p:Ljava/lang/String;

.field public q:Lhv;

.field public final r:Lg03;

.field public s:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lem1;Lom1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HTTP request"

    .line 5
    .line 6
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lum1;->n:Lom1;

    .line 10
    .line 11
    iput-object p1, p0, Lum1;->o:Lem1;

    .line 12
    .line 13
    invoke-interface {p2}, Lom1;->getRequestLine()Ld73;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lhv;

    .line 18
    .line 19
    iget-object p1, p1, Lhv;->n:Lg03;

    .line 20
    .line 21
    iput-object p1, p0, Lum1;->r:Lg03;

    .line 22
    .line 23
    invoke-interface {p2}, Lom1;->getRequestLine()Ld73;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lhv;

    .line 28
    .line 29
    iget-object p1, p1, Lhv;->o:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p1, p0, Lum1;->p:Ljava/lang/String;

    .line 32
    .line 33
    instance-of p1, p2, Lan1;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    move-object p1, p2

    .line 38
    check-cast p1, Lan1;

    .line 39
    .line 40
    invoke-interface {p1}, Lan1;->getURI()Ljava/net/URI;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lum1;->s:Ljava/net/URI;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lum1;->s:Ljava/net/URI;

    .line 49
    .line 50
    :goto_0
    invoke-interface {p2}, Lim1;->getAllHeaders()[Lgj1;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Le1;->setHeaders([Lgj1;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a()Lom1;
    .locals 0

    .line 1
    iget-object p0, p0, Lum1;->n:Lom1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lum1;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParams()Lkm1;
    .locals 1

    .line 1
    iget-object v0, p0, Le1;->params:Lkm1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lum1;->n:Lom1;

    .line 6
    .line 7
    invoke-interface {v0}, Lim1;->getParams()Lkm1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkm1;->b()Lkm1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Le1;->params:Lkm1;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Le1;->params:Lkm1;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getProtocolVersion()Lg03;
    .locals 1

    .line 1
    iget-object v0, p0, Lum1;->r:Lg03;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lum1;->n:Lom1;

    .line 7
    .line 8
    invoke-interface {p0}, Lim1;->getProtocolVersion()Lg03;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getRequestLine()Ld73;
    .locals 4

    .line 1
    iget-object v0, p0, Lum1;->q:Lhv;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lum1;->s:Ljava/net/URI;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lum1;->n:Lom1;

    .line 15
    .line 16
    invoke-interface {v0}, Lom1;->getRequestLine()Ld73;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lhv;

    .line 21
    .line 22
    iget-object v0, v0, Lhv;->p:Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    :cond_1
    const-string v0, "/"

    .line 33
    .line 34
    :cond_2
    new-instance v1, Lhv;

    .line 35
    .line 36
    iget-object v2, p0, Lum1;->p:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Lum1;->getProtocolVersion()Lg03;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v1, v2, v0, v3}, Lhv;-><init>(Ljava/lang/String;Ljava/lang/String;Lg03;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lum1;->q:Lhv;

    .line 46
    .line 47
    :cond_3
    iget-object p0, p0, Lum1;->q:Lhv;

    .line 48
    .line 49
    return-object p0
.end method

.method public final getURI()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lum1;->s:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAborted()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lum1;->getRequestLine()Ld73;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Le1;->headergroup:Lij1;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
