.class public Lap0;
.super Lc1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public static setDefaultHttpParams(Lkm1;)V
    .locals 3

    .line 1
    sget-object v0, Ldn1;->s:Ldn1;

    .line 2
    .line 3
    const-string v1, "HTTP parameters"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "http.protocol.version"

    .line 9
    .line 10
    invoke-interface {p0, v0, v1}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lvi1;->a:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "http.protocol.content-charset"

    .line 20
    .line 21
    invoke-interface {p0, v0, v1}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 22
    .line 23
    .line 24
    move-object v0, p0

    .line 25
    check-cast v0, Lf1;

    .line 26
    .line 27
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    const-string v2, "http.tcp.nodelay"

    .line 30
    .line 31
    invoke-interface {v0, v1, v2}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 32
    .line 33
    .line 34
    const-string v1, "http.socket.buffer-size"

    .line 35
    .line 36
    const/16 v2, 0x2000

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v0, v2, v1}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 43
    .line 44
    .line 45
    const-class v0, Lap0;

    .line 46
    .line 47
    invoke-static {v0}, Lrp;->j(Ljava/lang/Class;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "http.useragent"

    .line 52
    .line 53
    invoke-interface {p0, v0, v1}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public createHttpParams()Lkm1;
    .locals 0

    .line 1
    new-instance p0, Lkv3;

    .line 2
    .line 3
    invoke-direct {p0}, Lxu;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lap0;->setDefaultHttpParams(Lkm1;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public createHttpProcessor()Lyu;
    .locals 2

    .line 1
    new-instance p0, Lyu;

    .line 2
    .line 3
    invoke-direct {p0}, Lyu;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lw63;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Lw63;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lw63;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lw63;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lw63;

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-direct {v0, v1}, Lw63;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lt63;

    .line 34
    .line 35
    invoke-direct {v0}, Lt63;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lm63;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, v1}, Lm63;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lw63;

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-direct {v0, v1}, Lw63;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ln63;

    .line 60
    .line 61
    invoke-direct {v0}, Ln63;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lb83;

    .line 68
    .line 69
    invoke-direct {v0}, Lb83;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lyu;->o:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v0, Lo63;

    .line 78
    .line 79
    invoke-direct {v0}, Lo63;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lf73;

    .line 86
    .line 87
    invoke-direct {v0}, Lp63;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Le73;

    .line 94
    .line 95
    invoke-direct {v0}, Lp63;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lyu;->c(Lrm1;)V

    .line 99
    .line 100
    .line 101
    return-object p0
.end method
