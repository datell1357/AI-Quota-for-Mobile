.class public Lho0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lnh0;


# instance fields
.field public final a:Lm13;

.field public final b:Lk13;

.field public final c:Lpy;


# direct methods
.method public constructor <init>(Lm13;Lk13;Lpy;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lho0;->a:Lm13;

    .line 221
    iput-object p2, p0, Lho0;->b:Lk13;

    .line 222
    iput-object p3, p0, Lho0;->c:Lpy;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lm13;

    .line 9
    .line 10
    new-instance v3, Lou;

    .line 11
    .line 12
    const/4 v4, 0x7

    .line 13
    invoke-direct {v3, v4}, Lou;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Lou;

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    invoke-direct {v5, v6}, Lou;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v7, Lou;

    .line 23
    .line 24
    const/4 v8, 0x5

    .line 25
    invoke-direct {v7, v8}, Lou;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v9, Lou;

    .line 29
    .line 30
    const/4 v10, 0x6

    .line 31
    invoke-direct {v9, v10}, Lou;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v11, Llu;

    .line 35
    .line 36
    invoke-direct {v11, v6}, Llu;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v12, Llu;

    .line 40
    .line 41
    const/4 v13, 0x2

    .line 42
    invoke-direct {v12, v13}, Llu;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v14, Llu;

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    invoke-direct {v14, v15}, Llu;-><init>(I)V

    .line 49
    .line 50
    .line 51
    move/from16 v16, v4

    .line 52
    .line 53
    new-instance v4, Lou;

    .line 54
    .line 55
    move/from16 v17, v8

    .line 56
    .line 57
    const/4 v8, 0x3

    .line 58
    invoke-direct {v4, v8}, Lou;-><init>(I)V

    .line 59
    .line 60
    .line 61
    move/from16 v18, v8

    .line 62
    .line 63
    new-instance v8, Lou;

    .line 64
    .line 65
    move/from16 v19, v10

    .line 66
    .line 67
    const/4 v10, 0x4

    .line 68
    invoke-direct {v8, v10}, Lou;-><init>(I)V

    .line 69
    .line 70
    .line 71
    move/from16 v20, v15

    .line 72
    .line 73
    const/16 v15, 0x9

    .line 74
    .line 75
    new-array v15, v15, [Lu80;

    .line 76
    .line 77
    aput-object v3, v15, v20

    .line 78
    .line 79
    aput-object v5, v15, v6

    .line 80
    .line 81
    aput-object v7, v15, v13

    .line 82
    .line 83
    aput-object v9, v15, v18

    .line 84
    .line 85
    aput-object v11, v15, v10

    .line 86
    .line 87
    aput-object v12, v15, v17

    .line 88
    .line 89
    aput-object v14, v15, v19

    .line 90
    .line 91
    aput-object v4, v15, v16

    .line 92
    .line 93
    const/16 v3, 0x8

    .line 94
    .line 95
    aput-object v8, v15, v3

    .line 96
    .line 97
    invoke-direct {v2, v1, v15}, Lk13;-><init>(Z[Lu80;)V

    .line 98
    .line 99
    .line 100
    iput-object v2, v0, Lho0;->a:Lm13;

    .line 101
    .line 102
    new-instance v2, Lk13;

    .line 103
    .line 104
    new-instance v3, Llu;

    .line 105
    .line 106
    invoke-direct {v3, v10}, Llu;-><init>(I)V

    .line 107
    .line 108
    .line 109
    new-instance v4, Lou;

    .line 110
    .line 111
    invoke-direct {v4, v6}, Lou;-><init>(I)V

    .line 112
    .line 113
    .line 114
    new-instance v5, Lou;

    .line 115
    .line 116
    invoke-direct {v5, v13}, Lou;-><init>(I)V

    .line 117
    .line 118
    .line 119
    new-instance v7, Llu;

    .line 120
    .line 121
    invoke-direct {v7, v6}, Llu;-><init>(I)V

    .line 122
    .line 123
    .line 124
    new-instance v8, Llu;

    .line 125
    .line 126
    invoke-direct {v8, v13}, Llu;-><init>(I)V

    .line 127
    .line 128
    .line 129
    new-instance v9, Llu;

    .line 130
    .line 131
    move/from16 v11, v20

    .line 132
    .line 133
    invoke-direct {v9, v11}, Llu;-><init>(I)V

    .line 134
    .line 135
    .line 136
    move/from16 v12, v19

    .line 137
    .line 138
    new-array v12, v12, [Lu80;

    .line 139
    .line 140
    aput-object v3, v12, v11

    .line 141
    .line 142
    aput-object v4, v12, v6

    .line 143
    .line 144
    aput-object v5, v12, v13

    .line 145
    .line 146
    aput-object v7, v12, v18

    .line 147
    .line 148
    aput-object v8, v12, v10

    .line 149
    .line 150
    aput-object v9, v12, v17

    .line 151
    .line 152
    invoke-direct {v2, v1, v12}, Lk13;-><init>(Z[Lu80;)V

    .line 153
    .line 154
    .line 155
    iput-object v2, v0, Lho0;->b:Lk13;

    .line 156
    .line 157
    new-instance v1, Lpy;

    .line 158
    .line 159
    new-instance v2, Lou;

    .line 160
    .line 161
    invoke-direct {v2, v11}, Lou;-><init>(I)V

    .line 162
    .line 163
    .line 164
    new-instance v3, Lou;

    .line 165
    .line 166
    invoke-direct {v3, v6}, Lou;-><init>(I)V

    .line 167
    .line 168
    .line 169
    new-instance v4, Llu;

    .line 170
    .line 171
    invoke-direct {v4, v13}, Llu;-><init>(I)V

    .line 172
    .line 173
    .line 174
    new-instance v5, Llu;

    .line 175
    .line 176
    invoke-direct {v5, v11}, Llu;-><init>(I)V

    .line 177
    .line 178
    .line 179
    new-instance v7, Lpu;

    .line 180
    .line 181
    if-eqz p1, :cond_0

    .line 182
    .line 183
    invoke-virtual/range {p1 .. p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    check-cast v8, [Ljava/lang/String;

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_0
    new-array v8, v6, [Ljava/lang/String;

    .line 191
    .line 192
    const-string v9, "EEE, dd-MMM-yy HH:mm:ss z"

    .line 193
    .line 194
    aput-object v9, v8, v11

    .line 195
    .line 196
    :goto_0
    invoke-direct {v7, v8}, Lpu;-><init>([Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    move/from16 v8, v17

    .line 200
    .line 201
    new-array v8, v8, [Lu80;

    .line 202
    .line 203
    aput-object v2, v8, v11

    .line 204
    .line 205
    aput-object v3, v8, v6

    .line 206
    .line 207
    aput-object v4, v8, v13

    .line 208
    .line 209
    aput-object v5, v8, v18

    .line 210
    .line 211
    aput-object v7, v8, v10

    .line 212
    .line 213
    invoke-direct {v1, v8}, Lpy;-><init>([Lu80;)V

    .line 214
    .line 215
    .line 216
    iput-object v1, v0, Lho0;->c:Lpy;

    .line 217
    .line 218
    return-void
.end method


# virtual methods
.method public final a(Lku;Ljh0;)V
    .locals 1

    .line 1
    const-string v0, "Cookie"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lku;->u:I

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    instance-of v0, p1, Lju;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lho0;->a:Lm13;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lm13;->a(Lku;Ljh0;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p0, p0, Lho0;->b:Lk13;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lk13;->a(Lku;Ljh0;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p0, p0, Lho0;->c:Lpy;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Loh0;->a(Lku;Ljh0;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final b(Lku;Ljh0;)Z
    .locals 1

    .line 1
    iget v0, p1, Lku;->u:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lju;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lho0;->a:Lm13;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lm13;->b(Lku;Ljh0;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lho0;->b:Lk13;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Loh0;->b(Lku;Ljh0;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    iget-object p0, p0, Lho0;->c:Lpy;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Loh0;->b(Lku;Ljh0;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final c(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :cond_0
    :goto_0
    if-ge v4, v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    add-int/lit8 v4, v4, 0x1

    .line 18
    .line 19
    check-cast v5, Lku;

    .line 20
    .line 21
    instance-of v6, v5, Lju;

    .line 22
    .line 23
    if-nez v6, :cond_1

    .line 24
    .line 25
    move v2, v3

    .line 26
    :cond_1
    iget v6, v5, Lku;->u:I

    .line 27
    .line 28
    if-ge v6, v1, :cond_0

    .line 29
    .line 30
    iget v1, v5, Lku;->u:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    if-lez v1, :cond_4

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget-object p0, p0, Lho0;->a:Lm13;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lk13;->c(Ljava/util/ArrayList;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_3
    iget-object p0, p0, Lho0;->b:Lk13;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lk13;->c(Ljava/util/ArrayList;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_4
    iget-object p0, p0, Lho0;->c:Lpy;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lpy;->c(Ljava/util/ArrayList;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final d()Lgj1;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final e(Lgj1;Ljh0;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "Header"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lgj1;->a()[Lru;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v3, v1, :cond_2

    .line 16
    .line 17
    aget-object v6, v0, v3

    .line 18
    .line 19
    const-string v7, "version"

    .line 20
    .line 21
    invoke-virtual {v6, v7}, Lru;->a(Ljava/lang/String;)Lsh2;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const/4 v8, 0x1

    .line 26
    if-eqz v7, :cond_0

    .line 27
    .line 28
    move v5, v8

    .line 29
    :cond_0
    const-string v7, "expires"

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Lru;->a(Ljava/lang/String;)Lsh2;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    move v4, v8

    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    if-nez v4, :cond_5

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const-string v1, "Set-Cookie2"

    .line 47
    .line 48
    invoke-interface {p1}, Lsh2;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object p0, p0, Lho0;->a:Lm13;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lm13;->k(Ljh0;)Ljh0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, v0, p1}, Lm13;->l([Lru;Ljh0;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_4
    iget-object p0, p0, Lho0;->b:Lk13;

    .line 73
    .line 74
    invoke-virtual {p0, v0, p2}, Loh0;->h([Lru;Ljh0;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_5
    :goto_1
    sget-object v0, Lfl2;->a:Ljava/util/BitSet;

    .line 80
    .line 81
    instance-of v0, p1, Lcz;

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    check-cast p1, Lcz;

    .line 86
    .line 87
    iget-object v0, p1, Lcz;->o:Lb40;

    .line 88
    .line 89
    new-instance v1, Lky0;

    .line 90
    .line 91
    iget p1, p1, Lcz;->p:I

    .line 92
    .line 93
    iget v2, v0, Lb40;->o:I

    .line 94
    .line 95
    invoke-direct {v1, p1, v2}, Lky0;-><init>(II)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    invoke-interface {p1}, Lsh2;->getValue()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    new-instance v0, Lb40;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-direct {v0, v1}, Lb40;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lb40;->b(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Lky0;

    .line 118
    .line 119
    iget p1, v0, Lb40;->o:I

    .line 120
    .line 121
    invoke-direct {v1, v2, p1}, Lky0;-><init>(II)V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-static {v0, v1}, Lfl2;->a(Lb40;Lky0;)Lru;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    filled-new-array {p1}, [Lru;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p0, p0, Lho0;->c:Lpy;

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Loh0;->h([Lru;Ljh0;)Ljava/util/ArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :cond_7
    new-instance p0, Lq92;

    .line 140
    .line 141
    const-string p1, "Header value is null"

    .line 142
    .line 143
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0
.end method

.method public final f()I
    .locals 0

    .line 1
    iget-object p0, p0, Lho0;->a:Lm13;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "default"

    .line 2
    .line 3
    return-object p0
.end method
