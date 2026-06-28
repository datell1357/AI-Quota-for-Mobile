.class public final Lqn4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxo4;


# instance fields
.field public final a:Lrn4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkn4;->a:Lkn4;

    .line 2
    .line 3
    sget v0, Lum4;->a:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lrn4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqn4;->a:Lrn4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lkn4;)Lrn4;
    .locals 2

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcn4;->h(Ljava/io/InputStream;I)Lcn4;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lrn4;->zzd:I

    .line 8
    .line 9
    iget-object p0, p0, Lqn4;->a:Lrn4;

    .line 10
    .line 11
    invoke-virtual {p0}, Lrn4;->i()Lrn4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    sget-object v0, Lzo4;->c:Lzo4;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lzo4;->a(Ljava/lang/Class;)Lcp4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p1, Lcn4;->c:Le50;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Le50;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Le50;-><init>(Lcn4;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lcp4;->f(Ljava/lang/Object;Le50;Lkn4;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p0}, Lcp4;->h(Ljava/lang/Object;)V
    :try_end_0
    .catch Lfo4; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lhp4; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Lcn4;->m(I)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-static {p0, p1}, Lrn4;->q(Lrn4;Z)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    new-instance p0, Lhp4;

    .line 54
    .line 55
    invoke-direct {p0}, Lhp4;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lhp4;->a()Lfo4;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    instance-of p1, p1, Lfo4;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lfo4;

    .line 77
    .line 78
    throw p0

    .line 79
    :cond_2
    throw p0

    .line 80
    :catch_1
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    instance-of p1, p1, Lfo4;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lfo4;

    .line 94
    .line 95
    throw p0

    .line 96
    :cond_3
    new-instance p1, Lfo4;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :catch_2
    move-exception p0

    .line 107
    invoke-virtual {p0}, Lhp4;->a()Lfo4;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    throw p0

    .line 112
    :catch_3
    move-exception p0

    .line 113
    iget-boolean p1, p0, Lfo4;->n:Z

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    new-instance p1, Lfo4;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_4
    throw p0
.end method
