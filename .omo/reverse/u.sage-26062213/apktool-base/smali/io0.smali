.class public final Lio0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqh0;


# instance fields
.field public final a:Lzw2;

.field public volatile b:Lho0;


# direct methods
.method public constructor <init>(Lzw2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio0;->a:Lzw2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lrl1;)Lnh0;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lio0;->b:Lho0;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, v1, Lio0;->b:Lho0;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lm13;

    .line 13
    .line 14
    new-instance v2, Lou;

    .line 15
    .line 16
    const/4 v3, 0x7

    .line 17
    invoke-direct {v2, v3}, Lou;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lou;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v4, v5}, Lou;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lou;

    .line 27
    .line 28
    const/4 v7, 0x5

    .line 29
    invoke-direct {v6, v7}, Lou;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iget-object v8, v1, Lio0;->a:Lzw2;

    .line 33
    .line 34
    invoke-static {v6, v8}, Ls03;->e(Lu80;Lzw2;)Lu80;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-instance v8, Lou;

    .line 39
    .line 40
    const/4 v9, 0x6

    .line 41
    invoke-direct {v8, v9}, Lou;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v10, Llu;

    .line 45
    .line 46
    invoke-direct {v10, v5}, Llu;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Llu;

    .line 50
    .line 51
    const/4 v12, 0x2

    .line 52
    invoke-direct {v11, v12}, Llu;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v13, Llu;

    .line 56
    .line 57
    const/4 v14, 0x0

    .line 58
    invoke-direct {v13, v14}, Llu;-><init>(I)V

    .line 59
    .line 60
    .line 61
    new-instance v15, Lou;

    .line 62
    .line 63
    move/from16 p1, v3

    .line 64
    .line 65
    const/4 v3, 0x3

    .line 66
    invoke-direct {v15, v3}, Lou;-><init>(I)V

    .line 67
    .line 68
    .line 69
    move/from16 v16, v3

    .line 70
    .line 71
    new-instance v3, Lou;

    .line 72
    .line 73
    move/from16 v17, v7

    .line 74
    .line 75
    const/4 v7, 0x4

    .line 76
    invoke-direct {v3, v7}, Lou;-><init>(I)V

    .line 77
    .line 78
    .line 79
    move/from16 v18, v9

    .line 80
    .line 81
    const/16 v9, 0x9

    .line 82
    .line 83
    new-array v9, v9, [Lu80;

    .line 84
    .line 85
    aput-object v2, v9, v14

    .line 86
    .line 87
    aput-object v4, v9, v5

    .line 88
    .line 89
    aput-object v6, v9, v12

    .line 90
    .line 91
    aput-object v8, v9, v16

    .line 92
    .line 93
    aput-object v10, v9, v7

    .line 94
    .line 95
    aput-object v11, v9, v17

    .line 96
    .line 97
    aput-object v13, v9, v18

    .line 98
    .line 99
    aput-object v15, v9, p1

    .line 100
    .line 101
    const/16 v2, 0x8

    .line 102
    .line 103
    aput-object v3, v9, v2

    .line 104
    .line 105
    invoke-direct {v0, v14, v9}, Lk13;-><init>(Z[Lu80;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lk13;

    .line 109
    .line 110
    new-instance v3, Llu;

    .line 111
    .line 112
    invoke-direct {v3, v7}, Llu;-><init>(I)V

    .line 113
    .line 114
    .line 115
    new-instance v4, Lou;

    .line 116
    .line 117
    invoke-direct {v4, v5}, Lou;-><init>(I)V

    .line 118
    .line 119
    .line 120
    new-instance v6, Lou;

    .line 121
    .line 122
    invoke-direct {v6, v12}, Lou;-><init>(I)V

    .line 123
    .line 124
    .line 125
    iget-object v8, v1, Lio0;->a:Lzw2;

    .line 126
    .line 127
    invoke-static {v6, v8}, Ls03;->e(Lu80;Lzw2;)Lu80;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    new-instance v8, Llu;

    .line 132
    .line 133
    invoke-direct {v8, v5}, Llu;-><init>(I)V

    .line 134
    .line 135
    .line 136
    new-instance v9, Llu;

    .line 137
    .line 138
    invoke-direct {v9, v12}, Llu;-><init>(I)V

    .line 139
    .line 140
    .line 141
    new-instance v10, Llu;

    .line 142
    .line 143
    invoke-direct {v10, v14}, Llu;-><init>(I)V

    .line 144
    .line 145
    .line 146
    move/from16 v11, v18

    .line 147
    .line 148
    new-array v11, v11, [Lu80;

    .line 149
    .line 150
    aput-object v3, v11, v14

    .line 151
    .line 152
    aput-object v4, v11, v5

    .line 153
    .line 154
    aput-object v6, v11, v12

    .line 155
    .line 156
    aput-object v8, v11, v16

    .line 157
    .line 158
    aput-object v9, v11, v7

    .line 159
    .line 160
    aput-object v10, v11, v17

    .line 161
    .line 162
    invoke-direct {v2, v14, v11}, Lk13;-><init>(Z[Lu80;)V

    .line 163
    .line 164
    .line 165
    new-instance v3, Lpy;

    .line 166
    .line 167
    new-instance v4, Lou;

    .line 168
    .line 169
    invoke-direct {v4, v14}, Lou;-><init>(I)V

    .line 170
    .line 171
    .line 172
    iget-object v6, v1, Lio0;->a:Lzw2;

    .line 173
    .line 174
    invoke-static {v4, v6}, Ls03;->e(Lu80;Lzw2;)Lu80;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    new-instance v6, Lou;

    .line 179
    .line 180
    invoke-direct {v6, v5}, Lou;-><init>(I)V

    .line 181
    .line 182
    .line 183
    new-instance v8, Llu;

    .line 184
    .line 185
    invoke-direct {v8, v12}, Llu;-><init>(I)V

    .line 186
    .line 187
    .line 188
    new-instance v9, Llu;

    .line 189
    .line 190
    invoke-direct {v9, v14}, Llu;-><init>(I)V

    .line 191
    .line 192
    .line 193
    new-instance v10, Lpu;

    .line 194
    .line 195
    const-string v11, "EEE, dd-MMM-yy HH:mm:ss z"

    .line 196
    .line 197
    filled-new-array {v11}, [Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-direct {v10, v11}, Lpu;-><init>([Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    move/from16 v11, v17

    .line 205
    .line 206
    new-array v11, v11, [Lu80;

    .line 207
    .line 208
    aput-object v4, v11, v14

    .line 209
    .line 210
    aput-object v6, v11, v5

    .line 211
    .line 212
    aput-object v8, v11, v12

    .line 213
    .line 214
    aput-object v9, v11, v16

    .line 215
    .line 216
    aput-object v10, v11, v7

    .line 217
    .line 218
    invoke-direct {v3, v11}, Lpy;-><init>([Lu80;)V

    .line 219
    .line 220
    .line 221
    new-instance v4, Lho0;

    .line 222
    .line 223
    invoke-direct {v4, v0, v2, v3}, Lho0;-><init>(Lm13;Lk13;Lpy;)V

    .line 224
    .line 225
    .line 226
    iput-object v4, v1, Lio0;->b:Lho0;

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    goto :goto_1

    .line 231
    :cond_0
    :goto_0
    monitor-exit p0

    .line 232
    goto :goto_2

    .line 233
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    throw v0

    .line 235
    :cond_1
    :goto_2
    iget-object v0, v1, Lio0;->b:Lho0;

    .line 236
    .line 237
    return-object v0
.end method
