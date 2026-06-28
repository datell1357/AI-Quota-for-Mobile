.class public final Lu/sage/worker/RollingWindowWorker;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final h:Lwr3;

.field public static final i:Lb23;

.field public static final j:Lwr3;

.field public static final k:Lb23;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu/sage/worker/RollingWindowWorker;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lu/sage/worker/RollingWindowWorker;->h:Lwr3;

    .line 16
    .line 17
    new-instance v1, Lb23;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lb23;-><init>(Lwr3;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lu/sage/worker/RollingWindowWorker;->i:Lb23;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lu/sage/worker/RollingWindowWorker;->j:Lwr3;

    .line 30
    .line 31
    new-instance v1, Lb23;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lb23;-><init>(Lwr3;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lu/sage/worker/RollingWindowWorker;->k:Lb23;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static e(Landroid/content/Context;Ln8;JZI)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ge p5, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p5, p5, 0x1

    .line 6
    .line 7
    sget-object p1, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "handleFailure: Scheduling retry "

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "/2 in 10m."

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lit0;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lez3;->a:Lra3;

    .line 32
    .line 33
    new-array v0, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lra3;->m([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v0, "rolling_window_trigger_timestamp"

    .line 50
    .line 51
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string p2, "force_rolling_window"

    .line 59
    .line 60
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string p2, "rolling_window_retry_count"

    .line 68
    .line 69
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance p2, Lzl0;

    .line 77
    .line 78
    invoke-direct {p2, p1}, Lzl0;-><init>(Ljava/util/LinkedHashMap;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Lbi4;->L(Lzl0;)[B

    .line 82
    .line 83
    .line 84
    new-instance p1, Lnp2;

    .line 85
    .line 86
    const-class p3, Lu/sage/worker/RollingWindowWorker;

    .line 87
    .line 88
    invoke-direct {p1, p3, v1}, Lnp2;-><init>(Ljava/lang/Class;I)V

    .line 89
    .line 90
    .line 91
    const-wide/16 p3, 0xa

    .line 92
    .line 93
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 94
    .line 95
    invoke-virtual {p1, p3, p4, p5}, Lnp2;->b(JLjava/util/concurrent/TimeUnit;)Lnp2;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p3, p1, Lnp2;->c:Log4;

    .line 100
    .line 101
    iput-object p2, p3, Log4;->e:Lzl0;

    .line 102
    .line 103
    const-string p2, "rolling_window_retry"

    .line 104
    .line 105
    iget-object p3, p1, Lnp2;->d:Ljava/util/LinkedHashSet;

    .line 106
    .line 107
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lnp2;->a()Lmg4;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lop2;

    .line 115
    .line 116
    invoke-static {p0}, Leg4;->c(Landroid/content/Context;)Leg4;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p2, "rolling_window_work_retry"

    .line 121
    .line 122
    invoke-virtual {p0, p2, p1}, Leg4;->b(Ljava/lang/String;Lop2;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_0
    const-string p0, "handleFailure: Max retries (2) reached. Giving up."

    .line 127
    .line 128
    invoke-static {p0}, Lit0;->a(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-object p0, Lez3;->a:Lra3;

    .line 132
    .line 133
    new-array p4, v1, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {p4}, Lra3;->f([Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const-string p0, "trigger_timestamp"

    .line 142
    .line 143
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const-string p2, "rolling_window_gave_up"

    .line 155
    .line 156
    invoke-virtual {p1, p2, p0}, Ln8;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method


# virtual methods
.method public final c(Ldh0;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p1, Lr93;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lr93;

    .line 7
    .line 8
    iget v1, v0, Lr93;->s:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lr93;->s:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lr93;

    .line 22
    .line 23
    check-cast p1, Lfh0;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lr93;-><init>(Lu/sage/worker/RollingWindowWorker;Lfh0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object p1, v6, Lr93;->q:Ljava/lang/Object;

    .line 30
    .line 31
    iget v0, v6, Lr93;->s:I

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    sget-object v8, Lu/sage/worker/RollingWindowWorker;->h:Lwr3;

    .line 35
    .line 36
    sget-object v9, Lu/sage/worker/RollingWindowWorker;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    move-object v1, p0

    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p1, v0

    .line 53
    move-object v1, p0

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v10

    .line 62
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lv42;->b:Landroidx/work/WorkerParameters;

    .line 66
    .line 67
    iget-object v0, p1, Landroidx/work/WorkerParameters;->b:Lzl0;

    .line 68
    .line 69
    iget-object p1, p1, Landroidx/work/WorkerParameters;->b:Lzl0;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const-wide/16 v2, -0x1

    .line 75
    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v0, v0, Lzl0;->a:Ljava/util/HashMap;

    .line 81
    .line 82
    const-string v3, "rolling_window_trigger_timestamp"

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    instance-of v3, v0, Ljava/lang/Long;

    .line 89
    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    move-object v2, v0

    .line 93
    :cond_3
    check-cast v2, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    .line 104
    iget-object v4, p1, Lzl0;->a:Ljava/util/HashMap;

    .line 105
    .line 106
    const-string v5, "force_rolling_window"

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 113
    .line 114
    if-eqz v5, :cond_4

    .line 115
    .line 116
    move-object v0, v4

    .line 117
    :cond_4
    check-cast v0, Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object p1, p1, Lzl0;->a:Ljava/util/HashMap;

    .line 131
    .line 132
    const-string v5, "rolling_window_retry_count"

    .line 133
    .line 134
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    instance-of v5, p1, Ljava/lang/Integer;

    .line 139
    .line 140
    if-eqz v5, :cond_5

    .line 141
    .line 142
    move-object v0, p1

    .line 143
    :cond_5
    check-cast v0, Ljava/lang/Number;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    sget-object p1, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 150
    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v0, "doWork: START ts="

    .line 154
    .line 155
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, ", force="

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, ", retry="

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p1}, Lit0;->a(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget-object p1, Lez3;->a:Lra3;

    .line 185
    .line 186
    new-array v0, v11, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lra3;->h([Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v11, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_6

    .line 199
    .line 200
    const-string p0, "doWork: Skipped \u2014 already running (CAS failed)"

    .line 201
    .line 202
    invoke-static {p0}, Lit0;->a(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-array p0, v11, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    new-instance p0, Lt42;

    .line 211
    .line 212
    invoke-direct {p0}, Lt42;-><init>()V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v10, p1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    :try_start_1
    iput v1, v6, Lr93;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 225
    .line 226
    move-object v1, p0

    .line 227
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lu/sage/worker/RollingWindowWorker;->d(JZILfh0;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    sget-object p1, Lri0;->n:Lri0;

    .line 232
    .line 233
    if-ne p0, p1, :cond_7

    .line 234
    .line 235
    return-object p1

    .line 236
    :cond_7
    :goto_2
    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    .line 238
    .line 239
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v10, p0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    sget-object p0, Lzu0;->a:Lzp0;

    .line 248
    .line 249
    sget-object p0, Llp0;->p:Llp0;

    .line 250
    .line 251
    invoke-static {p0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    new-instance p1, Ls93;

    .line 256
    .line 257
    invoke-direct {p1, v1, v10}, Ls93;-><init>(Lu/sage/worker/RollingWindowWorker;Ldh0;)V

    .line 258
    .line 259
    .line 260
    invoke-static {p0, v10, v10, p1, v7}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 261
    .line 262
    .line 263
    new-instance p0, Lt42;

    .line 264
    .line 265
    invoke-direct {p0}, Lt42;-><init>()V

    .line 266
    .line 267
    .line 268
    return-object p0

    .line 269
    :catchall_1
    move-exception v0

    .line 270
    :goto_3
    move-object p1, v0

    .line 271
    goto :goto_4

    .line 272
    :catchall_2
    move-exception v0

    .line 273
    move-object v1, p0

    .line 274
    goto :goto_3

    .line 275
    :goto_4
    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 276
    .line 277
    .line 278
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8, v10, p0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    sget-object p0, Lzu0;->a:Lzp0;

    .line 287
    .line 288
    sget-object p0, Llp0;->p:Llp0;

    .line 289
    .line 290
    invoke-static {p0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    new-instance v0, Ls93;

    .line 295
    .line 296
    invoke-direct {v0, v1, v10}, Ls93;-><init>(Lu/sage/worker/RollingWindowWorker;Ldh0;)V

    .line 297
    .line 298
    .line 299
    invoke-static {p0, v10, v10, v0, v7}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 300
    .line 301
    .line 302
    throw p1
.end method

.method public final d(JZILfh0;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    instance-of v1, v0, Lt93;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lt93;

    .line 11
    .line 12
    iget v2, v1, Lt93;->E:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v2, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v4

    .line 21
    iput v2, v1, Lt93;->E:I

    .line 22
    .line 23
    :goto_0
    move-object v11, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lt93;

    .line 26
    .line 27
    invoke-direct {v1, v3, v0}, Lt93;-><init>(Lu/sage/worker/RollingWindowWorker;Lfh0;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v11, Lt93;->C:Ljava/lang/Object;

    .line 32
    .line 33
    iget v1, v11, Lt93;->E:I

    .line 34
    .line 35
    const/4 v12, 0x5

    .line 36
    const/4 v2, 0x4

    .line 37
    const/4 v4, 0x3

    .line 38
    const/4 v5, 0x2

    .line 39
    const/4 v6, 0x1

    .line 40
    sget-object v13, Lt64;->a:Lt64;

    .line 41
    .line 42
    const/4 v14, 0x0

    .line 43
    sget-object v15, Lri0;->n:Lri0;

    .line 44
    .line 45
    if-eqz v1, :cond_6

    .line 46
    .line 47
    if-eq v1, v6, :cond_5

    .line 48
    .line 49
    if-eq v1, v5, :cond_4

    .line 50
    .line 51
    if-eq v1, v4, :cond_3

    .line 52
    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    if-ne v1, v12, :cond_1

    .line 56
    .line 57
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-object v13

    .line 61
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v14

    .line 67
    :cond_2
    iget-boolean v1, v11, Lt93;->s:Z

    .line 68
    .line 69
    iget v2, v11, Lt93;->t:I

    .line 70
    .line 71
    iget-boolean v4, v11, Lt93;->r:Z

    .line 72
    .line 73
    iget-wide v5, v11, Lt93;->q:J

    .line 74
    .line 75
    iget-object v8, v11, Lt93;->B:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v9, v11, Lt93;->A:Lpi1;

    .line 78
    .line 79
    iget-object v10, v11, Lt93;->z:Lv50;

    .line 80
    .line 81
    iget-object v12, v11, Lt93;->y:Ln8;

    .line 82
    .line 83
    iget-object v14, v11, Lt93;->u:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move-wide/from16 v22, v5

    .line 89
    .line 90
    move v5, v4

    .line 91
    move-wide/from16 v3, v22

    .line 92
    .line 93
    move v6, v2

    .line 94
    move-object v2, v12

    .line 95
    move v12, v1

    .line 96
    move-object v1, v14

    .line 97
    :goto_2
    move-object/from16 v16, v8

    .line 98
    .line 99
    move-object/from16 v20, v9

    .line 100
    .line 101
    move-object v9, v10

    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :cond_3
    iget-boolean v1, v11, Lt93;->s:Z

    .line 105
    .line 106
    iget v4, v11, Lt93;->t:I

    .line 107
    .line 108
    iget-boolean v5, v11, Lt93;->r:Z

    .line 109
    .line 110
    iget-wide v8, v11, Lt93;->q:J

    .line 111
    .line 112
    iget-object v6, v11, Lt93;->A:Lpi1;

    .line 113
    .line 114
    iget-object v10, v11, Lt93;->z:Lv50;

    .line 115
    .line 116
    iget-object v12, v11, Lt93;->y:Ln8;

    .line 117
    .line 118
    iget-object v14, v11, Lt93;->w:Ljf;

    .line 119
    .line 120
    iget-object v2, v11, Lt93;->u:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    move v7, v4

    .line 126
    :goto_3
    move-object v3, v12

    .line 127
    move-object/from16 v22, v6

    .line 128
    .line 129
    move v6, v5

    .line 130
    move-wide v4, v8

    .line 131
    move-object/from16 v9, v22

    .line 132
    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :cond_4
    iget-boolean v1, v11, Lt93;->s:Z

    .line 136
    .line 137
    iget v2, v11, Lt93;->t:I

    .line 138
    .line 139
    iget-boolean v5, v11, Lt93;->r:Z

    .line 140
    .line 141
    iget-wide v8, v11, Lt93;->q:J

    .line 142
    .line 143
    iget-object v6, v11, Lt93;->A:Lpi1;

    .line 144
    .line 145
    iget-object v10, v11, Lt93;->z:Lv50;

    .line 146
    .line 147
    iget-object v12, v11, Lt93;->y:Ln8;

    .line 148
    .line 149
    iget-object v14, v11, Lt93;->x:Lp50;

    .line 150
    .line 151
    iget-object v4, v11, Lt93;->w:Ljf;

    .line 152
    .line 153
    iget-object v7, v11, Lt93;->u:Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    move v0, v1

    .line 159
    const/4 v1, 0x0

    .line 160
    goto/16 :goto_6

    .line 161
    .line 162
    :cond_5
    iget v1, v11, Lt93;->t:I

    .line 163
    .line 164
    iget-boolean v2, v11, Lt93;->r:Z

    .line 165
    .line 166
    iget-wide v6, v11, Lt93;->q:J

    .line 167
    .line 168
    iget-object v4, v11, Lt93;->A:Lpi1;

    .line 169
    .line 170
    iget-object v8, v11, Lt93;->z:Lv50;

    .line 171
    .line 172
    iget-object v9, v11, Lt93;->y:Ln8;

    .line 173
    .line 174
    iget-object v10, v11, Lt93;->x:Lp50;

    .line 175
    .line 176
    iget-object v12, v11, Lt93;->w:Ljf;

    .line 177
    .line 178
    iget-object v14, v11, Lt93;->v:Lr50;

    .line 179
    .line 180
    iget-object v5, v11, Lt93;->u:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    move/from16 v22, v1

    .line 186
    .line 187
    move-object v1, v0

    .line 188
    move/from16 v0, v22

    .line 189
    .line 190
    move-object/from16 v22, v10

    .line 191
    .line 192
    move v10, v2

    .line 193
    move-object v2, v9

    .line 194
    move-object/from16 v9, v22

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_6
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v3, Lv42;->a:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    new-instance v14, Lr50;

    .line 206
    .line 207
    invoke-direct {v14, v0}, Lr50;-><init>(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    new-instance v12, Ljf;

    .line 211
    .line 212
    invoke-direct {v12, v0, v6}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lp50;

    .line 216
    .line 217
    invoke-direct {v1, v0}, Lp50;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    const-class v2, Lfn3;

    .line 221
    .line 222
    invoke-static {v0, v2}, Lgg4;->w(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Lfn3;

    .line 227
    .line 228
    check-cast v2, Lvl0;

    .line 229
    .line 230
    iget-object v2, v2, Lvl0;->c:Ll03;

    .line 231
    .line 232
    invoke-interface {v2}, Lm03;->get()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Ln8;

    .line 237
    .line 238
    new-instance v4, Lv50;

    .line 239
    .line 240
    invoke-direct {v4, v0, v2}, Lv50;-><init>(Landroid/content/Context;Ln8;)V

    .line 241
    .line 242
    .line 243
    new-instance v5, Lpi1;

    .line 244
    .line 245
    invoke-direct {v5}, Lpi1;-><init>()V

    .line 246
    .line 247
    .line 248
    iget-object v7, v14, Lps;->f:Lnv3;

    .line 249
    .line 250
    invoke-virtual {v7}, Lnv3;->getValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    check-cast v7, La81;

    .line 255
    .line 256
    iput-object v0, v11, Lt93;->u:Landroid/content/Context;

    .line 257
    .line 258
    iput-object v14, v11, Lt93;->v:Lr50;

    .line 259
    .line 260
    iput-object v12, v11, Lt93;->w:Ljf;

    .line 261
    .line 262
    iput-object v1, v11, Lt93;->x:Lp50;

    .line 263
    .line 264
    iput-object v2, v11, Lt93;->y:Ln8;

    .line 265
    .line 266
    iput-object v4, v11, Lt93;->z:Lv50;

    .line 267
    .line 268
    iput-object v5, v11, Lt93;->A:Lpi1;

    .line 269
    .line 270
    move-wide/from16 v8, p1

    .line 271
    .line 272
    iput-wide v8, v11, Lt93;->q:J

    .line 273
    .line 274
    move/from16 v10, p3

    .line 275
    .line 276
    iput-boolean v10, v11, Lt93;->r:Z

    .line 277
    .line 278
    move-object/from16 v17, v0

    .line 279
    .line 280
    move/from16 v0, p4

    .line 281
    .line 282
    iput v0, v11, Lt93;->t:I

    .line 283
    .line 284
    iput v6, v11, Lt93;->E:I

    .line 285
    .line 286
    invoke-static {v7, v11}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    if-ne v6, v15, :cond_7

    .line 291
    .line 292
    goto/16 :goto_9

    .line 293
    .line 294
    :cond_7
    move-wide/from16 v22, v8

    .line 295
    .line 296
    move-object v9, v1

    .line 297
    move-object v1, v6

    .line 298
    move-wide/from16 v6, v22

    .line 299
    .line 300
    move-object v8, v4

    .line 301
    move-object v4, v5

    .line 302
    move-object/from16 v5, v17

    .line 303
    .line 304
    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_8

    .line 311
    .line 312
    const-string v0, "execute: Aborting \u2014 feature disabled by user."

    .line 313
    .line 314
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    sget-object v0, Lez3;->a:Lra3;

    .line 318
    .line 319
    const/4 v1, 0x0

    .line 320
    new-array v1, v1, [Ljava/lang/Object;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    return-object v13

    .line 329
    :cond_8
    iput-object v5, v11, Lt93;->u:Landroid/content/Context;

    .line 330
    .line 331
    const/4 v3, 0x0

    .line 332
    iput-object v3, v11, Lt93;->v:Lr50;

    .line 333
    .line 334
    iput-object v12, v11, Lt93;->w:Ljf;

    .line 335
    .line 336
    iput-object v9, v11, Lt93;->x:Lp50;

    .line 337
    .line 338
    iput-object v2, v11, Lt93;->y:Ln8;

    .line 339
    .line 340
    iput-object v8, v11, Lt93;->z:Lv50;

    .line 341
    .line 342
    iput-object v4, v11, Lt93;->A:Lpi1;

    .line 343
    .line 344
    iput-wide v6, v11, Lt93;->q:J

    .line 345
    .line 346
    iput-boolean v10, v11, Lt93;->r:Z

    .line 347
    .line 348
    iput v0, v11, Lt93;->t:I

    .line 349
    .line 350
    iput-boolean v1, v11, Lt93;->s:Z

    .line 351
    .line 352
    const/4 v3, 0x2

    .line 353
    iput v3, v11, Lt93;->E:I

    .line 354
    .line 355
    iget-object v3, v14, Lr50;->s:Llm0;

    .line 356
    .line 357
    new-instance v14, Lls;

    .line 358
    .line 359
    move/from16 v16, v0

    .line 360
    .line 361
    move/from16 p1, v1

    .line 362
    .line 363
    const/4 v0, 0x0

    .line 364
    const/4 v1, 0x0

    .line 365
    invoke-direct {v14, v6, v7, v1, v0}, Lls;-><init>(JLdh0;I)V

    .line 366
    .line 367
    .line 368
    invoke-static {v3, v14, v11}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-ne v0, v15, :cond_9

    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_9
    move-object v0, v13

    .line 376
    :goto_5
    if-ne v0, v15, :cond_a

    .line 377
    .line 378
    goto/16 :goto_9

    .line 379
    .line 380
    :cond_a
    move/from16 v0, p1

    .line 381
    .line 382
    move-object v14, v9

    .line 383
    move-object/from16 v22, v12

    .line 384
    .line 385
    move-object v12, v2

    .line 386
    move/from16 v2, v16

    .line 387
    .line 388
    move-wide/from16 v23, v6

    .line 389
    .line 390
    move-object v6, v4

    .line 391
    move-object v7, v5

    .line 392
    move v5, v10

    .line 393
    move-object/from16 v4, v22

    .line 394
    .line 395
    move-object v10, v8

    .line 396
    move-wide/from16 v8, v23

    .line 397
    .line 398
    :goto_6
    iget-object v3, v14, Lxr;->f:Lvq;

    .line 399
    .line 400
    iput-object v7, v11, Lt93;->u:Landroid/content/Context;

    .line 401
    .line 402
    iput-object v1, v11, Lt93;->v:Lr50;

    .line 403
    .line 404
    iput-object v4, v11, Lt93;->w:Ljf;

    .line 405
    .line 406
    iput-object v1, v11, Lt93;->x:Lp50;

    .line 407
    .line 408
    iput-object v12, v11, Lt93;->y:Ln8;

    .line 409
    .line 410
    iput-object v10, v11, Lt93;->z:Lv50;

    .line 411
    .line 412
    iput-object v6, v11, Lt93;->A:Lpi1;

    .line 413
    .line 414
    iput-wide v8, v11, Lt93;->q:J

    .line 415
    .line 416
    iput-boolean v5, v11, Lt93;->r:Z

    .line 417
    .line 418
    iput v2, v11, Lt93;->t:I

    .line 419
    .line 420
    iput-boolean v0, v11, Lt93;->s:Z

    .line 421
    .line 422
    const/4 v1, 0x3

    .line 423
    iput v1, v11, Lt93;->E:I

    .line 424
    .line 425
    invoke-static {v3, v11}, Lqj0;->J(La81;Lfh0;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    if-ne v1, v15, :cond_b

    .line 430
    .line 431
    goto/16 :goto_9

    .line 432
    .line 433
    :cond_b
    move-object v3, v1

    .line 434
    move v1, v0

    .line 435
    move-object v0, v3

    .line 436
    move-object v3, v7

    .line 437
    move v7, v2

    .line 438
    move-object v2, v3

    .line 439
    move-object v14, v4

    .line 440
    goto/16 :goto_3

    .line 441
    .line 442
    :goto_7
    move-object v8, v0

    .line 443
    check-cast v8, Ljava/lang/String;

    .line 444
    .line 445
    if-eqz v8, :cond_11

    .line 446
    .line 447
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-nez v0, :cond_c

    .line 452
    .line 453
    goto/16 :goto_a

    .line 454
    .line 455
    :cond_c
    iput-object v2, v11, Lt93;->u:Landroid/content/Context;

    .line 456
    .line 457
    const/4 v0, 0x0

    .line 458
    iput-object v0, v11, Lt93;->v:Lr50;

    .line 459
    .line 460
    iput-object v0, v11, Lt93;->w:Ljf;

    .line 461
    .line 462
    iput-object v0, v11, Lt93;->x:Lp50;

    .line 463
    .line 464
    iput-object v3, v11, Lt93;->y:Ln8;

    .line 465
    .line 466
    iput-object v10, v11, Lt93;->z:Lv50;

    .line 467
    .line 468
    iput-object v9, v11, Lt93;->A:Lpi1;

    .line 469
    .line 470
    iput-object v8, v11, Lt93;->B:Ljava/lang/String;

    .line 471
    .line 472
    iput-wide v4, v11, Lt93;->q:J

    .line 473
    .line 474
    iput-boolean v6, v11, Lt93;->r:Z

    .line 475
    .line 476
    iput v7, v11, Lt93;->t:I

    .line 477
    .line 478
    iput-boolean v1, v11, Lt93;->s:Z

    .line 479
    .line 480
    const/4 v0, 0x4

    .line 481
    iput v0, v11, Lt93;->E:I

    .line 482
    .line 483
    invoke-virtual {v14, v11}, Ln1;->b(Lfh0;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    if-ne v0, v15, :cond_d

    .line 488
    .line 489
    goto/16 :goto_9

    .line 490
    .line 491
    :cond_d
    move v12, v1

    .line 492
    move-object v1, v2

    .line 493
    move-object v2, v3

    .line 494
    move-wide v3, v4

    .line 495
    move v5, v6

    .line 496
    move v6, v7

    .line 497
    goto/16 :goto_2

    .line 498
    .line 499
    :goto_8
    move-object/from16 v18, v0

    .line 500
    .line 501
    check-cast v18, Lw3;

    .line 502
    .line 503
    invoke-virtual/range {v18 .. v18}, Lw3;->l()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-nez v0, :cond_e

    .line 508
    .line 509
    const-string v0, "execute: Aborting \u2014 not logged in."

    .line 510
    .line 511
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    sget-object v0, Lez3;->a:Lra3;

    .line 515
    .line 516
    const/4 v1, 0x0

    .line 517
    new-array v1, v1, [Ljava/lang/Object;

    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    return-object v13

    .line 526
    :cond_e
    sget-object v0, Lu/sage/a;->D:Lwr3;

    .line 527
    .line 528
    const/16 v19, 0x0

    .line 529
    .line 530
    const/16 v21, 0x8

    .line 531
    .line 532
    const-string v17, "SERVICE"

    .line 533
    .line 534
    invoke-static/range {v16 .. v21}, Lqv3;->v(Ljava/lang/String;Ljava/lang/String;Lw3;Ljava/lang/Boolean;Lpi1;I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    if-nez v8, :cond_f

    .line 539
    .line 540
    const-string v0, "execute: FAIL \u2014 prepareScript returned null. Scheduling retry."

    .line 541
    .line 542
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-static/range {v1 .. v6}, Lu/sage/worker/RollingWindowWorker;->e(Landroid/content/Context;Ln8;JZI)V

    .line 546
    .line 547
    .line 548
    return-object v13

    .line 549
    :cond_f
    const-string v0, "execute: Script prepared. Starting WebView automation..."

    .line 550
    .line 551
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    sget-object v0, Lzu0;->a:Lzp0;

    .line 555
    .line 556
    sget-object v14, Ln92;->a:Lxi1;

    .line 557
    .line 558
    new-instance v0, Lx93;

    .line 559
    .line 560
    const/4 v10, 0x0

    .line 561
    move v7, v6

    .line 562
    move v6, v5

    .line 563
    move-wide v4, v3

    .line 564
    move-object/from16 v3, p0

    .line 565
    .line 566
    invoke-direct/range {v0 .. v10}, Lx93;-><init>(Landroid/content/Context;Ln8;Lu/sage/worker/RollingWindowWorker;JZILjava/lang/String;Lv50;Ldh0;)V

    .line 567
    .line 568
    .line 569
    move-wide v3, v4

    .line 570
    move v5, v6

    .line 571
    move v6, v7

    .line 572
    const/4 v1, 0x0

    .line 573
    iput-object v1, v11, Lt93;->u:Landroid/content/Context;

    .line 574
    .line 575
    iput-object v1, v11, Lt93;->v:Lr50;

    .line 576
    .line 577
    iput-object v1, v11, Lt93;->w:Ljf;

    .line 578
    .line 579
    iput-object v1, v11, Lt93;->x:Lp50;

    .line 580
    .line 581
    iput-object v1, v11, Lt93;->y:Ln8;

    .line 582
    .line 583
    iput-object v1, v11, Lt93;->z:Lv50;

    .line 584
    .line 585
    iput-object v1, v11, Lt93;->A:Lpi1;

    .line 586
    .line 587
    iput-object v1, v11, Lt93;->B:Ljava/lang/String;

    .line 588
    .line 589
    iput-wide v3, v11, Lt93;->q:J

    .line 590
    .line 591
    iput-boolean v5, v11, Lt93;->r:Z

    .line 592
    .line 593
    iput v6, v11, Lt93;->t:I

    .line 594
    .line 595
    iput-boolean v12, v11, Lt93;->s:Z

    .line 596
    .line 597
    const/4 v1, 0x5

    .line 598
    iput v1, v11, Lt93;->E:I

    .line 599
    .line 600
    invoke-static {v14, v0, v11}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    if-ne v0, v15, :cond_10

    .line 605
    .line 606
    :goto_9
    return-object v15

    .line 607
    :cond_10
    return-object v13

    .line 608
    :cond_11
    :goto_a
    const-string v0, "execute: FAIL \u2014 no script available. Scheduling retry."

    .line 609
    .line 610
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    sget-object v0, Lez3;->a:Lra3;

    .line 614
    .line 615
    const/4 v1, 0x0

    .line 616
    new-array v1, v1, [Ljava/lang/Object;

    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    invoke-static/range {v2 .. v7}, Lu/sage/worker/RollingWindowWorker;->e(Landroid/content/Context;Ln8;JZI)V

    .line 625
    .line 626
    .line 627
    return-object v13
.end method
