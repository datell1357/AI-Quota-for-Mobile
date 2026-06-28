.class public final Lbj0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic d:Led0;

.field public final synthetic e:Ldj0;


# direct methods
.method public constructor <init>(Ldj0;JLjava/lang/Throwable;Ljava/lang/Thread;Led0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbj0;->e:Ldj0;

    .line 5
    .line 6
    iput-wide p2, p0, Lbj0;->a:J

    .line 7
    .line 8
    iput-object p4, p0, Lbj0;->b:Ljava/lang/Throwable;

    .line 9
    .line 10
    iput-object p5, p0, Lbj0;->c:Ljava/lang/Thread;

    .line 11
    .line 12
    iput-object p6, p0, Lbj0;->d:Led0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    iget-wide v2, p0, Lbj0;->a:J

    .line 4
    .line 5
    div-long v0, v2, v0

    .line 6
    .line 7
    iget-object v4, p0, Lbj0;->e:Ldj0;

    .line 8
    .line 9
    invoke-virtual {v4}, Ldj0;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    const-string v6, "FirebaseCrashlytics"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    const-string p0, "Tried to write a fatal exception while no session was open."

    .line 19
    .line 20
    invoke-static {v6, p0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    invoke-static {v7}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    iget-object v8, v4, Ldj0;->c:Lgw4;

    .line 29
    .line 30
    invoke-virtual {v8}, Lgw4;->j()V

    .line 31
    .line 32
    .line 33
    iget-object v9, v4, Ldj0;->m:Lga0;

    .line 34
    .line 35
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v8, "Persisting fatal event for session "

    .line 39
    .line 40
    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const/4 v10, 0x2

    .line 45
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    if-eqz v10, :cond_1

    .line 50
    .line 51
    invoke-static {v6, v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance v13, Ls21;

    .line 55
    .line 56
    sget-object v8, Lh01;->n:Lh01;

    .line 57
    .line 58
    invoke-direct {v13, v5, v0, v1, v8}, Ls21;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 59
    .line 60
    .line 61
    const-string v12, "crash"

    .line 62
    .line 63
    const/4 v14, 0x1

    .line 64
    iget-object v10, p0, Lbj0;->b:Ljava/lang/Throwable;

    .line 65
    .line 66
    iget-object v11, p0, Lbj0;->c:Ljava/lang/Thread;

    .line 67
    .line 68
    invoke-virtual/range {v9 .. v14}, Lga0;->n(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ls21;Z)V

    .line 69
    .line 70
    .line 71
    const-string v0, ".ae"

    .line 72
    .line 73
    :try_start_0
    iget-object v1, v4, Ldj0;->g:Lq51;

    .line 74
    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v2, Ljava/io/File;

    .line 91
    .line 92
    iget-object v1, v1, Lq51;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 107
    .line 108
    const-string v1, "Create new file failed."

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "Could not create app exception marker file."

    .line 116
    .line 117
    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    :goto_0
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lbj0;->d:Led0;

    .line 122
    .line 123
    invoke-virtual {v4, v0, v1, v0}, Ldj0;->b(ZLed0;Z)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Li00;

    .line 127
    .line 128
    invoke-direct {v0}, Li00;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v0, v0, Li00;->a:Ljava/lang/String;

    .line 132
    .line 133
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-virtual {v4, v0, v2}, Ldj0;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v4, Ldj0;->b:Lbm0;

    .line 139
    .line 140
    invoke-virtual {v0}, Lbm0;->a()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_3

    .line 145
    .line 146
    invoke-static {v7}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, v1, Led0;->i:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lpw3;

    .line 160
    .line 161
    iget-object v0, v0, Lpw3;->a:Lef5;

    .line 162
    .line 163
    iget-object v1, v4, Ldj0;->e:Leh;

    .line 164
    .line 165
    iget-object v1, v1, Leh;->o:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v1, Lqk0;

    .line 168
    .line 169
    new-instance v2, Ldh1;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object p0, v2, Ldh1;->n:Ljava/lang/Object;

    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Lef5;->l(Ljava/util/concurrent/Executor;Lwt3;)Lef5;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    :goto_1
    return-object p0
.end method
