.class public Lml1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lom1;Ltj;Lrl1;)V
    .locals 7

    .line 1
    iget-object v0, p2, Ltj;->b:Loj;

    .line 2
    .line 3
    iget-object v1, p2, Ltj;->c:Lyk0;

    .line 4
    .line 5
    iget v2, p2, Ltj;->a:I

    .line 6
    .line 7
    invoke-static {v2}, Ldi0;->F(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const-string v4, "Auth scheme"

    .line 13
    .line 14
    const-string v5, " authentication error: "

    .line 15
    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x3

    .line 19
    if-eq v2, p2, :cond_8

    .line 20
    .line 21
    const/4 p2, 0x4

    .line 22
    if-eq v2, p2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-static {v0, v4}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Loj;->f()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_6

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_1
    iget-object v2, p2, Ltj;->d:Ljava/util/Queue;

    .line 38
    .line 39
    if-eqz v2, :cond_5

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_8

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lnj;

    .line 52
    .line 53
    iget-object v1, v0, Lnj;->a:Loj;

    .line 54
    .line 55
    iget-object v0, v0, Lnj;->b:Lyk0;

    .line 56
    .line 57
    invoke-virtual {p2, v1, v0}, Ltj;->e(Loj;Lyk0;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 61
    .line 62
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    iget-object v3, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v6, "Generating response to an authentication challenge using "

    .line 73
    .line 74
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Loj;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, " scheme"

    .line 85
    .line 86
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :try_start_0
    instance-of v3, v1, Loj;

    .line 97
    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-virtual {v1, v0, p1, p3}, Loj;->b(Lyk0;Lom1;Lul1;)Lgj1;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v1, v0, p1}, Loj;->a(Lyk0;Lom1;)Lgj1;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_1
    invoke-interface {p1, v0}, Lim1;->addHeader(Lgj1;)V
    :try_end_0
    .catch Luj; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v3, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 115
    .line 116
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_2

    .line 121
    .line 122
    iget-object v3, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 123
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    invoke-static {v0, v4}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_2
    if-eqz v0, :cond_8

    .line 154
    .line 155
    :try_start_1
    instance-of p2, v0, Loj;

    .line 156
    .line 157
    if-eqz p2, :cond_7

    .line 158
    .line 159
    invoke-virtual {v0, v1, p1, p3}, Loj;->b(Lyk0;Lom1;Lul1;)Lgj1;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    goto :goto_3

    .line 164
    :cond_7
    invoke-virtual {v0, v1, p1}, Loj;->a(Lyk0;Lom1;)Lgj1;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    :goto_3
    invoke-interface {p1, p2}, Lim1;->addHeader(Lgj1;)V
    :try_end_1
    .catch Luj; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_1
    move-exception p1

    .line 173
    iget-object p2, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 174
    .line 175
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_8

    .line 180
    .line 181
    iget-object p0, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 182
    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    :goto_4
    return-void
.end method

.method public final b(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    const-string v6, "Selected authentication options: "

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    :try_start_0
    iget-object v8, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 17
    .line 18
    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_0

    .line 23
    .line 24
    iget-object v8, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 25
    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lem1;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v10, " requested authentication"

    .line 39
    .line 40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    move/from16 v16, v7

    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_0
    :goto_0
    invoke-interface {v3, v2, v5}, Lyj;->d(Lvm1;Lul1;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_1

    .line 65
    .line 66
    iget-object v0, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 67
    .line 68
    const-string v2, "Response contains no authentication challenges"

    .line 69
    .line 70
    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return v7

    .line 74
    :cond_1
    iget-object v9, v4, Ltj;->b:Loj;

    .line 75
    .line 76
    iget v10, v4, Ltj;->a:I

    .line 77
    .line 78
    invoke-static {v10}, Ldi0;->F(I)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    const/4 v11, 0x3

    .line 83
    const/4 v12, 0x2

    .line 84
    const/4 v13, 0x4

    .line 85
    const/4 v14, 0x0

    .line 86
    const/4 v15, 0x1

    .line 87
    if-eqz v10, :cond_6

    .line 88
    .line 89
    if-eq v10, v15, :cond_5

    .line 90
    .line 91
    if-eq v10, v12, :cond_5

    .line 92
    .line 93
    if-eq v10, v11, :cond_4

    .line 94
    .line 95
    if-eq v10, v13, :cond_3

    .line 96
    .line 97
    :cond_2
    :goto_1
    move/from16 v16, v7

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v4}, Ltj;->c()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move/from16 v16, v7

    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_5
    if-nez v9, :cond_6

    .line 109
    .line 110
    iget-object v2, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 111
    .line 112
    const-string v6, "Auth scheme is null"

    .line 113
    .line 114
    invoke-interface {v2, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v3, v0, v14, v5}, Lyj;->a(Lem1;Loj;Lul1;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ltj;->c()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v13}, Ltj;->d(I)V

    .line 124
    .line 125
    .line 126
    return v7

    .line 127
    :cond_6
    if-eqz v9, :cond_2

    .line 128
    .line 129
    invoke-virtual {v9}, Loj;->d()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10
    :try_end_0
    .catch Lo92; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    move/from16 v16, v7

    .line 134
    .line 135
    :try_start_1
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 136
    .line 137
    invoke-virtual {v10, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Lgj1;

    .line 146
    .line 147
    if-eqz v7, :cond_8

    .line 148
    .line 149
    iget-object v2, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 150
    .line 151
    const-string v6, "Authorization challenge processed"

    .line 152
    .line 153
    invoke-interface {v2, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v7}, Loj;->i(Lgj1;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9}, Loj;->e()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_7

    .line 164
    .line 165
    iget-object v2, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 166
    .line 167
    const-string v6, "Authentication failed"

    .line 168
    .line 169
    invoke-interface {v2, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, v4, Ltj;->b:Loj;

    .line 173
    .line 174
    invoke-interface {v3, v0, v2, v5}, Lyj;->a(Lem1;Loj;Lul1;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ltj;->c()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v13}, Ltj;->d(I)V

    .line 181
    .line 182
    .line 183
    return v16

    .line 184
    :catch_1
    move-exception v0

    .line 185
    goto :goto_4

    .line 186
    :cond_7
    invoke-virtual {v4, v11}, Ltj;->d(I)V

    .line 187
    .line 188
    .line 189
    return v15

    .line 190
    :cond_8
    invoke-virtual {v4}, Ltj;->c()V

    .line 191
    .line 192
    .line 193
    :goto_2
    invoke-interface {v3, v8, v0, v2, v5}, Lyj;->c(Ljava/util/Map;Lem1;Lvm1;Lul1;)Ljava/util/LinkedList;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_a

    .line 202
    .line 203
    iget-object v2, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 204
    .line 205
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_9

    .line 210
    .line 211
    iget-object v2, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 212
    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_9
    invoke-virtual {v4, v12}, Ltj;->d(I)V

    .line 229
    .line 230
    .line 231
    const-string v2, "Queue of auth options"

    .line 232
    .line 233
    invoke-static {v0, v2}, Lw80;->I(Ljava/util/Collection;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iput-object v0, v4, Ltj;->d:Ljava/util/Queue;

    .line 237
    .line 238
    iput-object v14, v4, Ltj;->b:Loj;

    .line 239
    .line 240
    iput-object v14, v4, Ltj;->c:Lyk0;
    :try_end_1
    .catch Lo92; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .line 242
    return v15

    .line 243
    :cond_a
    :goto_3
    return v16

    .line 244
    :goto_4
    iget-object v2, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 245
    .line 246
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_b

    .line 251
    .line 252
    iget-object v1, v1, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 253
    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v3, "Malformed challenge: "

    .line 257
    .line 258
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_b
    invoke-virtual {v4}, Ltj;->c()V

    .line 276
    .line 277
    .line 278
    return v16
.end method

.method public final c(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z
    .locals 3

    .line 1
    invoke-interface {p3, p2, p5}, Lyj;->b(Lvm1;Lul1;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x5

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 10
    .line 11
    const-string p2, "Authentication required"

    .line 12
    .line 13
    invoke-interface {p0, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget p0, p4, Ltj;->a:I

    .line 17
    .line 18
    if-ne p0, v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p4, Ltj;->b:Loj;

    .line 21
    .line 22
    invoke-interface {p3, p1, p0, p5}, Lyj;->a(Lem1;Loj;Lul1;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return v0

    .line 26
    :cond_1
    iget p2, p4, Ltj;->a:I

    .line 27
    .line 28
    invoke-static {p2}, Ldi0;->F(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eq p2, v0, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    if-eq p2, v2, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x4

    .line 38
    if-eq p2, p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p4, v0}, Ltj;->d(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p0, p0, Lml1;->a:Lorg/apache/commons/logging/Log;

    .line 45
    .line 46
    const-string p2, "Authentication succeeded"

    .line 47
    .line 48
    invoke-interface {p0, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4, v1}, Ltj;->d(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p4, Ltj;->b:Loj;

    .line 55
    .line 56
    invoke-interface {p3, p1, p0, p5}, Lyj;->e(Lem1;Loj;Lul1;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 60
    return p0
.end method
