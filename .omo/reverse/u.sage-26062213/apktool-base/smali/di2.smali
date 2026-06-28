.class public final Ldi2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrx4;
.implements Lcu3;


# instance fields
.field public final synthetic n:I

.field public final o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Ldi2;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v0

    .line 18
    :goto_0
    const-string v2, "Context cannot be null"

    .line 19
    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lqt4;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Ldi2;->o:Landroid/content/Context;

    .line 30
    .line 31
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 32
    iput p2, p0, Ldi2;->n:I

    iput-object p1, p0, Ldi2;->o:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ldi2;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Ldi2;->o:Landroid/content/Context;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Ly75;->a:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p0}, Lk75;->Q(Landroid/content/Context;)Lcr2;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    sget-object v0, Lo75;->j:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Lx85;

    .line 18
    .line 19
    sget-object v1, Ll65;->a:Lcom/google/android/gms/common/api/Api;

    .line 20
    .line 21
    new-instance v1, Lw65;

    .line 22
    .line 23
    sget-object v2, Ll65;->a:Lcom/google/android/gms/common/api/Api;

    .line 24
    .line 25
    sget-object v3, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 26
    .line 27
    sget-object v4, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 28
    .line 29
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lx85;-><init>(Lw65;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_1
    sget-object v0, Lo75;->j:Ljava/lang/Object;

    .line 37
    .line 38
    new-instance v0, Lhg;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p0, v0, Lhg;->a:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p0, v0, Lhg;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lcu3;

    .line 51
    .line 52
    if-nez p0, :cond_0

    .line 53
    .line 54
    sget-object p0, Lo75;->m:Lcu3;

    .line 55
    .line 56
    iput-object p0, v0, Lhg;->b:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_0
    iget-object p0, v0, Lhg;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lcu3;

    .line 61
    .line 62
    if-nez p0, :cond_1

    .line 63
    .line 64
    iget-object p0, v0, Lhg;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Landroid/content/Context;

    .line 67
    .line 68
    new-instance v1, Ldi2;

    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    invoke-direct {v1, p0, v2}, Ldi2;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lc75;->M(Lcu3;)Lcu3;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iput-object p0, v0, Lhg;->c:Ljava/lang/Object;

    .line 79
    .line 80
    :cond_1
    iget-object p0, v0, Lhg;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Lgt4;

    .line 83
    .line 84
    if-nez p0, :cond_2

    .line 85
    .line 86
    new-instance p0, Lgt4;

    .line 87
    .line 88
    const/16 v1, 0x9

    .line 89
    .line 90
    invoke-direct {p0, v1, v0}, Lgt4;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iput-object p0, v0, Lhg;->d:Ljava/lang/Object;

    .line 94
    .line 95
    :cond_2
    iget-object p0, v0, Lhg;->e:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Lcu3;

    .line 98
    .line 99
    if-nez p0, :cond_3

    .line 100
    .line 101
    iget-object p0, v0, Lhg;->a:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Landroid/content/Context;

    .line 104
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v2, Ldi2;

    .line 111
    .line 112
    invoke-direct {v2, p0}, Ldi2;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    new-instance p0, Lid5;

    .line 116
    .line 117
    invoke-direct {p0, v2}, Lid5;-><init>(Ldi2;)V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lmd5;

    .line 121
    .line 122
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    const/4 v3, 0x2

    .line 131
    new-array v3, v3, [Lwd5;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    aput-object p0, v3, v4

    .line 135
    .line 136
    const/4 p0, 0x1

    .line 137
    aput-object v2, v3, p0

    .line 138
    .line 139
    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance p0, Lct2;

    .line 143
    .line 144
    invoke-direct {p0, v1}, Lct2;-><init>(Ljava/util/ArrayList;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Lc75;->M(Lcu3;)Lcu3;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iput-object p0, v0, Lhg;->e:Ljava/lang/Object;

    .line 152
    .line 153
    :cond_3
    iget-object p0, v0, Lhg;->f:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p0, Lra3;

    .line 156
    .line 157
    if-nez p0, :cond_4

    .line 158
    .line 159
    new-instance p0, Lra3;

    .line 160
    .line 161
    const/16 v1, 0x15

    .line 162
    .line 163
    invoke-direct {p0, v1, v0}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iput-object p0, v0, Lhg;->f:Ljava/lang/Object;

    .line 167
    .line 168
    :cond_4
    new-instance v2, Lo75;

    .line 169
    .line 170
    iget-object p0, v0, Lhg;->a:Ljava/lang/Object;

    .line 171
    .line 172
    move-object v3, p0

    .line 173
    check-cast v3, Landroid/content/Context;

    .line 174
    .line 175
    iget-object p0, v0, Lhg;->b:Ljava/lang/Object;

    .line 176
    .line 177
    move-object v4, p0

    .line 178
    check-cast v4, Lcu3;

    .line 179
    .line 180
    iget-object p0, v0, Lhg;->c:Ljava/lang/Object;

    .line 181
    .line 182
    move-object v5, p0

    .line 183
    check-cast v5, Lcu3;

    .line 184
    .line 185
    iget-object p0, v0, Lhg;->d:Ljava/lang/Object;

    .line 186
    .line 187
    move-object v6, p0

    .line 188
    check-cast v6, Lgt4;

    .line 189
    .line 190
    iget-object p0, v0, Lhg;->e:Ljava/lang/Object;

    .line 191
    .line 192
    move-object v7, p0

    .line 193
    check-cast v7, Lcu3;

    .line 194
    .line 195
    iget-object p0, v0, Lhg;->f:Ljava/lang/Object;

    .line 196
    .line 197
    move-object v8, p0

    .line 198
    check-cast v8, Lra3;

    .line 199
    .line 200
    invoke-direct/range {v2 .. v8}, Lo75;-><init>(Landroid/content/Context;Lcu3;Lcu3;Lcu3;Lcu3;Lcu3;)V

    .line 201
    .line 202
    .line 203
    return-object v2

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object p0, p0, Ldi2;->o:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lrw4;->g:Ljava/lang/Object;

    .line 4
    .line 5
    const-class v0, Lk30;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lk30;->b:Lpx4;

    .line 9
    .line 10
    if-nez v1, :cond_b

    .line 11
    .line 12
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "eng"

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const-string v3, "userdebug"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto/16 :goto_b

    .line 35
    .line 36
    :cond_0
    :goto_0
    const-string v1, "dev-keys"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    const-string v1, "test-keys"

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    sget-object p0, Lmx4;->n:Lmx4;

    .line 54
    .line 55
    move-object v1, p0

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :cond_3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 69
    .line 70
    .line 71
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    :try_start_2
    new-instance v3, Ljava/io/File;

    .line 77
    .line 78
    const-string v4, "phenotype_hermetic"

    .line 79
    .line 80
    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "overrides.txt"

    .line 85
    .line 86
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_4

    .line 94
    .line 95
    new-instance v4, Lqx4;

    .line 96
    .line 97
    invoke-direct {v4, v3}, Lqx4;-><init>(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    sget-object v4, Lmx4;->n:Lmx4;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :catch_0
    move-exception v3

    .line 108
    const-string v4, "HermeticFileOverrides"

    .line 109
    .line 110
    const-string v5, "no data dir"

    .line 111
    .line 112
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    sget-object v4, Lmx4;->n:Lmx4;

    .line 116
    .line 117
    :goto_2
    invoke-virtual {v4}, Lpx4;->b()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_a

    .line 122
    .line 123
    invoke-virtual {v4}, Lpx4;->a()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    .line 128
    .line 129
    new-instance v5, Ljava/io/InputStreamReader;

    .line 130
    .line 131
    new-instance v6, Ljava/io/FileInputStream;

    .line 132
    .line 133
    move-object v7, v3

    .line 134
    check-cast v7, Ljava/io/File;

    .line 135
    .line 136
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    .line 144
    .line 145
    :try_start_5
    new-instance v5, Lwm3;

    .line 146
    .line 147
    invoke-direct {v5, v2}, Lwm3;-><init>(I)V

    .line 148
    .line 149
    .line 150
    new-instance v6, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    if-eqz v7, :cond_9

    .line 160
    .line 161
    const-string v8, " "

    .line 162
    .line 163
    const/4 v9, 0x3

    .line 164
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    array-length v10, v8

    .line 169
    if-eq v10, v9, :cond_5

    .line 170
    .line 171
    const-string v8, "HermeticFileOverrides"

    .line 172
    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v10, "Invalid: "

    .line 179
    .line 180
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :catchall_2
    move-exception p0

    .line 195
    goto/16 :goto_4

    .line 196
    .line 197
    :cond_5
    aget-object v7, v8, v2

    .line 198
    .line 199
    new-instance v9, Ljava/lang/String;

    .line 200
    .line 201
    invoke-direct {v9, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const/4 v7, 0x1

    .line 205
    aget-object v7, v8, v7

    .line 206
    .line 207
    new-instance v10, Ljava/lang/String;

    .line 208
    .line 209
    invoke-direct {v10, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    const/4 v10, 0x2

    .line 217
    aget-object v11, v8, v10

    .line 218
    .line 219
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    check-cast v11, Ljava/lang/String;

    .line 224
    .line 225
    if-nez v11, :cond_7

    .line 226
    .line 227
    aget-object v8, v8, v10

    .line 228
    .line 229
    new-instance v10, Ljava/lang/String;

    .line 230
    .line 231
    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    const/16 v12, 0x400

    .line 243
    .line 244
    if-lt v8, v12, :cond_6

    .line 245
    .line 246
    if-ne v11, v10, :cond_7

    .line 247
    .line 248
    :cond_6
    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    :cond_7
    invoke-virtual {v5, v9}, Lwm3;->containsKey(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    if-nez v8, :cond_8

    .line 256
    .line 257
    new-instance v8, Lwm3;

    .line 258
    .line 259
    invoke-direct {v8, v2}, Lwm3;-><init>(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v9, v8}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    :cond_8
    invoke-virtual {v5, v9}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    check-cast v8, Lwm3;

    .line 270
    .line 271
    invoke-virtual {v8, v7, v11}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_9
    const-string v2, "HermeticFileOverrides"

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v7, "Parsed "

    .line 291
    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v3, " for Android package "

    .line 299
    .line 300
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    new-instance p0, Lbw4;

    .line 314
    .line 315
    invoke-direct {p0, v5}, Lbw4;-><init>(Lwm3;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 316
    .line 317
    .line 318
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 319
    .line 320
    .line 321
    :try_start_7
    new-instance v2, Lqx4;

    .line 322
    .line 323
    invoke-direct {v2, p0}, Lqx4;-><init>(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :catch_1
    move-exception p0

    .line 328
    goto :goto_6

    .line 329
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :catchall_3
    move-exception v2

    .line 334
    :try_start_9
    const-class v3, Ljava/lang/Throwable;

    .line 335
    .line 336
    const-string v4, "addSuppressed"

    .line 337
    .line 338
    const-class v5, Ljava/lang/Throwable;

    .line 339
    .line 340
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 353
    .line 354
    .line 355
    :catch_2
    :goto_5
    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 356
    :goto_6
    :try_start_b
    new-instance v2, Ljava/lang/RuntimeException;

    .line 357
    .line 358
    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    throw v2

    .line 362
    :cond_a
    sget-object v2, Lmx4;->n:Lmx4;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 363
    .line 364
    :goto_7
    :try_start_c
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 365
    .line 366
    .line 367
    move-object v1, v2

    .line 368
    :goto_8
    sput-object v1, Lk30;->b:Lpx4;

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :goto_9
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 372
    .line 373
    .line 374
    throw p0

    .line 375
    :cond_b
    :goto_a
    monitor-exit v0

    .line 376
    return-object v1

    .line 377
    :goto_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 378
    throw p0
.end method
