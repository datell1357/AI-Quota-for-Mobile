.class public final Led0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final j:[I


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Led0;->j:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public static h(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "FirebaseCrashlytics"

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/HashMap;)Ldd0;
    .locals 12

    .line 1
    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v0, p0, Led0;->g:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->b()Ljava/net/HttpURLConnection;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, p0, Led0;->g:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 14
    .line 15
    invoke-virtual {p0}, Led0;->f()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget-object v0, p0, Led0;->h:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljd0;

    .line 22
    .line 23
    iget-object v0, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    const-string v4, "last_fetch_etag"

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    iget-object v0, p0, Led0;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ln03;

    .line 35
    .line 36
    invoke-interface {v0}, Ln03;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lg8;

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    :goto_0
    move-object v9, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    check-cast v0, Lh8;

    .line 47
    .line 48
    iget-object v0, v0, Lh8;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Luy4;

    .line 51
    .line 52
    invoke-virtual {v0, v5, v5, v1}, Luy4;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v4, "_fot"

    .line 57
    .line 58
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v5, v0

    .line 63
    check-cast v5, Ljava/lang/Long;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_1
    iget-object v0, p0, Led0;->h:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljd0;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljd0;->b()Ljava/util/HashMap;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    move-object v4, p1

    .line 75
    move-object v5, p2

    .line 76
    move-object v10, p3

    .line 77
    move-object/from16 v8, p4

    .line 78
    .line 79
    invoke-virtual/range {v2 .. v11}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->fetch(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/util/Date;Ljava/util/Map;)Ldd0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p2, p1, Ldd0;->b:Lad0;

    .line 84
    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    iget-object v0, p0, Led0;->h:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Ljd0;

    .line 90
    .line 91
    iget-wide v2, p2, Lad0;->f:J

    .line 92
    .line 93
    iget-object p2, v0, Ljd0;->b:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter p2
    :try_end_0
    .catch Lx61; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    iget-object v0, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 97
    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v4, "last_template_version"

    .line 103
    .line 104
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    .line 110
    .line 111
    monitor-exit p2

    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    move-object p1, v0

    .line 115
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    throw p1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    move-object p1, v0

    .line 119
    goto :goto_4

    .line 120
    :cond_1
    :goto_2
    iget-object p2, p1, Ldd0;->c:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz p2, :cond_2

    .line 123
    .line 124
    iget-object v0, p0, Led0;->h:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Ljd0;

    .line 127
    .line 128
    iget-object v2, v0, Ljd0;->b:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v2
    :try_end_2
    .catch Lx61; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    :try_start_3
    iget-object v0, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v3, "last_fetch_etag"

    .line 138
    .line 139
    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    .line 145
    .line 146
    monitor-exit v2

    .line 147
    goto :goto_3

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    move-object p1, v0

    .line 150
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    :try_start_4
    throw p1

    .line 152
    :cond_2
    :goto_3
    iget-object p2, p0, Led0;->h:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p2, Ljd0;

    .line 155
    .line 156
    sget-object v0, Ljd0;->f:Ljava/util/Date;

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p2, v2, v0}, Ljd0;->d(ILjava/util/Date;)V
    :try_end_4
    .catch Lx61; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :goto_4
    iget p2, p1, Lx61;->n:I

    .line 164
    .line 165
    iget-object v0, p0, Led0;->h:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Ljd0;

    .line 168
    .line 169
    const/16 v2, 0x1ad

    .line 170
    .line 171
    if-eq p2, v2, :cond_3

    .line 172
    .line 173
    const/16 v3, 0x1f6

    .line 174
    .line 175
    if-eq p2, v3, :cond_3

    .line 176
    .line 177
    const/16 v3, 0x1f7

    .line 178
    .line 179
    if-eq p2, v3, :cond_3

    .line 180
    .line 181
    const/16 v3, 0x1f8

    .line 182
    .line 183
    if-ne p2, v3, :cond_4

    .line 184
    .line 185
    :cond_3
    invoke-virtual {v0}, Ljd0;->a()Lid0;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    iget p2, p2, Lid0;->a:I

    .line 190
    .line 191
    add-int/2addr p2, v1

    .line 192
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 193
    .line 194
    sget-object v4, Led0;->j:[I

    .line 195
    .line 196
    const/16 v5, 0x8

    .line 197
    .line 198
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    sub-int/2addr v5, v1

    .line 203
    aget v4, v4, v5

    .line 204
    .line 205
    int-to-long v4, v4

    .line 206
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v3

    .line 210
    const-wide/16 v5, 0x2

    .line 211
    .line 212
    div-long v5, v3, v5

    .line 213
    .line 214
    iget-object p0, p0, Led0;->e:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast p0, Ljava/util/Random;

    .line 217
    .line 218
    long-to-int v3, v3

    .line 219
    invoke-virtual {p0, v3}, Ljava/util/Random;->nextInt(I)I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    int-to-long v3, p0

    .line 224
    add-long/2addr v5, v3

    .line 225
    new-instance p0, Ljava/util/Date;

    .line 226
    .line 227
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    .line 228
    .line 229
    .line 230
    move-result-wide v3

    .line 231
    add-long/2addr v3, v5

    .line 232
    invoke-direct {p0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, p2, p0}, Ljd0;->d(ILjava/util/Date;)V

    .line 236
    .line 237
    .line 238
    :cond_4
    invoke-virtual {v0}, Ljd0;->a()Lid0;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    iget p2, p1, Lx61;->n:I

    .line 243
    .line 244
    iget v0, p0, Lid0;->a:I

    .line 245
    .line 246
    if-gt v0, v1, :cond_9

    .line 247
    .line 248
    if-eq p2, v2, :cond_9

    .line 249
    .line 250
    const/16 p0, 0x191

    .line 251
    .line 252
    if-eq p2, p0, :cond_8

    .line 253
    .line 254
    const/16 p0, 0x193

    .line 255
    .line 256
    if-eq p2, p0, :cond_7

    .line 257
    .line 258
    if-eq p2, v2, :cond_6

    .line 259
    .line 260
    const/16 p0, 0x1f4

    .line 261
    .line 262
    if-eq p2, p0, :cond_5

    .line 263
    .line 264
    packed-switch p2, :pswitch_data_0

    .line 265
    .line 266
    .line 267
    const-string p0, "The server returned an unexpected error."

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :pswitch_0
    const-string p0, "The server is unavailable. Please try again later."

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_5
    const-string p0, "There was an internal server error."

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_6
    new-instance p0, Lt61;

    .line 277
    .line 278
    const-string p1, "The throttled response from the server was not handled correctly by the FRC SDK."

    .line 279
    .line 280
    invoke-direct {p0, p1}, Lu61;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw p0

    .line 284
    :cond_7
    const-string p0, "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project."

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_8
    const-string p0, "The request did not have the required credentials. Please make sure your google-services.json is valid."

    .line 288
    .line 289
    :goto_5
    new-instance p2, Lx61;

    .line 290
    .line 291
    iget v0, p1, Lx61;->n:I

    .line 292
    .line 293
    const-string v1, "Fetch failed: "

    .line 294
    .line 295
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-direct {p2, v0, p0, p1}, Lx61;-><init>(ILjava/lang/String;Lx61;)V

    .line 300
    .line 301
    .line 302
    throw p2

    .line 303
    :cond_9
    new-instance p1, Lv61;

    .line 304
    .line 305
    iget-object p0, p0, Lid0;->b:Ljava/util/Date;

    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 308
    .line 309
    .line 310
    const-string p0, "Fetch was throttled."

    .line 311
    .line 312
    invoke-direct {p1, p0}, Lu61;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw p1

    .line 316
    nop

    .line 317
    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Low3;JLjava/util/HashMap;)Lef5;
    .locals 11

    .line 1
    iget-object v0, p0, Led0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-object v1, p0, Led0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ln61;

    .line 8
    .line 9
    iget-object v2, p0, Led0;->h:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljd0;

    .line 12
    .line 13
    new-instance v7, Ljava/util/Date;

    .line 14
    .line 15
    iget-object v3, p0, Led0;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lcom/google/android/gms/common/util/Clock;

    .line 18
    .line 19
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Low3;->j()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Ljava/util/Date;

    .line 36
    .line 37
    iget-object v6, v2, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    const-string v8, "last_fetch_time_in_millis"

    .line 40
    .line 41
    const-wide/16 v9, -0x1

    .line 42
    .line 43
    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    invoke-direct {p1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 48
    .line 49
    .line 50
    sget-object v6, Ljd0;->e:Ljava/util/Date;

    .line 51
    .line 52
    invoke-virtual {p1, v6}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    move p1, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v6, Ljava/util/Date;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    .line 68
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    add-long/2addr p1, v8

    .line 73
    invoke-direct {v6, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    :goto_0
    if-eqz p1, :cond_1

    .line 81
    .line 82
    new-instance p0, Ldd0;

    .line 83
    .line 84
    invoke-direct {p0, v3, v4, v4}, Ldd0;-><init>(ILad0;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_1
    invoke-virtual {v2}, Ljd0;->a()Lid0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p1, p1, Lid0;->b:Ljava/util/Date;

    .line 97
    .line 98
    invoke-virtual {v7, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_2

    .line 103
    .line 104
    move-object v4, p1

    .line 105
    :cond_2
    if-eqz v4, :cond_3

    .line 106
    .line 107
    new-instance p1, Lv61;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 110
    .line 111
    .line 112
    move-result-wide p2

    .line 113
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    sub-long/2addr p2, v1

    .line 118
    const-wide/16 v1, 0x3e8

    .line 119
    .line 120
    div-long/2addr p2, v1

    .line 121
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string p4, "Fetch is throttled. Please wait before calling fetch again: "

    .line 128
    .line 129
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, p2}, Lu61;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lmt1;->s(Ljava/lang/Exception;)Lef5;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    move-object v4, p0

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    check-cast v1, Lm61;

    .line 152
    .line 153
    move p1, v5

    .line 154
    invoke-virtual {v1}, Lm61;->c()Lef5;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v1}, Lm61;->e()Lef5;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    new-array p2, v3, [Low3;

    .line 163
    .line 164
    aput-object v5, p2, p1

    .line 165
    .line 166
    const/4 p1, 0x1

    .line 167
    aput-object v6, p2, p1

    .line 168
    .line 169
    invoke-static {p2}, Lmt1;->Z([Low3;)Lef5;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    new-instance v3, Lbd0;

    .line 174
    .line 175
    move-object v4, p0

    .line 176
    move-object v8, p4

    .line 177
    invoke-direct/range {v3 .. v8}, Lbd0;-><init>(Led0;Lef5;Lef5;Ljava/util/Date;Ljava/util/HashMap;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0, v3}, Lef5;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :goto_1
    new-instance p0, Lrr;

    .line 185
    .line 186
    const/4 p2, 0x4

    .line 187
    invoke-direct {p0, p2, v4, v7}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0, p0}, Lef5;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0
.end method

.method public c(I)Lef5;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Led0;->i:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "REALTIME"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "/"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "X-Firebase-RC-Fetch-Type"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Led0;->f:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lyc0;

    .line 40
    .line 41
    invoke-virtual {p1}, Lyc0;->b()Low3;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Led0;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    new-instance v2, Lrr;

    .line 50
    .line 51
    const/4 v3, 0x3

    .line 52
    invoke-direct {v2, v3, p0, v0}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Low3;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public d(I)Lmk3;
    .locals 8

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {v1, p1}, Ldi0;->i(II)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-nez v3, :cond_3

    .line 10
    .line 11
    iget-object v3, p0, Led0;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lwu4;

    .line 14
    .line 15
    invoke-virtual {v3}, Lwu4;->r()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v5, p0, Led0;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Lra3;

    .line 25
    .line 26
    invoke-virtual {v5, v3}, Lra3;->i(Lorg/json/JSONObject;)Lmk3;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v6, "Loaded cached settings: "

    .line 31
    .line 32
    invoke-static {v3, v6}, Led0;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Led0;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lls3;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-static {v4, p1}, Ldi0;->i(II)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    iget-wide p0, v5, Lmk3;->c:J

    .line 53
    .line 54
    cmp-long p0, p0, v6

    .line 55
    .line 56
    if-gez p0, :cond_0

    .line 57
    .line 58
    const-string p0, "Cached settings have expired."

    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-static {v0, p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    :try_start_1
    const-string p0, "Returning cached settings."

    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-static {v0, p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    .line 83
    :cond_1
    return-object v5

    .line 84
    :goto_0
    move-object v2, v5

    .line 85
    goto :goto_1

    .line 86
    :catch_1
    move-exception p0

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    :try_start_2
    const-string p0, "No cached settings data found."

    .line 89
    .line 90
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-static {v0, p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    .line 98
    .line 99
    :cond_3
    return-object v2

    .line 100
    :goto_1
    const-string p1, "Failed to get cached settings"

    .line 101
    .line 102
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    return-object v2
.end method

.method public e()Lmk3;
    .locals 0

    .line 1
    iget-object p0, p0, Led0;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lmk3;

    .line 10
    .line 11
    return-object p0
.end method

.method public f()Ljava/util/HashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Led0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ln03;

    .line 9
    .line 10
    invoke-interface {p0}, Ln03;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lg8;

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    check-cast p0, Lh8;

    .line 20
    .line 21
    iget-object p0, p0, Lh8;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Luy4;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v1, v1, v2}, Luy4;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    return-object v0
.end method

.method public g(Lhp;I)V
    .locals 47

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v2, v3, Lhp;->b:[B

    .line 6
    .line 7
    iget-object v0, v1, Led0;->f:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v6, v0

    .line 10
    check-cast v6, Lob3;

    .line 11
    .line 12
    iget-object v0, v1, Led0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lvc2;

    .line 15
    .line 16
    iget-object v4, v3, Lhp;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Lvc2;->a(Ljava/lang/String;)Lv14;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    move-object v9, v4

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    :goto_0
    new-instance v0, Ly74;

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    invoke-direct {v0, v1, v3, v10}, Ly74;-><init>(Led0;Lhp;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v0}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_25

    .line 42
    .line 43
    new-instance v0, Ly74;

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    invoke-direct {v0, v1, v3, v11}, Ly74;-><init>(Led0;Lhp;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v0}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v12, v0

    .line 54
    check-cast v12, Ljava/lang/Iterable;

    .line 55
    .line 56
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x3

    .line 68
    const-wide/16 v14, -0x1

    .line 69
    .line 70
    if-nez v9, :cond_1

    .line 71
    .line 72
    const-string v8, "Uploader"

    .line 73
    .line 74
    const-string v10, "Unknown backend for %s, deleting event batch for it..."

    .line 75
    .line 76
    invoke-static {v3, v8, v10}, Lqj0;->C(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v8, Lim;

    .line 80
    .line 81
    invoke-direct {v8, v0, v14, v15}, Lim;-><init>(IJ)V

    .line 82
    .line 83
    .line 84
    move-object/from16 v31, v2

    .line 85
    .line 86
    move-wide/from16 v32, v4

    .line 87
    .line 88
    :goto_1
    const/4 v1, 0x2

    .line 89
    goto/16 :goto_15

    .line 90
    .line 91
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v16

    .line 100
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v17

    .line 104
    if-eqz v17, :cond_2

    .line 105
    .line 106
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v17

    .line 110
    move-object/from16 v7, v17

    .line 111
    .line 112
    check-cast v7, Lro;

    .line 113
    .line 114
    iget-object v7, v7, Lro;->c:Lco;

    .line 115
    .line 116
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    const-string v7, "proto"

    .line 121
    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    iget-object v11, v1, Led0;->i:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v11, Lob3;

    .line 127
    .line 128
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    new-instance v13, Lw74;

    .line 132
    .line 133
    invoke-direct {v13, v11, v10}, Lw74;-><init>(Lob3;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v13}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    check-cast v11, Lm60;

    .line 141
    .line 142
    new-instance v13, Lbo;

    .line 143
    .line 144
    invoke-direct {v13}, Lbo;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v0, Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v0, v13, Lbo;->i:Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v0, v1, Led0;->g:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Lpr3;

    .line 157
    .line 158
    invoke-virtual {v0}, Lpr3;->i()J

    .line 159
    .line 160
    .line 161
    move-result-wide v18

    .line 162
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, v13, Lbo;->g:Ljava/lang/Object;

    .line 167
    .line 168
    iget-object v0, v1, Led0;->h:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Lpr3;

    .line 171
    .line 172
    invoke-virtual {v0}, Lpr3;->i()J

    .line 173
    .line 174
    .line 175
    move-result-wide v18

    .line 176
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, v13, Lbo;->h:Ljava/lang/Object;

    .line 181
    .line 182
    const-string v0, "GDT_CLIENT_METRICS"

    .line 183
    .line 184
    iput-object v0, v13, Lbo;->b:Ljava/lang/Object;

    .line 185
    .line 186
    new-instance v0, Ll01;

    .line 187
    .line 188
    new-instance v14, Lo01;

    .line 189
    .line 190
    invoke-direct {v14, v7}, Lo01;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    sget-object v15, Lwz2;->a:Leh;

    .line 197
    .line 198
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 202
    .line 203
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .line 205
    .line 206
    :try_start_0
    invoke-virtual {v15, v11, v10}, Leh;->s(Lm60;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    :catch_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    invoke-direct {v0, v14, v10}, Ll01;-><init>(Lo01;[B)V

    .line 214
    .line 215
    .line 216
    iput-object v0, v13, Lbo;->f:Ljava/lang/Object;

    .line 217
    .line 218
    invoke-virtual {v13}, Lbo;->c()Lco;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    move-object v10, v9

    .line 223
    check-cast v10, Li30;

    .line 224
    .line 225
    invoke-virtual {v10, v0}, Li30;->a(Lco;)Lco;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :cond_3
    move-object v0, v9

    .line 233
    check-cast v0, Li30;

    .line 234
    .line 235
    new-instance v10, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    const/4 v13, 0x0

    .line 245
    :goto_3
    if-ge v13, v11, :cond_5

    .line 246
    .line 247
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v14

    .line 251
    add-int/lit8 v13, v13, 0x1

    .line 252
    .line 253
    check-cast v14, Lco;

    .line 254
    .line 255
    iget-object v15, v14, Lco;->a:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v21

    .line 261
    if-nez v21, :cond_4

    .line 262
    .line 263
    new-instance v1, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_4
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Ljava/util/List;

    .line 280
    .line 281
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    :goto_4
    move-object/from16 v1, p0

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    const-string v14, "CctTransportBackend"

    .line 305
    .line 306
    if-eqz v10, :cond_15

    .line 307
    .line 308
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    check-cast v10, Ljava/util/Map$Entry;

    .line 313
    .line 314
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    check-cast v15, Ljava/util/List;

    .line 319
    .line 320
    const/4 v13, 0x0

    .line 321
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v15

    .line 325
    check-cast v15, Lco;

    .line 326
    .line 327
    sget-object v20, Lx03;->n:Lx03;

    .line 328
    .line 329
    iget-object v13, v0, Li30;->f:Lpr3;

    .line 330
    .line 331
    invoke-virtual {v13}, Lpr3;->i()J

    .line 332
    .line 333
    .line 334
    move-result-wide v23

    .line 335
    iget-object v13, v0, Li30;->e:Lpr3;

    .line 336
    .line 337
    invoke-virtual {v13}, Lpr3;->i()J

    .line 338
    .line 339
    .line 340
    move-result-wide v25

    .line 341
    const-string v13, "sdk-version"

    .line 342
    .line 343
    invoke-virtual {v15, v13}, Lco;->b(Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v13

    .line 347
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v28

    .line 351
    const-string v13, "model"

    .line 352
    .line 353
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v29

    .line 357
    const-string v13, "hardware"

    .line 358
    .line 359
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v30

    .line 363
    const-string v13, "device"

    .line 364
    .line 365
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v31

    .line 369
    const-string v13, "product"

    .line 370
    .line 371
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v32

    .line 375
    const-string v13, "os-uild"

    .line 376
    .line 377
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v33

    .line 381
    const-string v13, "manufacturer"

    .line 382
    .line 383
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v34

    .line 387
    const-string v13, "fingerprint"

    .line 388
    .line 389
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v35

    .line 393
    const-string v13, "country"

    .line 394
    .line 395
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v37

    .line 399
    const-string v13, "locale"

    .line 400
    .line 401
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v36

    .line 405
    const-string v13, "mcc_mnc"

    .line 406
    .line 407
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v38

    .line 411
    const-string v13, "application_build"

    .line 412
    .line 413
    invoke-virtual {v15, v13}, Lco;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v39

    .line 417
    new-instance v27, Lhm;

    .line 418
    .line 419
    invoke-direct/range {v27 .. v39}, Lhm;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    move-object/from16 v13, v27

    .line 423
    .line 424
    new-instance v15, Lkm;

    .line 425
    .line 426
    invoke-direct {v15, v13}, Lkm;-><init>(Lhm;)V

    .line 427
    .line 428
    .line 429
    :try_start_1
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v13

    .line 433
    check-cast v13, Ljava/lang/String;

    .line 434
    .line 435
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    move-result v13

    .line 439
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 443
    move-object/from16 v28, v13

    .line 444
    .line 445
    const/16 v29, 0x0

    .line 446
    .line 447
    goto :goto_6

    .line 448
    :catch_1
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v13

    .line 452
    check-cast v13, Ljava/lang/String;

    .line 453
    .line 454
    move-object/from16 v29, v13

    .line 455
    .line 456
    const/16 v28, 0x0

    .line 457
    .line 458
    :goto_6
    new-instance v13, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    check-cast v10, Ljava/util/List;

    .line 468
    .line 469
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 474
    .line 475
    .line 476
    move-result v22

    .line 477
    if-eqz v22, :cond_14

    .line 478
    .line 479
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v22

    .line 483
    move-object/from16 v11, v22

    .line 484
    .line 485
    check-cast v11, Lco;

    .line 486
    .line 487
    move-object/from16 v31, v2

    .line 488
    .line 489
    iget-object v2, v11, Lco;->c:Ll01;

    .line 490
    .line 491
    iget-object v3, v11, Lco;->j:[B

    .line 492
    .line 493
    move-object/from16 v22, v3

    .line 494
    .line 495
    iget-object v3, v2, Ll01;->a:Lo01;

    .line 496
    .line 497
    iget-object v2, v2, Ll01;->b:[B

    .line 498
    .line 499
    move-wide/from16 v32, v4

    .line 500
    .line 501
    new-instance v4, Lo01;

    .line 502
    .line 503
    invoke-direct {v4, v7}, Lo01;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v4}, Lo01;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-eqz v4, :cond_6

    .line 511
    .line 512
    new-instance v3, Led0;

    .line 513
    .line 514
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 515
    .line 516
    .line 517
    iput-object v2, v3, Led0;->e:Ljava/lang/Object;

    .line 518
    .line 519
    goto :goto_8

    .line 520
    :cond_6
    new-instance v4, Lo01;

    .line 521
    .line 522
    const-string v5, "json"

    .line 523
    .line 524
    invoke-direct {v4, v5}, Lo01;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v4}, Lo01;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_13

    .line 532
    .line 533
    new-instance v3, Ljava/lang/String;

    .line 534
    .line 535
    const-string v4, "UTF-8"

    .line 536
    .line 537
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 542
    .line 543
    .line 544
    new-instance v2, Led0;

    .line 545
    .line 546
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 547
    .line 548
    .line 549
    iput-object v3, v2, Led0;->f:Ljava/lang/Object;

    .line 550
    .line 551
    move-object v3, v2

    .line 552
    :goto_8
    iget-wide v4, v11, Lco;->d:J

    .line 553
    .line 554
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    iput-object v2, v3, Led0;->a:Ljava/lang/Object;

    .line 559
    .line 560
    iget-wide v4, v11, Lco;->e:J

    .line 561
    .line 562
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    iput-object v2, v3, Led0;->d:Ljava/lang/Object;

    .line 567
    .line 568
    const-string v2, "tz-offset"

    .line 569
    .line 570
    iget-object v4, v11, Lco;->f:Ljava/util/Map;

    .line 571
    .line 572
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    check-cast v2, Ljava/lang/String;

    .line 577
    .line 578
    if-nez v2, :cond_7

    .line 579
    .line 580
    const-wide/16 v4, 0x0

    .line 581
    .line 582
    goto :goto_9

    .line 583
    :cond_7
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 588
    .line 589
    .line 590
    move-result-wide v4

    .line 591
    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    iput-object v2, v3, Led0;->g:Ljava/lang/Object;

    .line 596
    .line 597
    const-string v2, "net-type"

    .line 598
    .line 599
    invoke-virtual {v11, v2}, Lco;->b(Ljava/lang/String;)I

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    sget-object v4, Lhl2;->n:Landroid/util/SparseArray;

    .line 604
    .line 605
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    check-cast v2, Lhl2;

    .line 610
    .line 611
    const-string v4, "mobile-subtype"

    .line 612
    .line 613
    invoke-virtual {v11, v4}, Lco;->b(Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    sget-object v5, Lgl2;->n:Landroid/util/SparseArray;

    .line 618
    .line 619
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    check-cast v4, Lgl2;

    .line 624
    .line 625
    new-instance v5, Lqo;

    .line 626
    .line 627
    invoke-direct {v5, v2, v4}, Lqo;-><init>(Lhl2;Lgl2;)V

    .line 628
    .line 629
    .line 630
    iput-object v5, v3, Led0;->h:Ljava/lang/Object;

    .line 631
    .line 632
    iget-object v2, v11, Lco;->b:Ljava/lang/Integer;

    .line 633
    .line 634
    if-eqz v2, :cond_8

    .line 635
    .line 636
    iput-object v2, v3, Led0;->b:Ljava/lang/Object;

    .line 637
    .line 638
    :cond_8
    iget-object v2, v11, Lco;->g:Ljava/lang/Integer;

    .line 639
    .line 640
    if-eqz v2, :cond_9

    .line 641
    .line 642
    new-instance v4, Lgo;

    .line 643
    .line 644
    invoke-direct {v4, v2}, Lgo;-><init>(Ljava/lang/Integer;)V

    .line 645
    .line 646
    .line 647
    new-instance v2, Lho;

    .line 648
    .line 649
    invoke-direct {v2, v4}, Lho;-><init>(Lgo;)V

    .line 650
    .line 651
    .line 652
    sget-object v4, Le90;->n:Le90;

    .line 653
    .line 654
    new-instance v4, Llm;

    .line 655
    .line 656
    invoke-direct {v4, v2}, Llm;-><init>(Lho;)V

    .line 657
    .line 658
    .line 659
    iput-object v4, v3, Led0;->c:Ljava/lang/Object;

    .line 660
    .line 661
    :cond_9
    iget-object v2, v11, Lco;->i:[B

    .line 662
    .line 663
    if-nez v2, :cond_a

    .line 664
    .line 665
    if-eqz v22, :cond_d

    .line 666
    .line 667
    :cond_a
    if-eqz v2, :cond_b

    .line 668
    .line 669
    goto :goto_a

    .line 670
    :cond_b
    const/4 v2, 0x0

    .line 671
    :goto_a
    if-eqz v22, :cond_c

    .line 672
    .line 673
    move-object/from16 v4, v22

    .line 674
    .line 675
    goto :goto_b

    .line 676
    :cond_c
    const/4 v4, 0x0

    .line 677
    :goto_b
    new-instance v5, Lfo;

    .line 678
    .line 679
    invoke-direct {v5, v2, v4}, Lfo;-><init>([B[B)V

    .line 680
    .line 681
    .line 682
    iput-object v5, v3, Led0;->i:Ljava/lang/Object;

    .line 683
    .line 684
    :cond_d
    iget-object v2, v3, Led0;->a:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v2, Ljava/lang/Long;

    .line 687
    .line 688
    if-nez v2, :cond_e

    .line 689
    .line 690
    const-string v2, " eventTimeMs"

    .line 691
    .line 692
    goto :goto_c

    .line 693
    :cond_e
    const-string v2, ""

    .line 694
    .line 695
    :goto_c
    iget-object v4, v3, Led0;->d:Ljava/lang/Object;

    .line 696
    .line 697
    check-cast v4, Ljava/lang/Long;

    .line 698
    .line 699
    if-nez v4, :cond_f

    .line 700
    .line 701
    const-string v4, " eventUptimeMs"

    .line 702
    .line 703
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    :cond_f
    iget-object v4, v3, Led0;->g:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v4, Ljava/lang/Long;

    .line 710
    .line 711
    if-nez v4, :cond_10

    .line 712
    .line 713
    const-string v4, " timezoneOffsetSeconds"

    .line 714
    .line 715
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    if-eqz v4, :cond_12

    .line 724
    .line 725
    new-instance v34, Lno;

    .line 726
    .line 727
    iget-object v2, v3, Led0;->a:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v2, Ljava/lang/Long;

    .line 730
    .line 731
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 732
    .line 733
    .line 734
    move-result-wide v35

    .line 735
    iget-object v2, v3, Led0;->b:Ljava/lang/Object;

    .line 736
    .line 737
    move-object/from16 v37, v2

    .line 738
    .line 739
    check-cast v37, Ljava/lang/Integer;

    .line 740
    .line 741
    iget-object v2, v3, Led0;->c:Ljava/lang/Object;

    .line 742
    .line 743
    move-object/from16 v38, v2

    .line 744
    .line 745
    check-cast v38, Llm;

    .line 746
    .line 747
    iget-object v2, v3, Led0;->d:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v2, Ljava/lang/Long;

    .line 750
    .line 751
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 752
    .line 753
    .line 754
    move-result-wide v39

    .line 755
    iget-object v2, v3, Led0;->e:Ljava/lang/Object;

    .line 756
    .line 757
    move-object/from16 v41, v2

    .line 758
    .line 759
    check-cast v41, [B

    .line 760
    .line 761
    iget-object v2, v3, Led0;->f:Ljava/lang/Object;

    .line 762
    .line 763
    move-object/from16 v42, v2

    .line 764
    .line 765
    check-cast v42, Ljava/lang/String;

    .line 766
    .line 767
    iget-object v2, v3, Led0;->g:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v2, Ljava/lang/Long;

    .line 770
    .line 771
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 772
    .line 773
    .line 774
    move-result-wide v43

    .line 775
    iget-object v2, v3, Led0;->h:Ljava/lang/Object;

    .line 776
    .line 777
    move-object/from16 v45, v2

    .line 778
    .line 779
    check-cast v45, Lqo;

    .line 780
    .line 781
    iget-object v2, v3, Led0;->i:Ljava/lang/Object;

    .line 782
    .line 783
    move-object/from16 v46, v2

    .line 784
    .line 785
    check-cast v46, Lfo;

    .line 786
    .line 787
    invoke-direct/range {v34 .. v46}, Lno;-><init>(JLjava/lang/Integer;Lf90;J[BLjava/lang/String;JLil2;Lz31;)V

    .line 788
    .line 789
    .line 790
    move-object/from16 v2, v34

    .line 791
    .line 792
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    :cond_11
    :goto_d
    move-object/from16 v3, p1

    .line 796
    .line 797
    move-object/from16 v2, v31

    .line 798
    .line 799
    move-wide/from16 v4, v32

    .line 800
    .line 801
    goto/16 :goto_7

    .line 802
    .line 803
    :cond_12
    const-string v0, "Missing required properties:"

    .line 804
    .line 805
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    return-void

    .line 813
    :cond_13
    invoke-static {v14}, Lqj0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    const/4 v4, 0x5

    .line 818
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 819
    .line 820
    .line 821
    move-result v5

    .line 822
    if-eqz v5, :cond_11

    .line 823
    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    .line 825
    .line 826
    const-string v11, "Received event of unsupported encoding "

    .line 827
    .line 828
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    const-string v3, ". Skipping..."

    .line 835
    .line 836
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .line 845
    .line 846
    goto :goto_d

    .line 847
    :cond_14
    move-object/from16 v31, v2

    .line 848
    .line 849
    move-wide/from16 v32, v4

    .line 850
    .line 851
    new-instance v22, Loo;

    .line 852
    .line 853
    move-object/from16 v30, v13

    .line 854
    .line 855
    move-object/from16 v27, v15

    .line 856
    .line 857
    invoke-direct/range {v22 .. v30}, Loo;-><init>(JJLkm;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 858
    .line 859
    .line 860
    move-object/from16 v2, v22

    .line 861
    .line 862
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    move-object/from16 v3, p1

    .line 866
    .line 867
    move-object/from16 v2, v31

    .line 868
    .line 869
    goto/16 :goto_5

    .line 870
    .line 871
    :cond_15
    move-object/from16 v31, v2

    .line 872
    .line 873
    move-wide/from16 v32, v4

    .line 874
    .line 875
    const/4 v4, 0x5

    .line 876
    new-instance v2, Ljm;

    .line 877
    .line 878
    invoke-direct {v2, v1}, Ljm;-><init>(Ljava/util/ArrayList;)V

    .line 879
    .line 880
    .line 881
    iget-object v1, v0, Li30;->d:Ljava/net/URL;

    .line 882
    .line 883
    if-eqz v31, :cond_18

    .line 884
    .line 885
    :try_start_2
    invoke-static/range {v31 .. v31}, Lh00;->a([B)Lh00;

    .line 886
    .line 887
    .line 888
    move-result-object v3

    .line 889
    iget-object v5, v3, Lh00;->b:Ljava/lang/String;

    .line 890
    .line 891
    if-eqz v5, :cond_16

    .line 892
    .line 893
    goto :goto_e

    .line 894
    :cond_16
    const/4 v5, 0x0

    .line 895
    :goto_e
    iget-object v3, v3, Lh00;->a:Ljava/lang/String;

    .line 896
    .line 897
    if-eqz v3, :cond_17

    .line 898
    .line 899
    invoke-static {v3}, Li30;->b(Ljava/lang/String;)Ljava/net/URL;

    .line 900
    .line 901
    .line 902
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 903
    :cond_17
    move-object/from16 v25, v5

    .line 904
    .line 905
    :goto_f
    move-object/from16 v23, v1

    .line 906
    .line 907
    goto :goto_11

    .line 908
    :catch_2
    new-instance v0, Lim;

    .line 909
    .line 910
    const/4 v1, 0x3

    .line 911
    const-wide/16 v2, -0x1

    .line 912
    .line 913
    invoke-direct {v0, v1, v2, v3}, Lim;-><init>(IJ)V

    .line 914
    .line 915
    .line 916
    :goto_10
    move-object v8, v0

    .line 917
    goto/16 :goto_1

    .line 918
    .line 919
    :cond_18
    const/16 v25, 0x0

    .line 920
    .line 921
    goto :goto_f

    .line 922
    :goto_11
    :try_start_3
    new-instance v22, Leh;

    .line 923
    .line 924
    const/16 v26, 0x9

    .line 925
    .line 926
    const/16 v27, 0x0

    .line 927
    .line 928
    move-object/from16 v24, v2

    .line 929
    .line 930
    invoke-direct/range {v22 .. v27}, Leh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 931
    .line 932
    .line 933
    new-instance v1, Lr6;

    .line 934
    .line 935
    const/4 v2, 0x2

    .line 936
    invoke-direct {v1, v2, v0}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 937
    .line 938
    .line 939
    move v11, v4

    .line 940
    move-object/from16 v0, v22

    .line 941
    .line 942
    :cond_19
    invoke-virtual {v1, v0}, Lr6;->e(Leh;)Lh30;

    .line 943
    .line 944
    .line 945
    move-result-object v2

    .line 946
    iget-object v3, v2, Lh30;->c:Ljava/lang/Object;

    .line 947
    .line 948
    check-cast v3, Ljava/net/URL;

    .line 949
    .line 950
    if-eqz v3, :cond_1a

    .line 951
    .line 952
    const-string v4, "Following redirect to: %s"

    .line 953
    .line 954
    invoke-static {v3, v14, v4}, Lqj0;->C(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    new-instance v22, Leh;

    .line 958
    .line 959
    iget-object v4, v0, Leh;->p:Ljava/lang/Object;

    .line 960
    .line 961
    move-object/from16 v24, v4

    .line 962
    .line 963
    check-cast v24, Ljm;

    .line 964
    .line 965
    iget-object v0, v0, Leh;->q:Ljava/lang/Object;

    .line 966
    .line 967
    move-object/from16 v25, v0

    .line 968
    .line 969
    check-cast v25, Ljava/lang/String;

    .line 970
    .line 971
    const/16 v26, 0x9

    .line 972
    .line 973
    const/16 v27, 0x0

    .line 974
    .line 975
    move-object/from16 v23, v3

    .line 976
    .line 977
    invoke-direct/range {v22 .. v27}, Leh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 978
    .line 979
    .line 980
    move-object/from16 v0, v22

    .line 981
    .line 982
    goto :goto_12

    .line 983
    :cond_1a
    const/4 v0, 0x0

    .line 984
    :goto_12
    if-eqz v0, :cond_1b

    .line 985
    .line 986
    add-int/lit8 v11, v11, -0x1

    .line 987
    .line 988
    const/4 v3, 0x1

    .line 989
    if-ge v11, v3, :cond_19

    .line 990
    .line 991
    :cond_1b
    iget v0, v2, Lh30;->b:I

    .line 992
    .line 993
    const/16 v1, 0xc8

    .line 994
    .line 995
    if-ne v0, v1, :cond_1c

    .line 996
    .line 997
    iget-wide v0, v2, Lh30;->a:J

    .line 998
    .line 999
    new-instance v2, Lim;

    .line 1000
    .line 1001
    const/4 v3, 0x1

    .line 1002
    invoke-direct {v2, v3, v0, v1}, Lim;-><init>(IJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1003
    .line 1004
    .line 1005
    move-object v8, v2

    .line 1006
    goto/16 :goto_1

    .line 1007
    .line 1008
    :catch_3
    move-exception v0

    .line 1009
    goto :goto_14

    .line 1010
    :cond_1c
    const/16 v1, 0x1f4

    .line 1011
    .line 1012
    if-ge v0, v1, :cond_1d

    .line 1013
    .line 1014
    const/16 v1, 0x194

    .line 1015
    .line 1016
    if-ne v0, v1, :cond_1e

    .line 1017
    .line 1018
    :cond_1d
    const-wide/16 v2, -0x1

    .line 1019
    .line 1020
    goto :goto_13

    .line 1021
    :cond_1e
    const/16 v1, 0x190

    .line 1022
    .line 1023
    if-ne v0, v1, :cond_1f

    .line 1024
    .line 1025
    :try_start_4
    new-instance v0, Lim;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1026
    .line 1027
    const/4 v1, 0x4

    .line 1028
    const-wide/16 v2, -0x1

    .line 1029
    .line 1030
    :try_start_5
    invoke-direct {v0, v1, v2, v3}, Lim;-><init>(IJ)V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_10

    .line 1034
    :catch_4
    move-exception v0

    .line 1035
    const-wide/16 v2, -0x1

    .line 1036
    .line 1037
    goto :goto_14

    .line 1038
    :cond_1f
    const-wide/16 v2, -0x1

    .line 1039
    .line 1040
    new-instance v0, Lim;

    .line 1041
    .line 1042
    const/4 v1, 0x3

    .line 1043
    invoke-direct {v0, v1, v2, v3}, Lim;-><init>(IJ)V

    .line 1044
    .line 1045
    .line 1046
    goto/16 :goto_10

    .line 1047
    .line 1048
    :goto_13
    new-instance v0, Lim;

    .line 1049
    .line 1050
    const/4 v1, 0x2

    .line 1051
    invoke-direct {v0, v1, v2, v3}, Lim;-><init>(IJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1052
    .line 1053
    .line 1054
    goto/16 :goto_10

    .line 1055
    .line 1056
    :goto_14
    const-string v1, "Could not make request to the backend"

    .line 1057
    .line 1058
    invoke-static {v14, v1, v0}, Lqj0;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1059
    .line 1060
    .line 1061
    new-instance v0, Lim;

    .line 1062
    .line 1063
    const/4 v1, 0x2

    .line 1064
    const-wide/16 v2, -0x1

    .line 1065
    .line 1066
    invoke-direct {v0, v1, v2, v3}, Lim;-><init>(IJ)V

    .line 1067
    .line 1068
    .line 1069
    move-object v8, v0

    .line 1070
    :goto_15
    iget v0, v8, Lim;->a:I

    .line 1071
    .line 1072
    if-ne v0, v1, :cond_20

    .line 1073
    .line 1074
    new-instance v0, Lmr0;

    .line 1075
    .line 1076
    move-object/from16 v1, p0

    .line 1077
    .line 1078
    move-object/from16 v3, p1

    .line 1079
    .line 1080
    move-object v2, v12

    .line 1081
    move-wide/from16 v4, v32

    .line 1082
    .line 1083
    invoke-direct/range {v0 .. v5}, Lmr0;-><init>(Led0;Ljava/lang/Iterable;Lhp;J)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v6, v0}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    iget-object v0, v1, Led0;->e:Ljava/lang/Object;

    .line 1090
    .line 1091
    check-cast v0, Leh;

    .line 1092
    .line 1093
    const/4 v2, 0x1

    .line 1094
    add-int/lit8 v1, p2, 0x1

    .line 1095
    .line 1096
    invoke-virtual {v0, v3, v1, v2}, Leh;->F(Lhp;IZ)V

    .line 1097
    .line 1098
    .line 1099
    return-void

    .line 1100
    :cond_20
    move-object/from16 v1, p0

    .line 1101
    .line 1102
    move-object/from16 v3, p1

    .line 1103
    .line 1104
    move-object v7, v12

    .line 1105
    move-wide/from16 v4, v32

    .line 1106
    .line 1107
    const/4 v2, 0x1

    .line 1108
    new-instance v10, Lrr;

    .line 1109
    .line 1110
    const/16 v11, 0xb

    .line 1111
    .line 1112
    invoke-direct {v10, v11, v1, v7}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v6, v10}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    if-ne v0, v2, :cond_21

    .line 1119
    .line 1120
    iget-wide v7, v8, Lim;->b:J

    .line 1121
    .line 1122
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 1123
    .line 1124
    .line 1125
    move-result-wide v4

    .line 1126
    if-eqz v31, :cond_24

    .line 1127
    .line 1128
    new-instance v0, Lr6;

    .line 1129
    .line 1130
    const/16 v2, 0x11

    .line 1131
    .line 1132
    invoke-direct {v0, v2, v1}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v6, v0}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    goto :goto_17

    .line 1139
    :cond_21
    const/4 v2, 0x4

    .line 1140
    if-ne v0, v2, :cond_24

    .line 1141
    .line 1142
    new-instance v0, Ljava/util/HashMap;

    .line 1143
    .line 1144
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1145
    .line 1146
    .line 1147
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v2

    .line 1151
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v7

    .line 1155
    if-eqz v7, :cond_23

    .line 1156
    .line 1157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v7

    .line 1161
    check-cast v7, Lro;

    .line 1162
    .line 1163
    iget-object v7, v7, Lro;->c:Lco;

    .line 1164
    .line 1165
    iget-object v7, v7, Lco;->a:Ljava/lang/String;

    .line 1166
    .line 1167
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v8

    .line 1171
    if-nez v8, :cond_22

    .line 1172
    .line 1173
    const/16 v16, 0x1

    .line 1174
    .line 1175
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v8

    .line 1179
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    goto :goto_16

    .line 1183
    :cond_22
    const/16 v16, 0x1

    .line 1184
    .line 1185
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v8

    .line 1189
    check-cast v8, Ljava/lang/Integer;

    .line 1190
    .line 1191
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1192
    .line 1193
    .line 1194
    move-result v8

    .line 1195
    add-int/lit8 v8, v8, 0x1

    .line 1196
    .line 1197
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v8

    .line 1201
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    goto :goto_16

    .line 1205
    :cond_23
    new-instance v2, Lrr;

    .line 1206
    .line 1207
    const/16 v7, 0xc

    .line 1208
    .line 1209
    invoke-direct {v2, v7, v1, v0}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v6, v2}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    :cond_24
    :goto_17
    move-object/from16 v2, v31

    .line 1216
    .line 1217
    goto/16 :goto_0

    .line 1218
    .line 1219
    :cond_25
    new-instance v0, Lcd0;

    .line 1220
    .line 1221
    invoke-direct {v0, v1, v3, v4, v5}, Lcd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v6, v0}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    return-void
.end method
