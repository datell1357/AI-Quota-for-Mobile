.class public final Lqm1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Wait for continue time"

    .line 5
    .line 6
    const/16 v1, 0xbb8

    .line 7
    .line 8
    invoke-static {v1, v0}, Lw80;->N(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput v1, p0, Lqm1;->a:I

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lom1;Lvm1;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lom1;->getRequestLine()Ld73;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lhv;

    .line 6
    .line 7
    iget-object p0, p0, Lhv;->o:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "HEAD"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Lvm1;->b()Lkv;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget p0, p0, Lkv;->o:I

    .line 23
    .line 24
    const/16 p1, 0xc8

    .line 25
    .line 26
    if-lt p0, p1, :cond_1

    .line 27
    .line 28
    const/16 p1, 0xcc

    .line 29
    .line 30
    if-eq p0, p1, :cond_1

    .line 31
    .line 32
    const/16 p1, 0x130

    .line 33
    .line 34
    if-eq p0, p1, :cond_1

    .line 35
    .line 36
    const/16 p1, 0xcd

    .line 37
    .line 38
    if-eq p0, p1, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public static b(Lom1;Lpl1;Lul1;)Lvm1;
    .locals 2

    .line 1
    const-string p2, "Client connection"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 9
    .line 10
    const/16 v1, 0xc8

    .line 11
    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    return-object p2

    .line 16
    :cond_2
    :goto_1
    invoke-interface {p1}, Lpl1;->M()Lvm1;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2}, Lvm1;->b()Lkv;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v0, v0, Lkv;->o:I

    .line 25
    .line 26
    const/16 v1, 0x64

    .line 27
    .line 28
    if-lt v0, v1, :cond_3

    .line 29
    .line 30
    invoke-static {p0, p2}, Lqm1;->a(Lom1;Lvm1;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lpl1;->C(Lvm1;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    new-instance p0, Le03;

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "Invalid response: "

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2}, Lvm1;->b()Lkv;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public static e(Lvm1;Lnm1;Lul1;)V
    .locals 1

    .line 1
    const-string v0, "HTTP processor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "http.response"

    .line 7
    .line 8
    invoke-interface {p2, p0, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0, p2}, Lwm1;->b(Lvm1;Lul1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static f(Lom1;Lnm1;Lul1;)V
    .locals 1

    .line 1
    const-string v0, "HTTP processor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "http.request"

    .line 7
    .line 8
    invoke-interface {p2, p0, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0, p2}, Lrm1;->a(Lom1;Lul1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c(Lom1;Lpl1;Lul1;)Lvm1;
    .locals 6

    .line 1
    const-string v0, "Client connection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "http.connection"

    .line 7
    .line 8
    invoke-interface {p3, p2, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v1, "http.request_sent"

    .line 14
    .line 15
    invoke-interface {p3, v0, v1}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p1}, Lpl1;->x(Lom1;)V

    .line 19
    .line 20
    .line 21
    instance-of v0, p1, Lzl1;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lhv;

    .line 31
    .line 32
    iget-object v0, v0, Lhv;->n:Lg03;

    .line 33
    .line 34
    move-object v3, p1

    .line 35
    check-cast v3, Lzl1;

    .line 36
    .line 37
    invoke-interface {v3}, Lzl1;->expectContinue()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x1

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    sget-object v4, Ldn1;->r:Ldn1;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Lg03;->a(Lg03;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    invoke-interface {p2}, Lpl1;->flush()V

    .line 53
    .line 54
    .line 55
    iget p0, p0, Lqm1;->a:I

    .line 56
    .line 57
    invoke-interface {p2, p0}, Lpl1;->v(I)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    invoke-interface {p2}, Lpl1;->M()Lvm1;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1, p0}, Lqm1;->a(Lom1;Lvm1;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    invoke-interface {p2, p0}, Lpl1;->C(Lvm1;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-interface {p0}, Lvm1;->b()Lkv;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget p1, p1, Lkv;->o:I

    .line 81
    .line 82
    const/16 v0, 0xc8

    .line 83
    .line 84
    if-ge p1, v0, :cond_2

    .line 85
    .line 86
    const/16 v0, 0x64

    .line 87
    .line 88
    if-ne p1, v0, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-instance p1, Le03;

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p3, "Unexpected response: "

    .line 96
    .line 97
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0}, Lvm1;->b()Lkv;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_2
    const/4 v5, 0x0

    .line 120
    move-object v2, p0

    .line 121
    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    .line 122
    .line 123
    invoke-interface {p2, v3}, Lpl1;->U(Lzl1;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-interface {p2}, Lpl1;->flush()V

    .line 127
    .line 128
    .line 129
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-interface {p3, p0, v1}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v2
.end method

.method public final d(Lom1;Lpl1;Lul1;)Lvm1;
    .locals 1

    .line 1
    const-string v0, "Client connection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lqm1;->c(Lom1;Lpl1;Lul1;)Lvm1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {p1, p2, p3}, Lqm1;->b(Lom1;Lpl1;Lul1;)Lvm1;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcm1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_2
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    return-object p0

    .line 24
    :goto_0
    :try_start_1
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 25
    .line 26
    .line 27
    :catch_3
    throw p0

    .line 28
    :goto_1
    :try_start_2
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 29
    .line 30
    .line 31
    :catch_4
    throw p0

    .line 32
    :goto_2
    :try_start_3
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 33
    .line 34
    .line 35
    :catch_5
    throw p0
.end method
