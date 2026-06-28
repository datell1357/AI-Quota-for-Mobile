.class public final Liv;
.super Ll13;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    sget-object v0, Luf0;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Liv;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll13;-><init>(Ljava/nio/charset/Charset;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Liv;->q:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lyk0;Lom1;)Lgj1;
    .locals 1

    .line 1
    new-instance v0, Lvu;

    .line 2
    .line 3
    invoke-direct {v0}, Lvu;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Liv;->b(Lyk0;Lom1;Lul1;)Lgj1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final b(Lyk0;Lom1;Lul1;)Lgj1;
    .locals 1

    .line 1
    const-string p3, "Credentials"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lyk0;->b()Ljava/security/Principal;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ":"

    .line 23
    .line 24
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lyk0;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string p1, "null"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1}, Lyk0;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    new-instance p1, Loq;

    .line 44
    .line 45
    invoke-direct {p1}, Loq;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-interface {p2}, Lim1;->getParams()Lkm1;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string v0, "http.auth.credential-charset"

    .line 57
    .line 58
    invoke-interface {p2, v0}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Ljava/lang/String;

    .line 63
    .line 64
    if-nez p2, :cond_2

    .line 65
    .line 66
    iget-object p2, p0, Ll13;->p:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    if-eqz p2, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget-object p2, Luf0;->b:Ljava/nio/charset/Charset;

    .line 72
    .line 73
    :goto_1
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    :cond_2
    invoke-static {p3, p2}, Lqn0;->s(Ljava/lang/String;Ljava/lang/String;)[B

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Lnr;->b([B)[B

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Lb40;

    .line 86
    .line 87
    const/16 p3, 0x20

    .line 88
    .line 89
    invoke-direct {p2, p3}, Lb40;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Loj;->g()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    const-string p0, "Proxy-Authorization"

    .line 99
    .line 100
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    const-string p0, "Authorization"

    .line 105
    .line 106
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    const-string p0, ": Basic "

    .line 110
    .line 111
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    array-length p0, p1

    .line 115
    const/4 p3, 0x0

    .line 116
    invoke-virtual {p2, p1, p3, p0}, Lb40;->c([BII)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Lcz;

    .line 120
    .line 121
    invoke-direct {p0, p2}, Lcz;-><init>(Lb40;)V

    .line 122
    .line 123
    .line 124
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "basic"

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Liv;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final i(Lgj1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loj;->i(Lgj1;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Liv;->q:Z

    .line 6
    .line 7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BASIC [complete="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Liv;->q:Z

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "]"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
