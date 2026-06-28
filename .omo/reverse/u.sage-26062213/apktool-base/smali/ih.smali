.class public final Lih;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgz0;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    packed-switch p2, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lih;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lih;->a:Landroid/content/Context;

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lix;)V
    .locals 8

    .line 1
    new-instance v7, Lnc0;

    .line 2
    .line 3
    const-string v0, "EmojiCompatInitializer"

    .line 4
    .line 5
    invoke-direct {v7, v0}, Lnc0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 11
    .line 12
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    const-wide/16 v3, 0xf

    .line 18
    .line 19
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ll20;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-direct {v1, p0, p1, v0, v2}, Ll20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public b()Lxl0;
    .locals 14

    .line 1
    iget-object p0, p0, Lih;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lxl0;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lca;->e:Lg31;

    .line 11
    .line 12
    invoke-static {v1}, Lxv0;->a(Lj41;)Lm03;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lxl0;->n:Lm03;

    .line 17
    .line 18
    new-instance v1, Lsk0;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, v2, p0}, Lsk0;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lxl0;->o:Lsk0;

    .line 25
    .line 26
    new-instance p0, Lsk0;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, v3, v1}, Lsk0;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lwc2;

    .line 33
    .line 34
    invoke-direct {v4, v1, p0, v3}, Lwc2;-><init>(Lm03;Lm03;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Lxv0;->a(Lj41;)Lm03;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iput-object p0, v0, Lxl0;->p:Lm03;

    .line 42
    .line 43
    iget-object p0, v0, Lxl0;->o:Lsk0;

    .line 44
    .line 45
    new-instance v1, Lt21;

    .line 46
    .line 47
    invoke-direct {v1, p0, v2}, Lt21;-><init>(Lm03;I)V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lxl0;->q:Lt21;

    .line 51
    .line 52
    new-instance v1, Lt21;

    .line 53
    .line 54
    invoke-direct {v1, p0, v3}, Lt21;-><init>(Lm03;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lxv0;->a(Lj41;)Lm03;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object v1, v0, Lxl0;->q:Lt21;

    .line 62
    .line 63
    new-instance v4, Lwc2;

    .line 64
    .line 65
    invoke-direct {v4, v1, p0, v2}, Lwc2;-><init>(Lm03;Lm03;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v4}, Lxv0;->a(Lj41;)Lm03;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    iput-object v8, v0, Lxl0;->r:Lm03;

    .line 73
    .line 74
    new-instance p0, Lg31;

    .line 75
    .line 76
    invoke-direct {p0, v2}, Lg31;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lxl0;->o:Lsk0;

    .line 80
    .line 81
    new-instance v9, Lae3;

    .line 82
    .line 83
    invoke-direct {v9, v1, v8, p0, v3}, Lae3;-><init>(Lm03;Lm03;Lj41;I)V

    .line 84
    .line 85
    .line 86
    iget-object v6, v0, Lxl0;->n:Lm03;

    .line 87
    .line 88
    iget-object v7, v0, Lxl0;->p:Lm03;

    .line 89
    .line 90
    new-instance v5, Lbq0;

    .line 91
    .line 92
    move-object v10, v8

    .line 93
    move-object v13, v9

    .line 94
    move-object v9, v8

    .line 95
    move-object v8, v13

    .line 96
    invoke-direct/range {v5 .. v10}, Lbq0;-><init>(Lm03;Lm03;Lae3;Lm03;Lm03;)V

    .line 97
    .line 98
    .line 99
    move-object p0, v9

    .line 100
    move-object v9, v8

    .line 101
    move-object v8, p0

    .line 102
    move-object p0, v5

    .line 103
    new-instance v5, Lz74;

    .line 104
    .line 105
    move-object v11, v8

    .line 106
    move-object v12, v8

    .line 107
    move-object v10, v6

    .line 108
    move-object v6, v1

    .line 109
    invoke-direct/range {v5 .. v12}, Lz74;-><init>(Lm03;Lm03;Lm03;Lae3;Lm03;Lm03;Lm03;)V

    .line 110
    .line 111
    .line 112
    move-object v6, v10

    .line 113
    new-instance v1, Ldg4;

    .line 114
    .line 115
    invoke-direct {v1, v6, v8, v9, v8}, Ldg4;-><init>(Lm03;Lm03;Lae3;Lm03;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Lae3;

    .line 119
    .line 120
    invoke-direct {v3, p0, v5, v1, v2}, Lae3;-><init>(Lm03;Lm03;Lj41;I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v3}, Lxv0;->a(Lj41;)Lm03;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    iput-object p0, v0, Lxl0;->s:Lm03;

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    const-class v0, Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, " must be set"

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p0
.end method
