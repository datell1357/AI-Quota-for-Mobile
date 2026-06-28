.class public Lg73;
.super Le1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lan1;


# instance fields
.field public final n:Lom1;

.field public o:Ljava/net/URI;

.field public final p:Ljava/lang/String;

.field public q:Lg03;

.field public r:I


# direct methods
.method public constructor <init>(Lom1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Le1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HTTP request"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lg73;->n:Lom1;

    .line 10
    .line 11
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Le1;->setParams(Lkm1;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lim1;->getAllHeaders()[Lgj1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Le1;->setHeaders([Lgj1;)V

    .line 23
    .line 24
    .line 25
    instance-of v0, p1, Lan1;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    check-cast p1, Lan1;

    .line 30
    .line 31
    invoke-interface {p1}, Lan1;->getURI()Ljava/net/URI;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lg73;->o:Ljava/net/URI;

    .line 36
    .line 37
    invoke-interface {p1}, Lan1;->getMethod()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lg73;->p:Ljava/lang/String;

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lg73;->q:Lg03;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :try_start_0
    new-instance v1, Ljava/net/URI;

    .line 52
    .line 53
    move-object v2, v0

    .line 54
    check-cast v2, Lhv;

    .line 55
    .line 56
    iget-object v2, v2, Lhv;->p:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lg73;->o:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    check-cast v0, Lhv;

    .line 64
    .line 65
    iget-object v0, v0, Lhv;->o:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v0, p0, Lg73;->p:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {p1}, Lim1;->getProtocolVersion()Lg03;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lg73;->q:Lg03;

    .line 74
    .line 75
    :goto_0
    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lg73;->r:I

    .line 77
    .line 78
    return-void

    .line 79
    :catch_0
    move-exception p0

    .line 80
    new-instance p1, Le03;

    .line 81
    .line 82
    check-cast v0, Lhv;

    .line 83
    .line 84
    iget-object v0, v0, Lhv;->p:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "Invalid request URI: "

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p1, v0, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le1;->headergroup:Lij1;

    .line 2
    .line 3
    iget-object v0, v0, Lij1;->n:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lg73;->n:Lom1;

    .line 9
    .line 10
    invoke-interface {v0}, Lim1;->getAllHeaders()[Lgj1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Le1;->setHeaders([Lgj1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg73;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProtocolVersion()Lg03;
    .locals 1

    .line 1
    iget-object v0, p0, Lg73;->q:Lg03;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Le1;->getParams()Lkm1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lis0;->D(Lkm1;)Lg03;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lg73;->q:Lg03;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lg73;->q:Lg03;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getRequestLine()Ld73;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lg73;->getProtocolVersion()Lg03;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lg73;->o:Ljava/net/URI;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    :cond_1
    const-string v1, "/"

    .line 24
    .line 25
    :cond_2
    new-instance v2, Lhv;

    .line 26
    .line 27
    iget-object p0, p0, Lg73;->p:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v2, p0, v1, v0}, Lhv;-><init>(Ljava/lang/String;Ljava/lang/String;Lg03;)V

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method public final getURI()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lg73;->o:Ljava/net/URI;

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
