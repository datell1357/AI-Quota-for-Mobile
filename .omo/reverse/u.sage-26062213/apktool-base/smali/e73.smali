.class public final Le73;
.super Lp63;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public final a(Lom1;Lul1;)V
    .locals 4

    .line 1
    const-string v0, "Proxy-Authorization"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "http.connection"

    .line 11
    .line 12
    invoke-interface {p2, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lt92;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 21
    .line 22
    const-string p1, "HTTP connection not set in the context"

    .line 23
    .line 24
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-interface {v0}, Lt92;->i()Lym1;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lym1;->c()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :cond_2
    const-string v0, "http.auth.proxy-scope"

    .line 40
    .line 41
    invoke-interface {p2, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ltj;

    .line 46
    .line 47
    iget-object v1, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    const-string p0, "Proxy auth state not set in the context"

    .line 52
    .line 53
    invoke-interface {v1, p0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget-object v1, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 64
    .line 65
    iget v2, v0, Ltj;->a:I

    .line 66
    .line 67
    invoke-static {v2}, Ldi0;->G(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "Proxy auth state: "

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Lp63;->b(Ltj;Lom1;Lul1;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
