.class public final La61;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ln03;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ln03;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La61;->a:Ln03;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, La61;->b:Ljava/lang/Integer;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ln2;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Ln2;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p1, Ln2;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :cond_0
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    check-cast v4, Ln2;

    .line 20
    .line 21
    iget-object v5, v4, Ln2;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget-object v4, v4, Ln2;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_1
    return v2
.end method


# virtual methods
.method public final b()Ljava/util/ArrayList;
    .locals 11

    .line 1
    iget-object p0, p0, La61;->a:Ln03;

    .line 2
    .line 3
    invoke-interface {p0}, Ln03;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lg8;

    .line 8
    .line 9
    check-cast p0, Lh8;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lh8;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Luy4;

    .line 22
    .line 23
    const-string v1, "frc"

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-virtual {p0, v1, v2}, Luy4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/os/Bundle;

    .line 46
    .line 47
    sget-object v2, Lgv4;->a:Lnp1;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    new-instance v2, Lf8;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "origin"

    .line 58
    .line 59
    const-class v4, Ljava/lang/String;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-static {v1, v3, v4, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/lang/String;

    .line 73
    .line 74
    iput-object v3, v2, Lf8;->a:Ljava/lang/String;

    .line 75
    .line 76
    const-string v3, "name"

    .line 77
    .line 78
    invoke-static {v1, v3, v4, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    iput-object v3, v2, Lf8;->b:Ljava/lang/String;

    .line 91
    .line 92
    const-string v3, "value"

    .line 93
    .line 94
    const-class v6, Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v1, v3, v6, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iput-object v3, v2, Lf8;->c:Ljava/lang/Object;

    .line 101
    .line 102
    const-string v3, "trigger_event_name"

    .line 103
    .line 104
    invoke-static {v1, v3, v4, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/String;

    .line 109
    .line 110
    iput-object v3, v2, Lf8;->d:Ljava/lang/String;

    .line 111
    .line 112
    const-wide/16 v6, 0x0

    .line 113
    .line 114
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v6, "trigger_timeout"

    .line 119
    .line 120
    const-class v7, Ljava/lang/Long;

    .line 121
    .line 122
    invoke-static {v1, v6, v7, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Ljava/lang/Long;

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v8

    .line 132
    iput-wide v8, v2, Lf8;->e:J

    .line 133
    .line 134
    const-string v6, "timed_out_event_name"

    .line 135
    .line 136
    invoke-static {v1, v6, v4, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Ljava/lang/String;

    .line 141
    .line 142
    iput-object v6, v2, Lf8;->f:Ljava/lang/String;

    .line 143
    .line 144
    const-string v6, "timed_out_event_params"

    .line 145
    .line 146
    const-class v8, Landroid/os/Bundle;

    .line 147
    .line 148
    invoke-static {v1, v6, v8, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Landroid/os/Bundle;

    .line 153
    .line 154
    iput-object v6, v2, Lf8;->g:Landroid/os/Bundle;

    .line 155
    .line 156
    const-string v6, "triggered_event_name"

    .line 157
    .line 158
    invoke-static {v1, v6, v4, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Ljava/lang/String;

    .line 163
    .line 164
    iput-object v6, v2, Lf8;->h:Ljava/lang/String;

    .line 165
    .line 166
    const-string v6, "triggered_event_params"

    .line 167
    .line 168
    invoke-static {v1, v6, v8, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, Landroid/os/Bundle;

    .line 173
    .line 174
    iput-object v6, v2, Lf8;->i:Landroid/os/Bundle;

    .line 175
    .line 176
    const-string v6, "time_to_live"

    .line 177
    .line 178
    invoke-static {v1, v6, v7, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    check-cast v6, Ljava/lang/Long;

    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 185
    .line 186
    .line 187
    move-result-wide v9

    .line 188
    iput-wide v9, v2, Lf8;->j:J

    .line 189
    .line 190
    const-string v6, "expired_event_name"

    .line 191
    .line 192
    invoke-static {v1, v6, v4, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Ljava/lang/String;

    .line 197
    .line 198
    iput-object v4, v2, Lf8;->k:Ljava/lang/String;

    .line 199
    .line 200
    const-string v4, "expired_event_params"

    .line 201
    .line 202
    invoke-static {v1, v4, v8, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Landroid/os/Bundle;

    .line 207
    .line 208
    iput-object v4, v2, Lf8;->l:Landroid/os/Bundle;

    .line 209
    .line 210
    const-class v4, Ljava/lang/Boolean;

    .line 211
    .line 212
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 213
    .line 214
    const-string v6, "active"

    .line 215
    .line 216
    invoke-static {v1, v6, v4, v5}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    iput-boolean v4, v2, Lf8;->n:Z

    .line 227
    .line 228
    const-string v4, "creation_timestamp"

    .line 229
    .line 230
    invoke-static {v1, v4, v7, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Ljava/lang/Long;

    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 237
    .line 238
    .line 239
    move-result-wide v4

    .line 240
    iput-wide v4, v2, Lf8;->m:J

    .line 241
    .line 242
    const-string v4, "triggered_timestamp"

    .line 243
    .line 244
    invoke-static {v1, v4, v7, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Ljava/lang/Long;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    iput-wide v3, v2, Lf8;->o:J

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La61;->a:Ln03;

    .line 4
    .line 5
    invoke-interface {v1}, Ln03;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    .line 10
    .line 11
    if-eqz v2, :cond_29

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    const-string v7, ""

    .line 24
    .line 25
    if-ge v6, v4, :cond_4

    .line 26
    .line 27
    move-object/from16 v8, p1

    .line 28
    .line 29
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    add-int/lit8 v6, v6, 0x1

    .line 34
    .line 35
    check-cast v9, Ljava/util/Map;

    .line 36
    .line 37
    sget-object v10, Ln2;->g:[Ljava/lang/String;

    .line 38
    .line 39
    const-string v10, "triggerEvent"

    .line 40
    .line 41
    new-instance v11, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v12, Ln2;->g:[Ljava/lang/String;

    .line 47
    .line 48
    const/4 v13, 0x0

    .line 49
    :goto_1
    const/4 v14, 0x5

    .line 50
    if-ge v13, v14, :cond_1

    .line 51
    .line 52
    aget-object v14, v12, v13

    .line 53
    .line 54
    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v15

    .line 58
    if-nez v15, :cond_0

    .line 59
    .line 60
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    add-int/lit8 v13, v13, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    if-eqz v12, :cond_3

    .line 71
    .line 72
    :try_start_0
    sget-object v11, Ln2;->h:Ljava/text/SimpleDateFormat;

    .line 73
    .line 74
    const-string v12, "experimentStartTime"

    .line 75
    .line 76
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    check-cast v12, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v17

    .line 86
    const-string v11, "triggerTimeoutMillis"

    .line 87
    .line 88
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    check-cast v11, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v18

    .line 98
    const-string v11, "timeToLiveMillis"

    .line 99
    .line 100
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    check-cast v11, Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v20

    .line 110
    new-instance v13, Ln2;

    .line 111
    .line 112
    const-string v11, "experimentId"

    .line 113
    .line 114
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    move-object v14, v11

    .line 119
    check-cast v14, Ljava/lang/String;

    .line 120
    .line 121
    const-string v11, "variantId"

    .line 122
    .line 123
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    move-object v15, v11

    .line 128
    check-cast v15, Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_2

    .line 135
    .line 136
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    check-cast v7, Ljava/lang/String;

    .line 141
    .line 142
    :cond_2
    move-object/from16 v16, v7

    .line 143
    .line 144
    invoke-direct/range {v13 .. v21}, Ln2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lm2;

    .line 153
    .line 154
    const-string v2, "Could not process experiment: one of the durations could not be converted into a long."

    .line 155
    .line 156
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    throw v1

    .line 160
    :catch_1
    move-exception v0

    .line 161
    new-instance v1, Lm2;

    .line 162
    .line 163
    const-string v2, "Could not process experiment: parsing experiment start time failed."

    .line 164
    .line 165
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw v1

    .line 169
    :cond_3
    new-instance v0, Lm2;

    .line 170
    .line 171
    const-string v1, "The following keys are missing from the experiment info map: %s"

    .line 172
    .line 173
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    const/4 v6, 0x0

    .line 190
    if-eqz v4, :cond_6

    .line 191
    .line 192
    invoke-interface {v1}, Ln03;->get()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    if-eqz v2, :cond_5

    .line 197
    .line 198
    invoke-virtual {v0}, La61;->b()Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    const/4 v5, 0x0

    .line 207
    :goto_2
    if-ge v5, v2, :cond_27

    .line 208
    .line 209
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    add-int/lit8 v5, v5, 0x1

    .line 214
    .line 215
    check-cast v3, Lf8;

    .line 216
    .line 217
    iget-object v3, v3, Lf8;->b:Ljava/lang/String;

    .line 218
    .line 219
    invoke-interface {v1}, Ln03;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Lg8;

    .line 224
    .line 225
    check-cast v4, Lh8;

    .line 226
    .line 227
    iget-object v4, v4, Lh8;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 228
    .line 229
    iget-object v4, v4, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Luy4;

    .line 230
    .line 231
    new-instance v7, Lox4;

    .line 232
    .line 233
    invoke-direct {v7, v4, v3, v6, v6}, Lox4;-><init>(Luy4;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v7}, Luy4;->c(Lmy4;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_5
    new-instance v0, Lm2;

    .line 241
    .line 242
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :cond_6
    invoke-interface {v1}, Ln03;->get()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    if-eqz v4, :cond_28

    .line 251
    .line 252
    invoke-virtual {v0}, La61;->b()Ljava/util/ArrayList;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    new-instance v4, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    const/4 v9, 0x0

    .line 266
    :goto_3
    if-ge v9, v8, :cond_8

    .line 267
    .line 268
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    add-int/lit8 v9, v9, 0x1

    .line 273
    .line 274
    check-cast v10, Lf8;

    .line 275
    .line 276
    sget-object v11, Ln2;->g:[Ljava/lang/String;

    .line 277
    .line 278
    iget-object v11, v10, Lf8;->d:Ljava/lang/String;

    .line 279
    .line 280
    if-eqz v11, :cond_7

    .line 281
    .line 282
    move-object v15, v11

    .line 283
    goto :goto_4

    .line 284
    :cond_7
    move-object v15, v7

    .line 285
    :goto_4
    new-instance v12, Ln2;

    .line 286
    .line 287
    iget-object v13, v10, Lf8;->b:Ljava/lang/String;

    .line 288
    .line 289
    iget-object v11, v10, Lf8;->c:Ljava/lang/Object;

    .line 290
    .line 291
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    new-instance v11, Ljava/util/Date;

    .line 296
    .line 297
    iget-wide v5, v10, Lf8;->m:J

    .line 298
    .line 299
    invoke-direct {v11, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 300
    .line 301
    .line 302
    iget-wide v5, v10, Lf8;->e:J

    .line 303
    .line 304
    move-wide/from16 v17, v5

    .line 305
    .line 306
    iget-wide v5, v10, Lf8;->j:J

    .line 307
    .line 308
    move-wide/from16 v19, v5

    .line 309
    .line 310
    move-object/from16 v16, v11

    .line 311
    .line 312
    invoke-direct/range {v12 .. v20}, Ln2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    const/4 v6, 0x0

    .line 319
    goto :goto_3

    .line 320
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    const/4 v6, 0x0

    .line 330
    :cond_9
    :goto_5
    if-ge v6, v5, :cond_a

    .line 331
    .line 332
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    add-int/lit8 v6, v6, 0x1

    .line 337
    .line 338
    check-cast v7, Ln2;

    .line 339
    .line 340
    invoke-static {v2, v7}, La61;->a(Ljava/util/ArrayList;Ln2;)Z

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    if-nez v8, :cond_9

    .line 345
    .line 346
    invoke-virtual {v7}, Ln2;->a()Lf8;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    const/4 v6, 0x0

    .line 359
    :goto_6
    if-ge v6, v5, :cond_b

    .line 360
    .line 361
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    add-int/lit8 v6, v6, 0x1

    .line 366
    .line 367
    check-cast v7, Lf8;

    .line 368
    .line 369
    iget-object v7, v7, Lf8;->b:Ljava/lang/String;

    .line 370
    .line 371
    invoke-interface {v1}, Ln03;->get()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    check-cast v8, Lg8;

    .line 376
    .line 377
    check-cast v8, Lh8;

    .line 378
    .line 379
    iget-object v8, v8, Lh8;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 380
    .line 381
    iget-object v8, v8, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Luy4;

    .line 382
    .line 383
    new-instance v9, Lox4;

    .line 384
    .line 385
    const/4 v10, 0x0

    .line 386
    invoke-direct {v9, v8, v7, v10, v10}, Lox4;-><init>(Luy4;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8, v9}, Luy4;->c(Lmy4;)V

    .line 390
    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    const/4 v6, 0x0

    .line 403
    :cond_c
    :goto_7
    if-ge v6, v5, :cond_d

    .line 404
    .line 405
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    add-int/lit8 v6, v6, 0x1

    .line 410
    .line 411
    check-cast v7, Ln2;

    .line 412
    .line 413
    invoke-static {v4, v7}, La61;->a(Ljava/util/ArrayList;Ln2;)Z

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    if-nez v8, :cond_c

    .line 418
    .line 419
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_d
    new-instance v2, Ljava/util/ArrayDeque;

    .line 424
    .line 425
    invoke-virtual {v0}, La61;->b()Ljava/util/ArrayList;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    invoke-direct {v2, v4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 430
    .line 431
    .line 432
    iget-object v4, v0, La61;->b:Ljava/lang/Integer;

    .line 433
    .line 434
    const-string v5, "frc"

    .line 435
    .line 436
    if-nez v4, :cond_e

    .line 437
    .line 438
    invoke-interface {v1}, Ln03;->get()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    check-cast v4, Lg8;

    .line 443
    .line 444
    check-cast v4, Lh8;

    .line 445
    .line 446
    iget-object v4, v4, Lh8;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 447
    .line 448
    iget-object v4, v4, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Luy4;

    .line 449
    .line 450
    invoke-virtual {v4, v5}, Luy4;->b(Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    iput-object v4, v0, La61;->b:Ljava/lang/Integer;

    .line 459
    .line 460
    :cond_e
    iget-object v0, v0, La61;->b:Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    const/4 v0, 0x0

    .line 471
    :goto_8
    if-ge v0, v6, :cond_27

    .line 472
    .line 473
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    add-int/lit8 v8, v0, 0x1

    .line 478
    .line 479
    check-cast v7, Ln2;

    .line 480
    .line 481
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-lt v0, v4, :cond_f

    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    check-cast v0, Lf8;

    .line 492
    .line 493
    iget-object v0, v0, Lf8;->b:Ljava/lang/String;

    .line 494
    .line 495
    invoke-interface {v1}, Ln03;->get()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    check-cast v9, Lg8;

    .line 500
    .line 501
    check-cast v9, Lh8;

    .line 502
    .line 503
    iget-object v9, v9, Lh8;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 504
    .line 505
    iget-object v9, v9, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Luy4;

    .line 506
    .line 507
    new-instance v10, Lox4;

    .line 508
    .line 509
    const/4 v11, 0x0

    .line 510
    invoke-direct {v10, v9, v0, v11, v11}, Lox4;-><init>(Luy4;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v9, v10}, Luy4;->c(Lmy4;)V

    .line 514
    .line 515
    .line 516
    goto :goto_9

    .line 517
    :cond_f
    const/4 v11, 0x0

    .line 518
    invoke-virtual {v7}, Ln2;->a()Lf8;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    invoke-interface {v1}, Ln03;->get()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    check-cast v0, Lg8;

    .line 527
    .line 528
    move-object v9, v0

    .line 529
    check-cast v9, Lh8;

    .line 530
    .line 531
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    sget-object v0, Lgv4;->a:Lnp1;

    .line 535
    .line 536
    iget-object v10, v7, Lf8;->a:Ljava/lang/String;

    .line 537
    .line 538
    if-eqz v10, :cond_12

    .line 539
    .line 540
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-nez v0, :cond_12

    .line 545
    .line 546
    iget-object v0, v7, Lf8;->c:Ljava/lang/Object;

    .line 547
    .line 548
    if-eqz v0, :cond_13

    .line 549
    .line 550
    :try_start_1
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    .line 551
    .line 552
    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 553
    .line 554
    .line 555
    new-instance v13, Ljava/io/ObjectOutputStream;

    .line 556
    .line 557
    invoke-direct {v13, v12}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 558
    .line 559
    .line 560
    :try_start_2
    invoke-virtual {v13, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v13}, Ljava/io/ObjectOutputStream;->flush()V

    .line 564
    .line 565
    .line 566
    new-instance v14, Ljava/io/ObjectInputStream;

    .line 567
    .line 568
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 569
    .line 570
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 571
    .line 572
    .line 573
    move-result-object v12

    .line 574
    invoke-direct {v0, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 575
    .line 576
    .line 577
    invoke-direct {v14, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 578
    .line 579
    .line 580
    :try_start_3
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    :try_start_4
    invoke-virtual {v13}, Ljava/io/ObjectOutputStream;->close()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V

    .line 588
    .line 589
    .line 590
    goto :goto_b

    .line 591
    :catchall_0
    move-exception v0

    .line 592
    goto :goto_a

    .line 593
    :catchall_1
    move-exception v0

    .line 594
    move-object v14, v11

    .line 595
    goto :goto_a

    .line 596
    :catchall_2
    move-exception v0

    .line 597
    move-object v13, v11

    .line 598
    move-object v14, v13

    .line 599
    :goto_a
    if-eqz v13, :cond_10

    .line 600
    .line 601
    invoke-virtual {v13}, Ljava/io/ObjectOutputStream;->close()V

    .line 602
    .line 603
    .line 604
    :cond_10
    if-eqz v14, :cond_11

    .line 605
    .line 606
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V

    .line 607
    .line 608
    .line 609
    :cond_11
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 610
    :catch_2
    move-object v0, v11

    .line 611
    :goto_b
    if-eqz v0, :cond_12

    .line 612
    .line 613
    goto :goto_d

    .line 614
    :cond_12
    :goto_c
    const/4 v12, 0x0

    .line 615
    goto/16 :goto_10

    .line 616
    .line 617
    :cond_13
    :goto_d
    sget-object v0, Lgv4;->c:Lz43;

    .line 618
    .line 619
    invoke-virtual {v0, v10}, Llp1;->contains(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-nez v0, :cond_12

    .line 624
    .line 625
    iget-object v0, v7, Lf8;->b:Ljava/lang/String;

    .line 626
    .line 627
    const-string v12, "_ce1"

    .line 628
    .line 629
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v12

    .line 633
    const-string v13, "fcm"

    .line 634
    .line 635
    if-nez v12, :cond_18

    .line 636
    .line 637
    const-string v12, "_ce2"

    .line 638
    .line 639
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v12

    .line 643
    if-eqz v12, :cond_14

    .line 644
    .line 645
    goto :goto_e

    .line 646
    :cond_14
    const-string v12, "_ln"

    .line 647
    .line 648
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v12

    .line 652
    if-eqz v12, :cond_15

    .line 653
    .line 654
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    if-nez v0, :cond_19

    .line 659
    .line 660
    const-string v0, "fiam"

    .line 661
    .line 662
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    if-eqz v0, :cond_12

    .line 667
    .line 668
    goto :goto_f

    .line 669
    :cond_15
    sget-object v12, Lgv4;->e:Lz43;

    .line 670
    .line 671
    invoke-virtual {v12, v0}, Llp1;->contains(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v12

    .line 675
    if-eqz v12, :cond_16

    .line 676
    .line 677
    goto :goto_c

    .line 678
    :cond_16
    sget-object v12, Lgv4;->f:Lz43;

    .line 679
    .line 680
    iget v13, v12, Lz43;->q:I

    .line 681
    .line 682
    const/4 v14, 0x0

    .line 683
    :cond_17
    if-ge v14, v13, :cond_19

    .line 684
    .line 685
    invoke-virtual {v12, v14}, Lz43;->get(I)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v15

    .line 689
    check-cast v15, Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v0, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 692
    .line 693
    .line 694
    move-result v15

    .line 695
    add-int/lit8 v14, v14, 0x1

    .line 696
    .line 697
    if-eqz v15, :cond_17

    .line 698
    .line 699
    goto :goto_c

    .line 700
    :cond_18
    :goto_e
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    if-nez v0, :cond_19

    .line 705
    .line 706
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-eqz v0, :cond_12

    .line 711
    .line 712
    :cond_19
    :goto_f
    iget-object v0, v7, Lf8;->k:Ljava/lang/String;

    .line 713
    .line 714
    if-eqz v0, :cond_1a

    .line 715
    .line 716
    iget-object v12, v7, Lf8;->l:Landroid/os/Bundle;

    .line 717
    .line 718
    invoke-static {v0, v12}, Lgv4;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_12

    .line 723
    .line 724
    iget-object v0, v7, Lf8;->k:Ljava/lang/String;

    .line 725
    .line 726
    iget-object v12, v7, Lf8;->l:Landroid/os/Bundle;

    .line 727
    .line 728
    invoke-static {v10, v0, v12}, Lgv4;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    if-eqz v0, :cond_12

    .line 733
    .line 734
    :cond_1a
    iget-object v0, v7, Lf8;->h:Ljava/lang/String;

    .line 735
    .line 736
    if-eqz v0, :cond_1b

    .line 737
    .line 738
    iget-object v12, v7, Lf8;->i:Landroid/os/Bundle;

    .line 739
    .line 740
    invoke-static {v0, v12}, Lgv4;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-eqz v0, :cond_12

    .line 745
    .line 746
    iget-object v0, v7, Lf8;->h:Ljava/lang/String;

    .line 747
    .line 748
    iget-object v12, v7, Lf8;->i:Landroid/os/Bundle;

    .line 749
    .line 750
    invoke-static {v10, v0, v12}, Lgv4;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 751
    .line 752
    .line 753
    move-result v0

    .line 754
    if-eqz v0, :cond_12

    .line 755
    .line 756
    :cond_1b
    iget-object v0, v7, Lf8;->f:Ljava/lang/String;

    .line 757
    .line 758
    if-eqz v0, :cond_1c

    .line 759
    .line 760
    iget-object v12, v7, Lf8;->g:Landroid/os/Bundle;

    .line 761
    .line 762
    invoke-static {v0, v12}, Lgv4;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    if-eqz v0, :cond_12

    .line 767
    .line 768
    iget-object v0, v7, Lf8;->f:Ljava/lang/String;

    .line 769
    .line 770
    iget-object v12, v7, Lf8;->g:Landroid/os/Bundle;

    .line 771
    .line 772
    invoke-static {v10, v0, v12}, Lgv4;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    if-eqz v0, :cond_12

    .line 777
    .line 778
    :cond_1c
    iget-object v0, v9, Lh8;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 779
    .line 780
    new-instance v9, Landroid/os/Bundle;

    .line 781
    .line 782
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 783
    .line 784
    .line 785
    iget-object v10, v7, Lf8;->a:Ljava/lang/String;

    .line 786
    .line 787
    if-eqz v10, :cond_1d

    .line 788
    .line 789
    const-string v12, "origin"

    .line 790
    .line 791
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    :cond_1d
    iget-object v10, v7, Lf8;->b:Ljava/lang/String;

    .line 795
    .line 796
    if-eqz v10, :cond_1e

    .line 797
    .line 798
    const-string v12, "name"

    .line 799
    .line 800
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    :cond_1e
    iget-object v10, v7, Lf8;->c:Ljava/lang/Object;

    .line 804
    .line 805
    if-eqz v10, :cond_1f

    .line 806
    .line 807
    invoke-static {v9, v10}, Lil4;->b(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 808
    .line 809
    .line 810
    :cond_1f
    iget-object v10, v7, Lf8;->d:Ljava/lang/String;

    .line 811
    .line 812
    if-eqz v10, :cond_20

    .line 813
    .line 814
    const-string v12, "trigger_event_name"

    .line 815
    .line 816
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    :cond_20
    iget-wide v12, v7, Lf8;->e:J

    .line 820
    .line 821
    const-string v10, "trigger_timeout"

    .line 822
    .line 823
    invoke-virtual {v9, v10, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 824
    .line 825
    .line 826
    iget-object v10, v7, Lf8;->f:Ljava/lang/String;

    .line 827
    .line 828
    if-eqz v10, :cond_21

    .line 829
    .line 830
    const-string v12, "timed_out_event_name"

    .line 831
    .line 832
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    :cond_21
    iget-object v10, v7, Lf8;->g:Landroid/os/Bundle;

    .line 836
    .line 837
    if-eqz v10, :cond_22

    .line 838
    .line 839
    const-string v12, "timed_out_event_params"

    .line 840
    .line 841
    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 842
    .line 843
    .line 844
    :cond_22
    iget-object v10, v7, Lf8;->h:Ljava/lang/String;

    .line 845
    .line 846
    if-eqz v10, :cond_23

    .line 847
    .line 848
    const-string v12, "triggered_event_name"

    .line 849
    .line 850
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    :cond_23
    iget-object v10, v7, Lf8;->i:Landroid/os/Bundle;

    .line 854
    .line 855
    if-eqz v10, :cond_24

    .line 856
    .line 857
    const-string v12, "triggered_event_params"

    .line 858
    .line 859
    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 860
    .line 861
    .line 862
    :cond_24
    iget-wide v12, v7, Lf8;->j:J

    .line 863
    .line 864
    const-string v10, "time_to_live"

    .line 865
    .line 866
    invoke-virtual {v9, v10, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 867
    .line 868
    .line 869
    iget-object v10, v7, Lf8;->k:Ljava/lang/String;

    .line 870
    .line 871
    if-eqz v10, :cond_25

    .line 872
    .line 873
    const-string v12, "expired_event_name"

    .line 874
    .line 875
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    :cond_25
    iget-object v10, v7, Lf8;->l:Landroid/os/Bundle;

    .line 879
    .line 880
    if-eqz v10, :cond_26

    .line 881
    .line 882
    const-string v12, "expired_event_params"

    .line 883
    .line 884
    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 885
    .line 886
    .line 887
    :cond_26
    iget-wide v12, v7, Lf8;->m:J

    .line 888
    .line 889
    const-string v10, "creation_timestamp"

    .line 890
    .line 891
    invoke-virtual {v9, v10, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 892
    .line 893
    .line 894
    iget-boolean v10, v7, Lf8;->n:Z

    .line 895
    .line 896
    const-string v12, "active"

    .line 897
    .line 898
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 899
    .line 900
    .line 901
    iget-wide v12, v7, Lf8;->o:J

    .line 902
    .line 903
    const-string v10, "triggered_timestamp"

    .line 904
    .line 905
    invoke-virtual {v9, v10, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 906
    .line 907
    .line 908
    iget-object v0, v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Luy4;

    .line 909
    .line 910
    new-instance v10, Lnx4;

    .line 911
    .line 912
    const/4 v12, 0x0

    .line 913
    invoke-direct {v10, v0, v9, v12}, Lnx4;-><init>(Luy4;Landroid/os/Bundle;I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0, v10}, Luy4;->c(Lmy4;)V

    .line 917
    .line 918
    .line 919
    :goto_10
    invoke-virtual {v2, v7}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    move v0, v8

    .line 923
    goto/16 :goto_8

    .line 924
    .line 925
    :cond_27
    return-void

    .line 926
    :cond_28
    new-instance v0, Lm2;

    .line 927
    .line 928
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    throw v0

    .line 932
    :cond_29
    new-instance v0, Lm2;

    .line 933
    .line 934
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    throw v0
.end method
