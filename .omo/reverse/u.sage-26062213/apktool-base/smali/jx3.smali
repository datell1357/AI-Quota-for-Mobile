.class public final synthetic Ljx3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljx3;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 7
    iput p1, p0, Ljx3;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 98

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Ljx3;->n:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    new-instance v0, Lw13;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Lw13;-><init>(I)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_1
    sget-object v0, Lr51;->n:Ldx1;

    .line 24
    .line 25
    sget-object v1, Lr51;->o:Lbt2;

    .line 26
    .line 27
    const-string v2, "coil3_disk_cache"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lbt2;->e(Ljava/lang/String;)Lbt2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-wide/32 v4, 0xa00000

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v1}, Lbt2;->toFile()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Landroid/os/StatFs;

    .line 48
    .line 49
    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    mul-long/2addr v2, v6

    .line 61
    long-to-double v2, v2

    .line 62
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    mul-double/2addr v6, v2

    .line 68
    double-to-long v2, v6

    .line 69
    const-wide/32 v6, 0xfa00000

    .line 70
    .line 71
    .line 72
    invoke-static/range {v2 .. v7}, Lix;->l(JJJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    new-instance v2, Ll23;

    .line 77
    .line 78
    invoke-direct {v2, v4, v5, v0, v1}, Ll23;-><init>(JLr51;Lbt2;)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :pswitch_2
    new-instance v0, Le54;

    .line 83
    .line 84
    invoke-direct {v0}, Le54;-><init>()V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    return-object v0

    .line 91
    :pswitch_4
    new-instance v1, Ln50;

    .line 92
    .line 93
    sget-wide v2, Lt70;->f:J

    .line 94
    .line 95
    move-wide v4, v2

    .line 96
    move-wide v6, v2

    .line 97
    move-wide v8, v2

    .line 98
    move-wide v10, v2

    .line 99
    move-wide v12, v2

    .line 100
    move-wide v14, v2

    .line 101
    move-wide/from16 v16, v2

    .line 102
    .line 103
    move-wide/from16 v18, v2

    .line 104
    .line 105
    move-wide/from16 v20, v2

    .line 106
    .line 107
    move-wide/from16 v22, v2

    .line 108
    .line 109
    move-wide/from16 v24, v2

    .line 110
    .line 111
    move-wide/from16 v26, v2

    .line 112
    .line 113
    move-wide/from16 v28, v2

    .line 114
    .line 115
    move-wide/from16 v30, v2

    .line 116
    .line 117
    move-wide/from16 v32, v2

    .line 118
    .line 119
    move-wide/from16 v34, v2

    .line 120
    .line 121
    move-wide/from16 v36, v2

    .line 122
    .line 123
    move-wide/from16 v38, v2

    .line 124
    .line 125
    move-wide/from16 v40, v2

    .line 126
    .line 127
    move-wide/from16 v42, v2

    .line 128
    .line 129
    move-wide/from16 v44, v2

    .line 130
    .line 131
    move-wide/from16 v46, v2

    .line 132
    .line 133
    move-wide/from16 v48, v2

    .line 134
    .line 135
    move-wide/from16 v50, v2

    .line 136
    .line 137
    move-wide/from16 v52, v2

    .line 138
    .line 139
    move-wide/from16 v54, v2

    .line 140
    .line 141
    move-wide/from16 v56, v2

    .line 142
    .line 143
    move-wide/from16 v58, v2

    .line 144
    .line 145
    move-wide/from16 v60, v2

    .line 146
    .line 147
    move-wide/from16 v62, v2

    .line 148
    .line 149
    move-wide/from16 v64, v2

    .line 150
    .line 151
    move-wide/from16 v66, v2

    .line 152
    .line 153
    move-wide/from16 v68, v2

    .line 154
    .line 155
    move-wide/from16 v70, v2

    .line 156
    .line 157
    move-wide/from16 v72, v2

    .line 158
    .line 159
    move-wide/from16 v74, v2

    .line 160
    .line 161
    move-wide/from16 v76, v2

    .line 162
    .line 163
    move-wide/from16 v78, v2

    .line 164
    .line 165
    move-wide/from16 v80, v2

    .line 166
    .line 167
    move-wide/from16 v82, v2

    .line 168
    .line 169
    move-wide/from16 v84, v2

    .line 170
    .line 171
    move-wide/from16 v86, v2

    .line 172
    .line 173
    move-wide/from16 v88, v2

    .line 174
    .line 175
    move-wide/from16 v90, v2

    .line 176
    .line 177
    move-wide/from16 v92, v2

    .line 178
    .line 179
    move-wide/from16 v94, v2

    .line 180
    .line 181
    move-wide/from16 v96, v2

    .line 182
    .line 183
    invoke-direct/range {v1 .. v97}, Ln50;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 184
    .line 185
    .line 186
    return-object v1

    .line 187
    :pswitch_5
    sget-object v0, Lsq0;->a:Lux3;

    .line 188
    .line 189
    return-object v0

    .line 190
    :pswitch_6
    sget-object v0, Lh54;->a:Lay3;

    .line 191
    .line 192
    return-object v0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
