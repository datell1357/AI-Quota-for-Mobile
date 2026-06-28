.class public final Lzj;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyj;


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lxj;


# direct methods
.method public constructor <init>(Lxj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lzj;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lzj;->a:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    iput-object p1, p0, Lzj;->b:Lxj;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lem1;Loj;Lul1;)V
    .locals 2

    .line 1
    const-string v0, "http.auth.auth-cache"

    .line 2
    .line 3
    invoke-interface {p3, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lmj;

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lzj;->a:Lorg/apache/commons/logging/Log;

    .line 13
    .line 14
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lzj;->a:Lorg/apache/commons/logging/Log;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Removing from cache \'"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Loj;->d()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, "\' auth scheme for "

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p0, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    check-cast p3, Lgu;

    .line 52
    .line 53
    const-string p0, "HTTP host"

    .line 54
    .line 55
    invoke-static {p1, p0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p3, Lgu;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {p3, p1}, Lgu;->b(Lem1;)Lem1;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final b(Lvm1;Lul1;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lzj;->b:Lxj;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lxj;->b(Lvm1;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c(Ljava/util/Map;Lem1;Lvm1;Lul1;)Ljava/util/LinkedList;
    .locals 3

    .line 1
    const-string v0, "Host"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "http.auth.credentials-provider"

    .line 12
    .line 13
    invoke-interface {p4, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lzk0;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lzj;->a:Lorg/apache/commons/logging/Log;

    .line 22
    .line 23
    const-string p1, "Credentials provider not set in the context"

    .line 24
    .line 25
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    :try_start_0
    iget-object v2, p0, Lzj;->b:Lxj;

    .line 30
    .line 31
    check-cast v2, Lh;

    .line 32
    .line 33
    invoke-virtual {v2, p1, p3, p4}, Lh;->e(Ljava/util/Map;Lvm1;Lul1;)Loj;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Luj; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p0}, Loj;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 42
    .line 43
    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lgj1;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Loj;->i(Lgj1;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lsj;

    .line 57
    .line 58
    iget-object p3, p2, Lem1;->n:Ljava/lang/String;

    .line 59
    .line 60
    iget p2, p2, Lem1;->p:I

    .line 61
    .line 62
    invoke-virtual {p0}, Loj;->c()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-virtual {p0}, Loj;->d()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {p1, p3, p2, p4, v2}, Lsj;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, p1}, Lzk0;->a(Lsj;)Lyk0;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    new-instance p2, Lnj;

    .line 80
    .line 81
    invoke-direct {p2, p0, p1}, Lnj;-><init>(Loj;Lyk0;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    iget-object p2, p0, Lzj;->a:Lorg/apache/commons/logging/Log;

    .line 90
    .line 91
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_1

    .line 96
    .line 97
    iget-object p0, p0, Lzj;->a:Lorg/apache/commons/logging/Log;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p0, p2, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    return-object v0
.end method

.method public final d(Lvm1;Lul1;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lzj;->b:Lxj;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lxj;->a(Lvm1;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e(Lem1;Loj;Lul1;)V
    .locals 4

    .line 1
    const-string v0, "http.auth.auth-cache"

    .line 2
    .line 3
    invoke-interface {p3, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lmj;

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Loj;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Loj;->d()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "Basic"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 30
    :goto_1
    if-eqz v2, :cond_4

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    new-instance v1, Lgu;

    .line 35
    .line 36
    invoke-direct {v1}, Lgu;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p3, v1, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p3, p0, Lzj;->a:Lorg/apache/commons/logging/Log;

    .line 43
    .line 44
    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    iget-object p0, p0, Lzj;->a:Lorg/apache/commons/logging/Log;

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "Caching \'"

    .line 55
    .line 56
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Loj;->d()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "\' auth scheme for "

    .line 67
    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-interface {p0, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    check-cast v1, Lgu;

    .line 82
    .line 83
    invoke-virtual {v1, p1, p2}, Lgu;->c(Lem1;Loj;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method
