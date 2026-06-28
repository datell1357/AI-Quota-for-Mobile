.class public final Lf73;
.super Lp63;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public final a(Lom1;Lul1;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lhv;

    .line 6
    .line 7
    iget-object v0, v0, Lhv;->o:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "CONNECT"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "Authorization"

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string v0, "http.auth.target-scope"

    .line 28
    .line 29
    invoke-interface {p2, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ltj;

    .line 34
    .line 35
    iget-object v1, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string p0, "Target auth state not set in the context"

    .line 40
    .line 41
    invoke-interface {v1, p0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 52
    .line 53
    iget v2, v0, Ltj;->a:I

    .line 54
    .line 55
    invoke-static {v2}, Ldi0;->G(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "Target auth state: "

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lp63;->b(Ltj;Lom1;Lul1;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
