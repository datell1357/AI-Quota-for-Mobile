.class public final Lgt4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lp75;
.implements Lqo4;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lpi;
.implements Lxo2;
.implements Lcu3;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lgt4;->n:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lef5;

    invoke-direct {v0}, Lef5;-><init>()V

    iput-object v0, p0, Lgt4;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 19
    iput p1, p0, Lgt4;->n:I

    iput-object p2, p0, Lgt4;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;I)V
    .locals 0

    .line 20
    iput p3, p0, Lgt4;->n:I

    iput-object p2, p0, Lgt4;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lgw4;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lgt4;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lgt4;->o:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance p2, Lww4;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p2, v0, p0}, Lww4;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a(Lww4;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lia5;

    .line 4
    .line 5
    invoke-virtual {v0}, Laz4;->v()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lr45;

    .line 11
    .line 12
    iget-object v1, v0, Lr45;->e:Lf35;

    .line 13
    .line 14
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {v1, v3, v4}, Lf35;->E(J)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, v0, Lr45;->e:Lf35;

    .line 30
    .line 31
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v1, Lf35;->l:Lu25;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {v1, v3}, Lu25;->b(Z)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 46
    .line 47
    .line 48
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 49
    .line 50
    const/16 v3, 0x64

    .line 51
    .line 52
    if-ne v1, v3, :cond_1

    .line 53
    .line 54
    iget-object v1, v0, Lr45;->f:La25;

    .line 55
    .line 56
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v1, La25;->n:Lx15;

    .line 60
    .line 61
    const-string v3, "Detected application was in foreground"

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    iget-object v0, v0, Lr45;->d:Lds4;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    sget-object v5, Le05;->e1:Ld05;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-wide/16 v0, 0x0

    .line 87
    .line 88
    :goto_0
    invoke-virtual {p0, v3, v4, v0, v1}, Lgt4;->e(JJ)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lgt4;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lzu4;

    .line 9
    .line 10
    check-cast p1, Ll45;

    .line 11
    .line 12
    check-cast p2, Lpw3;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lhb5;

    .line 19
    .line 20
    new-instance v0, Luf5;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Luf5;-><init>(Lpw3;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lnk4;->zza()Landroid/os/Parcel;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p2, v0}, Liv4;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p0}, Liv4;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x2

    .line 36
    invoke-virtual {p1, p0, p2}, Lnk4;->zzc(ILandroid/os/Parcel;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :sswitch_0
    check-cast p1, Lzy4;

    .line 41
    .line 42
    check-cast p2, Lpw3;

    .line 43
    .line 44
    new-instance v0, Lcf5;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1, p2}, Lcf5;-><init>(ILpw3;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lh05;

    .line 55
    .line 56
    check-cast p0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;

    .line 57
    .line 58
    invoke-virtual {p1}, Lok4;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    sget v1, Lkv4;->a:I

    .line 63
    .line 64
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p2, p0}, Lkv4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 72
    .line 73
    .line 74
    const/16 p0, 0xc

    .line 75
    .line 76
    invoke-virtual {p1, p0, p2}, Lok4;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :sswitch_1
    check-cast p2, Lpw3;

    .line 81
    .line 82
    check-cast p1, La75;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Ly65;

    .line 89
    .line 90
    new-instance v0, Ln65;

    .line 91
    .line 92
    check-cast p0, Lw65;

    .line 93
    .line 94
    invoke-direct {v0, p0, p2}, Ln65;-><init>(Lw65;Lpw3;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lgu4;->F()Landroid/os/Parcel;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0, v0}, Lku4;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 102
    .line 103
    .line 104
    const/16 p2, 0x1b

    .line 105
    .line 106
    invoke-virtual {p1, p2, p0}, Lgu4;->G(ILandroid/os/Parcel;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public b(ILjava/lang/Throwable;[B)V
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v2, v2, Lgt4;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lr45;

    .line 12
    .line 13
    const-string v4, "timestamp"

    .line 14
    .line 15
    const-string v5, "gad_source"

    .line 16
    .line 17
    const-string v6, "gbraid"

    .line 18
    .line 19
    const-string v7, "gclid"

    .line 20
    .line 21
    const-string v8, "deeplink"

    .line 22
    .line 23
    const-string v9, ""

    .line 24
    .line 25
    iget-object v10, v2, Lr45;->f:La25;

    .line 26
    .line 27
    const/16 v11, 0xc8

    .line 28
    .line 29
    if-eq v0, v11, :cond_1

    .line 30
    .line 31
    const/16 v11, 0xcc

    .line 32
    .line 33
    if-eq v0, v11, :cond_1

    .line 34
    .line 35
    const/16 v11, 0x130

    .line 36
    .line 37
    if-ne v0, v11, :cond_0

    .line 38
    .line 39
    move v0, v11

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v2, v10

    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_1
    :goto_0
    if-nez v1, :cond_0

    .line 45
    .line 46
    iget-object v0, v2, Lr45;->e:Lf35;

    .line 47
    .line 48
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lf35;->t:Lu25;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lu25;->b(Z)V

    .line 55
    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    array-length v0, v3

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    :cond_2
    move-object v2, v10

    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 68
    .line 69
    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-static {v10}, Lr45;->l(Lq55;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v10, La25;->m:Lx15;

    .line 89
    .line 90
    const-string v1, "Deferred Deep Link is empty."

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    move-object v2, v10

    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :cond_4
    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    const-wide/16 v12, 0x0

    .line 113
    .line 114
    invoke-virtual {v1, v4, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 115
    .line 116
    .line 117
    move-result-wide v12

    .line 118
    new-instance v1, Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v14, v2, Lr45;->i:Lac5;

    .line 124
    .line 125
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 126
    .line 127
    .line 128
    iget-object v15, v14, Lib0;->a:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v15, Lr45;

    .line 131
    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v16

    .line 136
    if-eqz v16, :cond_5

    .line 137
    .line 138
    move-object/from16 v16, v10

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_5
    move-wide/from16 p0, v12

    .line 143
    .line 144
    iget-object v12, v15, Lr45;->a:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    .line 148
    .line 149
    move-result-object v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    move-object/from16 v16, v10

    .line 151
    .line 152
    :try_start_1
    new-instance v10, Landroid/content/Intent;

    .line 153
    .line 154
    move-object/from16 p2, v14

    .line 155
    .line 156
    const-string v14, "android.intent.action.VIEW"

    .line 157
    .line 158
    move-object/from16 p3, v15

    .line 159
    .line 160
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-direct {v10, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .line 166
    .line 167
    const/4 v14, 0x0

    .line 168
    invoke-virtual {v13, v10, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    if-eqz v10, :cond_9

    .line 173
    .line 174
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-nez v10, :cond_9

    .line 179
    .line 180
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-nez v10, :cond_6

    .line 185
    .line 186
    invoke-virtual {v1, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catch_1
    move-exception v0

    .line 191
    move-object/from16 v2, v16

    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :cond_6
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-nez v6, :cond_7

    .line 200
    .line 201
    invoke-virtual {v1, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    invoke-virtual {v1, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v3, "_cis"

    .line 208
    .line 209
    const-string v5, "ddp"

    .line 210
    .line 211
    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, v2, Lr45;->m:Lm75;

    .line 215
    .line 216
    const-string v3, "auto"

    .line 217
    .line 218
    const-string v5, "_cmp"

    .line 219
    .line 220
    invoke-virtual {v2, v3, v5, v1}, Lm75;->C(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    if-nez v1, :cond_a

    .line 228
    .line 229
    :try_start_2
    const-string v1, "google.analytics.deferred.deeplink.prefs"

    .line 230
    .line 231
    invoke-virtual {v12, v1, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-interface {v1, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    .line 241
    .line 242
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 243
    .line 244
    .line 245
    move-result-wide v2

    .line 246
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 247
    .line 248
    .line 249
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    .line 251
    .line 252
    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    if-eqz v0, :cond_a

    .line 254
    .line 255
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    .line 256
    .line 257
    const-string v1, "android.google.analytics.action.DEEPLINK_ACTION"

    .line 258
    .line 259
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v15, p3

    .line 263
    .line 264
    iget-object v1, v15, Lr45;->a:Landroid/content/Context;

    .line 265
    .line 266
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 267
    .line 268
    const/16 v3, 0x22

    .line 269
    .line 270
    if-ge v2, v3, :cond_8

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_8
    invoke-static {}, Ld80;->g()Landroid/app/BroadcastOptions;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-static {v2}, Ld80;->h(Landroid/app/BroadcastOptions;)Landroid/app/BroadcastOptions;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-static {v2}, Ld80;->k(Landroid/app/BroadcastOptions;)Landroid/os/Bundle;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v1, v0, v2}, Ld80;->p(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :catch_2
    move-exception v0

    .line 293
    move-object/from16 v1, p2

    .line 294
    .line 295
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v1, Lr45;

    .line 298
    .line 299
    iget-object v1, v1, Lr45;->f:La25;

    .line 300
    .line 301
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v1, La25;->f:Lx15;

    .line 305
    .line 306
    const-string v2, "Failed to persist Deferred Deep Link. exception"

    .line 307
    .line 308
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_9
    :goto_2
    invoke-static/range {v16 .. v16}, Lr45;->l(Lq55;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 313
    .line 314
    .line 315
    move-object/from16 v2, v16

    .line 316
    .line 317
    :try_start_4
    iget-object v1, v2, La25;->i:Lx15;

    .line 318
    .line 319
    const-string v4, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 320
    .line 321
    invoke-virtual {v1, v4, v3, v11, v0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :catch_3
    move-exception v0

    .line 326
    :goto_3
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v2, La25;->f:Lx15;

    .line 330
    .line 331
    const-string v2, "Failed to parse the Deferred Deep Link response. exception"

    .line 332
    .line 333
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :cond_a
    :goto_4
    return-void

    .line 337
    :goto_5
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, v2, La25;->m:Lx15;

    .line 341
    .line 342
    const-string v1, "Deferred Deep Link response empty."

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :goto_6
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v2, La25;->i:Lx15;

    .line 352
    .line 353
    const-string v3, "Network Request for Deferred Deep Link failed. response, exception"

    .line 354
    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v2, v0, v1, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/util/List;ZZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lw35;

    .line 4
    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p1, :cond_7

    .line 10
    .line 11
    if-eq p1, v1, :cond_4

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    if-eq p1, v2, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lr45;

    .line 21
    .line 22
    iget-object p0, p0, Lr45;->f:La25;

    .line 23
    .line 24
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, La25;->l:Lx15;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-eqz p4, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lr45;

    .line 35
    .line 36
    iget-object p0, p0, Lr45;->f:La25;

    .line 37
    .line 38
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, La25;->j:Lx15;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-nez p5, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lr45;

    .line 49
    .line 50
    iget-object p0, p0, Lr45;->f:La25;

    .line 51
    .line 52
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, La25;->k:Lx15;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lr45;

    .line 61
    .line 62
    iget-object p0, p0, Lr45;->f:La25;

    .line 63
    .line 64
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, La25;->i:Lx15;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Lr45;

    .line 73
    .line 74
    iget-object p0, p0, Lr45;->f:La25;

    .line 75
    .line 76
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, La25;->n:Lx15;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    if-eqz p4, :cond_5

    .line 83
    .line 84
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Lr45;

    .line 87
    .line 88
    iget-object p0, p0, Lr45;->f:La25;

    .line 89
    .line 90
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, La25;->g:Lx15;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    if-nez p5, :cond_6

    .line 97
    .line 98
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p0, Lr45;

    .line 101
    .line 102
    iget-object p0, p0, Lr45;->f:La25;

    .line 103
    .line 104
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, La25;->h:Lx15;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p0, Lr45;

    .line 113
    .line 114
    iget-object p0, p0, Lr45;->f:La25;

    .line 115
    .line 116
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, La25;->f:Lx15;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_7
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Lr45;

    .line 125
    .line 126
    iget-object p0, p0, Lr45;->f:La25;

    .line 127
    .line 128
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, La25;->m:Lx15;

    .line 132
    .line 133
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    const/4 p4, 0x0

    .line 138
    if-eq p1, v1, :cond_a

    .line 139
    .line 140
    const/4 p5, 0x2

    .line 141
    if-eq p1, p5, :cond_9

    .line 142
    .line 143
    if-eq p1, v0, :cond_8

    .line 144
    .line 145
    invoke-virtual {p0, p2}, Lx15;->a(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_8
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p4

    .line 157
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    invoke-virtual {p0, p2, p1, p4, p3}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_9
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-virtual {p0, p1, p3, p2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_a
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1, p2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    .line 1
    iget v0, p0, Lgt4;->n:I

    .line 2
    .line 3
    sget-object v1, Lfu0;->n:Lfu0;

    .line 4
    .line 5
    iget-object p0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Ls0;

    .line 11
    .line 12
    return-object p0

    .line 13
    :sswitch_0
    check-cast p0, Lbo;

    .line 14
    .line 15
    iget-object v0, p0, Lbo;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lfi3;

    .line 18
    .line 19
    iget-object v2, p0, Lbo;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 22
    .line 23
    invoke-static {v2}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/Uri;

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v2}, Lbo;->l(Landroid/net/Uri;)Lsm4;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception v2

    .line 39
    iget-object v3, p0, Lbo;->g:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lfy2;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    instance-of v4, v2, Lod5;

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    instance-of v4, v4, Lod5;

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v3, v3, Lfy2;->n:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Loe5;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    instance-of v4, v4, Lfo4;

    .line 71
    .line 72
    const/4 v5, 0x4

    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    new-instance v1, Lzo1;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ls0;->n(Ljava/lang/Throwable;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v3, v3, Loe5;->a:Lsm4;

    .line 85
    .line 86
    invoke-static {v3}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v4, Lge5;

    .line 91
    .line 92
    const/4 v6, 0x2

    .line 93
    invoke-direct {v4, p0, v6}, Lge5;-><init>(Lbo;I)V

    .line 94
    .line 95
    .line 96
    sget v6, Lvf5;->a:I

    .line 97
    .line 98
    invoke-static {}, Lye5;->a()Lrf5;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    new-instance v7, Lic5;

    .line 103
    .line 104
    invoke-direct {v7, v5, v6, v4}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v7, v0}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-instance v4, Lbb5;

    .line 112
    .line 113
    const/4 v6, 0x5

    .line 114
    invoke-direct {v4, v6, v2}, Lbb5;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const-class v2, Ljava/io/IOException;

    .line 118
    .line 119
    invoke-static {v3, v2, v4, v1}, Ltf1;->a(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lqi;Ljava/util/concurrent/Executor;)Li;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :goto_0
    new-instance v2, Lge5;

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    invoke-direct {v2, p0, v3}, Lge5;-><init>(Lbo;I)V

    .line 127
    .line 128
    .line 129
    sget p0, Lvf5;->a:I

    .line 130
    .line 131
    invoke-static {}, Lye5;->a()Lrf5;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    new-instance v3, Lic5;

    .line 136
    .line 137
    invoke-direct {v3, v5, p0, v2}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v3, v0}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    goto :goto_2

    .line 145
    :cond_2
    :goto_1
    new-instance p0, Lzo1;

    .line 146
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v2}, Ls0;->n(Ljava/lang/Throwable;)Z

    .line 151
    .line 152
    .line 153
    :goto_2
    return-object p0

    .line 154
    :sswitch_1
    check-cast p0, Ljava/util/concurrent/Callable;

    .line 155
    .line 156
    new-instance v0, La34;

    .line 157
    .line 158
    invoke-direct {v0, p0}, La34;-><init>(Ljava/util/concurrent/Callable;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Lfu0;->execute(Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    return-object v0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public d(JJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lia5;

    .line 4
    .line 5
    invoke-virtual {v0}, Laz4;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lia5;->z()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lr45;

    .line 14
    .line 15
    iget-object v1, v0, Lr45;->e:Lf35;

    .line 16
    .line 17
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, p2}, Lf35;->E(J)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lf35;->l:Lu25;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, Lu25;->b(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lg15;->A()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Lf35;->p:Ly25;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Ly25;->b(J)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v1, Lf35;->l:Lu25;

    .line 51
    .line 52
    invoke-virtual {v0}, Lu25;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lgt4;->e(JJ)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public e(JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lia5;

    .line 4
    .line 5
    invoke-virtual {v0}, Laz4;->v()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lr45;

    .line 11
    .line 12
    invoke-virtual {v0}, Lr45;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v8, v0, Lr45;->e:Lf35;

    .line 21
    .line 22
    invoke-static {v8}, Lr45;->j(Lib0;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v8, Lf35;->p:Ly25;

    .line 26
    .line 27
    invoke-virtual {v3, p1, p2}, Ly25;->b(J)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 31
    .line 32
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iget-object v5, v0, Lr45;->f:La25;

    .line 37
    .line 38
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, v5, La25;->n:Lx15;

    .line 42
    .line 43
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "Session started, time"

    .line 48
    .line 49
    invoke-virtual {v5, v3, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v3, 0x3e8

    .line 53
    .line 54
    div-long v6, p1, v3

    .line 55
    .line 56
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v0, v0, Lr45;->m:Lm75;

    .line 61
    .line 62
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 63
    .line 64
    .line 65
    const-string v4, "auto"

    .line 66
    .line 67
    const-string v5, "_sid"

    .line 68
    .line 69
    move-wide v1, p1

    .line 70
    invoke-virtual/range {v0 .. v5}, Lm75;->G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v8}, Lr45;->j(Lib0;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v8, Lf35;->q:Ly25;

    .line 77
    .line 78
    invoke-virtual {v1, v6, v7}, Ly25;->b(J)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v8, Lf35;->l:Lu25;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-virtual {v1, v2}, Lu25;->b(Z)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "_sid"

    .line 93
    .line 94
    invoke-virtual {v5, v1, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 98
    .line 99
    .line 100
    const-string v6, "auto"

    .line 101
    .line 102
    const-string v7, "_s"

    .line 103
    .line 104
    move-wide v1, p1

    .line 105
    move-wide v3, p3

    .line 106
    invoke-virtual/range {v0 .. v7}, Lm75;->D(JJLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v8, Lf35;->v:Lmu0;

    .line 110
    .line 111
    invoke-virtual {v1}, Lmu0;->h()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_1

    .line 120
    .line 121
    new-instance v5, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "_ffr"

    .line 127
    .line 128
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 132
    .line 133
    .line 134
    const-string v6, "auto"

    .line 135
    .line 136
    const-string v7, "_ssr"

    .line 137
    .line 138
    move-wide v1, p1

    .line 139
    move-wide v3, p3

    .line 140
    invoke-virtual/range {v0 .. v7}, Lm75;->D(JJLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    :goto_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lgt4;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lyc5;

    .line 9
    .line 10
    iget-object v0, p0, Lyc5;->c:Lcu3;

    .line 11
    .line 12
    invoke-interface {v0}, Lcu3;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lwd2;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lyc5;->b:Lcu3;

    .line 22
    .line 23
    invoke-interface {v1}, Lcu3;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lx85;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lx85;->a:Lw65;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lgt4;

    .line 39
    .line 40
    const/4 v4, 0x6

    .line 41
    invoke-direct {v3, v4, v1}, Lgt4;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, La65;->c:Lcom/google/android/gms/common/Feature;

    .line 49
    .line 50
    filled-new-array {v3}, [Lcom/google/android/gms/common/Feature;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Low3;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lx85;->b(Low3;)Li;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-object v2, Lwp4;->r:Lwp4;

    .line 76
    .line 77
    sget v3, Lk;->y:I

    .line 78
    .line 79
    new-instance v3, Lj;

    .line 80
    .line 81
    const-class v4, Lt85;

    .line 82
    .line 83
    invoke-direct {v3, v1, v4, v2}, Lk;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v3}, Lk75;->I(Ljava/util/concurrent/Executor;Ln91;)Ljava/util/concurrent/Executor;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v1, v3, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lgb5;

    .line 94
    .line 95
    const/4 v2, 0x2

    .line 96
    invoke-direct {v1, v2, p0}, Lgb5;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v1, v0}, Ltf1;->e(Lcom/google/common/util/concurrent/ListenableFuture;Lze1;Ljava/util/concurrent/Executor;)Li2;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    new-instance v1, Lo9;

    .line 104
    .line 105
    const/16 v2, 0x19

    .line 106
    .line 107
    invoke-direct {v1, v2, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 111
    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_0
    check-cast p0, Lhg;

    .line 115
    .line 116
    new-instance v0, Lmc5;

    .line 117
    .line 118
    iget-object p0, p0, Lhg;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lcu3;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lmc5;-><init>(Lcu3;)V

    .line 123
    .line 124
    .line 125
    new-instance p0, Lfy2;

    .line 126
    .line 127
    invoke-direct {p0, v0}, Lfy2;-><init>(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Low3;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ld75;

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lef5;

    .line 7
    .line 8
    iget-boolean v0, v0, Lef5;->d:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Ls0;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Low3;->j()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Low3;->g()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ls0;->m(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ls0;->n(Ljava/lang/Throwable;)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lgt4;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ldi2;

    .line 9
    .line 10
    iget-object p0, p0, Ldi2;->o:Landroid/content/Context;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast p0, Law4;

    .line 14
    .line 15
    iget-object v0, p0, Law4;->a:Landroid/content/ContentResolver;

    .line 16
    .line 17
    iget-object v1, p0, Law4;->b:Landroid/net/Uri;

    .line 18
    .line 19
    sget-object v2, Law4;->h:[Ljava/lang/String;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 42
    .line 43
    .line 44
    move-object p0, v0

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/16 v1, 0x100

    .line 49
    .line 50
    if-gt v0, v1, :cond_2

    .line 51
    .line 52
    :try_start_1
    new-instance v1, Ldi;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lwm3;-><init>(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 59
    .line 60
    const/high16 v2, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-direct {v1, v0, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 86
    .line 87
    .line 88
    move-object p0, v1

    .line 89
    :goto_1
    return-object p0

    .line 90
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
