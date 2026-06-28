.class public final synthetic Lfa0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln03;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lfa0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lfa0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lfa0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lfa0;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const-class v4, Lv03;

    .line 8
    .line 9
    iget-object v5, v0, Lfa0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, v0, Lfa0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Le61;

    .line 17
    .line 18
    check-cast v5, Landroid/content/Context;

    .line 19
    .line 20
    new-instance v1, Lcm0;

    .line 21
    .line 22
    invoke-virtual {v0}, Le61;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget-object v0, v0, Le61;->d:Lga0;

    .line 27
    .line 28
    invoke-interface {v0, v4}, Lw90;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lv03;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v4, "com.google.firebase.common.prefs:"

    .line 42
    .line 43
    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "firebase_data_collection_default_enabled"

    .line 52
    .line 53
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/16 v5, 0x80

    .line 75
    .line 76
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    :cond_1
    :goto_0
    iput-boolean v2, v1, Lcm0;->a:Z

    .line 99
    .line 100
    return-object v1

    .line 101
    :pswitch_0
    check-cast v0, Landroid/content/Context;

    .line 102
    .line 103
    check-cast v5, Ljava/lang/String;

    .line 104
    .line 105
    new-instance v1, Lpj1;

    .line 106
    .line 107
    invoke-direct {v1, v0, v5}, Lpj1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :pswitch_1
    check-cast v0, Lga0;

    .line 112
    .line 113
    check-cast v5, Li90;

    .line 114
    .line 115
    iget-object v1, v5, Li90;->f:Laa0;

    .line 116
    .line 117
    new-instance v6, Lhg;

    .line 118
    .line 119
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v7, Ljava/util/HashSet;

    .line 123
    .line 124
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v8, Ljava/util/HashSet;

    .line 128
    .line 129
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v9, Ljava/util/HashSet;

    .line 133
    .line 134
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v10, Ljava/util/HashSet;

    .line 138
    .line 139
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v11, Ljava/util/HashSet;

    .line 143
    .line 144
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v12, v5, Li90;->c:Ljava/util/Set;

    .line 148
    .line 149
    iget-object v5, v5, Li90;->g:Ljava/util/Set;

    .line 150
    .line 151
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    if-eqz v13, :cond_7

    .line 160
    .line 161
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    check-cast v13, Lfs0;

    .line 166
    .line 167
    iget v14, v13, Lfs0;->c:I

    .line 168
    .line 169
    iget v15, v13, Lfs0;->b:I

    .line 170
    .line 171
    if-nez v14, :cond_2

    .line 172
    .line 173
    move/from16 v16, v2

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_2
    move/from16 v16, v3

    .line 177
    .line 178
    :goto_2
    iget-object v13, v13, Lfs0;->a:Lz03;

    .line 179
    .line 180
    const/4 v2, 0x2

    .line 181
    if-eqz v16, :cond_4

    .line 182
    .line 183
    if-ne v15, v2, :cond_3

    .line 184
    .line 185
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_3
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    if-ne v14, v2, :cond_5

    .line 194
    .line 195
    invoke-virtual {v9, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_5
    if-ne v15, v2, :cond_6

    .line 200
    .line 201
    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_6
    invoke-virtual {v8, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :goto_3
    const/4 v2, 0x1

    .line 209
    goto :goto_1

    .line 210
    :cond_7
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-nez v2, :cond_8

    .line 215
    .line 216
    invoke-static {v4}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    :cond_8
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    iput-object v2, v6, Lhg;->a:Ljava/lang/Object;

    .line 228
    .line 229
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    iput-object v2, v6, Lhg;->b:Ljava/lang/Object;

    .line 234
    .line 235
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iput-object v2, v6, Lhg;->c:Ljava/lang/Object;

    .line 240
    .line 241
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iput-object v2, v6, Lhg;->d:Ljava/lang/Object;

    .line 246
    .line 247
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    iput-object v2, v6, Lhg;->e:Ljava/lang/Object;

    .line 252
    .line 253
    iput-object v0, v6, Lhg;->f:Ljava/lang/Object;

    .line 254
    .line 255
    invoke-interface {v1, v6}, Laa0;->j(Lhg;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    return-object v0

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
