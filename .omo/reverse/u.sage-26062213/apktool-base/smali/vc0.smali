.class public final synthetic Lvc0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lvc0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lvc0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lvc0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lvc0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    const-string v0, "Requesting settings from "

    .line 15
    .line 16
    iget-object p0, p0, Lvc0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lxh1;

    .line 19
    .line 20
    iget-object p0, p0, Lxh1;->o:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Led0;

    .line 23
    .line 24
    iget-object v1, p0, Led0;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lbc5;

    .line 27
    .line 28
    iget-object p0, p0, Led0;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ltk3;

    .line 31
    .line 32
    iget-object v4, v1, Lbc5;->o:Ljava/lang/String;

    .line 33
    .line 34
    const-string v5, "FirebaseCrashlytics"

    .line 35
    .line 36
    const-string v6, "Settings query params were: "

    .line 37
    .line 38
    invoke-static {}, Leh;->m()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-static {p0}, Lbc5;->b(Ltk3;)Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    new-instance v8, Leh;

    .line 46
    .line 47
    invoke-direct {v8, v4, v7}, Leh;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 48
    .line 49
    .line 50
    const-string v9, "User-Agent"

    .line 51
    .line 52
    const-string v10, "Crashlytics Android SDK/20.0.6"

    .line 53
    .line 54
    invoke-virtual {v8, v9, v10}, Leh;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v9, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    .line 58
    .line 59
    const-string v10, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 60
    .line 61
    invoke-virtual {v8, v9, v10}, Leh;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v8, p0}, Lbc5;->a(Leh;Ltk3;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/4 v0, 0x3

    .line 72
    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    invoke-static {v5, p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    invoke-static {v5, p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v8}, Leh;->t()Ld90;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v1, p0}, Lbc5;->c(Ld90;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    const-string v0, "Settings request failed."

    .line 113
    .line 114
    invoke-static {v5, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :goto_0
    return-object v3

    .line 118
    :pswitch_1
    iget-object p0, p0, Lvc0;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Ls53;

    .line 121
    .line 122
    invoke-virtual {p0}, Ls53;->a()Ls61;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_2
    iget-object p0, p0, Lvc0;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p0, Lij0;

    .line 130
    .line 131
    iget-object p0, p0, Lij0;->g:Ldj0;

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const-string v0, "FirebaseCrashlytics"

    .line 137
    .line 138
    invoke-static {}, Leh;->l()V

    .line 139
    .line 140
    .line 141
    iget-object v4, p0, Ldj0;->c:Lgw4;

    .line 142
    .line 143
    iget-object v5, v4, Lgw4;->p:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v5, Lq51;

    .line 146
    .line 147
    iget-object v6, v4, Lgw4;->o:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v6, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    new-instance v7, Ljava/io/File;

    .line 155
    .line 156
    iget-object v5, v5, Lq51;->c:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v5, Ljava/io/File;

    .line 159
    .line 160
    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    const/4 v7, 0x1

    .line 168
    if-nez v5, :cond_2

    .line 169
    .line 170
    invoke-virtual {p0}, Ldj0;->e()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    iget-object p0, p0, Ldj0;->j:Ljj0;

    .line 177
    .line 178
    invoke-virtual {p0}, Ljj0;->c()Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_4

    .line 183
    .line 184
    :goto_1
    move v1, v7

    .line 185
    goto :goto_2

    .line 186
    :cond_2
    const-string p0, "Found previous crash marker."

    .line 187
    .line 188
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_3

    .line 193
    .line 194
    invoke-static {v0, p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .line 196
    .line 197
    :cond_3
    iget-object p0, v4, Lgw4;->p:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p0, Lq51;

    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance v0, Ljava/io/File;

    .line 205
    .line 206
    iget-object p0, p0, Lq51;->c:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast p0, Ljava/io/File;

    .line 209
    .line 210
    invoke-direct {v0, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_4
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :pswitch_3
    iget-object p0, p0, Lvc0;->b:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p0, Lkd0;

    .line 225
    .line 226
    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lkd0;->a:Landroid/content/Context;

    .line 228
    .line 229
    iget-object v2, p0, Lkd0;->b:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 232
    .line 233
    .line 234
    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 235
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    new-array v4, v2, [B

    .line 240
    .line 241
    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 242
    .line 243
    .line 244
    new-instance v1, Ljava/lang/String;

    .line 245
    .line 246
    const-string v2, "UTF-8"

    .line 247
    .line 248
    invoke-direct {v1, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Lorg/json/JSONObject;

    .line 252
    .line 253
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v2}, Lad0;->a(Lorg/json/JSONObject;)Lad0;

    .line 257
    .line 258
    .line 259
    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    .line 262
    .line 263
    monitor-exit p0

    .line 264
    goto :goto_7

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    goto :goto_5

    .line 267
    :catchall_1
    move-exception v1

    .line 268
    move-object v3, v0

    .line 269
    goto :goto_3

    .line 270
    :catchall_2
    move-exception v1

    .line 271
    goto :goto_3

    .line 272
    :catch_1
    move-object v0, v3

    .line 273
    goto :goto_4

    .line 274
    :goto_3
    if-eqz v3, :cond_5

    .line 275
    .line 276
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 277
    .line 278
    .line 279
    :cond_5
    throw v1

    .line 280
    :catch_2
    :goto_4
    if-eqz v0, :cond_6

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    throw v0

    .line 288
    :cond_6
    :goto_6
    monitor-exit p0

    .line 289
    :goto_7
    return-object v3

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
