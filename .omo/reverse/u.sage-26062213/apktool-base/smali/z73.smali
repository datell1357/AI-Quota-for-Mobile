.class public final Lz73;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lwm1;


# instance fields
.field public final n:Lr82;

.field public final o:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lgr0;->c:Lgr0;

    .line 10
    .line 11
    const-string v2, "gzip"

    .line 12
    .line 13
    const-string v3, "ID"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v2, "x-gzip"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lgr0;->b:Lgr0;

    .line 40
    .line 41
    const-string v2, "deflate"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    new-instance v1, Ly43;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Ly43;-><init>(Ljava/util/HashMap;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lz73;->n:Lr82;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lz73;->o:Z

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final b(Lvm1;Lul1;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lvm1;->getEntity()Lxl1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Lrl1;->c(Lul1;)Lrl1;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lrl1;->d()Lv63;

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {v0}, Lxl1;->getContentLength()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    cmp-long p2, v1, v3

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Lxl1;->getContentEncoding()Lgj1;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    invoke-interface {p2}, Lgj1;->a()[Lru;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    array-length v0, p2

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-ge v1, v0, :cond_3

    .line 37
    .line 38
    aget-object v2, p2, v1

    .line 39
    .line 40
    iget-object v3, v2, Lru;->n:Ljava/lang/String;

    .line 41
    .line 42
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v4, p0, Lz73;->n:Lr82;

    .line 49
    .line 50
    invoke-interface {v4, v3}, Lr82;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lgr0;

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    new-instance v2, Lxn0;

    .line 59
    .line 60
    invoke-interface {p1}, Lvm1;->getEntity()Lxl1;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-direct {v2, v3, v4}, Lxn0;-><init>(Lxl1;Lgr0;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v2}, Lvm1;->setEntity(Lxl1;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "Content-Length"

    .line 71
    .line 72
    invoke-interface {p1, v2}, Lim1;->removeHeaders(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v2, "Content-Encoding"

    .line 76
    .line 77
    invoke-interface {p1, v2}, Lim1;->removeHeaders(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "Content-MD5"

    .line 81
    .line 82
    invoke-interface {p1, v2}, Lim1;->removeHeaders(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    const-string v4, "identity"

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    iget-boolean v3, p0, Lz73;->o:Z

    .line 95
    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    new-instance p0, Lcm1;

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p2, "Unsupported Content-Encoding: "

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, v2, Lru;->n:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    return-void
.end method
