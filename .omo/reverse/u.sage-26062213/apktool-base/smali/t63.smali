.class public final Lt63;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrm1;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lt63;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lt63;->n:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    return-void
.end method


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
    const-string v1, "Keep-Alive"

    .line 16
    .line 17
    const-string v2, "Proxy-Connection"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v2, v1}, Lim1;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {p2}, Lrl1;->c(Lul1;)Lrl1;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "http.route"

    .line 30
    .line 31
    const-class v3, Lym1;

    .line 32
    .line 33
    invoke-virtual {p2, v0, v3}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lua3;

    .line 38
    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lt63;->n:Lorg/apache/commons/logging/Log;

    .line 42
    .line 43
    const-string p1, "Connection route not set in the context"

    .line 44
    .line 45
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-interface {p2}, Lua3;->b()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 v0, 0x1

    .line 54
    if-eq p0, v0, :cond_2

    .line 55
    .line 56
    invoke-interface {p2}, Lua3;->c()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    :cond_2
    const-string p0, "Connection"

    .line 63
    .line 64
    invoke-interface {p1, p0}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    invoke-interface {p1, p0, v1}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-interface {p2}, Lua3;->b()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    const/4 v0, 0x2

    .line 78
    if-ne p0, v0, :cond_4

    .line 79
    .line 80
    invoke-interface {p2}, Lua3;->c()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_4

    .line 85
    .line 86
    invoke-interface {p1, v2}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_4

    .line 91
    .line 92
    invoke-interface {p1, v2, v1}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void
.end method
