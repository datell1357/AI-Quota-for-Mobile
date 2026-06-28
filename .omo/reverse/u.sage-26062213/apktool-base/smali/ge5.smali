.class public final synthetic Lge5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqi;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lbo;


# direct methods
.method public synthetic constructor <init>(Lbo;I)V
    .locals 0

    .line 1
    iput p2, p0, Lge5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lge5;->b:Lbo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget v0, p0, Lge5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lge5;->b:Lbo;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/net/Uri;

    .line 9
    .line 10
    const-string v0, ".bak"

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :try_start_0
    iget-object p0, p0, Lbo;->f:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lgd5;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lgd5;->b(Landroid/net/Uri;)Led5;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, v1, Led5;->a:Lwd5;

    .line 45
    .line 46
    iget-object v1, v1, Led5;->d:Landroid/net/Uri;

    .line 47
    .line 48
    invoke-interface {v2, v1}, Lwd5;->b(Landroid/net/Uri;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lgd5;->b(Landroid/net/Uri;)Led5;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, p1}, Lgd5;->b(Landroid/net/Uri;)Led5;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget-object p1, v0, Led5;->a:Lwd5;

    .line 63
    .line 64
    iget-object v1, p0, Led5;->a:Lwd5;

    .line 65
    .line 66
    if-ne p1, v1, :cond_0

    .line 67
    .line 68
    iget-object v0, v0, Led5;->d:Landroid/net/Uri;

    .line 69
    .line 70
    iget-object p0, p0, Led5;->d:Landroid/net/Uri;

    .line 71
    .line 72
    invoke-interface {p1, v0, p0}, Lwd5;->e(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Lc70;

    .line 77
    .line 78
    const-string p1, "Cannot rename file across backends"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    sget-object p0, Lap1;->o:Lap1;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :goto_1
    new-instance p1, Lzo1;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ls0;->n(Ljava/lang/Throwable;)Z

    .line 95
    .line 96
    .line 97
    move-object p0, p1

    .line 98
    :goto_2
    return-object p0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lbo;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 102
    .line 103
    invoke-static {v0}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/net/Uri;

    .line 108
    .line 109
    invoke-virtual {p0, v0, p1}, Lbo;->m(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object p0, Lap1;->o:Lap1;

    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    .line 116
    .line 117
    iget-object p1, p0, Lbo;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 120
    .line 121
    invoke-static {p1}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/net/Uri;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lbo;->l(Landroid/net/Uri;)Lsm4;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_2
    iget-object p1, p0, Lbo;->i:Ljava/lang/Object;

    .line 137
    .line 138
    monitor-enter p1

    .line 139
    :try_start_1
    iget-object p0, p0, Lbo;->k:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 142
    .line 143
    monitor-exit p1

    .line 144
    return-object p0

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw p0

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
