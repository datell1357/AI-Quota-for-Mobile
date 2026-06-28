.class public final Lcp0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lsm1;


# static fields
.field public static final c:Lcp0;


# instance fields
.field public final a:I

.field public final b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcp0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcp0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcp0;->c:Lcp0;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 1
    const-class v0, Ljava/net/NoRouteToHostException;

    .line 2
    .line 3
    const-class v1, Ljavax/net/ssl/SSLException;

    .line 4
    .line 5
    const-class v2, Ljava/io/InterruptedIOException;

    .line 6
    .line 7
    const-class v3, Ljava/net/UnknownHostException;

    .line 8
    .line 9
    const-class v4, Ljava/net/ConnectException;

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcp0;->a:I

    .line 23
    .line 24
    new-instance p1, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcp0;->b:Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;ILul1;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcp0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-le p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object p0, p0, Lcp0;->b:Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-static {p3}, Lrl1;->c(Lul1;)Lrl1;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "http.request"

    .line 48
    .line 49
    const-class p2, Lom1;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lom1;

    .line 56
    .line 57
    instance-of p2, p1, Lg73;

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    move-object p2, p1

    .line 62
    check-cast p2, Lg73;

    .line 63
    .line 64
    iget-object p2, p2, Lg73;->n:Lom1;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move-object p2, p1

    .line 68
    :goto_0
    instance-of p3, p2, Lan1;

    .line 69
    .line 70
    if-eqz p3, :cond_5

    .line 71
    .line 72
    check-cast p2, Lan1;

    .line 73
    .line 74
    invoke-interface {p2}, Lan1;->isAborted()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    :goto_1
    return v1

    .line 81
    :cond_5
    instance-of p1, p1, Lzl1;

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    const-string p1, "http.request_sent"

    .line 87
    .line 88
    const-class p2, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Ljava/lang/Boolean;

    .line 95
    .line 96
    if-eqz p0, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_7

    .line 103
    .line 104
    return v1

    .line 105
    :cond_7
    :goto_2
    const/4 p0, 0x1

    .line 106
    return p0
.end method
