.class public final Luo4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcp4;


# static fields
.field public static final k:[I

.field public static final l:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lsm4;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lbx3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Luo4;->k:[I

    .line 5
    .line 6
    invoke-static {}, Lqp4;->l()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Luo4;->l:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILsm4;[IIILbx3;Lls3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luo4;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Luo4;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Luo4;->c:I

    .line 9
    .line 10
    iput p4, p0, Luo4;->d:I

    .line 11
    .line 12
    instance-of p1, p5, Lrn4;

    .line 13
    .line 14
    iput-boolean p1, p0, Luo4;->f:Z

    .line 15
    .line 16
    iput-object p6, p0, Luo4;->g:[I

    .line 17
    .line 18
    iput p7, p0, Luo4;->h:I

    .line 19
    .line 20
    iput p8, p0, Luo4;->i:I

    .line 21
    .line 22
    iput-object p9, p0, Luo4;->j:Lbx3;

    .line 23
    .line 24
    iput-object p5, p0, Luo4;->e:Lsm4;

    .line 25
    .line 26
    return-void
.end method

.method public static k(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static l(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lrn4;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lrn4;

    .line 10
    .line 11
    invoke-virtual {p0}, Lrn4;->g()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static m(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0}, Luo4;->l(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "Mutating immutable message: "

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static n(JLjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static o(JLjava/lang/Object;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static final w([BIILup4;Ljava/lang/Class;Le91;)I
    .locals 6

    .line 1
    sget-object v0, Lup4;->p:Lup4;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    packed-switch p3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    const-string p1, "unsupported field type."

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :pswitch_1
    invoke-static {p0, p1, p5}, Lvm4;->d([BILe91;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    iget-wide p1, p5, Le91;->b:J

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcn4;->k(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p5, Le91;->d:Ljava/lang/Object;

    .line 33
    .line 34
    return p0

    .line 35
    :pswitch_2
    invoke-static {p0, p1, p5}, Lvm4;->a([BILe91;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iget p1, p5, Le91;->a:I

    .line 40
    .line 41
    invoke-static {p1}, Lcn4;->j(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p5, Le91;->d:Ljava/lang/Object;

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_3
    invoke-static {p0, p1, p5}, Lvm4;->i([BILe91;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :pswitch_4
    sget-object p3, Lzo4;->c:Lzo4;

    .line 58
    .line 59
    invoke-virtual {p3, p4}, Lzo4;->a(Ljava/lang/Class;)Lcp4;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Lcp4;->zza()Lrn4;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v2, p0

    .line 68
    move v3, p1

    .line 69
    move v4, p2

    .line 70
    move-object v5, p5

    .line 71
    invoke-static/range {v0 .. v5}, Lvm4;->j(Ljava/lang/Object;Lcp4;[BIILe91;)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-interface {v1, v0}, Lcp4;->h(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, v5, Le91;->d:Ljava/lang/Object;

    .line 79
    .line 80
    return p0

    .line 81
    :pswitch_5
    move-object v2, p0

    .line 82
    move v3, p1

    .line 83
    move-object v5, p5

    .line 84
    invoke-static {v2, v3, v5}, Lvm4;->h([BILe91;)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    return p0

    .line 89
    :pswitch_6
    move-object v2, p0

    .line 90
    move v3, p1

    .line 91
    move-object v5, p5

    .line 92
    invoke-static {v2, v3, v5}, Lvm4;->d([BILe91;)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    iget-wide p1, v5, Le91;->b:J

    .line 97
    .line 98
    const-wide/16 p3, 0x0

    .line 99
    .line 100
    cmp-long p1, p1, p3

    .line 101
    .line 102
    if-eqz p1, :cond_0

    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const/4 p1, 0x0

    .line 107
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, v5, Le91;->d:Ljava/lang/Object;

    .line 112
    .line 113
    return p0

    .line 114
    :pswitch_7
    move-object v2, p0

    .line 115
    move v3, p1

    .line 116
    move-object v5, p5

    .line 117
    add-int/lit8 p1, v3, 0x4

    .line 118
    .line 119
    invoke-static {v3, v2}, Lvm4;->f(I[B)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    iput-object p0, v5, Le91;->d:Ljava/lang/Object;

    .line 128
    .line 129
    return p1

    .line 130
    :pswitch_8
    move-object v2, p0

    .line 131
    move v3, p1

    .line 132
    move-object v5, p5

    .line 133
    add-int/lit8 p1, v3, 0x8

    .line 134
    .line 135
    invoke-static {v3, v2}, Lvm4;->g(I[B)J

    .line 136
    .line 137
    .line 138
    move-result-wide p2

    .line 139
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    iput-object p0, v5, Le91;->d:Ljava/lang/Object;

    .line 144
    .line 145
    return p1

    .line 146
    :pswitch_9
    move-object v2, p0

    .line 147
    move v3, p1

    .line 148
    move-object v5, p5

    .line 149
    invoke-static {v2, v3, v5}, Lvm4;->a([BILe91;)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    iget p1, v5, Le91;->a:I

    .line 154
    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, v5, Le91;->d:Ljava/lang/Object;

    .line 160
    .line 161
    return p0

    .line 162
    :pswitch_a
    move-object v2, p0

    .line 163
    move v3, p1

    .line 164
    move-object v5, p5

    .line 165
    invoke-static {v2, v3, v5}, Lvm4;->d([BILe91;)I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    iget-wide p1, v5, Le91;->b:J

    .line 170
    .line 171
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iput-object p1, v5, Le91;->d:Ljava/lang/Object;

    .line 176
    .line 177
    return p0

    .line 178
    :pswitch_b
    move-object v2, p0

    .line 179
    move v3, p1

    .line 180
    move-object v5, p5

    .line 181
    add-int/lit8 p1, v3, 0x4

    .line 182
    .line 183
    invoke-static {v3, v2}, Lvm4;->f(I[B)I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    iput-object p0, v5, Le91;->d:Ljava/lang/Object;

    .line 196
    .line 197
    return p1

    .line 198
    :pswitch_c
    move-object v2, p0

    .line 199
    move v3, p1

    .line 200
    move-object v5, p5

    .line 201
    add-int/lit8 p1, v3, 0x8

    .line 202
    .line 203
    invoke-static {v3, v2}, Lvm4;->g(I[B)J

    .line 204
    .line 205
    .line 206
    move-result-wide p2

    .line 207
    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 208
    .line 209
    .line 210
    move-result-wide p2

    .line 211
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    iput-object p0, v5, Le91;->d:Ljava/lang/Object;

    .line 216
    .line 217
    return p1

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static y(Lbp4;Lbx3;Lls3;)Luo4;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Lbp4;

    .line 4
    .line 5
    if-eqz v1, :cond_36

    .line 6
    .line 7
    iget-object v1, v0, Lbp4;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const v5, 0xd800

    .line 19
    .line 20
    .line 21
    if-lt v4, v5, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-lt v4, v5, :cond_1

    .line 31
    .line 32
    move v4, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v7, 0x1

    .line 35
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 36
    .line 37
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-lt v7, v5, :cond_3

    .line 42
    .line 43
    and-int/lit16 v7, v7, 0x1fff

    .line 44
    .line 45
    const/16 v9, 0xd

    .line 46
    .line 47
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lt v4, v5, :cond_2

    .line 54
    .line 55
    and-int/lit16 v4, v4, 0x1fff

    .line 56
    .line 57
    shl-int/2addr v4, v9

    .line 58
    or-int/2addr v7, v4

    .line 59
    add-int/lit8 v9, v9, 0xd

    .line 60
    .line 61
    move v4, v10

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    shl-int/2addr v4, v9

    .line 64
    or-int/2addr v7, v4

    .line 65
    move v4, v10

    .line 66
    :cond_3
    if-nez v7, :cond_4

    .line 67
    .line 68
    sget-object v7, Luo4;->k:[I

    .line 69
    .line 70
    move v9, v3

    .line 71
    move v10, v9

    .line 72
    move v11, v10

    .line 73
    move v12, v11

    .line 74
    move v13, v12

    .line 75
    move/from16 v16, v13

    .line 76
    .line 77
    move-object v15, v7

    .line 78
    move/from16 v7, v16

    .line 79
    .line 80
    goto/16 :goto_a

    .line 81
    .line 82
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-lt v4, v5, :cond_6

    .line 89
    .line 90
    and-int/lit16 v4, v4, 0x1fff

    .line 91
    .line 92
    const/16 v9, 0xd

    .line 93
    .line 94
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 95
    .line 96
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-lt v7, v5, :cond_5

    .line 101
    .line 102
    and-int/lit16 v7, v7, 0x1fff

    .line 103
    .line 104
    shl-int/2addr v7, v9

    .line 105
    or-int/2addr v4, v7

    .line 106
    add-int/lit8 v9, v9, 0xd

    .line 107
    .line 108
    move v7, v10

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    shl-int/2addr v7, v9

    .line 111
    or-int/2addr v4, v7

    .line 112
    move v7, v10

    .line 113
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 114
    .line 115
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-lt v7, v5, :cond_8

    .line 120
    .line 121
    and-int/lit16 v7, v7, 0x1fff

    .line 122
    .line 123
    const/16 v10, 0xd

    .line 124
    .line 125
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 126
    .line 127
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-lt v9, v5, :cond_7

    .line 132
    .line 133
    and-int/lit16 v9, v9, 0x1fff

    .line 134
    .line 135
    shl-int/2addr v9, v10

    .line 136
    or-int/2addr v7, v9

    .line 137
    add-int/lit8 v10, v10, 0xd

    .line 138
    .line 139
    move v9, v11

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    shl-int/2addr v9, v10

    .line 142
    or-int/2addr v7, v9

    .line 143
    move v9, v11

    .line 144
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 145
    .line 146
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-lt v9, v5, :cond_a

    .line 151
    .line 152
    and-int/lit16 v9, v9, 0x1fff

    .line 153
    .line 154
    const/16 v11, 0xd

    .line 155
    .line 156
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 157
    .line 158
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-lt v10, v5, :cond_9

    .line 163
    .line 164
    and-int/lit16 v10, v10, 0x1fff

    .line 165
    .line 166
    shl-int/2addr v10, v11

    .line 167
    or-int/2addr v9, v10

    .line 168
    add-int/lit8 v11, v11, 0xd

    .line 169
    .line 170
    move v10, v12

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    shl-int/2addr v10, v11

    .line 173
    or-int/2addr v9, v10

    .line 174
    move v10, v12

    .line 175
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 176
    .line 177
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-lt v10, v5, :cond_c

    .line 182
    .line 183
    and-int/lit16 v10, v10, 0x1fff

    .line 184
    .line 185
    const/16 v12, 0xd

    .line 186
    .line 187
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 188
    .line 189
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-lt v11, v5, :cond_b

    .line 194
    .line 195
    and-int/lit16 v11, v11, 0x1fff

    .line 196
    .line 197
    shl-int/2addr v11, v12

    .line 198
    or-int/2addr v10, v11

    .line 199
    add-int/lit8 v12, v12, 0xd

    .line 200
    .line 201
    move v11, v13

    .line 202
    goto :goto_5

    .line 203
    :cond_b
    shl-int/2addr v11, v12

    .line 204
    or-int/2addr v10, v11

    .line 205
    move v11, v13

    .line 206
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 207
    .line 208
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-lt v11, v5, :cond_e

    .line 213
    .line 214
    and-int/lit16 v11, v11, 0x1fff

    .line 215
    .line 216
    const/16 v13, 0xd

    .line 217
    .line 218
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 219
    .line 220
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-lt v12, v5, :cond_d

    .line 225
    .line 226
    and-int/lit16 v12, v12, 0x1fff

    .line 227
    .line 228
    shl-int/2addr v12, v13

    .line 229
    or-int/2addr v11, v12

    .line 230
    add-int/lit8 v13, v13, 0xd

    .line 231
    .line 232
    move v12, v14

    .line 233
    goto :goto_6

    .line 234
    :cond_d
    shl-int/2addr v12, v13

    .line 235
    or-int/2addr v11, v12

    .line 236
    move v12, v14

    .line 237
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 238
    .line 239
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    if-lt v12, v5, :cond_10

    .line 244
    .line 245
    and-int/lit16 v12, v12, 0x1fff

    .line 246
    .line 247
    const/16 v14, 0xd

    .line 248
    .line 249
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 250
    .line 251
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-lt v13, v5, :cond_f

    .line 256
    .line 257
    and-int/lit16 v13, v13, 0x1fff

    .line 258
    .line 259
    shl-int/2addr v13, v14

    .line 260
    or-int/2addr v12, v13

    .line 261
    add-int/lit8 v14, v14, 0xd

    .line 262
    .line 263
    move v13, v15

    .line 264
    goto :goto_7

    .line 265
    :cond_f
    shl-int/2addr v13, v14

    .line 266
    or-int/2addr v12, v13

    .line 267
    move v13, v15

    .line 268
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 269
    .line 270
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    if-lt v13, v5, :cond_12

    .line 275
    .line 276
    :goto_8
    add-int/lit8 v13, v14, 0x1

    .line 277
    .line 278
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 279
    .line 280
    .line 281
    move-result v14

    .line 282
    if-lt v14, v5, :cond_11

    .line 283
    .line 284
    move v14, v13

    .line 285
    goto :goto_8

    .line 286
    :cond_11
    move v14, v13

    .line 287
    :cond_12
    add-int/lit8 v13, v14, 0x1

    .line 288
    .line 289
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 290
    .line 291
    .line 292
    move-result v14

    .line 293
    if-lt v14, v5, :cond_14

    .line 294
    .line 295
    and-int/lit16 v14, v14, 0x1fff

    .line 296
    .line 297
    const/16 v15, 0xd

    .line 298
    .line 299
    :goto_9
    add-int/lit8 v16, v13, 0x1

    .line 300
    .line 301
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 302
    .line 303
    .line 304
    move-result v13

    .line 305
    if-lt v13, v5, :cond_13

    .line 306
    .line 307
    and-int/lit16 v13, v13, 0x1fff

    .line 308
    .line 309
    shl-int/2addr v13, v15

    .line 310
    or-int/2addr v14, v13

    .line 311
    add-int/lit8 v15, v15, 0xd

    .line 312
    .line 313
    move/from16 v13, v16

    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_13
    shl-int/2addr v13, v15

    .line 317
    or-int/2addr v14, v13

    .line 318
    move/from16 v13, v16

    .line 319
    .line 320
    :cond_14
    add-int v15, v14, v12

    .line 321
    .line 322
    add-int/2addr v15, v4

    .line 323
    add-int v16, v4, v4

    .line 324
    .line 325
    add-int v16, v16, v7

    .line 326
    .line 327
    new-array v7, v15, [I

    .line 328
    .line 329
    move v15, v12

    .line 330
    move v12, v9

    .line 331
    move v9, v15

    .line 332
    move-object v15, v7

    .line 333
    move v7, v4

    .line 334
    move v4, v13

    .line 335
    move v13, v10

    .line 336
    move/from16 v10, v16

    .line 337
    .line 338
    move/from16 v16, v14

    .line 339
    .line 340
    :goto_a
    sget-object v14, Luo4;->l:Lsun/misc/Unsafe;

    .line 341
    .line 342
    iget-object v3, v0, Lbp4;->c:[Ljava/lang/Object;

    .line 343
    .line 344
    iget-object v8, v0, Lbp4;->a:Lsm4;

    .line 345
    .line 346
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    add-int v9, v16, v9

    .line 351
    .line 352
    add-int v6, v11, v11

    .line 353
    .line 354
    mul-int/lit8 v11, v11, 0x3

    .line 355
    .line 356
    new-array v11, v11, [I

    .line 357
    .line 358
    new-array v6, v6, [Ljava/lang/Object;

    .line 359
    .line 360
    move/from16 v22, v9

    .line 361
    .line 362
    move/from16 v23, v16

    .line 363
    .line 364
    const/16 v20, 0x0

    .line 365
    .line 366
    const/16 v21, 0x0

    .line 367
    .line 368
    :goto_b
    if-ge v4, v2, :cond_35

    .line 369
    .line 370
    add-int/lit8 v24, v4, 0x1

    .line 371
    .line 372
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    if-lt v4, v5, :cond_16

    .line 377
    .line 378
    and-int/lit16 v4, v4, 0x1fff

    .line 379
    .line 380
    move/from16 v5, v24

    .line 381
    .line 382
    const/16 v24, 0xd

    .line 383
    .line 384
    :goto_c
    add-int/lit8 v26, v5, 0x1

    .line 385
    .line 386
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    move/from16 v27, v2

    .line 391
    .line 392
    const v2, 0xd800

    .line 393
    .line 394
    .line 395
    if-lt v5, v2, :cond_15

    .line 396
    .line 397
    and-int/lit16 v2, v5, 0x1fff

    .line 398
    .line 399
    shl-int v2, v2, v24

    .line 400
    .line 401
    or-int/2addr v4, v2

    .line 402
    add-int/lit8 v24, v24, 0xd

    .line 403
    .line 404
    move/from16 v5, v26

    .line 405
    .line 406
    move/from16 v2, v27

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_15
    shl-int v2, v5, v24

    .line 410
    .line 411
    or-int/2addr v4, v2

    .line 412
    move/from16 v2, v26

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_16
    move/from16 v27, v2

    .line 416
    .line 417
    move/from16 v2, v24

    .line 418
    .line 419
    :goto_d
    add-int/lit8 v5, v2, 0x1

    .line 420
    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    move-object/from16 v24, v3

    .line 426
    .line 427
    const v3, 0xd800

    .line 428
    .line 429
    .line 430
    if-lt v2, v3, :cond_18

    .line 431
    .line 432
    and-int/lit16 v2, v2, 0x1fff

    .line 433
    .line 434
    const/16 v26, 0xd

    .line 435
    .line 436
    :goto_e
    add-int/lit8 v28, v5, 0x1

    .line 437
    .line 438
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-lt v5, v3, :cond_17

    .line 443
    .line 444
    and-int/lit16 v3, v5, 0x1fff

    .line 445
    .line 446
    shl-int v3, v3, v26

    .line 447
    .line 448
    or-int/2addr v2, v3

    .line 449
    add-int/lit8 v26, v26, 0xd

    .line 450
    .line 451
    move/from16 v5, v28

    .line 452
    .line 453
    const v3, 0xd800

    .line 454
    .line 455
    .line 456
    goto :goto_e

    .line 457
    :cond_17
    shl-int v3, v5, v26

    .line 458
    .line 459
    or-int/2addr v2, v3

    .line 460
    move/from16 v5, v28

    .line 461
    .line 462
    :cond_18
    and-int/lit16 v3, v2, 0x400

    .line 463
    .line 464
    if-eqz v3, :cond_19

    .line 465
    .line 466
    add-int/lit8 v3, v20, 0x1

    .line 467
    .line 468
    aput v21, v15, v20

    .line 469
    .line 470
    move/from16 v20, v3

    .line 471
    .line 472
    :cond_19
    and-int/lit16 v3, v2, 0xff

    .line 473
    .line 474
    move/from16 v26, v4

    .line 475
    .line 476
    and-int/lit16 v4, v2, 0x800

    .line 477
    .line 478
    move/from16 v28, v4

    .line 479
    .line 480
    const/16 v4, 0x33

    .line 481
    .line 482
    if-lt v3, v4, :cond_23

    .line 483
    .line 484
    add-int/lit8 v4, v5, 0x1

    .line 485
    .line 486
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    move/from16 v29, v4

    .line 491
    .line 492
    const v4, 0xd800

    .line 493
    .line 494
    .line 495
    if-lt v5, v4, :cond_1b

    .line 496
    .line 497
    and-int/lit16 v5, v5, 0x1fff

    .line 498
    .line 499
    move/from16 v33, v29

    .line 500
    .line 501
    move/from16 v29, v5

    .line 502
    .line 503
    move/from16 v5, v33

    .line 504
    .line 505
    const/16 v33, 0xd

    .line 506
    .line 507
    :goto_f
    add-int/lit8 v34, v5, 0x1

    .line 508
    .line 509
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-lt v5, v4, :cond_1a

    .line 514
    .line 515
    and-int/lit16 v4, v5, 0x1fff

    .line 516
    .line 517
    shl-int v4, v4, v33

    .line 518
    .line 519
    or-int v29, v29, v4

    .line 520
    .line 521
    add-int/lit8 v33, v33, 0xd

    .line 522
    .line 523
    move/from16 v5, v34

    .line 524
    .line 525
    const v4, 0xd800

    .line 526
    .line 527
    .line 528
    goto :goto_f

    .line 529
    :cond_1a
    shl-int v4, v5, v33

    .line 530
    .line 531
    or-int v5, v29, v4

    .line 532
    .line 533
    move/from16 v4, v34

    .line 534
    .line 535
    goto :goto_10

    .line 536
    :cond_1b
    move/from16 v4, v29

    .line 537
    .line 538
    :goto_10
    move/from16 v29, v4

    .line 539
    .line 540
    add-int/lit8 v4, v3, -0x33

    .line 541
    .line 542
    move/from16 v33, v5

    .line 543
    .line 544
    const/16 v5, 0x9

    .line 545
    .line 546
    if-eq v4, v5, :cond_1c

    .line 547
    .line 548
    const/16 v5, 0x11

    .line 549
    .line 550
    if-ne v4, v5, :cond_1d

    .line 551
    .line 552
    :cond_1c
    const/4 v5, 0x1

    .line 553
    goto :goto_13

    .line 554
    :cond_1d
    const/16 v5, 0xc

    .line 555
    .line 556
    if-ne v4, v5, :cond_20

    .line 557
    .line 558
    invoke-virtual {v0}, Lbp4;->a()I

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    const/4 v5, 0x1

    .line 563
    if-eq v4, v5, :cond_1f

    .line 564
    .line 565
    if-eqz v28, :cond_1e

    .line 566
    .line 567
    goto :goto_11

    .line 568
    :cond_1e
    const/4 v4, 0x0

    .line 569
    goto :goto_14

    .line 570
    :cond_1f
    :goto_11
    add-int/lit8 v4, v10, 0x1

    .line 571
    .line 572
    div-int/lit8 v19, v21, 0x3

    .line 573
    .line 574
    add-int v19, v19, v19

    .line 575
    .line 576
    add-int/lit8 v19, v19, 0x1

    .line 577
    .line 578
    aget-object v10, v24, v10

    .line 579
    .line 580
    aput-object v10, v6, v19

    .line 581
    .line 582
    :goto_12
    move v10, v4

    .line 583
    :cond_20
    move/from16 v4, v28

    .line 584
    .line 585
    goto :goto_14

    .line 586
    :goto_13
    add-int/lit8 v4, v10, 0x1

    .line 587
    .line 588
    div-int/lit8 v19, v21, 0x3

    .line 589
    .line 590
    add-int v19, v19, v19

    .line 591
    .line 592
    add-int/lit8 v30, v19, 0x1

    .line 593
    .line 594
    aget-object v5, v24, v10

    .line 595
    .line 596
    aput-object v5, v6, v30

    .line 597
    .line 598
    goto :goto_12

    .line 599
    :goto_14
    add-int v5, v33, v33

    .line 600
    .line 601
    move/from16 v28, v4

    .line 602
    .line 603
    aget-object v4, v24, v5

    .line 604
    .line 605
    move/from16 v30, v5

    .line 606
    .line 607
    instance-of v5, v4, Ljava/lang/reflect/Field;

    .line 608
    .line 609
    if-eqz v5, :cond_21

    .line 610
    .line 611
    check-cast v4, Ljava/lang/reflect/Field;

    .line 612
    .line 613
    goto :goto_15

    .line 614
    :cond_21
    check-cast v4, Ljava/lang/String;

    .line 615
    .line 616
    invoke-static {v4, v8}, Luo4;->z(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 617
    .line 618
    .line 619
    move-result-object v4

    .line 620
    aput-object v4, v24, v30

    .line 621
    .line 622
    add-int/lit8 v5, v22, 0x1

    .line 623
    .line 624
    aput v21, v15, v22

    .line 625
    .line 626
    move/from16 v22, v5

    .line 627
    .line 628
    :goto_15
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 629
    .line 630
    .line 631
    move-result-wide v4

    .line 632
    long-to-int v4, v4

    .line 633
    add-int/lit8 v5, v30, 0x1

    .line 634
    .line 635
    move/from16 v30, v4

    .line 636
    .line 637
    aget-object v4, v24, v5

    .line 638
    .line 639
    move/from16 v31, v5

    .line 640
    .line 641
    instance-of v5, v4, Ljava/lang/reflect/Field;

    .line 642
    .line 643
    if-eqz v5, :cond_22

    .line 644
    .line 645
    check-cast v4, Ljava/lang/reflect/Field;

    .line 646
    .line 647
    goto :goto_16

    .line 648
    :cond_22
    check-cast v4, Ljava/lang/String;

    .line 649
    .line 650
    invoke-static {v4, v8}, Luo4;->z(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    aput-object v4, v24, v31

    .line 655
    .line 656
    :goto_16
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 657
    .line 658
    .line 659
    move-result-wide v4

    .line 660
    long-to-int v4, v4

    .line 661
    move-object/from16 v32, v1

    .line 662
    .line 663
    move v1, v3

    .line 664
    move/from16 v5, v29

    .line 665
    .line 666
    move/from16 v31, v30

    .line 667
    .line 668
    const/4 v3, 0x0

    .line 669
    const v25, 0xd800

    .line 670
    .line 671
    .line 672
    move-object/from16 v29, v6

    .line 673
    .line 674
    move/from16 v30, v7

    .line 675
    .line 676
    move-object v6, v8

    .line 677
    move v8, v4

    .line 678
    move/from16 v4, v28

    .line 679
    .line 680
    goto/16 :goto_22

    .line 681
    .line 682
    :cond_23
    add-int/lit8 v4, v10, 0x1

    .line 683
    .line 684
    aget-object v29, v24, v10

    .line 685
    .line 686
    move/from16 v33, v4

    .line 687
    .line 688
    move-object/from16 v4, v29

    .line 689
    .line 690
    check-cast v4, Ljava/lang/String;

    .line 691
    .line 692
    invoke-static {v4, v8}, Luo4;->z(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    move-object/from16 v29, v6

    .line 697
    .line 698
    const/16 v6, 0x9

    .line 699
    .line 700
    if-eq v3, v6, :cond_24

    .line 701
    .line 702
    const/16 v6, 0x11

    .line 703
    .line 704
    if-ne v3, v6, :cond_25

    .line 705
    .line 706
    :cond_24
    move/from16 v30, v7

    .line 707
    .line 708
    const/4 v7, 0x1

    .line 709
    goto/16 :goto_1c

    .line 710
    .line 711
    :cond_25
    const/16 v6, 0x1b

    .line 712
    .line 713
    if-eq v3, v6, :cond_2d

    .line 714
    .line 715
    const/16 v6, 0x31

    .line 716
    .line 717
    if-ne v3, v6, :cond_26

    .line 718
    .line 719
    add-int/lit8 v10, v10, 0x2

    .line 720
    .line 721
    move/from16 v30, v7

    .line 722
    .line 723
    const/4 v7, 0x1

    .line 724
    goto/16 :goto_1b

    .line 725
    .line 726
    :cond_26
    const/16 v6, 0xc

    .line 727
    .line 728
    if-eq v3, v6, :cond_2a

    .line 729
    .line 730
    const/16 v6, 0x1e

    .line 731
    .line 732
    if-eq v3, v6, :cond_2a

    .line 733
    .line 734
    const/16 v6, 0x2c

    .line 735
    .line 736
    if-ne v3, v6, :cond_27

    .line 737
    .line 738
    goto :goto_18

    .line 739
    :cond_27
    const/16 v6, 0x32

    .line 740
    .line 741
    if-ne v3, v6, :cond_29

    .line 742
    .line 743
    add-int/lit8 v6, v10, 0x2

    .line 744
    .line 745
    add-int/lit8 v30, v23, 0x1

    .line 746
    .line 747
    aput v21, v15, v23

    .line 748
    .line 749
    div-int/lit8 v23, v21, 0x3

    .line 750
    .line 751
    aget-object v31, v24, v33

    .line 752
    .line 753
    add-int v23, v23, v23

    .line 754
    .line 755
    aput-object v31, v29, v23

    .line 756
    .line 757
    if-eqz v28, :cond_28

    .line 758
    .line 759
    add-int/lit8 v23, v23, 0x1

    .line 760
    .line 761
    add-int/lit8 v10, v10, 0x3

    .line 762
    .line 763
    aget-object v6, v24, v6

    .line 764
    .line 765
    aput-object v6, v29, v23

    .line 766
    .line 767
    move-object v6, v8

    .line 768
    move/from16 v23, v30

    .line 769
    .line 770
    :goto_17
    move/from16 v30, v7

    .line 771
    .line 772
    goto :goto_1e

    .line 773
    :cond_28
    move v10, v6

    .line 774
    move-object v6, v8

    .line 775
    move/from16 v23, v30

    .line 776
    .line 777
    const/16 v28, 0x0

    .line 778
    .line 779
    goto :goto_17

    .line 780
    :cond_29
    move/from16 v30, v7

    .line 781
    .line 782
    const/4 v7, 0x1

    .line 783
    goto :goto_1d

    .line 784
    :cond_2a
    :goto_18
    invoke-virtual {v0}, Lbp4;->a()I

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    move/from16 v30, v7

    .line 789
    .line 790
    const/4 v7, 0x1

    .line 791
    if-eq v6, v7, :cond_2c

    .line 792
    .line 793
    if-eqz v28, :cond_2b

    .line 794
    .line 795
    goto :goto_19

    .line 796
    :cond_2b
    move-object v6, v8

    .line 797
    move/from16 v10, v33

    .line 798
    .line 799
    const/16 v28, 0x0

    .line 800
    .line 801
    goto :goto_1e

    .line 802
    :cond_2c
    :goto_19
    add-int/lit8 v10, v10, 0x2

    .line 803
    .line 804
    div-int/lit8 v6, v21, 0x3

    .line 805
    .line 806
    add-int/2addr v6, v6

    .line 807
    add-int/2addr v6, v7

    .line 808
    aget-object v19, v24, v33

    .line 809
    .line 810
    aput-object v19, v29, v6

    .line 811
    .line 812
    :goto_1a
    move-object v6, v8

    .line 813
    goto :goto_1e

    .line 814
    :cond_2d
    move/from16 v30, v7

    .line 815
    .line 816
    const/4 v7, 0x1

    .line 817
    add-int/lit8 v10, v10, 0x2

    .line 818
    .line 819
    :goto_1b
    div-int/lit8 v6, v21, 0x3

    .line 820
    .line 821
    add-int/2addr v6, v6

    .line 822
    add-int/2addr v6, v7

    .line 823
    aget-object v19, v24, v33

    .line 824
    .line 825
    aput-object v19, v29, v6

    .line 826
    .line 827
    goto :goto_1a

    .line 828
    :goto_1c
    div-int/lit8 v6, v21, 0x3

    .line 829
    .line 830
    add-int/2addr v6, v6

    .line 831
    add-int/2addr v6, v7

    .line 832
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 833
    .line 834
    .line 835
    move-result-object v10

    .line 836
    aput-object v10, v29, v6

    .line 837
    .line 838
    :goto_1d
    move-object v6, v8

    .line 839
    move/from16 v10, v33

    .line 840
    .line 841
    :goto_1e
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 842
    .line 843
    .line 844
    move-result-wide v7

    .line 845
    long-to-int v4, v7

    .line 846
    and-int/lit16 v7, v2, 0x1000

    .line 847
    .line 848
    const v8, 0xfffff

    .line 849
    .line 850
    .line 851
    if-eqz v7, :cond_31

    .line 852
    .line 853
    const/16 v7, 0x11

    .line 854
    .line 855
    if-gt v3, v7, :cond_31

    .line 856
    .line 857
    add-int/lit8 v7, v5, 0x1

    .line 858
    .line 859
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 860
    .line 861
    .line 862
    move-result v5

    .line 863
    const v8, 0xd800

    .line 864
    .line 865
    .line 866
    if-lt v5, v8, :cond_2f

    .line 867
    .line 868
    and-int/lit16 v5, v5, 0x1fff

    .line 869
    .line 870
    const/16 v25, 0xd

    .line 871
    .line 872
    :goto_1f
    add-int/lit8 v31, v7, 0x1

    .line 873
    .line 874
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 875
    .line 876
    .line 877
    move-result v7

    .line 878
    if-lt v7, v8, :cond_2e

    .line 879
    .line 880
    and-int/lit16 v7, v7, 0x1fff

    .line 881
    .line 882
    shl-int v7, v7, v25

    .line 883
    .line 884
    or-int/2addr v5, v7

    .line 885
    add-int/lit8 v25, v25, 0xd

    .line 886
    .line 887
    move/from16 v7, v31

    .line 888
    .line 889
    goto :goto_1f

    .line 890
    :cond_2e
    shl-int v7, v7, v25

    .line 891
    .line 892
    or-int/2addr v5, v7

    .line 893
    move/from16 v7, v31

    .line 894
    .line 895
    :cond_2f
    add-int v25, v30, v30

    .line 896
    .line 897
    div-int/lit8 v31, v5, 0x20

    .line 898
    .line 899
    add-int v31, v31, v25

    .line 900
    .line 901
    aget-object v8, v24, v31

    .line 902
    .line 903
    move-object/from16 v32, v1

    .line 904
    .line 905
    instance-of v1, v8, Ljava/lang/reflect/Field;

    .line 906
    .line 907
    if-eqz v1, :cond_30

    .line 908
    .line 909
    check-cast v8, Ljava/lang/reflect/Field;

    .line 910
    .line 911
    :goto_20
    move v1, v3

    .line 912
    move/from16 v31, v4

    .line 913
    .line 914
    goto :goto_21

    .line 915
    :cond_30
    check-cast v8, Ljava/lang/String;

    .line 916
    .line 917
    invoke-static {v8, v6}, Luo4;->z(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 918
    .line 919
    .line 920
    move-result-object v8

    .line 921
    aput-object v8, v24, v31

    .line 922
    .line 923
    goto :goto_20

    .line 924
    :goto_21
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 925
    .line 926
    .line 927
    move-result-wide v3

    .line 928
    long-to-int v4, v3

    .line 929
    rem-int/lit8 v5, v5, 0x20

    .line 930
    .line 931
    move v8, v4

    .line 932
    move v3, v5

    .line 933
    move v5, v7

    .line 934
    move/from16 v4, v28

    .line 935
    .line 936
    const v25, 0xd800

    .line 937
    .line 938
    .line 939
    goto :goto_22

    .line 940
    :cond_31
    move-object/from16 v32, v1

    .line 941
    .line 942
    move v1, v3

    .line 943
    move/from16 v31, v4

    .line 944
    .line 945
    const v25, 0xd800

    .line 946
    .line 947
    .line 948
    move/from16 v4, v28

    .line 949
    .line 950
    const/4 v3, 0x0

    .line 951
    :goto_22
    add-int/lit8 v7, v21, 0x1

    .line 952
    .line 953
    aput v26, v11, v21

    .line 954
    .line 955
    add-int/lit8 v26, v21, 0x2

    .line 956
    .line 957
    move/from16 v28, v1

    .line 958
    .line 959
    and-int/lit16 v1, v2, 0x200

    .line 960
    .line 961
    if-eqz v1, :cond_32

    .line 962
    .line 963
    const/high16 v1, 0x20000000

    .line 964
    .line 965
    goto :goto_23

    .line 966
    :cond_32
    const/4 v1, 0x0

    .line 967
    :goto_23
    and-int/lit16 v2, v2, 0x100

    .line 968
    .line 969
    if-eqz v2, :cond_33

    .line 970
    .line 971
    const/high16 v2, 0x10000000

    .line 972
    .line 973
    goto :goto_24

    .line 974
    :cond_33
    const/4 v2, 0x0

    .line 975
    :goto_24
    if-eqz v4, :cond_34

    .line 976
    .line 977
    const/high16 v4, -0x80000000

    .line 978
    .line 979
    goto :goto_25

    .line 980
    :cond_34
    const/4 v4, 0x0

    .line 981
    :goto_25
    shl-int/lit8 v28, v28, 0x14

    .line 982
    .line 983
    or-int/2addr v1, v2

    .line 984
    or-int/2addr v1, v4

    .line 985
    or-int v1, v1, v28

    .line 986
    .line 987
    or-int v1, v1, v31

    .line 988
    .line 989
    aput v1, v11, v7

    .line 990
    .line 991
    add-int/lit8 v21, v21, 0x3

    .line 992
    .line 993
    shl-int/lit8 v1, v3, 0x14

    .line 994
    .line 995
    or-int/2addr v1, v8

    .line 996
    aput v1, v11, v26

    .line 997
    .line 998
    move v4, v5

    .line 999
    move-object v8, v6

    .line 1000
    move-object/from16 v3, v24

    .line 1001
    .line 1002
    move/from16 v5, v25

    .line 1003
    .line 1004
    move/from16 v2, v27

    .line 1005
    .line 1006
    move-object/from16 v6, v29

    .line 1007
    .line 1008
    move/from16 v7, v30

    .line 1009
    .line 1010
    move-object/from16 v1, v32

    .line 1011
    .line 1012
    goto/16 :goto_b

    .line 1013
    .line 1014
    :cond_35
    move-object/from16 v29, v6

    .line 1015
    .line 1016
    new-instance v1, Luo4;

    .line 1017
    .line 1018
    iget-object v14, v0, Lbp4;->a:Lsm4;

    .line 1019
    .line 1020
    move-object/from16 v18, p1

    .line 1021
    .line 1022
    move-object/from16 v19, p2

    .line 1023
    .line 1024
    move/from16 v17, v9

    .line 1025
    .line 1026
    move-object v10, v11

    .line 1027
    move-object/from16 v11, v29

    .line 1028
    .line 1029
    move-object v9, v1

    .line 1030
    invoke-direct/range {v9 .. v19}, Luo4;-><init>([I[Ljava/lang/Object;IILsm4;[IIILbx3;Lls3;)V

    .line 1031
    .line 1032
    .line 1033
    return-object v9

    .line 1034
    :cond_36
    invoke-static {}, Lmk0;->b()V

    .line 1035
    .line 1036
    .line 1037
    const/4 v0, 0x0

    .line 1038
    return-object v0
.end method

.method public static z(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/lit8 v2, v2, 0xb

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    add-int/2addr v2, v3

    .line 58
    add-int/lit8 v2, v2, 0x1d

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    add-int/2addr v2, v3

    .line 67
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const-string v2, "Field "

    .line 71
    .line 72
    const-string v3, " for "

    .line 73
    .line 74
    invoke-static {v4, v2, p0, v3, p1}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p0, " not found. Known fields are "

    .line 78
    .line 79
    invoke-static {v4, p0, v1}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0, v0}, Lk21;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method


# virtual methods
.method public final A(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Luo4;->r(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Luo4;->j(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Luo4;->l:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Luo4;->C(I)Lcp4;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Luo4;->l(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lcp4;->zza()Lrn4;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v0}, Lcp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Luo4;->s(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Luo4;->l(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lcp4;->zza()Lrn4;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p3, p1, p0}, Lcp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p0, p1

    .line 80
    :cond_3
    invoke-interface {p3, p0, v0}, Lcp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object p0, p0, Luo4;->a:[I

    .line 87
    .line 88
    aget p0, p0, p1

    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    add-int/lit8 p3, p3, 0x26

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr p3, v0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .line 113
    .line 114
    const-string p3, "Source subfield "

    .line 115
    .line 116
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p0, " is present but null: "

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p2
.end method

.method public final B(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Luo4;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, p3}, Luo4;->t(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Luo4;->j(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    sget-object v3, Luo4;->l:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v4, v2

    .line 23
    invoke-virtual {v3, p3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Luo4;->C(I)Lcp4;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p1, p2}, Luo4;->t(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Luo4;->l(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3, p2, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lcp4;->zza()Lrn4;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, v2}, Lcp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p2, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Luo4;->u(IILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Luo4;->l(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-interface {p3}, Lcp4;->zza()Lrn4;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p3, p1, p0}, Lcp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p2, v4, v5, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p0, p1

    .line 84
    :cond_3
    invoke-interface {p3, p0, v2}, Lcp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    aget p1, v0, p1

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    add-int/lit8 p3, p3, 0x26

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    add-int/2addr p3, v0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .line 115
    .line 116
    const-string p3, "Source subfield "

    .line 117
    .line 118
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, " is present but null: "

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public final C(I)Lcp4;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object p0, p0, Luo4;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v0, p0, p1

    .line 7
    .line 8
    check-cast v0, Lcp4;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 14
    .line 15
    sget-object v1, Lzo4;->c:Lzo4;

    .line 16
    .line 17
    aget-object v0, p0, v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lzo4;->a(Ljava/lang/Class;)Lcp4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aput-object v0, p0, p1

    .line 26
    .line 27
    return-object v0
.end method

.method public final D(I)Ljava/lang/Object;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object p0, p0, Luo4;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object p0, p0, p1

    .line 7
    .line 8
    return-object p0
.end method

.method public final E(I)Lmm4;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iget-object p0, p0, Luo4;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p0, p0, p1

    .line 9
    .line 10
    check-cast p0, Lmm4;

    .line 11
    .line 12
    return-object p0
.end method

.method public final F(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Luo4;->C(I)Lcp4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Luo4;->j(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-virtual {p0, p1, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcp4;->zza()Lrn4;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    int-to-long p0, v1

    .line 25
    sget-object v1, Luo4;->l:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Luo4;->l(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lcp4;->zza()Lrn4;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lcp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final G(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Luo4;->l:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Luo4;->j(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p2, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Luo4;->s(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final H(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Luo4;->C(I)Lcp4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Luo4;->t(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcp4;->zza()Lrn4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p1, Luo4;->l:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Luo4;->j(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const p2, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, p2

    .line 26
    int-to-long v1, p0

    .line 27
    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Luo4;->l(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lcp4;->zza()Lrn4;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lcp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final I(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Luo4;->l:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Luo4;->j(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p3, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Luo4;->u(IILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final J(Ljava/lang/Object;ILjava/lang/Object;Lbx3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Luo4;->a:[I

    .line 2
    .line 3
    aget v0, v0, p2

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Luo4;->j(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-static {v1, v2, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p2}, Luo4;->E(I)Lmm4;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :goto_0
    return-object p3

    .line 28
    :cond_1
    check-cast p1, Llo4;

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Luo4;->D(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lko4;

    .line 35
    .line 36
    iget-object p0, p0, Lko4;->a:Lui3;

    .line 37
    .line 38
    invoke-virtual {p1}, Llo4;->entrySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_6

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Ljava/util/Map$Entry;

    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Lmm4;->a(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    if-nez p3, :cond_3

    .line 75
    .line 76
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {p5}, Lbx3;->s(Ljava/lang/Object;)Llp4;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {p0, v2, v3}, Lko4;->b(Lui3;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    sget-object v3, Lzm4;->o:Lym4;

    .line 96
    .line 97
    new-array v3, v2, [B

    .line 98
    .line 99
    sget-boolean v4, Ljn4;->b:Z

    .line 100
    .line 101
    new-instance v4, Ldn4;

    .line 102
    .line 103
    invoke-direct {v4, v2, v3}, Ldn4;-><init>(I[B)V

    .line 104
    .line 105
    .line 106
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {v4, p0, v2, p2}, Lko4;->a(Ljn4;Lui3;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ldn4;->x()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    const/4 v2, 0x0

    .line 122
    if-gtz p2, :cond_5

    .line 123
    .line 124
    invoke-virtual {v4}, Ldn4;->x()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-ltz p2, :cond_4

    .line 129
    .line 130
    new-instance p2, Lym4;

    .line 131
    .line 132
    invoke-direct {p2, v3}, Lym4;-><init>([B)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    shl-int/lit8 v2, v0, 0x3

    .line 139
    .line 140
    move-object v3, p3

    .line 141
    check-cast v3, Llp4;

    .line 142
    .line 143
    or-int/lit8 v2, v2, 0x2

    .line 144
    .line 145
    invoke-virtual {v3, v2, p2}, Llp4;->d(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    const-string p0, "Wrote more data than expected."

    .line 153
    .line 154
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v2

    .line 158
    :cond_5
    const-string p0, "Did not write as much data as expected."

    .line 159
    .line 160
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v2

    .line 164
    :catch_0
    move-exception p0

    .line 165
    new-instance p1, Ljava/lang/RuntimeException;

    .line 166
    .line 167
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_6
    return-object p3
.end method

.method public final K(ILe50;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p2, Le50;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcn4;

    .line 4
    .line 5
    const/high16 v1, 0x20000000

    .line 6
    .line 7
    and-int/2addr v1, p1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    const v2, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, v2

    .line 17
    int-to-long v2, p1

    .line 18
    const/4 p1, 0x2

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Le50;->R(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcn4;->x()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p3, v2, v3, p0}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-boolean p0, p0, Luo4;->f:Z

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Le50;->R(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcn4;->w()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p3, v2, v3, p0}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {p2}, Le50;->Z()Lzm4;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p3, v2, v3, p0}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final a(Lrn4;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Luo4;->a:[I

    .line 5
    .line 6
    array-length v3, v3

    .line 7
    const v4, 0xfffff

    .line 8
    .line 9
    .line 10
    if-ge v1, v3, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Luo4;->j(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static {v3}, Luo4;->k(I)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/16 v6, 0x32

    .line 21
    .line 22
    if-le v5, v6, :cond_0

    .line 23
    .line 24
    const/16 v6, 0x45

    .line 25
    .line 26
    if-lt v5, v6, :cond_3

    .line 27
    .line 28
    :cond_0
    and-int/2addr v3, v4

    .line 29
    int-to-long v3, v3

    .line 30
    const/16 v6, 0x25

    .line 31
    .line 32
    const/16 v7, 0x20

    .line 33
    .line 34
    packed-switch v5, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :pswitch_0
    mul-int/lit8 v2, v2, 0x35

    .line 40
    .line 41
    invoke-static {v3, v4, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :goto_1
    add-int/2addr v2, v3

    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :pswitch_1
    mul-int/lit8 v2, v2, 0x35

    .line 53
    .line 54
    invoke-static {v3, v4, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    goto :goto_1

    .line 63
    :pswitch_2
    mul-int/lit8 v2, v2, 0x35

    .line 64
    .line 65
    invoke-static {v3, v4, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    :cond_1
    :goto_2
    add-int/2addr v2, v6

    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :pswitch_3
    mul-int/lit8 v2, v2, 0x35

    .line 79
    .line 80
    invoke-static {v3, v4, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    sget-object v5, Lbo4;->a:[B

    .line 85
    .line 86
    :goto_3
    ushr-long v5, v3, v7

    .line 87
    .line 88
    xor-long/2addr v3, v5

    .line 89
    long-to-int v3, v3

    .line 90
    :goto_4
    add-int/2addr v2, v3

    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :pswitch_4
    mul-int/lit8 v2, v2, 0x35

    .line 94
    .line 95
    invoke-static {v3, v4, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    goto :goto_1

    .line 100
    :pswitch_5
    mul-int/lit8 v2, v2, 0x35

    .line 101
    .line 102
    invoke-static {v3, v4, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    sget-object v5, Lbo4;->a:[B

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :pswitch_6
    mul-int/lit8 v2, v2, 0x35

    .line 110
    .line 111
    invoke-static {v3, v4, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    goto :goto_1

    .line 116
    :pswitch_7
    mul-int/lit8 v2, v2, 0x35

    .line 117
    .line 118
    invoke-static {v3, v4, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    goto :goto_1

    .line 123
    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    .line 124
    .line 125
    invoke-static {v3, v4, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    goto :goto_1

    .line 130
    :pswitch_9
    mul-int/lit8 v2, v2, 0x35

    .line 131
    .line 132
    invoke-static {v3, v4, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    goto :goto_1

    .line 141
    :pswitch_a
    mul-int/lit8 v2, v2, 0x35

    .line 142
    .line 143
    invoke-static {v3, v4, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_1

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    goto :goto_2

    .line 154
    :pswitch_b
    mul-int/lit8 v2, v2, 0x35

    .line 155
    .line 156
    invoke-static {v3, v4, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    goto :goto_1

    .line 167
    :pswitch_c
    mul-int/lit8 v2, v2, 0x35

    .line 168
    .line 169
    sget-object v5, Lqp4;->c:Lpp4;

    .line 170
    .line 171
    invoke-virtual {v5, v3, v4, p1}, Lpp4;->d(JLjava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    sget-object v4, Lbo4;->a:[B

    .line 176
    .line 177
    if-eqz v3, :cond_2

    .line 178
    .line 179
    const/16 v3, 0x4cf

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_2
    const/16 v3, 0x4d5

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :pswitch_d
    mul-int/lit8 v2, v2, 0x35

    .line 186
    .line 187
    invoke-static {v3, v4, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :pswitch_e
    mul-int/lit8 v2, v2, 0x35

    .line 194
    .line 195
    invoke-static {v3, v4, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v3

    .line 199
    sget-object v5, Lbo4;->a:[B

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :pswitch_f
    mul-int/lit8 v2, v2, 0x35

    .line 203
    .line 204
    invoke-static {v3, v4, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :pswitch_10
    mul-int/lit8 v2, v2, 0x35

    .line 211
    .line 212
    invoke-static {v3, v4, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 213
    .line 214
    .line 215
    move-result-wide v3

    .line 216
    sget-object v5, Lbo4;->a:[B

    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :pswitch_11
    mul-int/lit8 v2, v2, 0x35

    .line 221
    .line 222
    invoke-static {v3, v4, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v3

    .line 226
    sget-object v5, Lbo4;->a:[B

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 231
    .line 232
    sget-object v5, Lqp4;->c:Lpp4;

    .line 233
    .line 234
    invoke-virtual {v5, v3, v4, p1}, Lpp4;->f(JLjava/lang/Object;)F

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 245
    .line 246
    sget-object v5, Lqp4;->c:Lpp4;

    .line 247
    .line 248
    invoke-virtual {v5, v3, v4, p1}, Lpp4;->i(JLjava/lang/Object;)D

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 253
    .line 254
    .line 255
    move-result-wide v3

    .line 256
    sget-object v5, Lbo4;->a:[B

    .line 257
    .line 258
    goto/16 :goto_3

    .line 259
    .line 260
    :cond_3
    :goto_5
    add-int/lit8 v1, v1, 0x3

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_4
    iget v1, p0, Luo4;->i:I

    .line 265
    .line 266
    :goto_6
    iget-object v3, p0, Luo4;->g:[I

    .line 267
    .line 268
    array-length v5, v3

    .line 269
    if-ge v1, v5, :cond_6

    .line 270
    .line 271
    aget v3, v3, v1

    .line 272
    .line 273
    invoke-virtual {p0, v0, v3, p1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-nez v5, :cond_5

    .line 278
    .line 279
    mul-int/lit8 v2, v2, 0x35

    .line 280
    .line 281
    invoke-virtual {p0, v3}, Luo4;->j(I)I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    and-int/2addr v3, v4

    .line 286
    int-to-long v5, v3

    .line 287
    invoke-static {v5, v6, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    add-int/2addr v3, v2

    .line 296
    move v2, v3

    .line 297
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_6
    mul-int/lit8 v2, v2, 0x35

    .line 301
    .line 302
    iget-object p0, p1, Lrn4;->zzc:Llp4;

    .line 303
    .line 304
    invoke-virtual {p0}, Llp4;->hashCode()I

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    add-int/2addr p0, v2

    .line 309
    return p0

    .line 310
    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-static {p1}, Luo4;->m(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Luo4;->a:[I

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Luo4;->j(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v3, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v3, v2

    .line 21
    invoke-static {v2}, Luo4;->k(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    aget v1, v1, v0

    .line 26
    .line 27
    int-to-long v6, v3

    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_1
    move-object v5, p1

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Luo4;->B(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Luo4;->t(IILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {p1, v6, v7, v2}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v0, p1}, Luo4;->u(IILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Luo4;->B(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Luo4;->t(IILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {p1, v6, v7, v2}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v0, p1}, Luo4;->u(IILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_4
    sget-object v1, Ldp4;->a:Lbx3;

    .line 77
    .line 78
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Lls3;->g(Ljava/lang/Object;Ljava/lang/Object;)Llo4;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {p1, v6, v7, v1}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :pswitch_5
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ldo4;

    .line 99
    .line 100
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ldo4;

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-lez v3, :cond_2

    .line 115
    .line 116
    if-lez v4, :cond_2

    .line 117
    .line 118
    move-object v5, v1

    .line 119
    check-cast v5, Ltm4;

    .line 120
    .line 121
    iget-boolean v5, v5, Ltm4;->n:Z

    .line 122
    .line 123
    if-nez v5, :cond_1

    .line 124
    .line 125
    add-int/2addr v4, v3

    .line 126
    invoke-interface {v1, v4}, Ldo4;->F(I)Ldo4;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    .line 132
    .line 133
    :cond_2
    if-gtz v3, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    move-object v2, v1

    .line 137
    :goto_2
    invoke-static {p1, v6, v7, v2}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Luo4;->A(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    .line 151
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    invoke-static {p1, v6, v7, v1, v2}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_0

    .line 168
    .line 169
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-static {p1, v6, v7, v1}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_0

    .line 186
    .line 187
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v1

    .line 191
    invoke-static {p1, v6, v7, v1, v2}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_0

    .line 204
    .line 205
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-static {p1, v6, v7, v1}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_0

    .line 222
    .line 223
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-static {p1, v6, v7, v1}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_0

    .line 240
    .line 241
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-static {p1, v6, v7, v1}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_0

    .line 258
    .line 259
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {p1, v6, v7, v1}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Luo4;->A(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_0

    .line 281
    .line 282
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {p1, v6, v7, v1}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_0

    .line 299
    .line 300
    sget-object v1, Lqp4;->c:Lpp4;

    .line 301
    .line 302
    invoke-virtual {v1, v6, v7, p2}, Lpp4;->d(JLjava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    invoke-virtual {v1, p1, v6, v7, v2}, Lpp4;->e(Ljava/lang/Object;JZ)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_0

    .line 319
    .line 320
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-static {p1, v6, v7, v1}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_0

    .line 337
    .line 338
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 339
    .line 340
    .line 341
    move-result-wide v1

    .line 342
    invoke-static {p1, v6, v7, v1, v2}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_1

    .line 349
    .line 350
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_0

    .line 355
    .line 356
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    invoke-static {p1, v6, v7, v1}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_1

    .line 367
    .line 368
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-eqz v1, :cond_0

    .line 373
    .line 374
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 375
    .line 376
    .line 377
    move-result-wide v1

    .line 378
    invoke-static {p1, v6, v7, v1, v2}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_1

    .line 385
    .line 386
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_0

    .line 391
    .line 392
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 393
    .line 394
    .line 395
    move-result-wide v1

    .line 396
    invoke-static {p1, v6, v7, v1, v2}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_1

    .line 403
    .line 404
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_0

    .line 409
    .line 410
    sget-object v1, Lqp4;->c:Lpp4;

    .line 411
    .line 412
    invoke-virtual {v1, v6, v7, p2}, Lpp4;->f(JLjava/lang/Object;)F

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    invoke-virtual {v1, p1, v6, v7, v2}, Lpp4;->h(Ljava/lang/Object;JF)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0, v0, p1}, Luo4;->s(ILjava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_1

    .line 423
    .line 424
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-eqz v1, :cond_0

    .line 429
    .line 430
    sget-object v4, Lqp4;->c:Lpp4;

    .line 431
    .line 432
    invoke-virtual {v4, v6, v7, p2}, Lpp4;->i(JLjava/lang/Object;)D

    .line 433
    .line 434
    .line 435
    move-result-wide v8

    .line 436
    move-object v5, p1

    .line 437
    invoke-virtual/range {v4 .. v9}, Lpp4;->k(Ljava/lang/Object;JD)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, v0, v5}, Luo4;->s(ILjava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    :goto_3
    add-int/lit8 v0, v0, 0x3

    .line 444
    .line 445
    move-object p1, v5

    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :cond_4
    move-object v5, p1

    .line 449
    invoke-static {v5, p2}, Ldp4;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    return-void

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lsm4;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v6, Luo4;->l:Lsun/misc/Unsafe;

    .line 6
    .line 7
    const v8, 0xfffff

    .line 8
    .line 9
    .line 10
    move v3, v8

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    :goto_0
    iget-object v5, v0, Luo4;->a:[I

    .line 15
    .line 16
    array-length v10, v5

    .line 17
    if-ge v2, v10, :cond_18

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Luo4;->j(I)I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    invoke-static {v10}, Luo4;->k(I)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    aget v12, v5, v2

    .line 28
    .line 29
    add-int/lit8 v13, v2, 0x2

    .line 30
    .line 31
    aget v5, v5, v13

    .line 32
    .line 33
    and-int v13, v5, v8

    .line 34
    .line 35
    const/16 v14, 0x11

    .line 36
    .line 37
    const/4 v15, 0x1

    .line 38
    if-gt v11, v14, :cond_2

    .line 39
    .line 40
    if-eq v13, v3, :cond_1

    .line 41
    .line 42
    if-ne v13, v8, :cond_0

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    int-to-long v3, v13

    .line 47
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    move v4, v3

    .line 52
    :goto_1
    move v3, v13

    .line 53
    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    .line 54
    .line 55
    shl-int v5, v15, v5

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v5, 0x0

    .line 59
    :goto_2
    and-int/2addr v10, v8

    .line 60
    sget-object v13, Lnn4;->o:Lnn4;

    .line 61
    .line 62
    iget v13, v13, Lnn4;->n:I

    .line 63
    .line 64
    if-lt v11, v13, :cond_3

    .line 65
    .line 66
    sget-object v13, Lnn4;->p:Lnn4;

    .line 67
    .line 68
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    :cond_3
    int-to-long v13, v10

    .line 72
    const/16 v10, 0x3f

    .line 73
    .line 74
    const/4 v7, 0x4

    .line 75
    const/16 v8, 0x8

    .line 76
    .line 77
    packed-switch v11, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    goto/16 :goto_1f

    .line 81
    .line 82
    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_17

    .line 87
    .line 88
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lsm4;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    sget-object v8, Ldp4;->a:Lbx3;

    .line 99
    .line 100
    shl-int/lit8 v8, v12, 0x3

    .line 101
    .line 102
    invoke-static {v8}, Ljn4;->a(I)I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    add-int/2addr v8, v8

    .line 107
    invoke-virtual {v5, v7}, Lsm4;->c(Lcp4;)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    :goto_3
    add-int/2addr v5, v8

    .line 112
    :goto_4
    add-int/2addr v9, v5

    .line 113
    goto/16 :goto_1f

    .line 114
    .line 115
    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_17

    .line 120
    .line 121
    shl-int/lit8 v5, v12, 0x3

    .line 122
    .line 123
    invoke-static {v13, v14, v1}, Luo4;->o(JLjava/lang/Object;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    add-long v11, v7, v7

    .line 128
    .line 129
    shr-long/2addr v7, v10

    .line 130
    invoke-static {v5}, Ljn4;->a(I)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    xor-long/2addr v7, v11

    .line 135
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    :goto_5
    add-int/2addr v7, v5

    .line 140
    add-int/2addr v9, v7

    .line 141
    goto/16 :goto_1f

    .line 142
    .line 143
    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_17

    .line 148
    .line 149
    shl-int/lit8 v5, v12, 0x3

    .line 150
    .line 151
    invoke-static {v13, v14, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    add-int v8, v7, v7

    .line 156
    .line 157
    shr-int/lit8 v7, v7, 0x1f

    .line 158
    .line 159
    invoke-static {v5}, Ljn4;->a(I)I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    xor-int/2addr v7, v8

    .line 164
    :goto_6
    invoke-static {v7, v5, v9}, Lto4;->b(III)I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    goto/16 :goto_1f

    .line 169
    .line 170
    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_17

    .line 175
    .line 176
    :goto_7
    shl-int/lit8 v5, v12, 0x3

    .line 177
    .line 178
    invoke-static {v5, v8, v9}, Lto4;->b(III)I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    goto/16 :goto_1f

    .line 183
    .line 184
    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_17

    .line 189
    .line 190
    :goto_8
    shl-int/lit8 v5, v12, 0x3

    .line 191
    .line 192
    invoke-static {v5, v7, v9}, Lto4;->b(III)I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    goto/16 :goto_1f

    .line 197
    .line 198
    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_17

    .line 203
    .line 204
    shl-int/lit8 v5, v12, 0x3

    .line 205
    .line 206
    invoke-static {v13, v14, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    int-to-long v7, v7

    .line 211
    invoke-static {v5}, Ljn4;->a(I)I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    goto :goto_5

    .line 220
    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_17

    .line 225
    .line 226
    shl-int/lit8 v5, v12, 0x3

    .line 227
    .line 228
    invoke-static {v13, v14, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    invoke-static {v5}, Ljn4;->a(I)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    goto :goto_6

    .line 237
    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_17

    .line 242
    .line 243
    shl-int/lit8 v5, v12, 0x3

    .line 244
    .line 245
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    check-cast v7, Lzm4;

    .line 250
    .line 251
    invoke-static {v5}, Ljn4;->a(I)I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    invoke-virtual {v7}, Lzm4;->c()I

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    :goto_9
    invoke-static {v7, v7, v5, v9}, Lto4;->c(IIII)I

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    goto/16 :goto_1f

    .line 264
    .line 265
    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    if-eqz v5, :cond_17

    .line 270
    .line 271
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    sget-object v8, Ldp4;->a:Lbx3;

    .line 280
    .line 281
    shl-int/lit8 v8, v12, 0x3

    .line 282
    .line 283
    check-cast v5, Lsm4;

    .line 284
    .line 285
    invoke-static {v8}, Ljn4;->a(I)I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    invoke-virtual {v5, v7}, Lsm4;->c(Lcp4;)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    :goto_a
    invoke-static {v5, v5, v8, v9}, Lto4;->c(IIII)I

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    goto/16 :goto_1f

    .line 298
    .line 299
    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-eqz v5, :cond_17

    .line 304
    .line 305
    shl-int/lit8 v5, v12, 0x3

    .line 306
    .line 307
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    instance-of v8, v7, Lzm4;

    .line 312
    .line 313
    if-eqz v8, :cond_4

    .line 314
    .line 315
    check-cast v7, Lzm4;

    .line 316
    .line 317
    invoke-static {v5}, Ljn4;->a(I)I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    invoke-virtual {v7}, Lzm4;->c()I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    goto :goto_9

    .line 326
    :cond_4
    check-cast v7, Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v5}, Ljn4;->a(I)I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    invoke-static {v7}, Ltp4;->b(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    goto :goto_9

    .line 337
    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_17

    .line 342
    .line 343
    shl-int/lit8 v5, v12, 0x3

    .line 344
    .line 345
    invoke-static {v5, v15, v9}, Lto4;->b(III)I

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    goto/16 :goto_1f

    .line 350
    .line 351
    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-eqz v5, :cond_17

    .line 356
    .line 357
    goto/16 :goto_8

    .line 358
    .line 359
    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    if-eqz v5, :cond_17

    .line 364
    .line 365
    goto/16 :goto_7

    .line 366
    .line 367
    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    if-eqz v5, :cond_17

    .line 372
    .line 373
    shl-int/lit8 v5, v12, 0x3

    .line 374
    .line 375
    invoke-static {v13, v14, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    int-to-long v7, v7

    .line 380
    invoke-static {v5}, Ljn4;->a(I)I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    goto/16 :goto_5

    .line 389
    .line 390
    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-eqz v5, :cond_17

    .line 395
    .line 396
    shl-int/lit8 v5, v12, 0x3

    .line 397
    .line 398
    invoke-static {v13, v14, v1}, Luo4;->o(JLjava/lang/Object;)J

    .line 399
    .line 400
    .line 401
    move-result-wide v7

    .line 402
    invoke-static {v5}, Ljn4;->a(I)I

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 407
    .line 408
    .line 409
    move-result v7

    .line 410
    goto/16 :goto_5

    .line 411
    .line 412
    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_17

    .line 417
    .line 418
    shl-int/lit8 v5, v12, 0x3

    .line 419
    .line 420
    invoke-static {v13, v14, v1}, Luo4;->o(JLjava/lang/Object;)J

    .line 421
    .line 422
    .line 423
    move-result-wide v7

    .line 424
    invoke-static {v5}, Ljn4;->a(I)I

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    goto/16 :goto_5

    .line 433
    .line 434
    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-eqz v5, :cond_17

    .line 439
    .line 440
    goto/16 :goto_8

    .line 441
    .line 442
    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    if-eqz v5, :cond_17

    .line 447
    .line 448
    goto/16 :goto_7

    .line 449
    .line 450
    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    invoke-virtual {v0, v2}, Luo4;->D(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    check-cast v5, Llo4;

    .line 459
    .line 460
    check-cast v7, Lko4;

    .line 461
    .line 462
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    if-eqz v8, :cond_5

    .line 467
    .line 468
    :goto_b
    const/4 v8, 0x0

    .line 469
    goto :goto_d

    .line 470
    :cond_5
    invoke-virtual {v5}, Llo4;->entrySet()Ljava/util/Set;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    const/4 v8, 0x0

    .line 479
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    if-eqz v10, :cond_6

    .line 484
    .line 485
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v10

    .line 489
    check-cast v10, Ljava/util/Map$Entry;

    .line 490
    .line 491
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v10

    .line 499
    iget-object v13, v7, Lko4;->a:Lui3;

    .line 500
    .line 501
    shl-int/lit8 v14, v12, 0x3

    .line 502
    .line 503
    invoke-static {v14}, Ljn4;->a(I)I

    .line 504
    .line 505
    .line 506
    move-result v14

    .line 507
    invoke-static {v13, v11, v10}, Lko4;->b(Lui3;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 508
    .line 509
    .line 510
    move-result v10

    .line 511
    invoke-static {v10, v10, v14, v8}, Lto4;->c(IIII)I

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    goto :goto_c

    .line 516
    :cond_6
    :goto_d
    add-int/2addr v9, v8

    .line 517
    goto/16 :goto_1f

    .line 518
    .line 519
    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    check-cast v5, Ljava/util/List;

    .line 524
    .line 525
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    sget-object v8, Ldp4;->a:Lbx3;

    .line 530
    .line 531
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 532
    .line 533
    .line 534
    move-result v8

    .line 535
    if-nez v8, :cond_7

    .line 536
    .line 537
    const/4 v11, 0x0

    .line 538
    goto :goto_f

    .line 539
    :cond_7
    const/4 v10, 0x0

    .line 540
    const/4 v11, 0x0

    .line 541
    :goto_e
    if-ge v10, v8, :cond_8

    .line 542
    .line 543
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v13

    .line 547
    check-cast v13, Lsm4;

    .line 548
    .line 549
    shl-int/lit8 v14, v12, 0x3

    .line 550
    .line 551
    invoke-static {v14}, Ljn4;->a(I)I

    .line 552
    .line 553
    .line 554
    move-result v14

    .line 555
    add-int/2addr v14, v14

    .line 556
    invoke-virtual {v13, v7}, Lsm4;->c(Lcp4;)I

    .line 557
    .line 558
    .line 559
    move-result v13

    .line 560
    add-int/2addr v13, v14

    .line 561
    add-int/2addr v11, v13

    .line 562
    add-int/lit8 v10, v10, 0x1

    .line 563
    .line 564
    goto :goto_e

    .line 565
    :cond_8
    :goto_f
    add-int/2addr v9, v11

    .line 566
    goto/16 :goto_1f

    .line 567
    .line 568
    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    check-cast v5, Ljava/util/List;

    .line 573
    .line 574
    invoke-static {v5}, Ldp4;->t(Ljava/util/List;)I

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    if-lez v5, :cond_17

    .line 579
    .line 580
    shl-int/lit8 v7, v12, 0x3

    .line 581
    .line 582
    invoke-static {v7}, Ljn4;->a(I)I

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    :goto_10
    invoke-static {v5, v7, v5, v9}, Lto4;->c(IIII)I

    .line 587
    .line 588
    .line 589
    move-result v9

    .line 590
    goto/16 :goto_1f

    .line 591
    .line 592
    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    check-cast v5, Ljava/util/List;

    .line 597
    .line 598
    invoke-static {v5}, Ldp4;->x(Ljava/util/List;)I

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-lez v5, :cond_17

    .line 603
    .line 604
    shl-int/lit8 v7, v12, 0x3

    .line 605
    .line 606
    invoke-static {v7}, Ljn4;->a(I)I

    .line 607
    .line 608
    .line 609
    move-result v7

    .line 610
    goto :goto_10

    .line 611
    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    check-cast v5, Ljava/util/List;

    .line 616
    .line 617
    sget-object v7, Ldp4;->a:Lbx3;

    .line 618
    .line 619
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    mul-int/2addr v5, v8

    .line 624
    if-lez v5, :cond_17

    .line 625
    .line 626
    shl-int/lit8 v7, v12, 0x3

    .line 627
    .line 628
    invoke-static {v7}, Ljn4;->a(I)I

    .line 629
    .line 630
    .line 631
    move-result v7

    .line 632
    goto :goto_10

    .line 633
    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    check-cast v5, Ljava/util/List;

    .line 638
    .line 639
    sget-object v8, Ldp4;->a:Lbx3;

    .line 640
    .line 641
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 642
    .line 643
    .line 644
    move-result v5

    .line 645
    mul-int/2addr v5, v7

    .line 646
    if-lez v5, :cond_17

    .line 647
    .line 648
    shl-int/lit8 v7, v12, 0x3

    .line 649
    .line 650
    invoke-static {v7}, Ljn4;->a(I)I

    .line 651
    .line 652
    .line 653
    move-result v7

    .line 654
    goto :goto_10

    .line 655
    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    check-cast v5, Ljava/util/List;

    .line 660
    .line 661
    invoke-static {v5}, Ldp4;->u(Ljava/util/List;)I

    .line 662
    .line 663
    .line 664
    move-result v5

    .line 665
    if-lez v5, :cond_17

    .line 666
    .line 667
    shl-int/lit8 v7, v12, 0x3

    .line 668
    .line 669
    invoke-static {v7}, Ljn4;->a(I)I

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    goto :goto_10

    .line 674
    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    check-cast v5, Ljava/util/List;

    .line 679
    .line 680
    invoke-static {v5}, Ldp4;->w(Ljava/util/List;)I

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-lez v5, :cond_17

    .line 685
    .line 686
    shl-int/lit8 v7, v12, 0x3

    .line 687
    .line 688
    invoke-static {v7}, Ljn4;->a(I)I

    .line 689
    .line 690
    .line 691
    move-result v7

    .line 692
    goto :goto_10

    .line 693
    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    check-cast v5, Ljava/util/List;

    .line 698
    .line 699
    sget-object v7, Ldp4;->a:Lbx3;

    .line 700
    .line 701
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 702
    .line 703
    .line 704
    move-result v5

    .line 705
    if-lez v5, :cond_17

    .line 706
    .line 707
    shl-int/lit8 v7, v12, 0x3

    .line 708
    .line 709
    invoke-static {v7}, Ljn4;->a(I)I

    .line 710
    .line 711
    .line 712
    move-result v7

    .line 713
    goto :goto_10

    .line 714
    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v5

    .line 718
    check-cast v5, Ljava/util/List;

    .line 719
    .line 720
    sget-object v8, Ldp4;->a:Lbx3;

    .line 721
    .line 722
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 723
    .line 724
    .line 725
    move-result v5

    .line 726
    mul-int/2addr v5, v7

    .line 727
    if-lez v5, :cond_17

    .line 728
    .line 729
    shl-int/lit8 v7, v12, 0x3

    .line 730
    .line 731
    invoke-static {v7}, Ljn4;->a(I)I

    .line 732
    .line 733
    .line 734
    move-result v7

    .line 735
    goto/16 :goto_10

    .line 736
    .line 737
    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    check-cast v5, Ljava/util/List;

    .line 742
    .line 743
    sget-object v7, Ldp4;->a:Lbx3;

    .line 744
    .line 745
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 746
    .line 747
    .line 748
    move-result v5

    .line 749
    mul-int/2addr v5, v8

    .line 750
    if-lez v5, :cond_17

    .line 751
    .line 752
    shl-int/lit8 v7, v12, 0x3

    .line 753
    .line 754
    invoke-static {v7}, Ljn4;->a(I)I

    .line 755
    .line 756
    .line 757
    move-result v7

    .line 758
    goto/16 :goto_10

    .line 759
    .line 760
    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v5

    .line 764
    check-cast v5, Ljava/util/List;

    .line 765
    .line 766
    invoke-static {v5}, Ldp4;->v(Ljava/util/List;)I

    .line 767
    .line 768
    .line 769
    move-result v5

    .line 770
    if-lez v5, :cond_17

    .line 771
    .line 772
    shl-int/lit8 v7, v12, 0x3

    .line 773
    .line 774
    invoke-static {v7}, Ljn4;->a(I)I

    .line 775
    .line 776
    .line 777
    move-result v7

    .line 778
    goto/16 :goto_10

    .line 779
    .line 780
    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    check-cast v5, Ljava/util/List;

    .line 785
    .line 786
    invoke-static {v5}, Ldp4;->s(Ljava/util/List;)I

    .line 787
    .line 788
    .line 789
    move-result v5

    .line 790
    if-lez v5, :cond_17

    .line 791
    .line 792
    shl-int/lit8 v7, v12, 0x3

    .line 793
    .line 794
    invoke-static {v7}, Ljn4;->a(I)I

    .line 795
    .line 796
    .line 797
    move-result v7

    .line 798
    goto/16 :goto_10

    .line 799
    .line 800
    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v5

    .line 804
    check-cast v5, Ljava/util/List;

    .line 805
    .line 806
    invoke-static {v5}, Ldp4;->r(Ljava/util/List;)I

    .line 807
    .line 808
    .line 809
    move-result v5

    .line 810
    if-lez v5, :cond_17

    .line 811
    .line 812
    shl-int/lit8 v7, v12, 0x3

    .line 813
    .line 814
    invoke-static {v7}, Ljn4;->a(I)I

    .line 815
    .line 816
    .line 817
    move-result v7

    .line 818
    goto/16 :goto_10

    .line 819
    .line 820
    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v5

    .line 824
    check-cast v5, Ljava/util/List;

    .line 825
    .line 826
    sget-object v8, Ldp4;->a:Lbx3;

    .line 827
    .line 828
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 829
    .line 830
    .line 831
    move-result v5

    .line 832
    mul-int/2addr v5, v7

    .line 833
    if-lez v5, :cond_17

    .line 834
    .line 835
    shl-int/lit8 v7, v12, 0x3

    .line 836
    .line 837
    invoke-static {v7}, Ljn4;->a(I)I

    .line 838
    .line 839
    .line 840
    move-result v7

    .line 841
    goto/16 :goto_10

    .line 842
    .line 843
    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    check-cast v5, Ljava/util/List;

    .line 848
    .line 849
    sget-object v7, Ldp4;->a:Lbx3;

    .line 850
    .line 851
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 852
    .line 853
    .line 854
    move-result v5

    .line 855
    mul-int/2addr v5, v8

    .line 856
    if-lez v5, :cond_17

    .line 857
    .line 858
    shl-int/lit8 v7, v12, 0x3

    .line 859
    .line 860
    invoke-static {v7}, Ljn4;->a(I)I

    .line 861
    .line 862
    .line 863
    move-result v7

    .line 864
    goto/16 :goto_10

    .line 865
    .line 866
    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v5

    .line 870
    check-cast v5, Ljava/util/List;

    .line 871
    .line 872
    sget-object v7, Ldp4;->a:Lbx3;

    .line 873
    .line 874
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 875
    .line 876
    .line 877
    move-result v7

    .line 878
    if-nez v7, :cond_9

    .line 879
    .line 880
    goto/16 :goto_b

    .line 881
    .line 882
    :cond_9
    shl-int/lit8 v8, v12, 0x3

    .line 883
    .line 884
    invoke-static {v5}, Ldp4;->t(Ljava/util/List;)I

    .line 885
    .line 886
    .line 887
    move-result v5

    .line 888
    invoke-static {v8}, Ljn4;->a(I)I

    .line 889
    .line 890
    .line 891
    move-result v8

    .line 892
    :goto_11
    mul-int/2addr v8, v7

    .line 893
    add-int/2addr v8, v5

    .line 894
    goto/16 :goto_d

    .line 895
    .line 896
    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v5

    .line 900
    check-cast v5, Ljava/util/List;

    .line 901
    .line 902
    sget-object v7, Ldp4;->a:Lbx3;

    .line 903
    .line 904
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 905
    .line 906
    .line 907
    move-result v7

    .line 908
    if-nez v7, :cond_a

    .line 909
    .line 910
    goto/16 :goto_b

    .line 911
    .line 912
    :cond_a
    shl-int/lit8 v8, v12, 0x3

    .line 913
    .line 914
    invoke-static {v5}, Ldp4;->x(Ljava/util/List;)I

    .line 915
    .line 916
    .line 917
    move-result v5

    .line 918
    invoke-static {v8}, Ljn4;->a(I)I

    .line 919
    .line 920
    .line 921
    move-result v8

    .line 922
    goto :goto_11

    .line 923
    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    check-cast v5, Ljava/util/List;

    .line 928
    .line 929
    invoke-static {v12, v5}, Ldp4;->z(ILjava/util/List;)I

    .line 930
    .line 931
    .line 932
    move-result v5

    .line 933
    goto/16 :goto_4

    .line 934
    .line 935
    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    check-cast v5, Ljava/util/List;

    .line 940
    .line 941
    invoke-static {v12, v5}, Ldp4;->y(ILjava/util/List;)I

    .line 942
    .line 943
    .line 944
    move-result v5

    .line 945
    goto/16 :goto_4

    .line 946
    .line 947
    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    check-cast v5, Ljava/util/List;

    .line 952
    .line 953
    sget-object v7, Ldp4;->a:Lbx3;

    .line 954
    .line 955
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 956
    .line 957
    .line 958
    move-result v7

    .line 959
    if-nez v7, :cond_b

    .line 960
    .line 961
    goto/16 :goto_b

    .line 962
    .line 963
    :cond_b
    shl-int/lit8 v8, v12, 0x3

    .line 964
    .line 965
    invoke-static {v5}, Ldp4;->u(Ljava/util/List;)I

    .line 966
    .line 967
    .line 968
    move-result v5

    .line 969
    invoke-static {v8}, Ljn4;->a(I)I

    .line 970
    .line 971
    .line 972
    move-result v8

    .line 973
    goto :goto_11

    .line 974
    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v5

    .line 978
    check-cast v5, Ljava/util/List;

    .line 979
    .line 980
    sget-object v7, Ldp4;->a:Lbx3;

    .line 981
    .line 982
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 983
    .line 984
    .line 985
    move-result v7

    .line 986
    if-nez v7, :cond_c

    .line 987
    .line 988
    goto/16 :goto_b

    .line 989
    .line 990
    :cond_c
    shl-int/lit8 v8, v12, 0x3

    .line 991
    .line 992
    invoke-static {v5}, Ldp4;->w(Ljava/util/List;)I

    .line 993
    .line 994
    .line 995
    move-result v5

    .line 996
    invoke-static {v8}, Ljn4;->a(I)I

    .line 997
    .line 998
    .line 999
    move-result v8

    .line 1000
    goto :goto_11

    .line 1001
    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v5

    .line 1005
    check-cast v5, Ljava/util/List;

    .line 1006
    .line 1007
    sget-object v7, Ldp4;->a:Lbx3;

    .line 1008
    .line 1009
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1010
    .line 1011
    .line 1012
    move-result v7

    .line 1013
    if-nez v7, :cond_d

    .line 1014
    .line 1015
    goto/16 :goto_b

    .line 1016
    .line 1017
    :cond_d
    shl-int/lit8 v8, v12, 0x3

    .line 1018
    .line 1019
    invoke-static {v8}, Ljn4;->a(I)I

    .line 1020
    .line 1021
    .line 1022
    move-result v8

    .line 1023
    mul-int/2addr v8, v7

    .line 1024
    const/4 v7, 0x0

    .line 1025
    :goto_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1026
    .line 1027
    .line 1028
    move-result v10

    .line 1029
    if-ge v7, v10, :cond_6

    .line 1030
    .line 1031
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v10

    .line 1035
    check-cast v10, Lzm4;

    .line 1036
    .line 1037
    invoke-virtual {v10}, Lzm4;->c()I

    .line 1038
    .line 1039
    .line 1040
    move-result v10

    .line 1041
    invoke-static {v10, v10, v8}, Lto4;->b(III)I

    .line 1042
    .line 1043
    .line 1044
    move-result v8

    .line 1045
    add-int/lit8 v7, v7, 0x1

    .line 1046
    .line 1047
    goto :goto_12

    .line 1048
    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v5

    .line 1052
    check-cast v5, Ljava/util/List;

    .line 1053
    .line 1054
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v7

    .line 1058
    sget-object v8, Ldp4;->a:Lbx3;

    .line 1059
    .line 1060
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1061
    .line 1062
    .line 1063
    move-result v8

    .line 1064
    if-nez v8, :cond_e

    .line 1065
    .line 1066
    const/4 v10, 0x0

    .line 1067
    goto :goto_14

    .line 1068
    :cond_e
    shl-int/lit8 v10, v12, 0x3

    .line 1069
    .line 1070
    invoke-static {v10}, Ljn4;->a(I)I

    .line 1071
    .line 1072
    .line 1073
    move-result v10

    .line 1074
    mul-int/2addr v10, v8

    .line 1075
    const/4 v11, 0x0

    .line 1076
    :goto_13
    if-ge v11, v8, :cond_f

    .line 1077
    .line 1078
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v12

    .line 1082
    check-cast v12, Lsm4;

    .line 1083
    .line 1084
    invoke-virtual {v12, v7}, Lsm4;->c(Lcp4;)I

    .line 1085
    .line 1086
    .line 1087
    move-result v12

    .line 1088
    invoke-static {v12, v12, v10}, Lto4;->b(III)I

    .line 1089
    .line 1090
    .line 1091
    move-result v10

    .line 1092
    add-int/lit8 v11, v11, 0x1

    .line 1093
    .line 1094
    goto :goto_13

    .line 1095
    :cond_f
    :goto_14
    add-int/2addr v9, v10

    .line 1096
    goto/16 :goto_1f

    .line 1097
    .line 1098
    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v5

    .line 1102
    check-cast v5, Ljava/util/List;

    .line 1103
    .line 1104
    sget-object v7, Ldp4;->a:Lbx3;

    .line 1105
    .line 1106
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1107
    .line 1108
    .line 1109
    move-result v7

    .line 1110
    if-nez v7, :cond_10

    .line 1111
    .line 1112
    goto/16 :goto_b

    .line 1113
    .line 1114
    :cond_10
    shl-int/lit8 v8, v12, 0x3

    .line 1115
    .line 1116
    invoke-static {v8}, Ljn4;->a(I)I

    .line 1117
    .line 1118
    .line 1119
    move-result v8

    .line 1120
    mul-int/2addr v8, v7

    .line 1121
    const/4 v10, 0x0

    .line 1122
    :goto_15
    if-ge v10, v7, :cond_6

    .line 1123
    .line 1124
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v11

    .line 1128
    instance-of v12, v11, Lzm4;

    .line 1129
    .line 1130
    if-eqz v12, :cond_11

    .line 1131
    .line 1132
    check-cast v11, Lzm4;

    .line 1133
    .line 1134
    invoke-virtual {v11}, Lzm4;->c()I

    .line 1135
    .line 1136
    .line 1137
    move-result v11

    .line 1138
    :goto_16
    invoke-static {v11, v11, v8}, Lto4;->b(III)I

    .line 1139
    .line 1140
    .line 1141
    move-result v8

    .line 1142
    goto :goto_17

    .line 1143
    :cond_11
    check-cast v11, Ljava/lang/String;

    .line 1144
    .line 1145
    invoke-static {v11}, Ltp4;->b(Ljava/lang/String;)I

    .line 1146
    .line 1147
    .line 1148
    move-result v11

    .line 1149
    goto :goto_16

    .line 1150
    :goto_17
    add-int/lit8 v10, v10, 0x1

    .line 1151
    .line 1152
    goto :goto_15

    .line 1153
    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v5

    .line 1157
    check-cast v5, Ljava/util/List;

    .line 1158
    .line 1159
    sget-object v7, Ldp4;->a:Lbx3;

    .line 1160
    .line 1161
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1162
    .line 1163
    .line 1164
    move-result v5

    .line 1165
    if-nez v5, :cond_12

    .line 1166
    .line 1167
    :goto_18
    const/4 v7, 0x0

    .line 1168
    goto :goto_19

    .line 1169
    :cond_12
    shl-int/lit8 v7, v12, 0x3

    .line 1170
    .line 1171
    invoke-static {v7}, Ljn4;->a(I)I

    .line 1172
    .line 1173
    .line 1174
    move-result v7

    .line 1175
    add-int/2addr v7, v15

    .line 1176
    mul-int/2addr v7, v5

    .line 1177
    :goto_19
    add-int/2addr v9, v7

    .line 1178
    goto/16 :goto_1f

    .line 1179
    .line 1180
    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v5

    .line 1184
    check-cast v5, Ljava/util/List;

    .line 1185
    .line 1186
    invoke-static {v12, v5}, Ldp4;->y(ILjava/util/List;)I

    .line 1187
    .line 1188
    .line 1189
    move-result v5

    .line 1190
    goto/16 :goto_4

    .line 1191
    .line 1192
    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v5

    .line 1196
    check-cast v5, Ljava/util/List;

    .line 1197
    .line 1198
    invoke-static {v12, v5}, Ldp4;->z(ILjava/util/List;)I

    .line 1199
    .line 1200
    .line 1201
    move-result v5

    .line 1202
    goto/16 :goto_4

    .line 1203
    .line 1204
    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v5

    .line 1208
    check-cast v5, Ljava/util/List;

    .line 1209
    .line 1210
    sget-object v7, Ldp4;->a:Lbx3;

    .line 1211
    .line 1212
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1213
    .line 1214
    .line 1215
    move-result v7

    .line 1216
    if-nez v7, :cond_13

    .line 1217
    .line 1218
    goto/16 :goto_b

    .line 1219
    .line 1220
    :cond_13
    shl-int/lit8 v8, v12, 0x3

    .line 1221
    .line 1222
    invoke-static {v5}, Ldp4;->v(Ljava/util/List;)I

    .line 1223
    .line 1224
    .line 1225
    move-result v5

    .line 1226
    invoke-static {v8}, Ljn4;->a(I)I

    .line 1227
    .line 1228
    .line 1229
    move-result v8

    .line 1230
    goto/16 :goto_11

    .line 1231
    .line 1232
    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v5

    .line 1236
    check-cast v5, Ljava/util/List;

    .line 1237
    .line 1238
    sget-object v7, Ldp4;->a:Lbx3;

    .line 1239
    .line 1240
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1241
    .line 1242
    .line 1243
    move-result v7

    .line 1244
    if-nez v7, :cond_14

    .line 1245
    .line 1246
    goto/16 :goto_b

    .line 1247
    .line 1248
    :cond_14
    shl-int/lit8 v8, v12, 0x3

    .line 1249
    .line 1250
    invoke-static {v5}, Ldp4;->s(Ljava/util/List;)I

    .line 1251
    .line 1252
    .line 1253
    move-result v5

    .line 1254
    invoke-static {v8}, Ljn4;->a(I)I

    .line 1255
    .line 1256
    .line 1257
    move-result v8

    .line 1258
    goto/16 :goto_11

    .line 1259
    .line 1260
    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v5

    .line 1264
    check-cast v5, Ljava/util/List;

    .line 1265
    .line 1266
    sget-object v7, Ldp4;->a:Lbx3;

    .line 1267
    .line 1268
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1269
    .line 1270
    .line 1271
    move-result v7

    .line 1272
    if-nez v7, :cond_15

    .line 1273
    .line 1274
    goto :goto_18

    .line 1275
    :cond_15
    shl-int/lit8 v7, v12, 0x3

    .line 1276
    .line 1277
    invoke-static {v5}, Ldp4;->r(Ljava/util/List;)I

    .line 1278
    .line 1279
    .line 1280
    move-result v8

    .line 1281
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1282
    .line 1283
    .line 1284
    move-result v5

    .line 1285
    invoke-static {v7}, Ljn4;->a(I)I

    .line 1286
    .line 1287
    .line 1288
    move-result v7

    .line 1289
    mul-int/2addr v7, v5

    .line 1290
    add-int/2addr v7, v8

    .line 1291
    goto :goto_19

    .line 1292
    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v5

    .line 1296
    check-cast v5, Ljava/util/List;

    .line 1297
    .line 1298
    invoke-static {v12, v5}, Ldp4;->y(ILjava/util/List;)I

    .line 1299
    .line 1300
    .line 1301
    move-result v5

    .line 1302
    goto/16 :goto_4

    .line 1303
    .line 1304
    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v5

    .line 1308
    check-cast v5, Ljava/util/List;

    .line 1309
    .line 1310
    invoke-static {v12, v5}, Ldp4;->z(ILjava/util/List;)I

    .line 1311
    .line 1312
    .line 1313
    move-result v5

    .line 1314
    goto/16 :goto_4

    .line 1315
    .line 1316
    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1317
    .line 1318
    .line 1319
    move-result v5

    .line 1320
    if-eqz v5, :cond_17

    .line 1321
    .line 1322
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v5

    .line 1326
    check-cast v5, Lsm4;

    .line 1327
    .line 1328
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v7

    .line 1332
    sget-object v8, Ldp4;->a:Lbx3;

    .line 1333
    .line 1334
    shl-int/lit8 v8, v12, 0x3

    .line 1335
    .line 1336
    invoke-static {v8}, Ljn4;->a(I)I

    .line 1337
    .line 1338
    .line 1339
    move-result v8

    .line 1340
    add-int/2addr v8, v8

    .line 1341
    invoke-virtual {v5, v7}, Lsm4;->c(Lcp4;)I

    .line 1342
    .line 1343
    .line 1344
    move-result v5

    .line 1345
    goto/16 :goto_3

    .line 1346
    .line 1347
    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v5

    .line 1351
    if-eqz v5, :cond_17

    .line 1352
    .line 1353
    shl-int/lit8 v0, v12, 0x3

    .line 1354
    .line 1355
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1356
    .line 1357
    .line 1358
    move-result-wide v7

    .line 1359
    add-long v11, v7, v7

    .line 1360
    .line 1361
    shr-long/2addr v7, v10

    .line 1362
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1363
    .line 1364
    .line 1365
    move-result v0

    .line 1366
    xor-long/2addr v7, v11

    .line 1367
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 1368
    .line 1369
    .line 1370
    move-result v5

    .line 1371
    :goto_1a
    add-int/2addr v5, v0

    .line 1372
    goto/16 :goto_4

    .line 1373
    .line 1374
    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v5

    .line 1378
    if-eqz v5, :cond_17

    .line 1379
    .line 1380
    shl-int/lit8 v0, v12, 0x3

    .line 1381
    .line 1382
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1383
    .line 1384
    .line 1385
    move-result v5

    .line 1386
    add-int v7, v5, v5

    .line 1387
    .line 1388
    shr-int/lit8 v5, v5, 0x1f

    .line 1389
    .line 1390
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1391
    .line 1392
    .line 1393
    move-result v0

    .line 1394
    xor-int/2addr v5, v7

    .line 1395
    :goto_1b
    invoke-static {v5, v0, v9}, Lto4;->b(III)I

    .line 1396
    .line 1397
    .line 1398
    move-result v9

    .line 1399
    goto/16 :goto_1f

    .line 1400
    .line 1401
    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v5

    .line 1405
    if-eqz v5, :cond_17

    .line 1406
    .line 1407
    :goto_1c
    shl-int/lit8 v0, v12, 0x3

    .line 1408
    .line 1409
    invoke-static {v0, v8, v9}, Lto4;->b(III)I

    .line 1410
    .line 1411
    .line 1412
    move-result v9

    .line 1413
    goto/16 :goto_1f

    .line 1414
    .line 1415
    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v5

    .line 1419
    if-eqz v5, :cond_17

    .line 1420
    .line 1421
    :goto_1d
    shl-int/lit8 v0, v12, 0x3

    .line 1422
    .line 1423
    invoke-static {v0, v7, v9}, Lto4;->b(III)I

    .line 1424
    .line 1425
    .line 1426
    move-result v9

    .line 1427
    goto/16 :goto_1f

    .line 1428
    .line 1429
    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v5

    .line 1433
    if-eqz v5, :cond_17

    .line 1434
    .line 1435
    shl-int/lit8 v0, v12, 0x3

    .line 1436
    .line 1437
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1438
    .line 1439
    .line 1440
    move-result v5

    .line 1441
    int-to-long v7, v5

    .line 1442
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1443
    .line 1444
    .line 1445
    move-result v0

    .line 1446
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 1447
    .line 1448
    .line 1449
    move-result v5

    .line 1450
    goto :goto_1a

    .line 1451
    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1452
    .line 1453
    .line 1454
    move-result v5

    .line 1455
    if-eqz v5, :cond_17

    .line 1456
    .line 1457
    shl-int/lit8 v0, v12, 0x3

    .line 1458
    .line 1459
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1460
    .line 1461
    .line 1462
    move-result v5

    .line 1463
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1464
    .line 1465
    .line 1466
    move-result v0

    .line 1467
    goto :goto_1b

    .line 1468
    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v5

    .line 1472
    if-eqz v5, :cond_17

    .line 1473
    .line 1474
    shl-int/lit8 v0, v12, 0x3

    .line 1475
    .line 1476
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v5

    .line 1480
    check-cast v5, Lzm4;

    .line 1481
    .line 1482
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1483
    .line 1484
    .line 1485
    move-result v0

    .line 1486
    invoke-virtual {v5}, Lzm4;->c()I

    .line 1487
    .line 1488
    .line 1489
    move-result v5

    .line 1490
    :goto_1e
    invoke-static {v5, v5, v0, v9}, Lto4;->c(IIII)I

    .line 1491
    .line 1492
    .line 1493
    move-result v9

    .line 1494
    goto/16 :goto_1f

    .line 1495
    .line 1496
    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v5

    .line 1500
    if-eqz v5, :cond_17

    .line 1501
    .line 1502
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v5

    .line 1506
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v7

    .line 1510
    sget-object v8, Ldp4;->a:Lbx3;

    .line 1511
    .line 1512
    shl-int/lit8 v8, v12, 0x3

    .line 1513
    .line 1514
    check-cast v5, Lsm4;

    .line 1515
    .line 1516
    invoke-static {v8}, Ljn4;->a(I)I

    .line 1517
    .line 1518
    .line 1519
    move-result v8

    .line 1520
    invoke-virtual {v5, v7}, Lsm4;->c(Lcp4;)I

    .line 1521
    .line 1522
    .line 1523
    move-result v5

    .line 1524
    goto/16 :goto_a

    .line 1525
    .line 1526
    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1527
    .line 1528
    .line 1529
    move-result v5

    .line 1530
    if-eqz v5, :cond_17

    .line 1531
    .line 1532
    shl-int/lit8 v0, v12, 0x3

    .line 1533
    .line 1534
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v5

    .line 1538
    instance-of v7, v5, Lzm4;

    .line 1539
    .line 1540
    if-eqz v7, :cond_16

    .line 1541
    .line 1542
    check-cast v5, Lzm4;

    .line 1543
    .line 1544
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1545
    .line 1546
    .line 1547
    move-result v0

    .line 1548
    invoke-virtual {v5}, Lzm4;->c()I

    .line 1549
    .line 1550
    .line 1551
    move-result v5

    .line 1552
    goto :goto_1e

    .line 1553
    :cond_16
    check-cast v5, Ljava/lang/String;

    .line 1554
    .line 1555
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1556
    .line 1557
    .line 1558
    move-result v0

    .line 1559
    invoke-static {v5}, Ltp4;->b(Ljava/lang/String;)I

    .line 1560
    .line 1561
    .line 1562
    move-result v5

    .line 1563
    goto :goto_1e

    .line 1564
    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1565
    .line 1566
    .line 1567
    move-result v5

    .line 1568
    if-eqz v5, :cond_17

    .line 1569
    .line 1570
    shl-int/lit8 v0, v12, 0x3

    .line 1571
    .line 1572
    invoke-static {v0, v15, v9}, Lto4;->b(III)I

    .line 1573
    .line 1574
    .line 1575
    move-result v9

    .line 1576
    goto :goto_1f

    .line 1577
    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v5

    .line 1581
    if-eqz v5, :cond_17

    .line 1582
    .line 1583
    goto/16 :goto_1d

    .line 1584
    .line 1585
    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v5

    .line 1589
    if-eqz v5, :cond_17

    .line 1590
    .line 1591
    goto/16 :goto_1c

    .line 1592
    .line 1593
    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1594
    .line 1595
    .line 1596
    move-result v5

    .line 1597
    if-eqz v5, :cond_17

    .line 1598
    .line 1599
    shl-int/lit8 v0, v12, 0x3

    .line 1600
    .line 1601
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1602
    .line 1603
    .line 1604
    move-result v5

    .line 1605
    int-to-long v7, v5

    .line 1606
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1607
    .line 1608
    .line 1609
    move-result v0

    .line 1610
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 1611
    .line 1612
    .line 1613
    move-result v5

    .line 1614
    goto/16 :goto_1a

    .line 1615
    .line 1616
    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1617
    .line 1618
    .line 1619
    move-result v5

    .line 1620
    if-eqz v5, :cond_17

    .line 1621
    .line 1622
    shl-int/lit8 v0, v12, 0x3

    .line 1623
    .line 1624
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1625
    .line 1626
    .line 1627
    move-result-wide v7

    .line 1628
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1629
    .line 1630
    .line 1631
    move-result v0

    .line 1632
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 1633
    .line 1634
    .line 1635
    move-result v5

    .line 1636
    goto/16 :goto_1a

    .line 1637
    .line 1638
    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v5

    .line 1642
    if-eqz v5, :cond_17

    .line 1643
    .line 1644
    shl-int/lit8 v0, v12, 0x3

    .line 1645
    .line 1646
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1647
    .line 1648
    .line 1649
    move-result-wide v7

    .line 1650
    invoke-static {v0}, Ljn4;->a(I)I

    .line 1651
    .line 1652
    .line 1653
    move-result v0

    .line 1654
    invoke-static {v7, v8}, Ljn4;->b(J)I

    .line 1655
    .line 1656
    .line 1657
    move-result v5

    .line 1658
    goto/16 :goto_1a

    .line 1659
    .line 1660
    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v5

    .line 1664
    if-eqz v5, :cond_17

    .line 1665
    .line 1666
    goto/16 :goto_1d

    .line 1667
    .line 1668
    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1669
    .line 1670
    .line 1671
    move-result v5

    .line 1672
    if-eqz v5, :cond_17

    .line 1673
    .line 1674
    goto/16 :goto_1c

    .line 1675
    .line 1676
    :cond_17
    :goto_1f
    add-int/lit8 v2, v2, 0x3

    .line 1677
    .line 1678
    move-object/from16 v0, p0

    .line 1679
    .line 1680
    move-object/from16 v1, p1

    .line 1681
    .line 1682
    const v8, 0xfffff

    .line 1683
    .line 1684
    .line 1685
    goto/16 :goto_0

    .line 1686
    .line 1687
    :cond_18
    move-object/from16 v0, p1

    .line 1688
    .line 1689
    check-cast v0, Lrn4;

    .line 1690
    .line 1691
    iget-object v0, v0, Lrn4;->zzc:Llp4;

    .line 1692
    .line 1693
    invoke-virtual {v0}, Llp4;->c()I

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    add-int/2addr v0, v9

    .line 1698
    return v0

    .line 1699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0xfffff

    .line 3
    .line 4
    .line 5
    move v2, v0

    .line 6
    move v4, v2

    .line 7
    move v3, v1

    .line 8
    :goto_0
    iget v5, p0, Luo4;->h:I

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    if-ge v2, v5, :cond_b

    .line 12
    .line 13
    iget-object v5, p0, Luo4;->g:[I

    .line 14
    .line 15
    aget v9, v5, v2

    .line 16
    .line 17
    invoke-virtual {p0, v9}, Luo4;->j(I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    add-int/lit8 v7, v9, 0x2

    .line 22
    .line 23
    iget-object v13, p0, Luo4;->a:[I

    .line 24
    .line 25
    aget v7, v13, v7

    .line 26
    .line 27
    and-int v8, v7, v1

    .line 28
    .line 29
    ushr-int/lit8 v7, v7, 0x14

    .line 30
    .line 31
    shl-int v12, v6, v7

    .line 32
    .line 33
    if-eq v8, v3, :cond_1

    .line 34
    .line 35
    if-eq v8, v1, :cond_0

    .line 36
    .line 37
    int-to-long v3, v8

    .line 38
    sget-object v6, Luo4;->l:Lsun/misc/Unsafe;

    .line 39
    .line 40
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    :cond_0
    move v11, v4

    .line 45
    move v10, v8

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v10, v3

    .line 48
    move v11, v4

    .line 49
    :goto_1
    const/high16 v3, 0x10000000

    .line 50
    .line 51
    and-int/2addr v3, v5

    .line 52
    move-object v7, p0

    .line 53
    move-object v8, p1

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual/range {v7 .. v12}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_2

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_2
    invoke-static {v5}, Luo4;->k(I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const/16 p1, 0x9

    .line 69
    .line 70
    if-eq p0, p1, :cond_9

    .line 71
    .line 72
    const/16 p1, 0x11

    .line 73
    .line 74
    if-eq p0, p1, :cond_9

    .line 75
    .line 76
    const/16 p1, 0x1b

    .line 77
    .line 78
    if-eq p0, p1, :cond_7

    .line 79
    .line 80
    const/16 p1, 0x3c

    .line 81
    .line 82
    if-eq p0, p1, :cond_6

    .line 83
    .line 84
    const/16 p1, 0x44

    .line 85
    .line 86
    if-eq p0, p1, :cond_6

    .line 87
    .line 88
    const/16 p1, 0x31

    .line 89
    .line 90
    if-eq p0, p1, :cond_7

    .line 91
    .line 92
    const/16 p1, 0x32

    .line 93
    .line 94
    if-eq p0, p1, :cond_3

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_3
    and-int p0, v5, v1

    .line 99
    .line 100
    int-to-long p0, p0

    .line 101
    invoke-static {p0, p1, v8}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Llo4;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_a

    .line 112
    .line 113
    invoke-virtual {v7, v9}, Luo4;->D(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lko4;

    .line 118
    .line 119
    iget-object p1, p1, Lko4;->a:Lui3;

    .line 120
    .line 121
    iget-object p1, p1, Lui3;->p:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Lup4;

    .line 124
    .line 125
    iget-object p1, p1, Lup4;->n:Lvp4;

    .line 126
    .line 127
    sget-object v3, Lvp4;->v:Lvp4;

    .line 128
    .line 129
    if-ne p1, v3, :cond_a

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const/4 p1, 0x0

    .line 140
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_a

    .line 145
    .line 146
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-nez p1, :cond_5

    .line 151
    .line 152
    sget-object p1, Lzo4;->c:Lzo4;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {p1, v4}, Lzo4;->a(Ljava/lang/Class;)Lcp4;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    :cond_5
    invoke-interface {p1, v3}, Lcp4;->d(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_4

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    aget p0, v13, v9

    .line 170
    .line 171
    invoke-virtual {v7, p0, v9, v8}, Luo4;->t(IILjava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_a

    .line 176
    .line 177
    invoke-virtual {v7, v9}, Luo4;->C(I)Lcp4;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    and-int p1, v5, v1

    .line 182
    .line 183
    int-to-long v3, p1

    .line 184
    invoke-static {v3, v4, v8}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-interface {p0, p1}, Lcp4;->d(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-nez p0, :cond_a

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    and-int p0, v5, v1

    .line 196
    .line 197
    int-to-long p0, p0

    .line 198
    invoke-static {p0, p1, v8}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast p0, Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_a

    .line 209
    .line 210
    invoke-virtual {v7, v9}, Luo4;->C(I)Lcp4;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    move v3, v0

    .line 215
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-ge v3, v4, :cond_a

    .line 220
    .line 221
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-interface {p1, v4}, Lcp4;->d(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-nez v4, :cond_8

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_9
    invoke-virtual/range {v7 .. v12}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    if-eqz p0, :cond_a

    .line 240
    .line 241
    invoke-virtual {v7, v9}, Luo4;->C(I)Lcp4;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    and-int p1, v5, v1

    .line 246
    .line 247
    int-to-long v3, p1

    .line 248
    invoke-static {v3, v4, v8}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-interface {p0, p1}, Lcp4;->d(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    if-nez p0, :cond_a

    .line 257
    .line 258
    :goto_3
    return v0

    .line 259
    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 260
    .line 261
    move-object p0, v7

    .line 262
    move-object p1, v8

    .line 263
    move v3, v10

    .line 264
    move v4, v11

    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_b
    return v6
.end method

.method public final e(Ljava/lang/Object;[BIILe91;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Luo4;->x(Ljava/lang/Object;[BIIILe91;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(Ljava/lang/Object;Le50;Lkn4;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    iget-object v0, v7, Le50;->d:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v9, v0

    .line 10
    check-cast v9, Lcn4;

    .line 11
    .line 12
    iget-object v10, v1, Luo4;->g:[I

    .line 13
    .line 14
    iget v11, v1, Luo4;->i:I

    .line 15
    .line 16
    iget v12, v1, Luo4;->h:I

    .line 17
    .line 18
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Luo4;->m(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v1, Luo4;->j:Lbx3;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    move-object v2, v0

    .line 28
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Le50;->Y()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v3, v1, Luo4;->c:I

    .line 33
    .line 34
    const/4 v13, 0x0

    .line 35
    if-lt v0, v3, :cond_0

    .line 36
    .line 37
    iget v3, v1, Luo4;->d:I

    .line 38
    .line 39
    if-gt v0, v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v0, v13}, Luo4;->v(II)I

    .line 42
    .line 43
    .line 44
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 45
    :goto_1
    move v6, v3

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    const/4 v3, -0x1

    .line 48
    goto :goto_1

    .line 49
    :goto_2
    if-gez v6, :cond_4

    .line 50
    .line 51
    const v3, 0x7fffffff

    .line 52
    .line 53
    .line 54
    if-ne v0, v3, :cond_1

    .line 55
    .line 56
    move-object v4, v2

    .line 57
    :goto_3
    if-ge v12, v11, :cond_14

    .line 58
    .line 59
    aget v3, v10, v12

    .line 60
    .line 61
    move-object/from16 v6, p1

    .line 62
    .line 63
    move-object/from16 v2, p1

    .line 64
    .line 65
    invoke-virtual/range {v1 .. v6}, Luo4;->J(Ljava/lang/Object;ILjava/lang/Object;Lbx3;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    add-int/lit8 v12, v12, 0x1

    .line 70
    .line 71
    move-object/from16 v1, p0

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_1
    if-nez v2, :cond_2

    .line 75
    .line 76
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static/range {p1 .. p1}, Lbx3;->s(Ljava/lang/Object;)Llp4;

    .line 80
    .line 81
    .line 82
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 83
    move-object v2, v0

    .line 84
    goto :goto_5

    .line 85
    :goto_4
    move-object/from16 v18, v2

    .line 86
    .line 87
    goto/16 :goto_1c

    .line 88
    .line 89
    :cond_2
    :goto_5
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v13, v7, v2}, Lbx3;->t(ILe50;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    move-object v4, v2

    .line 99
    :goto_6
    if-ge v12, v11, :cond_14

    .line 100
    .line 101
    aget v3, v10, v12

    .line 102
    .line 103
    move-object/from16 v6, p1

    .line 104
    .line 105
    move-object/from16 v1, p0

    .line 106
    .line 107
    move-object/from16 v2, p1

    .line 108
    .line 109
    invoke-virtual/range {v1 .. v6}, Luo4;->J(Ljava/lang/Object;ILjava/lang/Object;Lbx3;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    add-int/lit8 v12, v12, 0x1

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_3
    move-object/from16 v1, p0

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    move-object/from16 v1, p0

    .line 121
    .line 122
    goto/16 :goto_1d

    .line 123
    .line 124
    :cond_4
    :try_start_3
    invoke-virtual {v1, v6}, Luo4;->j(I)I

    .line 125
    .line 126
    .line 127
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 128
    :try_start_4
    invoke-static {v3}, Luo4;->k(I)I

    .line 129
    .line 130
    .line 131
    move-result v4
    :try_end_4
    .catch Leo4; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 132
    const/4 v15, 0x3

    .line 133
    const/4 v14, 0x1

    .line 134
    const v16, 0xfffff

    .line 135
    .line 136
    .line 137
    packed-switch v4, :pswitch_data_0

    .line 138
    .line 139
    .line 140
    if-nez v2, :cond_5

    .line 141
    .line 142
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static/range {p1 .. p1}, Lbx3;->s(Ljava/lang/Object;)Llp4;

    .line 146
    .line 147
    .line 148
    move-result-object v0
    :try_end_5
    .catch Leo4; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 149
    move-object v2, v0

    .line 150
    goto :goto_7

    .line 151
    :catch_0
    move-object v15, v1

    .line 152
    move-object/from16 v18, v2

    .line 153
    .line 154
    move-object/from16 v17, v5

    .line 155
    .line 156
    move-object/from16 v1, p1

    .line 157
    .line 158
    goto/16 :goto_18

    .line 159
    .line 160
    :cond_5
    :goto_7
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {v13, v7, v2}, Lbx3;->t(ILe50;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0
    :try_end_6
    .catch Leo4; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 167
    if-nez v0, :cond_8

    .line 168
    .line 169
    move-object v4, v2

    .line 170
    :goto_8
    if-ge v12, v11, :cond_6

    .line 171
    .line 172
    aget v3, v10, v12

    .line 173
    .line 174
    move-object/from16 v6, p1

    .line 175
    .line 176
    move-object/from16 v2, p1

    .line 177
    .line 178
    invoke-virtual/range {v1 .. v6}, Luo4;->J(Ljava/lang/Object;ILjava/lang/Object;Lbx3;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    move-object/from16 v17, v5

    .line 183
    .line 184
    move-object v5, v2

    .line 185
    add-int/lit8 v12, v12, 0x1

    .line 186
    .line 187
    move-object/from16 v5, v17

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_6
    move-object/from16 v17, v5

    .line 191
    .line 192
    move-object/from16 v5, p1

    .line 193
    .line 194
    :cond_7
    move-object/from16 v5, v17

    .line 195
    .line 196
    goto/16 :goto_1b

    .line 197
    .line 198
    :cond_8
    move-object/from16 v17, v5

    .line 199
    .line 200
    move-object/from16 v5, p1

    .line 201
    .line 202
    :goto_9
    move-object/from16 v5, v17

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :catchall_1
    move-exception v0

    .line 207
    move-object/from16 v17, v5

    .line 208
    .line 209
    move-object/from16 v5, p1

    .line 210
    .line 211
    goto :goto_a

    .line 212
    :catch_1
    move-object/from16 v17, v5

    .line 213
    .line 214
    move-object/from16 v5, p1

    .line 215
    .line 216
    goto :goto_b

    .line 217
    :goto_a
    move-object/from16 v5, v17

    .line 218
    .line 219
    goto/16 :goto_1d

    .line 220
    .line 221
    :goto_b
    move-object v15, v1

    .line 222
    move-object v1, v5

    .line 223
    goto/16 :goto_19

    .line 224
    .line 225
    :pswitch_0
    move-object/from16 v17, v5

    .line 226
    .line 227
    move-object/from16 v5, p1

    .line 228
    .line 229
    :try_start_7
    invoke-virtual {v1, v0, v6, v5}, Luo4;->H(IILjava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Lsm4;

    .line 234
    .line 235
    invoke-virtual {v1, v6}, Luo4;->C(I)Lcp4;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v7, v15}, Le50;->R(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v3, v4, v8}, Le50;->T(Ljava/lang/Object;Lcp4;Lkn4;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v0, v6, v5, v3}, Luo4;->I(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :goto_c
    move-object v15, v1

    .line 249
    move-object/from16 v18, v2

    .line 250
    .line 251
    move-object v1, v5

    .line 252
    goto/16 :goto_17

    .line 253
    .line 254
    :catchall_2
    move-exception v0

    .line 255
    move-object/from16 v18, v2

    .line 256
    .line 257
    :goto_d
    move-object/from16 v5, v17

    .line 258
    .line 259
    goto/16 :goto_1c

    .line 260
    .line 261
    :catch_2
    move-object v15, v1

    .line 262
    move-object/from16 v18, v2

    .line 263
    .line 264
    move-object v1, v5

    .line 265
    goto/16 :goto_18

    .line 266
    .line 267
    :pswitch_1
    move-object/from16 v17, v5

    .line 268
    .line 269
    move-object/from16 v5, p1

    .line 270
    .line 271
    and-int v3, v3, v16

    .line 272
    .line 273
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9}, Lcn4;->F()J

    .line 277
    .line 278
    .line 279
    move-result-wide v14

    .line 280
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    int-to-long v14, v3

    .line 285
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto :goto_c

    .line 292
    :pswitch_2
    move-object/from16 v17, v5

    .line 293
    .line 294
    move-object/from16 v5, p1

    .line 295
    .line 296
    and-int v3, v3, v16

    .line 297
    .line 298
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9}, Lcn4;->E()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    int-to-long v14, v3

    .line 310
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    goto :goto_c

    .line 317
    :pswitch_3
    move-object/from16 v17, v5

    .line 318
    .line 319
    move-object/from16 v5, p1

    .line 320
    .line 321
    and-int v3, v3, v16

    .line 322
    .line 323
    invoke-virtual {v7, v14}, Le50;->R(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9}, Lcn4;->D()J

    .line 327
    .line 328
    .line 329
    move-result-wide v14

    .line 330
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    int-to-long v14, v3

    .line 335
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    goto :goto_c

    .line 342
    :pswitch_4
    move-object/from16 v17, v5

    .line 343
    .line 344
    move-object/from16 v5, p1

    .line 345
    .line 346
    and-int v3, v3, v16

    .line 347
    .line 348
    const/4 v4, 0x5

    .line 349
    invoke-virtual {v7, v4}, Le50;->R(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9}, Lcn4;->C()I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    int-to-long v14, v3

    .line 361
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto :goto_c

    .line 368
    :pswitch_5
    move-object/from16 v17, v5

    .line 369
    .line 370
    move-object/from16 v5, p1

    .line 371
    .line 372
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v9}, Lcn4;->B()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    invoke-virtual {v1, v6}, Luo4;->E(I)Lmm4;

    .line 380
    .line 381
    .line 382
    move-result-object v14

    .line 383
    if-eqz v14, :cond_b

    .line 384
    .line 385
    invoke-virtual {v14, v4}, Lmm4;->a(I)Z

    .line 386
    .line 387
    .line 388
    move-result v14

    .line 389
    if-eqz v14, :cond_9

    .line 390
    .line 391
    goto :goto_10

    .line 392
    :cond_9
    sget-object v3, Ldp4;->a:Lbx3;

    .line 393
    .line 394
    if-nez v2, :cond_a

    .line 395
    .line 396
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-static {v5}, Lbx3;->s(Ljava/lang/Object;)Llp4;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    goto :goto_e

    .line 404
    :cond_a
    move-object v3, v2

    .line 405
    :goto_e
    int-to-long v14, v4

    .line 406
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    move-object v4, v3

    .line 410
    check-cast v4, Llp4;

    .line 411
    .line 412
    shl-int/lit8 v0, v0, 0x3

    .line 413
    .line 414
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {v4, v0, v6}, Llp4;->d(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :goto_f
    move-object v2, v3

    .line 422
    goto/16 :goto_9

    .line 423
    .line 424
    :cond_b
    :goto_10
    and-int v3, v3, v16

    .line 425
    .line 426
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    int-to-long v14, v3

    .line 431
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_c

    .line 438
    .line 439
    :pswitch_6
    move-object/from16 v17, v5

    .line 440
    .line 441
    move-object/from16 v5, p1

    .line 442
    .line 443
    and-int v3, v3, v16

    .line 444
    .line 445
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v9}, Lcn4;->A()I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    int-to-long v14, v3

    .line 457
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_c

    .line 464
    .line 465
    :pswitch_7
    move-object/from16 v17, v5

    .line 466
    .line 467
    move-object/from16 v5, p1

    .line 468
    .line 469
    and-int v3, v3, v16

    .line 470
    .line 471
    invoke-virtual {v7}, Le50;->Z()Lzm4;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    int-to-long v14, v3

    .line 476
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_c

    .line 483
    .line 484
    :pswitch_8
    move-object/from16 v17, v5

    .line 485
    .line 486
    move-object/from16 v5, p1

    .line 487
    .line 488
    invoke-virtual {v1, v0, v6, v5}, Luo4;->H(IILjava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    check-cast v3, Lsm4;

    .line 493
    .line 494
    invoke-virtual {v1, v6}, Luo4;->C(I)Lcp4;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    const/4 v14, 0x2

    .line 499
    invoke-virtual {v7, v14}, Le50;->R(I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v7, v3, v4, v8}, Le50;->S(Ljava/lang/Object;Lcp4;Lkn4;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v0, v6, v5, v3}, Luo4;->I(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_c

    .line 509
    .line 510
    :pswitch_9
    move-object/from16 v17, v5

    .line 511
    .line 512
    move-object/from16 v5, p1

    .line 513
    .line 514
    invoke-virtual {v1, v3, v7, v5}, Luo4;->K(ILe50;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_c

    .line 521
    .line 522
    :pswitch_a
    move-object/from16 v17, v5

    .line 523
    .line 524
    move-object/from16 v5, p1

    .line 525
    .line 526
    and-int v3, v3, v16

    .line 527
    .line 528
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v9}, Lcn4;->v()Z

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    int-to-long v14, v3

    .line 540
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_c

    .line 547
    .line 548
    :pswitch_b
    move-object/from16 v17, v5

    .line 549
    .line 550
    move-object/from16 v5, p1

    .line 551
    .line 552
    and-int v3, v3, v16

    .line 553
    .line 554
    const/4 v4, 0x5

    .line 555
    invoke-virtual {v7, v4}, Le50;->R(I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v9}, Lcn4;->u()I

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    int-to-long v14, v3

    .line 567
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_c

    .line 574
    .line 575
    :pswitch_c
    move-object/from16 v17, v5

    .line 576
    .line 577
    move-object/from16 v5, p1

    .line 578
    .line 579
    and-int v3, v3, v16

    .line 580
    .line 581
    invoke-virtual {v7, v14}, Le50;->R(I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v9}, Lcn4;->t()J

    .line 585
    .line 586
    .line 587
    move-result-wide v14

    .line 588
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    int-to-long v14, v3

    .line 593
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_c

    .line 600
    .line 601
    :pswitch_d
    move-object/from16 v17, v5

    .line 602
    .line 603
    move-object/from16 v5, p1

    .line 604
    .line 605
    and-int v3, v3, v16

    .line 606
    .line 607
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v9}, Lcn4;->s()I

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    int-to-long v14, v3

    .line 619
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    goto/16 :goto_c

    .line 626
    .line 627
    :pswitch_e
    move-object/from16 v17, v5

    .line 628
    .line 629
    move-object/from16 v5, p1

    .line 630
    .line 631
    and-int v3, v3, v16

    .line 632
    .line 633
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v9}, Lcn4;->q()J

    .line 637
    .line 638
    .line 639
    move-result-wide v14

    .line 640
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    int-to-long v14, v3

    .line 645
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    goto/16 :goto_c

    .line 652
    .line 653
    :pswitch_f
    move-object/from16 v17, v5

    .line 654
    .line 655
    move-object/from16 v5, p1

    .line 656
    .line 657
    and-int v3, v3, v16

    .line 658
    .line 659
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v9}, Lcn4;->r()J

    .line 663
    .line 664
    .line 665
    move-result-wide v14

    .line 666
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    int-to-long v14, v3

    .line 671
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    goto/16 :goto_c

    .line 678
    .line 679
    :pswitch_10
    move-object/from16 v17, v5

    .line 680
    .line 681
    move-object/from16 v5, p1

    .line 682
    .line 683
    and-int v3, v3, v16

    .line 684
    .line 685
    const/4 v4, 0x5

    .line 686
    invoke-virtual {v7, v4}, Le50;->R(I)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v9}, Lcn4;->p()F

    .line 690
    .line 691
    .line 692
    move-result v4

    .line 693
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 694
    .line 695
    .line 696
    move-result-object v4

    .line 697
    int-to-long v14, v3

    .line 698
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    goto/16 :goto_c

    .line 705
    .line 706
    :pswitch_11
    move-object/from16 v17, v5

    .line 707
    .line 708
    move-object/from16 v5, p1

    .line 709
    .line 710
    and-int v3, v3, v16

    .line 711
    .line 712
    invoke-virtual {v7, v14}, Le50;->R(I)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v9}, Lcn4;->o()D

    .line 716
    .line 717
    .line 718
    move-result-wide v14

    .line 719
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    int-to-long v14, v3

    .line 724
    invoke-static {v5, v14, v15, v4}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v0, v6, v5}, Luo4;->u(IILjava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_c

    .line 731
    .line 732
    :pswitch_12
    move-object/from16 v17, v5

    .line 733
    .line 734
    move-object/from16 v5, p1

    .line 735
    .line 736
    invoke-virtual {v1, v6}, Luo4;->D(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-virtual {v1, v6}, Luo4;->j(I)I

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    and-int v3, v3, v16

    .line 745
    .line 746
    int-to-long v3, v3

    .line 747
    invoke-static {v3, v4, v5}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v6

    .line 751
    if-nez v6, :cond_c

    .line 752
    .line 753
    sget-object v6, Llo4;->o:Llo4;

    .line 754
    .line 755
    invoke-virtual {v6}, Llo4;->a()Llo4;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    invoke-static {v5, v3, v4, v6}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    goto :goto_11

    .line 763
    :cond_c
    move-object v14, v6

    .line 764
    check-cast v14, Llo4;

    .line 765
    .line 766
    iget-boolean v14, v14, Llo4;->n:Z

    .line 767
    .line 768
    if-nez v14, :cond_d

    .line 769
    .line 770
    sget-object v14, Llo4;->o:Llo4;

    .line 771
    .line 772
    invoke-virtual {v14}, Llo4;->a()Llo4;

    .line 773
    .line 774
    .line 775
    move-result-object v14

    .line 776
    invoke-static {v14, v6}, Lls3;->g(Ljava/lang/Object;Ljava/lang/Object;)Llo4;

    .line 777
    .line 778
    .line 779
    invoke-static {v5, v3, v4, v14}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    move-object v6, v14

    .line 783
    :cond_d
    :goto_11
    check-cast v6, Llo4;

    .line 784
    .line 785
    check-cast v0, Lko4;

    .line 786
    .line 787
    invoke-virtual {v0}, Lko4;->c()Lui3;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-virtual {v7, v6, v0, v8}, Le50;->Q(Llo4;Lui3;Lkn4;)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_c

    .line 795
    .line 796
    :pswitch_13
    move-object/from16 v17, v5

    .line 797
    .line 798
    move-object/from16 v5, p1

    .line 799
    .line 800
    and-int v0, v3, v16

    .line 801
    .line 802
    invoke-virtual {v1, v6}, Luo4;->C(I)Lcp4;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    int-to-long v14, v0

    .line 807
    invoke-static {v14, v15, v5}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {v7, v0, v3, v8}, Le50;->I(Ldo4;Lcp4;Lkn4;)V

    .line 812
    .line 813
    .line 814
    goto/16 :goto_c

    .line 815
    .line 816
    :pswitch_14
    move-object/from16 v17, v5

    .line 817
    .line 818
    move-object/from16 v5, p1

    .line 819
    .line 820
    and-int v0, v3, v16

    .line 821
    .line 822
    int-to-long v3, v0

    .line 823
    invoke-static {v3, v4, v5}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {v7, v0}, Le50;->P(Ldo4;)V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_c

    .line 831
    .line 832
    :pswitch_15
    move-object/from16 v17, v5

    .line 833
    .line 834
    move-object/from16 v5, p1

    .line 835
    .line 836
    and-int v0, v3, v16

    .line 837
    .line 838
    int-to-long v3, v0

    .line 839
    invoke-static {v3, v4, v5}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {v7, v0}, Le50;->O(Ldo4;)V

    .line 844
    .line 845
    .line 846
    goto/16 :goto_c

    .line 847
    .line 848
    :pswitch_16
    move-object/from16 v17, v5

    .line 849
    .line 850
    move-object/from16 v5, p1

    .line 851
    .line 852
    and-int v0, v3, v16

    .line 853
    .line 854
    int-to-long v3, v0

    .line 855
    invoke-static {v3, v4, v5}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {v7, v0}, Le50;->N(Ldo4;)V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_c

    .line 863
    .line 864
    :pswitch_17
    move-object/from16 v17, v5

    .line 865
    .line 866
    move-object/from16 v5, p1

    .line 867
    .line 868
    and-int v0, v3, v16

    .line 869
    .line 870
    int-to-long v3, v0

    .line 871
    invoke-static {v3, v4, v5}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    invoke-virtual {v7, v0}, Le50;->M(Ldo4;)V
    :try_end_7
    .catch Leo4; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 876
    .line 877
    .line 878
    goto/16 :goto_c

    .line 879
    .line 880
    :pswitch_18
    move-object/from16 v17, v5

    .line 881
    .line 882
    move-object/from16 v5, p1

    .line 883
    .line 884
    and-int v3, v3, v16

    .line 885
    .line 886
    int-to-long v3, v3

    .line 887
    :try_start_8
    invoke-static {v3, v4, v5}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 888
    .line 889
    .line 890
    move-result-object v3

    .line 891
    invoke-virtual {v7, v3}, Le50;->L(Ldo4;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v1, v6}, Luo4;->E(I)Lmm4;

    .line 895
    .line 896
    .line 897
    move-result-object v4
    :try_end_8
    .catch Leo4; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 898
    move-object v15, v1

    .line 899
    move-object v1, v5

    .line 900
    move-object/from16 v6, v17

    .line 901
    .line 902
    move-object v5, v2

    .line 903
    move v2, v0

    .line 904
    :try_start_9
    invoke-static/range {v1 .. v6}, Ldp4;->c(Ljava/lang/Object;ILdo4;Lmm4;Ljava/lang/Object;Lbx3;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v2
    :try_end_9
    .catch Leo4; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 908
    move-object v5, v6

    .line 909
    move-object v1, v15

    .line 910
    goto/16 :goto_0

    .line 911
    .line 912
    :catchall_3
    move-exception v0

    .line 913
    move-object v2, v5

    .line 914
    move-object v5, v6

    .line 915
    goto/16 :goto_4

    .line 916
    .line 917
    :catch_3
    move-object/from16 v18, v5

    .line 918
    .line 919
    move-object/from16 v17, v6

    .line 920
    .line 921
    goto/16 :goto_18

    .line 922
    .line 923
    :catchall_4
    move-exception v0

    .line 924
    move-object v15, v1

    .line 925
    move-object v1, v5

    .line 926
    move-object/from16 v5, v17

    .line 927
    .line 928
    goto/16 :goto_4

    .line 929
    .line 930
    :catch_4
    move-object v15, v1

    .line 931
    move-object v1, v5

    .line 932
    move-object/from16 v18, v2

    .line 933
    .line 934
    goto/16 :goto_18

    .line 935
    .line 936
    :pswitch_19
    move-object v15, v1

    .line 937
    move-object/from16 v1, p1

    .line 938
    .line 939
    and-int v0, v3, v16

    .line 940
    .line 941
    int-to-long v3, v0

    .line 942
    :try_start_a
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    invoke-virtual {v7, v0}, Le50;->K(Ldo4;)V

    .line 947
    .line 948
    .line 949
    :goto_12
    move-object/from16 v18, v2

    .line 950
    .line 951
    move-object/from16 v17, v5

    .line 952
    .line 953
    goto/16 :goto_17

    .line 954
    .line 955
    :catchall_5
    move-exception v0

    .line 956
    goto/16 :goto_4

    .line 957
    .line 958
    :catch_5
    move-object/from16 v18, v2

    .line 959
    .line 960
    move-object/from16 v17, v5

    .line 961
    .line 962
    goto/16 :goto_18

    .line 963
    .line 964
    :pswitch_1a
    move-object v15, v1

    .line 965
    move-object/from16 v1, p1

    .line 966
    .line 967
    and-int v0, v3, v16

    .line 968
    .line 969
    int-to-long v3, v0

    .line 970
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    invoke-virtual {v7, v0}, Le50;->F(Ldo4;)V

    .line 975
    .line 976
    .line 977
    goto :goto_12

    .line 978
    :pswitch_1b
    move-object v15, v1

    .line 979
    move-object/from16 v1, p1

    .line 980
    .line 981
    and-int v0, v3, v16

    .line 982
    .line 983
    int-to-long v3, v0

    .line 984
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    invoke-virtual {v7, v0}, Le50;->E(Ldo4;)V

    .line 989
    .line 990
    .line 991
    goto :goto_12

    .line 992
    :pswitch_1c
    move-object v15, v1

    .line 993
    move-object/from16 v1, p1

    .line 994
    .line 995
    and-int v0, v3, v16

    .line 996
    .line 997
    int-to-long v3, v0

    .line 998
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-virtual {v7, v0}, Le50;->D(Ldo4;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_12

    .line 1006
    :pswitch_1d
    move-object v15, v1

    .line 1007
    move-object/from16 v1, p1

    .line 1008
    .line 1009
    and-int v0, v3, v16

    .line 1010
    .line 1011
    int-to-long v3, v0

    .line 1012
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-virtual {v7, v0}, Le50;->C(Ldo4;)V

    .line 1017
    .line 1018
    .line 1019
    goto :goto_12

    .line 1020
    :pswitch_1e
    move-object v15, v1

    .line 1021
    move-object/from16 v1, p1

    .line 1022
    .line 1023
    and-int v0, v3, v16

    .line 1024
    .line 1025
    int-to-long v3, v0

    .line 1026
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-virtual {v7, v0}, Le50;->c0(Ldo4;)V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_12

    .line 1034
    :pswitch_1f
    move-object v15, v1

    .line 1035
    move-object/from16 v1, p1

    .line 1036
    .line 1037
    and-int v0, v3, v16

    .line 1038
    .line 1039
    int-to-long v3, v0

    .line 1040
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-virtual {v7, v0}, Le50;->B(Ldo4;)V

    .line 1045
    .line 1046
    .line 1047
    goto :goto_12

    .line 1048
    :pswitch_20
    move-object v15, v1

    .line 1049
    move-object/from16 v1, p1

    .line 1050
    .line 1051
    and-int v0, v3, v16

    .line 1052
    .line 1053
    int-to-long v3, v0

    .line 1054
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    invoke-virtual {v7, v0}, Le50;->b0(Ldo4;)V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_12

    .line 1062
    :pswitch_21
    move-object v15, v1

    .line 1063
    move-object/from16 v1, p1

    .line 1064
    .line 1065
    and-int v0, v3, v16

    .line 1066
    .line 1067
    int-to-long v3, v0

    .line 1068
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-virtual {v7, v0}, Le50;->a0(Ldo4;)V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_12

    .line 1076
    :pswitch_22
    move-object v15, v1

    .line 1077
    move-object/from16 v1, p1

    .line 1078
    .line 1079
    and-int v0, v3, v16

    .line 1080
    .line 1081
    int-to-long v3, v0

    .line 1082
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    invoke-virtual {v7, v0}, Le50;->P(Ldo4;)V

    .line 1087
    .line 1088
    .line 1089
    goto/16 :goto_12

    .line 1090
    .line 1091
    :pswitch_23
    move-object v15, v1

    .line 1092
    move-object/from16 v1, p1

    .line 1093
    .line 1094
    and-int v0, v3, v16

    .line 1095
    .line 1096
    int-to-long v3, v0

    .line 1097
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v7, v0}, Le50;->O(Ldo4;)V

    .line 1102
    .line 1103
    .line 1104
    goto/16 :goto_12

    .line 1105
    .line 1106
    :pswitch_24
    move-object v15, v1

    .line 1107
    move-object/from16 v1, p1

    .line 1108
    .line 1109
    and-int v0, v3, v16

    .line 1110
    .line 1111
    int-to-long v3, v0

    .line 1112
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    invoke-virtual {v7, v0}, Le50;->N(Ldo4;)V

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_12

    .line 1120
    .line 1121
    :pswitch_25
    move-object v15, v1

    .line 1122
    move-object/from16 v1, p1

    .line 1123
    .line 1124
    and-int v0, v3, v16

    .line 1125
    .line 1126
    int-to-long v3, v0

    .line 1127
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    invoke-virtual {v7, v0}, Le50;->M(Ldo4;)V
    :try_end_a
    .catch Leo4; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1132
    .line 1133
    .line 1134
    goto/16 :goto_12

    .line 1135
    .line 1136
    :pswitch_26
    move-object v15, v1

    .line 1137
    move-object/from16 v17, v5

    .line 1138
    .line 1139
    move-object/from16 v1, p1

    .line 1140
    .line 1141
    move-object v5, v2

    .line 1142
    move v2, v0

    .line 1143
    and-int v0, v3, v16

    .line 1144
    .line 1145
    int-to-long v3, v0

    .line 1146
    :try_start_b
    invoke-static {v3, v4, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v3

    .line 1150
    invoke-virtual {v7, v3}, Le50;->L(Ldo4;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v15, v6}, Luo4;->E(I)Lmm4;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v4
    :try_end_b
    .catch Leo4; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1157
    move-object/from16 v6, v17

    .line 1158
    .line 1159
    :try_start_c
    invoke-static/range {v1 .. v6}, Ldp4;->c(Ljava/lang/Object;ILdo4;Lmm4;Ljava/lang/Object;Lbx3;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2
    :try_end_c
    .catch Leo4; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1163
    move-object/from16 v17, v6

    .line 1164
    .line 1165
    move-object v1, v15

    .line 1166
    goto/16 :goto_9

    .line 1167
    .line 1168
    :catchall_6
    move-exception v0

    .line 1169
    move-object/from16 v18, v5

    .line 1170
    .line 1171
    move-object/from16 v17, v6

    .line 1172
    .line 1173
    goto/16 :goto_d

    .line 1174
    .line 1175
    :catchall_7
    move-exception v0

    .line 1176
    move-object/from16 v18, v5

    .line 1177
    .line 1178
    goto/16 :goto_d

    .line 1179
    .line 1180
    :catch_6
    move-object/from16 v18, v5

    .line 1181
    .line 1182
    goto/16 :goto_18

    .line 1183
    .line 1184
    :pswitch_27
    move-object v15, v1

    .line 1185
    move-object/from16 v18, v2

    .line 1186
    .line 1187
    move-object/from16 v17, v5

    .line 1188
    .line 1189
    move-object/from16 v1, p1

    .line 1190
    .line 1191
    and-int v0, v3, v16

    .line 1192
    .line 1193
    int-to-long v2, v0

    .line 1194
    :try_start_d
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0

    .line 1198
    invoke-virtual {v7, v0}, Le50;->K(Ldo4;)V

    .line 1199
    .line 1200
    .line 1201
    goto/16 :goto_17

    .line 1202
    .line 1203
    :catchall_8
    move-exception v0

    .line 1204
    goto/16 :goto_d

    .line 1205
    .line 1206
    :pswitch_28
    move-object v15, v1

    .line 1207
    move-object/from16 v18, v2

    .line 1208
    .line 1209
    move-object/from16 v17, v5

    .line 1210
    .line 1211
    move-object/from16 v1, p1

    .line 1212
    .line 1213
    and-int v0, v3, v16

    .line 1214
    .line 1215
    int-to-long v2, v0

    .line 1216
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    invoke-virtual {v7, v0}, Le50;->J(Ldo4;)V

    .line 1221
    .line 1222
    .line 1223
    goto/16 :goto_17

    .line 1224
    .line 1225
    :pswitch_29
    move-object v15, v1

    .line 1226
    move-object/from16 v18, v2

    .line 1227
    .line 1228
    move-object/from16 v17, v5

    .line 1229
    .line 1230
    move-object/from16 v1, p1

    .line 1231
    .line 1232
    invoke-virtual {v15, v6}, Luo4;->C(I)Lcp4;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    and-int v2, v3, v16

    .line 1237
    .line 1238
    int-to-long v2, v2

    .line 1239
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v2

    .line 1243
    invoke-virtual {v7, v2, v0, v8}, Le50;->H(Ldo4;Lcp4;Lkn4;)V

    .line 1244
    .line 1245
    .line 1246
    goto/16 :goto_17

    .line 1247
    .line 1248
    :pswitch_2a
    move-object v15, v1

    .line 1249
    move-object/from16 v18, v2

    .line 1250
    .line 1251
    move-object/from16 v17, v5

    .line 1252
    .line 1253
    move-object/from16 v1, p1

    .line 1254
    .line 1255
    const/high16 v0, 0x20000000

    .line 1256
    .line 1257
    and-int/2addr v0, v3

    .line 1258
    if-eqz v0, :cond_e

    .line 1259
    .line 1260
    move v0, v14

    .line 1261
    goto :goto_13

    .line 1262
    :cond_e
    move v0, v13

    .line 1263
    :goto_13
    if-eqz v0, :cond_f

    .line 1264
    .line 1265
    and-int v0, v3, v16

    .line 1266
    .line 1267
    int-to-long v2, v0

    .line 1268
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v0

    .line 1272
    invoke-virtual {v7, v0, v14}, Le50;->G(Ldo4;Z)V

    .line 1273
    .line 1274
    .line 1275
    goto/16 :goto_17

    .line 1276
    .line 1277
    :cond_f
    and-int v0, v3, v16

    .line 1278
    .line 1279
    int-to-long v2, v0

    .line 1280
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v0

    .line 1284
    invoke-virtual {v7, v0, v13}, Le50;->G(Ldo4;Z)V

    .line 1285
    .line 1286
    .line 1287
    goto/16 :goto_17

    .line 1288
    .line 1289
    :pswitch_2b
    move-object v15, v1

    .line 1290
    move-object/from16 v18, v2

    .line 1291
    .line 1292
    move-object/from16 v17, v5

    .line 1293
    .line 1294
    move-object/from16 v1, p1

    .line 1295
    .line 1296
    and-int v0, v3, v16

    .line 1297
    .line 1298
    int-to-long v2, v0

    .line 1299
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    invoke-virtual {v7, v0}, Le50;->F(Ldo4;)V

    .line 1304
    .line 1305
    .line 1306
    goto/16 :goto_17

    .line 1307
    .line 1308
    :pswitch_2c
    move-object v15, v1

    .line 1309
    move-object/from16 v18, v2

    .line 1310
    .line 1311
    move-object/from16 v17, v5

    .line 1312
    .line 1313
    move-object/from16 v1, p1

    .line 1314
    .line 1315
    and-int v0, v3, v16

    .line 1316
    .line 1317
    int-to-long v2, v0

    .line 1318
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    invoke-virtual {v7, v0}, Le50;->E(Ldo4;)V

    .line 1323
    .line 1324
    .line 1325
    goto/16 :goto_17

    .line 1326
    .line 1327
    :pswitch_2d
    move-object v15, v1

    .line 1328
    move-object/from16 v18, v2

    .line 1329
    .line 1330
    move-object/from16 v17, v5

    .line 1331
    .line 1332
    move-object/from16 v1, p1

    .line 1333
    .line 1334
    and-int v0, v3, v16

    .line 1335
    .line 1336
    int-to-long v2, v0

    .line 1337
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    invoke-virtual {v7, v0}, Le50;->D(Ldo4;)V

    .line 1342
    .line 1343
    .line 1344
    goto/16 :goto_17

    .line 1345
    .line 1346
    :pswitch_2e
    move-object v15, v1

    .line 1347
    move-object/from16 v18, v2

    .line 1348
    .line 1349
    move-object/from16 v17, v5

    .line 1350
    .line 1351
    move-object/from16 v1, p1

    .line 1352
    .line 1353
    and-int v0, v3, v16

    .line 1354
    .line 1355
    int-to-long v2, v0

    .line 1356
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    invoke-virtual {v7, v0}, Le50;->C(Ldo4;)V

    .line 1361
    .line 1362
    .line 1363
    goto/16 :goto_17

    .line 1364
    .line 1365
    :pswitch_2f
    move-object v15, v1

    .line 1366
    move-object/from16 v18, v2

    .line 1367
    .line 1368
    move-object/from16 v17, v5

    .line 1369
    .line 1370
    move-object/from16 v1, p1

    .line 1371
    .line 1372
    and-int v0, v3, v16

    .line 1373
    .line 1374
    int-to-long v2, v0

    .line 1375
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    invoke-virtual {v7, v0}, Le50;->c0(Ldo4;)V

    .line 1380
    .line 1381
    .line 1382
    goto/16 :goto_17

    .line 1383
    .line 1384
    :pswitch_30
    move-object v15, v1

    .line 1385
    move-object/from16 v18, v2

    .line 1386
    .line 1387
    move-object/from16 v17, v5

    .line 1388
    .line 1389
    move-object/from16 v1, p1

    .line 1390
    .line 1391
    and-int v0, v3, v16

    .line 1392
    .line 1393
    int-to-long v2, v0

    .line 1394
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual {v7, v0}, Le50;->B(Ldo4;)V

    .line 1399
    .line 1400
    .line 1401
    goto/16 :goto_17

    .line 1402
    .line 1403
    :pswitch_31
    move-object v15, v1

    .line 1404
    move-object/from16 v18, v2

    .line 1405
    .line 1406
    move-object/from16 v17, v5

    .line 1407
    .line 1408
    move-object/from16 v1, p1

    .line 1409
    .line 1410
    and-int v0, v3, v16

    .line 1411
    .line 1412
    int-to-long v2, v0

    .line 1413
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v0

    .line 1417
    invoke-virtual {v7, v0}, Le50;->b0(Ldo4;)V

    .line 1418
    .line 1419
    .line 1420
    goto/16 :goto_17

    .line 1421
    .line 1422
    :pswitch_32
    move-object v15, v1

    .line 1423
    move-object/from16 v18, v2

    .line 1424
    .line 1425
    move-object/from16 v17, v5

    .line 1426
    .line 1427
    move-object/from16 v1, p1

    .line 1428
    .line 1429
    and-int v0, v3, v16

    .line 1430
    .line 1431
    int-to-long v2, v0

    .line 1432
    invoke-static {v2, v3, v1}, Lls3;->f(JLjava/lang/Object;)Ldo4;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v0

    .line 1436
    invoke-virtual {v7, v0}, Le50;->a0(Ldo4;)V
    :try_end_d
    .catch Leo4; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1437
    .line 1438
    .line 1439
    goto/16 :goto_17

    .line 1440
    .line 1441
    :pswitch_33
    move-object/from16 v18, v2

    .line 1442
    .line 1443
    move-object/from16 v17, v5

    .line 1444
    .line 1445
    move-object v2, v1

    .line 1446
    move-object/from16 v1, p1

    .line 1447
    .line 1448
    :try_start_e
    invoke-virtual {v2, v6, v1}, Luo4;->F(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v0

    .line 1452
    check-cast v0, Lsm4;

    .line 1453
    .line 1454
    invoke-virtual {v2, v6}, Luo4;->C(I)Lcp4;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v3

    .line 1458
    invoke-virtual {v7, v15}, Le50;->R(I)V

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v7, v0, v3, v8}, Le50;->T(Ljava/lang/Object;Lcp4;Lkn4;)V

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v2, v6, v1, v0}, Luo4;->G(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1465
    .line 1466
    .line 1467
    :goto_14
    move-object v15, v2

    .line 1468
    goto/16 :goto_17

    .line 1469
    .line 1470
    :catch_7
    move-object v15, v2

    .line 1471
    goto/16 :goto_18

    .line 1472
    .line 1473
    :pswitch_34
    move-object/from16 v18, v2

    .line 1474
    .line 1475
    move-object/from16 v17, v5

    .line 1476
    .line 1477
    move-object v2, v1

    .line 1478
    move-object/from16 v1, p1

    .line 1479
    .line 1480
    and-int v0, v3, v16

    .line 1481
    .line 1482
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {v9}, Lcn4;->F()J

    .line 1486
    .line 1487
    .line 1488
    move-result-wide v3

    .line 1489
    int-to-long v14, v0

    .line 1490
    invoke-static {v1, v14, v15, v3, v4}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1494
    .line 1495
    .line 1496
    goto :goto_14

    .line 1497
    :pswitch_35
    move-object/from16 v18, v2

    .line 1498
    .line 1499
    move-object/from16 v17, v5

    .line 1500
    .line 1501
    move-object v2, v1

    .line 1502
    move-object/from16 v1, p1

    .line 1503
    .line 1504
    and-int v0, v3, v16

    .line 1505
    .line 1506
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v9}, Lcn4;->E()I

    .line 1510
    .line 1511
    .line 1512
    move-result v3

    .line 1513
    int-to-long v4, v0

    .line 1514
    invoke-static {v1, v4, v5, v3}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1518
    .line 1519
    .line 1520
    goto :goto_14

    .line 1521
    :pswitch_36
    move-object/from16 v18, v2

    .line 1522
    .line 1523
    move-object/from16 v17, v5

    .line 1524
    .line 1525
    move-object v2, v1

    .line 1526
    move-object/from16 v1, p1

    .line 1527
    .line 1528
    and-int v0, v3, v16

    .line 1529
    .line 1530
    invoke-virtual {v7, v14}, Le50;->R(I)V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v9}, Lcn4;->D()J

    .line 1534
    .line 1535
    .line 1536
    move-result-wide v3

    .line 1537
    int-to-long v14, v0

    .line 1538
    invoke-static {v1, v14, v15, v3, v4}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1542
    .line 1543
    .line 1544
    goto :goto_14

    .line 1545
    :pswitch_37
    move-object/from16 v18, v2

    .line 1546
    .line 1547
    move-object/from16 v17, v5

    .line 1548
    .line 1549
    move-object v2, v1

    .line 1550
    move-object/from16 v1, p1

    .line 1551
    .line 1552
    and-int v0, v3, v16

    .line 1553
    .line 1554
    const/4 v4, 0x5

    .line 1555
    invoke-virtual {v7, v4}, Le50;->R(I)V

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {v9}, Lcn4;->C()I

    .line 1559
    .line 1560
    .line 1561
    move-result v3

    .line 1562
    int-to-long v4, v0

    .line 1563
    invoke-static {v1, v4, v5, v3}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1567
    .line 1568
    .line 1569
    goto :goto_14

    .line 1570
    :pswitch_38
    move-object/from16 v18, v2

    .line 1571
    .line 1572
    move-object/from16 v17, v5

    .line 1573
    .line 1574
    move-object v2, v1

    .line 1575
    move-object/from16 v1, p1

    .line 1576
    .line 1577
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual {v9}, Lcn4;->B()I

    .line 1581
    .line 1582
    .line 1583
    move-result v4

    .line 1584
    invoke-virtual {v2, v6}, Luo4;->E(I)Lmm4;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v5

    .line 1588
    if-eqz v5, :cond_12

    .line 1589
    .line 1590
    invoke-virtual {v5, v4}, Lmm4;->a(I)Z

    .line 1591
    .line 1592
    .line 1593
    move-result v5

    .line 1594
    if-eqz v5, :cond_10

    .line 1595
    .line 1596
    goto :goto_16

    .line 1597
    :cond_10
    sget-object v3, Ldp4;->a:Lbx3;

    .line 1598
    .line 1599
    if-nez v18, :cond_11

    .line 1600
    .line 1601
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1602
    .line 1603
    .line 1604
    invoke-static {v1}, Lbx3;->s(Ljava/lang/Object;)Llp4;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v3

    .line 1608
    goto :goto_15

    .line 1609
    :cond_11
    move-object/from16 v3, v18

    .line 1610
    .line 1611
    :goto_15
    int-to-long v4, v4

    .line 1612
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1613
    .line 1614
    .line 1615
    move-object v6, v3

    .line 1616
    check-cast v6, Llp4;

    .line 1617
    .line 1618
    shl-int/lit8 v0, v0, 0x3

    .line 1619
    .line 1620
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v4

    .line 1624
    invoke-virtual {v6, v0, v4}, Llp4;->d(ILjava/lang/Object;)V

    .line 1625
    .line 1626
    .line 1627
    move-object v1, v2

    .line 1628
    goto/16 :goto_f

    .line 1629
    .line 1630
    :cond_12
    :goto_16
    and-int v0, v3, v16

    .line 1631
    .line 1632
    int-to-long v14, v0

    .line 1633
    invoke-static {v1, v14, v15, v4}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1637
    .line 1638
    .line 1639
    goto/16 :goto_14

    .line 1640
    .line 1641
    :pswitch_39
    move-object/from16 v18, v2

    .line 1642
    .line 1643
    move-object/from16 v17, v5

    .line 1644
    .line 1645
    move-object v2, v1

    .line 1646
    move-object/from16 v1, p1

    .line 1647
    .line 1648
    and-int v0, v3, v16

    .line 1649
    .line 1650
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v9}, Lcn4;->A()I

    .line 1654
    .line 1655
    .line 1656
    move-result v3

    .line 1657
    int-to-long v4, v0

    .line 1658
    invoke-static {v1, v4, v5, v3}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1662
    .line 1663
    .line 1664
    goto/16 :goto_14

    .line 1665
    .line 1666
    :pswitch_3a
    move-object/from16 v18, v2

    .line 1667
    .line 1668
    move-object/from16 v17, v5

    .line 1669
    .line 1670
    move-object v2, v1

    .line 1671
    move-object/from16 v1, p1

    .line 1672
    .line 1673
    and-int v0, v3, v16

    .line 1674
    .line 1675
    invoke-virtual {v7}, Le50;->Z()Lzm4;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v3

    .line 1679
    int-to-long v4, v0

    .line 1680
    invoke-static {v1, v4, v5, v3}, Lqp4;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1684
    .line 1685
    .line 1686
    goto/16 :goto_14

    .line 1687
    .line 1688
    :pswitch_3b
    move-object/from16 v18, v2

    .line 1689
    .line 1690
    move-object/from16 v17, v5

    .line 1691
    .line 1692
    move-object v2, v1

    .line 1693
    move-object/from16 v1, p1

    .line 1694
    .line 1695
    invoke-virtual {v2, v6, v1}, Luo4;->F(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v0

    .line 1699
    check-cast v0, Lsm4;

    .line 1700
    .line 1701
    invoke-virtual {v2, v6}, Luo4;->C(I)Lcp4;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v3

    .line 1705
    const/4 v14, 0x2

    .line 1706
    invoke-virtual {v7, v14}, Le50;->R(I)V

    .line 1707
    .line 1708
    .line 1709
    invoke-virtual {v7, v0, v3, v8}, Le50;->S(Ljava/lang/Object;Lcp4;Lkn4;)V

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v2, v6, v1, v0}, Luo4;->G(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1713
    .line 1714
    .line 1715
    goto/16 :goto_14

    .line 1716
    .line 1717
    :pswitch_3c
    move-object/from16 v18, v2

    .line 1718
    .line 1719
    move-object/from16 v17, v5

    .line 1720
    .line 1721
    move-object v2, v1

    .line 1722
    move-object/from16 v1, p1

    .line 1723
    .line 1724
    invoke-virtual {v2, v3, v7, v1}, Luo4;->K(ILe50;Ljava/lang/Object;)V

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1728
    .line 1729
    .line 1730
    goto/16 :goto_14

    .line 1731
    .line 1732
    :pswitch_3d
    move-object/from16 v18, v2

    .line 1733
    .line 1734
    move-object/from16 v17, v5

    .line 1735
    .line 1736
    move-object v2, v1

    .line 1737
    move-object/from16 v1, p1

    .line 1738
    .line 1739
    and-int v0, v3, v16

    .line 1740
    .line 1741
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {v9}, Lcn4;->v()Z

    .line 1745
    .line 1746
    .line 1747
    move-result v3

    .line 1748
    int-to-long v4, v0

    .line 1749
    sget-object v0, Lqp4;->c:Lpp4;

    .line 1750
    .line 1751
    invoke-virtual {v0, v1, v4, v5, v3}, Lpp4;->e(Ljava/lang/Object;JZ)V

    .line 1752
    .line 1753
    .line 1754
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1755
    .line 1756
    .line 1757
    goto/16 :goto_14

    .line 1758
    .line 1759
    :pswitch_3e
    move-object/from16 v18, v2

    .line 1760
    .line 1761
    move-object/from16 v17, v5

    .line 1762
    .line 1763
    move-object v2, v1

    .line 1764
    move-object/from16 v1, p1

    .line 1765
    .line 1766
    and-int v0, v3, v16

    .line 1767
    .line 1768
    const/4 v4, 0x5

    .line 1769
    invoke-virtual {v7, v4}, Le50;->R(I)V

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v9}, Lcn4;->u()I

    .line 1773
    .line 1774
    .line 1775
    move-result v3

    .line 1776
    int-to-long v4, v0

    .line 1777
    invoke-static {v1, v4, v5, v3}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 1778
    .line 1779
    .line 1780
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1781
    .line 1782
    .line 1783
    goto/16 :goto_14

    .line 1784
    .line 1785
    :pswitch_3f
    move-object/from16 v18, v2

    .line 1786
    .line 1787
    move-object/from16 v17, v5

    .line 1788
    .line 1789
    move-object v2, v1

    .line 1790
    move-object/from16 v1, p1

    .line 1791
    .line 1792
    and-int v0, v3, v16

    .line 1793
    .line 1794
    invoke-virtual {v7, v14}, Le50;->R(I)V

    .line 1795
    .line 1796
    .line 1797
    invoke-virtual {v9}, Lcn4;->t()J

    .line 1798
    .line 1799
    .line 1800
    move-result-wide v3

    .line 1801
    int-to-long v14, v0

    .line 1802
    invoke-static {v1, v14, v15, v3, v4}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1806
    .line 1807
    .line 1808
    goto/16 :goto_14

    .line 1809
    .line 1810
    :pswitch_40
    move-object/from16 v18, v2

    .line 1811
    .line 1812
    move-object/from16 v17, v5

    .line 1813
    .line 1814
    move-object v2, v1

    .line 1815
    move-object/from16 v1, p1

    .line 1816
    .line 1817
    and-int v0, v3, v16

    .line 1818
    .line 1819
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 1820
    .line 1821
    .line 1822
    invoke-virtual {v9}, Lcn4;->s()I

    .line 1823
    .line 1824
    .line 1825
    move-result v3

    .line 1826
    int-to-long v4, v0

    .line 1827
    invoke-static {v1, v4, v5, v3}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1831
    .line 1832
    .line 1833
    goto/16 :goto_14

    .line 1834
    .line 1835
    :pswitch_41
    move-object/from16 v18, v2

    .line 1836
    .line 1837
    move-object/from16 v17, v5

    .line 1838
    .line 1839
    move-object v2, v1

    .line 1840
    move-object/from16 v1, p1

    .line 1841
    .line 1842
    and-int v0, v3, v16

    .line 1843
    .line 1844
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v9}, Lcn4;->q()J

    .line 1848
    .line 1849
    .line 1850
    move-result-wide v3

    .line 1851
    int-to-long v14, v0

    .line 1852
    invoke-static {v1, v14, v15, v3, v4}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 1853
    .line 1854
    .line 1855
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1856
    .line 1857
    .line 1858
    goto/16 :goto_14

    .line 1859
    .line 1860
    :pswitch_42
    move-object/from16 v18, v2

    .line 1861
    .line 1862
    move-object/from16 v17, v5

    .line 1863
    .line 1864
    move-object v2, v1

    .line 1865
    move-object/from16 v1, p1

    .line 1866
    .line 1867
    and-int v0, v3, v16

    .line 1868
    .line 1869
    invoke-virtual {v7, v13}, Le50;->R(I)V

    .line 1870
    .line 1871
    .line 1872
    invoke-virtual {v9}, Lcn4;->r()J

    .line 1873
    .line 1874
    .line 1875
    move-result-wide v3

    .line 1876
    int-to-long v14, v0

    .line 1877
    invoke-static {v1, v14, v15, v3, v4}, Lqp4;->h(Ljava/lang/Object;JJ)V

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V

    .line 1881
    .line 1882
    .line 1883
    goto/16 :goto_14

    .line 1884
    .line 1885
    :pswitch_43
    move-object/from16 v18, v2

    .line 1886
    .line 1887
    move-object/from16 v17, v5

    .line 1888
    .line 1889
    move-object v2, v1

    .line 1890
    move-object/from16 v1, p1

    .line 1891
    .line 1892
    and-int v0, v3, v16

    .line 1893
    .line 1894
    const/4 v4, 0x5

    .line 1895
    invoke-virtual {v7, v4}, Le50;->R(I)V

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {v9}, Lcn4;->p()F

    .line 1899
    .line 1900
    .line 1901
    move-result v3

    .line 1902
    int-to-long v4, v0

    .line 1903
    sget-object v0, Lqp4;->c:Lpp4;

    .line 1904
    .line 1905
    invoke-virtual {v0, v1, v4, v5, v3}, Lpp4;->h(Ljava/lang/Object;JF)V

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v2, v6, v1}, Luo4;->s(ILjava/lang/Object;)V
    :try_end_e
    .catch Leo4; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1909
    .line 1910
    .line 1911
    goto/16 :goto_14

    .line 1912
    .line 1913
    :pswitch_44
    move-object/from16 v18, v2

    .line 1914
    .line 1915
    move-object/from16 v17, v5

    .line 1916
    .line 1917
    move-object v2, v1

    .line 1918
    move-object/from16 v1, p1

    .line 1919
    .line 1920
    and-int v0, v3, v16

    .line 1921
    .line 1922
    :try_start_f
    invoke-virtual {v7, v14}, Le50;->R(I)V

    .line 1923
    .line 1924
    .line 1925
    invoke-virtual {v9}, Lcn4;->o()D

    .line 1926
    .line 1927
    .line 1928
    move-result-wide v4

    .line 1929
    int-to-long v14, v0

    .line 1930
    sget-object v0, Lqp4;->c:Lpp4;
    :try_end_f
    .catch Leo4; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 1931
    .line 1932
    move-wide/from16 v19, v14

    .line 1933
    .line 1934
    move-object v15, v2

    .line 1935
    move-wide/from16 v2, v19

    .line 1936
    .line 1937
    :try_start_10
    invoke-virtual/range {v0 .. v5}, Lpp4;->k(Ljava/lang/Object;JD)V

    .line 1938
    .line 1939
    .line 1940
    invoke-virtual {v15, v6, v1}, Luo4;->s(ILjava/lang/Object;)V
    :try_end_10
    .catch Leo4; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1941
    .line 1942
    .line 1943
    :goto_17
    move-object v1, v15

    .line 1944
    move-object/from16 v5, v17

    .line 1945
    .line 1946
    move-object/from16 v2, v18

    .line 1947
    .line 1948
    goto/16 :goto_0

    .line 1949
    .line 1950
    :catchall_9
    move-exception v0

    .line 1951
    move-object v15, v2

    .line 1952
    goto/16 :goto_d

    .line 1953
    .line 1954
    :catchall_a
    move-exception v0

    .line 1955
    move-object v15, v1

    .line 1956
    move-object/from16 v18, v2

    .line 1957
    .line 1958
    move-object/from16 v17, v5

    .line 1959
    .line 1960
    move-object/from16 v1, p1

    .line 1961
    .line 1962
    goto :goto_1c

    .line 1963
    :catch_8
    :goto_18
    move-object/from16 v2, v18

    .line 1964
    .line 1965
    :goto_19
    if-nez v2, :cond_13

    .line 1966
    .line 1967
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1968
    .line 1969
    .line 1970
    invoke-static {v1}, Lbx3;->s(Ljava/lang/Object;)Llp4;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v0

    .line 1974
    move-object v2, v0

    .line 1975
    :cond_13
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1976
    .line 1977
    .line 1978
    invoke-static {v13, v7, v2}, Lbx3;->t(ILe50;Ljava/lang/Object;)Z

    .line 1979
    .line 1980
    .line 1981
    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1982
    if-nez v0, :cond_16

    .line 1983
    .line 1984
    move-object v4, v2

    .line 1985
    :goto_1a
    if-ge v12, v11, :cond_7

    .line 1986
    .line 1987
    aget v3, v10, v12

    .line 1988
    .line 1989
    move-object/from16 v6, p1

    .line 1990
    .line 1991
    move-object v2, v1

    .line 1992
    move-object v1, v15

    .line 1993
    move-object/from16 v5, v17

    .line 1994
    .line 1995
    invoke-virtual/range {v1 .. v6}, Luo4;->J(Ljava/lang/Object;ILjava/lang/Object;Lbx3;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v4

    .line 1999
    add-int/lit8 v12, v12, 0x1

    .line 2000
    .line 2001
    move-object/from16 v15, p0

    .line 2002
    .line 2003
    move-object/from16 v1, p1

    .line 2004
    .line 2005
    goto :goto_1a

    .line 2006
    :cond_14
    :goto_1b
    if-eqz v4, :cond_15

    .line 2007
    .line 2008
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2009
    .line 2010
    .line 2011
    check-cast v4, Llp4;

    .line 2012
    .line 2013
    move-object/from16 v0, p1

    .line 2014
    .line 2015
    check-cast v0, Lrn4;

    .line 2016
    .line 2017
    iput-object v4, v0, Lrn4;->zzc:Llp4;

    .line 2018
    .line 2019
    :cond_15
    return-void

    .line 2020
    :cond_16
    move-object/from16 v1, p0

    .line 2021
    .line 2022
    goto/16 :goto_9

    .line 2023
    .line 2024
    :catchall_b
    move-exception v0

    .line 2025
    goto/16 :goto_a

    .line 2026
    .line 2027
    :goto_1c
    move-object/from16 v2, v18

    .line 2028
    .line 2029
    :goto_1d
    move-object v4, v2

    .line 2030
    :goto_1e
    if-ge v12, v11, :cond_17

    .line 2031
    .line 2032
    aget v3, v10, v12

    .line 2033
    .line 2034
    move-object/from16 v6, p1

    .line 2035
    .line 2036
    move-object/from16 v1, p0

    .line 2037
    .line 2038
    move-object/from16 v2, p1

    .line 2039
    .line 2040
    invoke-virtual/range {v1 .. v6}, Luo4;->J(Ljava/lang/Object;ILjava/lang/Object;Lbx3;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v4

    .line 2044
    add-int/lit8 v12, v12, 0x1

    .line 2045
    .line 2046
    goto :goto_1e

    .line 2047
    :cond_17
    if-eqz v4, :cond_18

    .line 2048
    .line 2049
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2050
    .line 2051
    .line 2052
    check-cast v4, Llp4;

    .line 2053
    .line 2054
    move-object/from16 v1, p1

    .line 2055
    .line 2056
    check-cast v1, Lrn4;

    .line 2057
    .line 2058
    iput-object v4, v1, Lrn4;->zzc:Llp4;

    .line 2059
    .line 2060
    :cond_18
    throw v0

    .line 2061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lrn4;Lrn4;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Luo4;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    const v4, 0xfffff

    .line 7
    .line 8
    .line 9
    if-ge v1, v3, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Luo4;->j(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v3}, Luo4;->k(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/16 v6, 0x32

    .line 20
    .line 21
    if-le v5, v6, :cond_0

    .line 22
    .line 23
    const/16 v6, 0x45

    .line 24
    .line 25
    if-ge v5, v6, :cond_0

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    and-int/2addr v3, v4

    .line 30
    int-to-long v6, v3

    .line 31
    packed-switch v5, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    .line 37
    .line 38
    aget v2, v2, v3

    .line 39
    .line 40
    and-int/2addr v2, v4

    .line 41
    int-to-long v2, v2

    .line 42
    invoke-static {v2, v3, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v2, v3, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ne v4, v2, :cond_1

    .line 51
    .line 52
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Ldp4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_8

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_1
    return v0

    .line 69
    :pswitch_1
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v2, v3}, Ldp4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    goto :goto_1

    .line 82
    :pswitch_2
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Ldp4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    :goto_1
    if-nez v2, :cond_2

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_8

    .line 103
    .line 104
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v2, v3}, Ldp4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_8

    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_8

    .line 125
    .line 126
    invoke-static {v6, v7, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    cmp-long v2, v2, v4

    .line 135
    .line 136
    if-nez v2, :cond_8

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    invoke-static {v6, v7, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-ne v2, v3, :cond_8

    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_8

    .line 163
    .line 164
    invoke-static {v6, v7, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v2

    .line 168
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    cmp-long v2, v2, v4

    .line 173
    .line 174
    if-nez v2, :cond_8

    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    invoke-static {v6, v7, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-ne v2, v3, :cond_8

    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_8

    .line 201
    .line 202
    invoke-static {v6, v7, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-ne v2, v3, :cond_8

    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_8

    .line 219
    .line 220
    invoke-static {v6, v7, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-ne v2, v3, :cond_8

    .line 229
    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_8

    .line 237
    .line 238
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-static {v2, v3}, Ldp4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_8

    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_8

    .line 259
    .line 260
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v2, v3}, Ldp4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_8

    .line 273
    .line 274
    goto/16 :goto_2

    .line 275
    .line 276
    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_8

    .line 281
    .line 282
    invoke-static {v6, v7, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-static {v6, v7, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-static {v2, v3}, Ldp4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_8

    .line 295
    .line 296
    goto/16 :goto_2

    .line 297
    .line 298
    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_8

    .line 303
    .line 304
    sget-object v2, Lqp4;->c:Lpp4;

    .line 305
    .line 306
    invoke-virtual {v2, v6, v7, p1}, Lpp4;->d(JLjava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    invoke-virtual {v2, v6, v7, p2}, Lpp4;->d(JLjava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-ne v3, v2, :cond_8

    .line 315
    .line 316
    goto/16 :goto_2

    .line 317
    .line 318
    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_8

    .line 323
    .line 324
    invoke-static {v6, v7, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-ne v2, v3, :cond_8

    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_8

    .line 341
    .line 342
    invoke-static {v6, v7, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 343
    .line 344
    .line 345
    move-result-wide v2

    .line 346
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 347
    .line 348
    .line 349
    move-result-wide v4

    .line 350
    cmp-long v2, v2, v4

    .line 351
    .line 352
    if-nez v2, :cond_8

    .line 353
    .line 354
    goto/16 :goto_2

    .line 355
    .line 356
    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-eqz v2, :cond_8

    .line 361
    .line 362
    invoke-static {v6, v7, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    invoke-static {v6, v7, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-ne v2, v3, :cond_8

    .line 371
    .line 372
    goto :goto_2

    .line 373
    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-eqz v2, :cond_8

    .line 378
    .line 379
    invoke-static {v6, v7, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 380
    .line 381
    .line 382
    move-result-wide v2

    .line 383
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 384
    .line 385
    .line 386
    move-result-wide v4

    .line 387
    cmp-long v2, v2, v4

    .line 388
    .line 389
    if-nez v2, :cond_8

    .line 390
    .line 391
    goto :goto_2

    .line 392
    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-eqz v2, :cond_8

    .line 397
    .line 398
    invoke-static {v6, v7, p1}, Lqp4;->g(JLjava/lang/Object;)J

    .line 399
    .line 400
    .line 401
    move-result-wide v2

    .line 402
    invoke-static {v6, v7, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 403
    .line 404
    .line 405
    move-result-wide v4

    .line 406
    cmp-long v2, v2, v4

    .line 407
    .line 408
    if-nez v2, :cond_8

    .line 409
    .line 410
    goto :goto_2

    .line 411
    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_8

    .line 416
    .line 417
    sget-object v2, Lqp4;->c:Lpp4;

    .line 418
    .line 419
    invoke-virtual {v2, v6, v7, p1}, Lpp4;->f(JLjava/lang/Object;)F

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    invoke-virtual {v2, v6, v7, p2}, Lpp4;->f(JLjava/lang/Object;)F

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-ne v3, v2, :cond_8

    .line 436
    .line 437
    goto :goto_2

    .line 438
    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Luo4;->p(Lrn4;Lrn4;I)Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-eqz v2, :cond_8

    .line 443
    .line 444
    sget-object v2, Lqp4;->c:Lpp4;

    .line 445
    .line 446
    invoke-virtual {v2, v6, v7, p1}, Lpp4;->i(JLjava/lang/Object;)D

    .line 447
    .line 448
    .line 449
    move-result-wide v3

    .line 450
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 451
    .line 452
    .line 453
    move-result-wide v3

    .line 454
    invoke-virtual {v2, v6, v7, p2}, Lpp4;->i(JLjava/lang/Object;)D

    .line 455
    .line 456
    .line 457
    move-result-wide v5

    .line 458
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 459
    .line 460
    .line 461
    move-result-wide v5

    .line 462
    cmp-long v2, v3, v5

    .line 463
    .line 464
    if-nez v2, :cond_8

    .line 465
    .line 466
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 467
    .line 468
    goto/16 :goto_0

    .line 469
    .line 470
    :cond_3
    iget v1, p0, Luo4;->i:I

    .line 471
    .line 472
    :goto_3
    iget-object v3, p0, Luo4;->g:[I

    .line 473
    .line 474
    array-length v5, v3

    .line 475
    if-ge v1, v5, :cond_7

    .line 476
    .line 477
    aget v3, v3, v1

    .line 478
    .line 479
    add-int/lit8 v5, v3, 0x2

    .line 480
    .line 481
    aget v5, v2, v5

    .line 482
    .line 483
    and-int/2addr v5, v4

    .line 484
    int-to-long v5, v5

    .line 485
    invoke-static {v5, v6, p1}, Lqp4;->e(JLjava/lang/Object;)I

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    invoke-static {v5, v6, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    if-ne v7, v5, :cond_6

    .line 494
    .line 495
    invoke-virtual {p0, v0, v3, p1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-eqz v5, :cond_4

    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_4
    invoke-virtual {p0, v3}, Luo4;->j(I)I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    and-int/2addr v3, v4

    .line 507
    int-to-long v5, v3

    .line 508
    invoke-static {v5, v6, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-static {v5, v6, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    invoke-static {v3, v5}, Ldp4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    if-nez v3, :cond_5

    .line 521
    .line 522
    goto :goto_5

    .line 523
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 524
    .line 525
    goto :goto_3

    .line 526
    :cond_6
    return v0

    .line 527
    :cond_7
    iget-object p0, p1, Lrn4;->zzc:Llp4;

    .line 528
    .line 529
    iget-object p1, p2, Lrn4;->zzc:Llp4;

    .line 530
    .line 531
    invoke-virtual {p0, p1}, Llp4;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result p0

    .line 535
    if-nez p0, :cond_9

    .line 536
    .line 537
    :cond_8
    :goto_5
    return v0

    .line 538
    :cond_9
    const/4 p0, 0x1

    .line 539
    return p0

    .line 540
    nop

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Luo4;->l(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lrn4;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lrn4;

    .line 16
    .line 17
    invoke-virtual {v0}, Lrn4;->l()V

    .line 18
    .line 19
    .line 20
    iput v1, v0, Lsm4;->zza:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lrn4;->h()V

    .line 23
    .line 24
    .line 25
    :cond_1
    move v0, v1

    .line 26
    :goto_0
    iget-object v2, p0, Luo4;->a:[I

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    if-ge v0, v3, :cond_5

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Luo4;->j(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const v4, 0xfffff

    .line 36
    .line 37
    .line 38
    and-int/2addr v4, v3

    .line 39
    invoke-static {v3}, Luo4;->k(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-long v4, v4

    .line 44
    const/16 v6, 0x9

    .line 45
    .line 46
    if-eq v3, v6, :cond_3

    .line 47
    .line 48
    const/16 v6, 0x3c

    .line 49
    .line 50
    if-eq v3, v6, :cond_2

    .line 51
    .line 52
    const/16 v6, 0x44

    .line 53
    .line 54
    if-eq v3, v6, :cond_2

    .line 55
    .line 56
    packed-switch v3, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_0
    sget-object v2, Luo4;->l:Lsun/misc/Unsafe;

    .line 61
    .line 62
    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    move-object v6, v3

    .line 69
    check-cast v6, Llo4;

    .line 70
    .line 71
    iput-boolean v1, v6, Llo4;->n:Z

    .line 72
    .line 73
    invoke-virtual {v2, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_1
    invoke-static {v4, v5, p1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ldo4;

    .line 82
    .line 83
    check-cast v2, Ltm4;

    .line 84
    .line 85
    iget-boolean v3, v2, Ltm4;->n:Z

    .line 86
    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    iput-boolean v1, v2, Ltm4;->n:Z

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    aget v2, v2, v0

    .line 93
    .line 94
    invoke-virtual {p0, v2, v0, p1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Luo4;->C(I)Lcp4;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    sget-object v3, Luo4;->l:Lsun/misc/Unsafe;

    .line 105
    .line 106
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v2, v3}, Lcp4;->h(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Luo4;->r(ILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Luo4;->C(I)Lcp4;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v3, Luo4;->l:Lsun/misc/Unsafe;

    .line 125
    .line 126
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v2, v3}, Lcp4;->h(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    iget-object p0, p0, Luo4;->j:Lbx3;

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    check-cast p1, Lrn4;

    .line 142
    .line 143
    iget-object p0, p1, Lrn4;->zzc:Llp4;

    .line 144
    .line 145
    iget-boolean p1, p0, Llp4;->e:Z

    .line 146
    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    iput-boolean v1, p0, Llp4;->e:Z

    .line 150
    .line 151
    :cond_6
    :goto_2
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Ldd1;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    iget-object v2, v6, Ldd1;->o:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v7, v2

    .line 10
    check-cast v7, Ljn4;

    .line 11
    .line 12
    sget-object v8, Luo4;->l:Lsun/misc/Unsafe;

    .line 13
    .line 14
    const v10, 0xfffff

    .line 15
    .line 16
    .line 17
    move v3, v10

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    iget-object v5, v0, Luo4;->a:[I

    .line 21
    .line 22
    array-length v11, v5

    .line 23
    if-ge v2, v11, :cond_7

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Luo4;->j(I)I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    invoke-static {v11}, Luo4;->k(I)I

    .line 30
    .line 31
    .line 32
    move-result v12

    .line 33
    aget v13, v5, v2

    .line 34
    .line 35
    const/16 v14, 0x11

    .line 36
    .line 37
    const/4 v15, 0x1

    .line 38
    if-gt v12, v14, :cond_2

    .line 39
    .line 40
    add-int/lit8 v14, v2, 0x2

    .line 41
    .line 42
    aget v14, v5, v14

    .line 43
    .line 44
    and-int v9, v14, v10

    .line 45
    .line 46
    if-eq v9, v3, :cond_1

    .line 47
    .line 48
    if-ne v9, v10, :cond_0

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    int-to-long v3, v9

    .line 53
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    move v4, v3

    .line 58
    :goto_1
    move v3, v9

    .line 59
    :cond_1
    ushr-int/lit8 v9, v14, 0x14

    .line 60
    .line 61
    shl-int v9, v15, v9

    .line 62
    .line 63
    move/from16 v17, v9

    .line 64
    .line 65
    move-object v9, v5

    .line 66
    move/from16 v5, v17

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move-object v9, v5

    .line 70
    const/4 v5, 0x0

    .line 71
    :goto_2
    and-int/2addr v11, v10

    .line 72
    int-to-long v10, v11

    .line 73
    const/16 v16, 0x3f

    .line 74
    .line 75
    const/4 v14, 0x4

    .line 76
    const/4 v15, 0x3

    .line 77
    packed-switch v12, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_3
    const/4 v12, 0x0

    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :pswitch_0
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    check-cast v5, Lsm4;

    .line 98
    .line 99
    invoke-virtual {v7, v13, v15}, Ljn4;->d(II)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v9, v5, v6}, Lcp4;->i(Ljava/lang/Object;Ldd1;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v13, v14}, Ljn4;->d(II)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :pswitch_1
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_3

    .line 114
    .line 115
    invoke-static {v10, v11, v1}, Luo4;->o(JLjava/lang/Object;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    add-long v11, v9, v9

    .line 120
    .line 121
    shr-long v9, v9, v16

    .line 122
    .line 123
    xor-long/2addr v9, v11

    .line 124
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->h(IJ)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :pswitch_2
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    invoke-static {v10, v11, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    add-int v9, v5, v5

    .line 139
    .line 140
    shr-int/lit8 v5, v5, 0x1f

    .line 141
    .line 142
    xor-int/2addr v5, v9

    .line 143
    invoke-virtual {v7, v13, v5}, Ljn4;->f(II)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :pswitch_3
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_3

    .line 152
    .line 153
    invoke-static {v10, v11, v1}, Luo4;->o(JLjava/lang/Object;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v9

    .line 157
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->i(IJ)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :pswitch_4
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_3

    .line 166
    .line 167
    invoke-static {v10, v11, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-virtual {v7, v13, v5}, Ljn4;->g(II)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :pswitch_5
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_3

    .line 180
    .line 181
    invoke-static {v10, v11, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    invoke-virtual {v7, v13, v5}, Ljn4;->e(II)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :pswitch_6
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_3

    .line 194
    .line 195
    invoke-static {v10, v11, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-virtual {v7, v13, v5}, Ljn4;->f(II)V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :pswitch_7
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_3

    .line 208
    .line 209
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lzm4;

    .line 214
    .line 215
    invoke-virtual {v7, v13, v5}, Ljn4;->l(ILzm4;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :pswitch_8
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_3

    .line 225
    .line 226
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v6, v13, v5, v9}, Ldd1;->x(ILjava/lang/Object;Lcp4;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_3

    .line 238
    .line 239
    :pswitch_9
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_3

    .line 244
    .line 245
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    instance-of v9, v5, Ljava/lang/String;

    .line 250
    .line 251
    if-eqz v9, :cond_4

    .line 252
    .line 253
    check-cast v5, Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v7, v13, v5}, Ljn4;->k(ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_3

    .line 259
    .line 260
    :cond_4
    check-cast v5, Lzm4;

    .line 261
    .line 262
    invoke-virtual {v7, v13, v5}, Ljn4;->l(ILzm4;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_3

    .line 266
    .line 267
    :pswitch_a
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_3

    .line 272
    .line 273
    invoke-static {v10, v11, v1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    invoke-virtual {v7, v13, v5}, Ljn4;->j(IZ)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :pswitch_b
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_3

    .line 293
    .line 294
    invoke-static {v10, v11, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    invoke-virtual {v7, v13, v5}, Ljn4;->g(II)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :pswitch_c
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_3

    .line 308
    .line 309
    invoke-static {v10, v11, v1}, Luo4;->o(JLjava/lang/Object;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v9

    .line 313
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->i(IJ)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :pswitch_d
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_3

    .line 323
    .line 324
    invoke-static {v10, v11, v1}, Luo4;->n(JLjava/lang/Object;)I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    invoke-virtual {v7, v13, v5}, Ljn4;->e(II)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_3

    .line 332
    .line 333
    :pswitch_e
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_3

    .line 338
    .line 339
    invoke-static {v10, v11, v1}, Luo4;->o(JLjava/lang/Object;)J

    .line 340
    .line 341
    .line 342
    move-result-wide v9

    .line 343
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->h(IJ)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_3

    .line 347
    .line 348
    :pswitch_f
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-eqz v5, :cond_3

    .line 353
    .line 354
    invoke-static {v10, v11, v1}, Luo4;->o(JLjava/lang/Object;)J

    .line 355
    .line 356
    .line 357
    move-result-wide v9

    .line 358
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->h(IJ)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_3

    .line 362
    .line 363
    :pswitch_10
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_3

    .line 368
    .line 369
    invoke-static {v10, v11, v1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    check-cast v5, Ljava/lang/Float;

    .line 374
    .line 375
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    invoke-virtual {v7, v13, v5}, Ljn4;->g(II)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    .line 388
    :pswitch_11
    invoke-virtual {v0, v13, v2, v1}, Luo4;->t(IILjava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    if-eqz v5, :cond_3

    .line 393
    .line 394
    invoke-static {v10, v11, v1}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    check-cast v5, Ljava/lang/Double;

    .line 399
    .line 400
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 401
    .line 402
    .line 403
    move-result-wide v9

    .line 404
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 405
    .line 406
    .line 407
    move-result-wide v9

    .line 408
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->i(IJ)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_3

    .line 412
    .line 413
    :pswitch_12
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    if-eqz v5, :cond_3

    .line 418
    .line 419
    invoke-virtual {v0, v2}, Luo4;->D(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    check-cast v9, Lko4;

    .line 424
    .line 425
    iget-object v9, v9, Lko4;->a:Lui3;

    .line 426
    .line 427
    check-cast v5, Llo4;

    .line 428
    .line 429
    invoke-virtual {v5}, Llo4;->entrySet()Ljava/util/Set;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v10

    .line 441
    if-eqz v10, :cond_3

    .line 442
    .line 443
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    check-cast v10, Ljava/util/Map$Entry;

    .line 448
    .line 449
    const/4 v11, 0x2

    .line 450
    invoke-virtual {v7, v13, v11}, Ljn4;->d(II)V

    .line 451
    .line 452
    .line 453
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v12

    .line 461
    invoke-static {v9, v11, v12}, Lko4;->b(Lui3;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    invoke-virtual {v7, v11}, Ljn4;->r(I)V

    .line 466
    .line 467
    .line 468
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v11

    .line 472
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    invoke-static {v7, v9, v11, v10}, Lko4;->a(Ljn4;Lui3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    goto :goto_4

    .line 480
    :pswitch_13
    aget v5, v9, v2

    .line 481
    .line 482
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    check-cast v9, Ljava/util/List;

    .line 487
    .line 488
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    sget-object v11, Ldp4;->a:Lbx3;

    .line 493
    .line 494
    if-eqz v9, :cond_3

    .line 495
    .line 496
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 497
    .line 498
    .line 499
    move-result v11

    .line 500
    if-nez v11, :cond_3

    .line 501
    .line 502
    const/4 v11, 0x0

    .line 503
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 504
    .line 505
    .line 506
    move-result v12

    .line 507
    if-ge v11, v12, :cond_3

    .line 508
    .line 509
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v12

    .line 513
    check-cast v12, Lsm4;

    .line 514
    .line 515
    invoke-virtual {v7, v5, v15}, Ljn4;->d(II)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v10, v12, v6}, Lcp4;->i(Ljava/lang/Object;Ldd1;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v7, v5, v14}, Ljn4;->d(II)V

    .line 522
    .line 523
    .line 524
    add-int/lit8 v11, v11, 0x1

    .line 525
    .line 526
    goto :goto_5

    .line 527
    :pswitch_14
    aget v5, v9, v2

    .line 528
    .line 529
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    check-cast v9, Ljava/util/List;

    .line 534
    .line 535
    const/4 v12, 0x1

    .line 536
    invoke-static {v5, v9, v6, v12}, Ldp4;->h(ILjava/util/List;Ldd1;Z)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_3

    .line 540
    .line 541
    :pswitch_15
    const/4 v12, 0x1

    .line 542
    aget v5, v9, v2

    .line 543
    .line 544
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    check-cast v9, Ljava/util/List;

    .line 549
    .line 550
    invoke-static {v5, v9, v6, v12}, Ldp4;->m(ILjava/util/List;Ldd1;Z)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_3

    .line 554
    .line 555
    :pswitch_16
    const/4 v12, 0x1

    .line 556
    aget v5, v9, v2

    .line 557
    .line 558
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    check-cast v9, Ljava/util/List;

    .line 563
    .line 564
    invoke-static {v5, v9, v6, v12}, Ldp4;->j(ILjava/util/List;Ldd1;Z)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_3

    .line 568
    .line 569
    :pswitch_17
    const/4 v12, 0x1

    .line 570
    aget v5, v9, v2

    .line 571
    .line 572
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v9

    .line 576
    check-cast v9, Ljava/util/List;

    .line 577
    .line 578
    invoke-static {v5, v9, v6, v12}, Ldp4;->o(ILjava/util/List;Ldd1;Z)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_3

    .line 582
    .line 583
    :pswitch_18
    const/4 v12, 0x1

    .line 584
    aget v5, v9, v2

    .line 585
    .line 586
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v9

    .line 590
    check-cast v9, Ljava/util/List;

    .line 591
    .line 592
    invoke-static {v5, v9, v6, v12}, Ldp4;->p(ILjava/util/List;Ldd1;Z)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_3

    .line 596
    .line 597
    :pswitch_19
    const/4 v12, 0x1

    .line 598
    aget v5, v9, v2

    .line 599
    .line 600
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v9

    .line 604
    check-cast v9, Ljava/util/List;

    .line 605
    .line 606
    invoke-static {v5, v9, v6, v12}, Ldp4;->l(ILjava/util/List;Ldd1;Z)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_3

    .line 610
    .line 611
    :pswitch_1a
    const/4 v12, 0x1

    .line 612
    aget v5, v9, v2

    .line 613
    .line 614
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    check-cast v9, Ljava/util/List;

    .line 619
    .line 620
    invoke-static {v5, v9, v6, v12}, Ldp4;->q(ILjava/util/List;Ldd1;Z)V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_3

    .line 624
    .line 625
    :pswitch_1b
    const/4 v12, 0x1

    .line 626
    aget v5, v9, v2

    .line 627
    .line 628
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    check-cast v9, Ljava/util/List;

    .line 633
    .line 634
    invoke-static {v5, v9, v6, v12}, Ldp4;->n(ILjava/util/List;Ldd1;Z)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_3

    .line 638
    .line 639
    :pswitch_1c
    const/4 v12, 0x1

    .line 640
    aget v5, v9, v2

    .line 641
    .line 642
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    check-cast v9, Ljava/util/List;

    .line 647
    .line 648
    invoke-static {v5, v9, v6, v12}, Ldp4;->i(ILjava/util/List;Ldd1;Z)V

    .line 649
    .line 650
    .line 651
    goto/16 :goto_3

    .line 652
    .line 653
    :pswitch_1d
    const/4 v12, 0x1

    .line 654
    aget v5, v9, v2

    .line 655
    .line 656
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v9

    .line 660
    check-cast v9, Ljava/util/List;

    .line 661
    .line 662
    invoke-static {v5, v9, v6, v12}, Ldp4;->k(ILjava/util/List;Ldd1;Z)V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_3

    .line 666
    .line 667
    :pswitch_1e
    const/4 v12, 0x1

    .line 668
    aget v5, v9, v2

    .line 669
    .line 670
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v9

    .line 674
    check-cast v9, Ljava/util/List;

    .line 675
    .line 676
    invoke-static {v5, v9, v6, v12}, Ldp4;->g(ILjava/util/List;Ldd1;Z)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_3

    .line 680
    .line 681
    :pswitch_1f
    const/4 v12, 0x1

    .line 682
    aget v5, v9, v2

    .line 683
    .line 684
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v9

    .line 688
    check-cast v9, Ljava/util/List;

    .line 689
    .line 690
    invoke-static {v5, v9, v6, v12}, Ldp4;->f(ILjava/util/List;Ldd1;Z)V

    .line 691
    .line 692
    .line 693
    goto/16 :goto_3

    .line 694
    .line 695
    :pswitch_20
    const/4 v12, 0x1

    .line 696
    aget v5, v9, v2

    .line 697
    .line 698
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v9

    .line 702
    check-cast v9, Ljava/util/List;

    .line 703
    .line 704
    invoke-static {v5, v9, v6, v12}, Ldp4;->e(ILjava/util/List;Ldd1;Z)V

    .line 705
    .line 706
    .line 707
    goto/16 :goto_3

    .line 708
    .line 709
    :pswitch_21
    const/4 v12, 0x1

    .line 710
    aget v5, v9, v2

    .line 711
    .line 712
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v9

    .line 716
    check-cast v9, Ljava/util/List;

    .line 717
    .line 718
    invoke-static {v5, v9, v6, v12}, Ldp4;->d(ILjava/util/List;Ldd1;Z)V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_3

    .line 722
    .line 723
    :pswitch_22
    aget v5, v9, v2

    .line 724
    .line 725
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v9

    .line 729
    check-cast v9, Ljava/util/List;

    .line 730
    .line 731
    const/4 v12, 0x0

    .line 732
    invoke-static {v5, v9, v6, v12}, Ldp4;->h(ILjava/util/List;Ldd1;Z)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_9

    .line 736
    .line 737
    :pswitch_23
    const/4 v12, 0x0

    .line 738
    aget v5, v9, v2

    .line 739
    .line 740
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v9

    .line 744
    check-cast v9, Ljava/util/List;

    .line 745
    .line 746
    invoke-static {v5, v9, v6, v12}, Ldp4;->m(ILjava/util/List;Ldd1;Z)V

    .line 747
    .line 748
    .line 749
    goto/16 :goto_9

    .line 750
    .line 751
    :pswitch_24
    const/4 v12, 0x0

    .line 752
    aget v5, v9, v2

    .line 753
    .line 754
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v9

    .line 758
    check-cast v9, Ljava/util/List;

    .line 759
    .line 760
    invoke-static {v5, v9, v6, v12}, Ldp4;->j(ILjava/util/List;Ldd1;Z)V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_9

    .line 764
    .line 765
    :pswitch_25
    const/4 v12, 0x0

    .line 766
    aget v5, v9, v2

    .line 767
    .line 768
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v9

    .line 772
    check-cast v9, Ljava/util/List;

    .line 773
    .line 774
    invoke-static {v5, v9, v6, v12}, Ldp4;->o(ILjava/util/List;Ldd1;Z)V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_9

    .line 778
    .line 779
    :pswitch_26
    const/4 v12, 0x0

    .line 780
    aget v5, v9, v2

    .line 781
    .line 782
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v9

    .line 786
    check-cast v9, Ljava/util/List;

    .line 787
    .line 788
    invoke-static {v5, v9, v6, v12}, Ldp4;->p(ILjava/util/List;Ldd1;Z)V

    .line 789
    .line 790
    .line 791
    goto/16 :goto_9

    .line 792
    .line 793
    :pswitch_27
    const/4 v12, 0x0

    .line 794
    aget v5, v9, v2

    .line 795
    .line 796
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v9

    .line 800
    check-cast v9, Ljava/util/List;

    .line 801
    .line 802
    invoke-static {v5, v9, v6, v12}, Ldp4;->l(ILjava/util/List;Ldd1;Z)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_9

    .line 806
    .line 807
    :pswitch_28
    aget v5, v9, v2

    .line 808
    .line 809
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v9

    .line 813
    check-cast v9, Ljava/util/List;

    .line 814
    .line 815
    sget-object v10, Ldp4;->a:Lbx3;

    .line 816
    .line 817
    if-eqz v9, :cond_3

    .line 818
    .line 819
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v10

    .line 823
    if-nez v10, :cond_3

    .line 824
    .line 825
    const/4 v12, 0x0

    .line 826
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 827
    .line 828
    .line 829
    move-result v10

    .line 830
    if-ge v12, v10, :cond_3

    .line 831
    .line 832
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v10

    .line 836
    check-cast v10, Lzm4;

    .line 837
    .line 838
    invoke-virtual {v7, v5, v10}, Ljn4;->l(ILzm4;)V

    .line 839
    .line 840
    .line 841
    add-int/lit8 v12, v12, 0x1

    .line 842
    .line 843
    goto :goto_6

    .line 844
    :pswitch_29
    aget v5, v9, v2

    .line 845
    .line 846
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v9

    .line 850
    check-cast v9, Ljava/util/List;

    .line 851
    .line 852
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 853
    .line 854
    .line 855
    move-result-object v10

    .line 856
    sget-object v11, Ldp4;->a:Lbx3;

    .line 857
    .line 858
    if-eqz v9, :cond_3

    .line 859
    .line 860
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 861
    .line 862
    .line 863
    move-result v11

    .line 864
    if-nez v11, :cond_3

    .line 865
    .line 866
    const/4 v12, 0x0

    .line 867
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 868
    .line 869
    .line 870
    move-result v11

    .line 871
    if-ge v12, v11, :cond_3

    .line 872
    .line 873
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v11

    .line 877
    invoke-virtual {v6, v5, v11, v10}, Ldd1;->x(ILjava/lang/Object;Lcp4;)V

    .line 878
    .line 879
    .line 880
    add-int/lit8 v12, v12, 0x1

    .line 881
    .line 882
    goto :goto_7

    .line 883
    :pswitch_2a
    aget v5, v9, v2

    .line 884
    .line 885
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v9

    .line 889
    check-cast v9, Ljava/util/List;

    .line 890
    .line 891
    sget-object v10, Ldp4;->a:Lbx3;

    .line 892
    .line 893
    if-eqz v9, :cond_3

    .line 894
    .line 895
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 896
    .line 897
    .line 898
    move-result v10

    .line 899
    if-nez v10, :cond_3

    .line 900
    .line 901
    const/4 v12, 0x0

    .line 902
    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 903
    .line 904
    .line 905
    move-result v10

    .line 906
    if-ge v12, v10, :cond_3

    .line 907
    .line 908
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v10

    .line 912
    check-cast v10, Ljava/lang/String;

    .line 913
    .line 914
    invoke-virtual {v7, v5, v10}, Ljn4;->k(ILjava/lang/String;)V

    .line 915
    .line 916
    .line 917
    add-int/lit8 v12, v12, 0x1

    .line 918
    .line 919
    goto :goto_8

    .line 920
    :pswitch_2b
    aget v5, v9, v2

    .line 921
    .line 922
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v9

    .line 926
    check-cast v9, Ljava/util/List;

    .line 927
    .line 928
    const/4 v12, 0x0

    .line 929
    invoke-static {v5, v9, v6, v12}, Ldp4;->q(ILjava/util/List;Ldd1;Z)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_9

    .line 933
    .line 934
    :pswitch_2c
    const/4 v12, 0x0

    .line 935
    aget v5, v9, v2

    .line 936
    .line 937
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v9

    .line 941
    check-cast v9, Ljava/util/List;

    .line 942
    .line 943
    invoke-static {v5, v9, v6, v12}, Ldp4;->n(ILjava/util/List;Ldd1;Z)V

    .line 944
    .line 945
    .line 946
    goto/16 :goto_9

    .line 947
    .line 948
    :pswitch_2d
    const/4 v12, 0x0

    .line 949
    aget v5, v9, v2

    .line 950
    .line 951
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v9

    .line 955
    check-cast v9, Ljava/util/List;

    .line 956
    .line 957
    invoke-static {v5, v9, v6, v12}, Ldp4;->i(ILjava/util/List;Ldd1;Z)V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_9

    .line 961
    .line 962
    :pswitch_2e
    const/4 v12, 0x0

    .line 963
    aget v5, v9, v2

    .line 964
    .line 965
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v9

    .line 969
    check-cast v9, Ljava/util/List;

    .line 970
    .line 971
    invoke-static {v5, v9, v6, v12}, Ldp4;->k(ILjava/util/List;Ldd1;Z)V

    .line 972
    .line 973
    .line 974
    goto/16 :goto_9

    .line 975
    .line 976
    :pswitch_2f
    const/4 v12, 0x0

    .line 977
    aget v5, v9, v2

    .line 978
    .line 979
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v9

    .line 983
    check-cast v9, Ljava/util/List;

    .line 984
    .line 985
    invoke-static {v5, v9, v6, v12}, Ldp4;->g(ILjava/util/List;Ldd1;Z)V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_9

    .line 989
    .line 990
    :pswitch_30
    const/4 v12, 0x0

    .line 991
    aget v5, v9, v2

    .line 992
    .line 993
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v9

    .line 997
    check-cast v9, Ljava/util/List;

    .line 998
    .line 999
    invoke-static {v5, v9, v6, v12}, Ldp4;->f(ILjava/util/List;Ldd1;Z)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_9

    .line 1003
    .line 1004
    :pswitch_31
    const/4 v12, 0x0

    .line 1005
    aget v5, v9, v2

    .line 1006
    .line 1007
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v9

    .line 1011
    check-cast v9, Ljava/util/List;

    .line 1012
    .line 1013
    invoke-static {v5, v9, v6, v12}, Ldp4;->e(ILjava/util/List;Ldd1;Z)V

    .line 1014
    .line 1015
    .line 1016
    goto/16 :goto_9

    .line 1017
    .line 1018
    :pswitch_32
    const/4 v12, 0x0

    .line 1019
    aget v5, v9, v2

    .line 1020
    .line 1021
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v9

    .line 1025
    check-cast v9, Ljava/util/List;

    .line 1026
    .line 1027
    invoke-static {v5, v9, v6, v12}, Ldp4;->d(ILjava/util/List;Ldd1;Z)V

    .line 1028
    .line 1029
    .line 1030
    goto/16 :goto_9

    .line 1031
    .line 1032
    :pswitch_33
    const/4 v12, 0x0

    .line 1033
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v5

    .line 1037
    if-eqz v5, :cond_6

    .line 1038
    .line 1039
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v9

    .line 1047
    check-cast v5, Lsm4;

    .line 1048
    .line 1049
    invoke-virtual {v7, v13, v15}, Ljn4;->d(II)V

    .line 1050
    .line 1051
    .line 1052
    invoke-interface {v9, v5, v6}, Lcp4;->i(Ljava/lang/Object;Ldd1;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v7, v13, v14}, Ljn4;->d(II)V

    .line 1056
    .line 1057
    .line 1058
    goto/16 :goto_9

    .line 1059
    .line 1060
    :pswitch_34
    const/4 v12, 0x0

    .line 1061
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v5

    .line 1065
    if-eqz v5, :cond_6

    .line 1066
    .line 1067
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1068
    .line 1069
    .line 1070
    move-result-wide v9

    .line 1071
    add-long v14, v9, v9

    .line 1072
    .line 1073
    shr-long v9, v9, v16

    .line 1074
    .line 1075
    xor-long/2addr v9, v14

    .line 1076
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->h(IJ)V

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_9

    .line 1080
    .line 1081
    :pswitch_35
    const/4 v12, 0x0

    .line 1082
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v5

    .line 1086
    if-eqz v5, :cond_6

    .line 1087
    .line 1088
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1089
    .line 1090
    .line 1091
    move-result v0

    .line 1092
    add-int v5, v0, v0

    .line 1093
    .line 1094
    shr-int/lit8 v0, v0, 0x1f

    .line 1095
    .line 1096
    xor-int/2addr v0, v5

    .line 1097
    invoke-virtual {v7, v13, v0}, Ljn4;->f(II)V

    .line 1098
    .line 1099
    .line 1100
    goto/16 :goto_9

    .line 1101
    .line 1102
    :pswitch_36
    const/4 v12, 0x0

    .line 1103
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v5

    .line 1107
    if-eqz v5, :cond_6

    .line 1108
    .line 1109
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1110
    .line 1111
    .line 1112
    move-result-wide v9

    .line 1113
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->i(IJ)V

    .line 1114
    .line 1115
    .line 1116
    goto/16 :goto_9

    .line 1117
    .line 1118
    :pswitch_37
    const/4 v12, 0x0

    .line 1119
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v5

    .line 1123
    if-eqz v5, :cond_6

    .line 1124
    .line 1125
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1126
    .line 1127
    .line 1128
    move-result v0

    .line 1129
    invoke-virtual {v7, v13, v0}, Ljn4;->g(II)V

    .line 1130
    .line 1131
    .line 1132
    goto/16 :goto_9

    .line 1133
    .line 1134
    :pswitch_38
    const/4 v12, 0x0

    .line 1135
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v5

    .line 1139
    if-eqz v5, :cond_6

    .line 1140
    .line 1141
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1142
    .line 1143
    .line 1144
    move-result v0

    .line 1145
    invoke-virtual {v7, v13, v0}, Ljn4;->e(II)V

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_9

    .line 1149
    .line 1150
    :pswitch_39
    const/4 v12, 0x0

    .line 1151
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v5

    .line 1155
    if-eqz v5, :cond_6

    .line 1156
    .line 1157
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1158
    .line 1159
    .line 1160
    move-result v0

    .line 1161
    invoke-virtual {v7, v13, v0}, Ljn4;->f(II)V

    .line 1162
    .line 1163
    .line 1164
    goto/16 :goto_9

    .line 1165
    .line 1166
    :pswitch_3a
    const/4 v12, 0x0

    .line 1167
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v5

    .line 1171
    if-eqz v5, :cond_6

    .line 1172
    .line 1173
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    check-cast v0, Lzm4;

    .line 1178
    .line 1179
    invoke-virtual {v7, v13, v0}, Ljn4;->l(ILzm4;)V

    .line 1180
    .line 1181
    .line 1182
    goto/16 :goto_9

    .line 1183
    .line 1184
    :pswitch_3b
    const/4 v12, 0x0

    .line 1185
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v5

    .line 1189
    if-eqz v5, :cond_6

    .line 1190
    .line 1191
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v5

    .line 1195
    invoke-virtual {v0, v2}, Luo4;->C(I)Lcp4;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v9

    .line 1199
    invoke-virtual {v6, v13, v5, v9}, Ldd1;->x(ILjava/lang/Object;Lcp4;)V

    .line 1200
    .line 1201
    .line 1202
    goto/16 :goto_9

    .line 1203
    .line 1204
    :pswitch_3c
    const/4 v12, 0x0

    .line 1205
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v5

    .line 1209
    if-eqz v5, :cond_6

    .line 1210
    .line 1211
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    instance-of v5, v0, Ljava/lang/String;

    .line 1216
    .line 1217
    if-eqz v5, :cond_5

    .line 1218
    .line 1219
    check-cast v0, Ljava/lang/String;

    .line 1220
    .line 1221
    invoke-virtual {v7, v13, v0}, Ljn4;->k(ILjava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    goto/16 :goto_9

    .line 1225
    .line 1226
    :cond_5
    check-cast v0, Lzm4;

    .line 1227
    .line 1228
    invoke-virtual {v7, v13, v0}, Ljn4;->l(ILzm4;)V

    .line 1229
    .line 1230
    .line 1231
    goto/16 :goto_9

    .line 1232
    .line 1233
    :pswitch_3d
    const/4 v12, 0x0

    .line 1234
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v5

    .line 1238
    if-eqz v5, :cond_6

    .line 1239
    .line 1240
    sget-object v0, Lqp4;->c:Lpp4;

    .line 1241
    .line 1242
    invoke-virtual {v0, v10, v11, v1}, Lpp4;->d(JLjava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v0

    .line 1246
    invoke-virtual {v7, v13, v0}, Ljn4;->j(IZ)V

    .line 1247
    .line 1248
    .line 1249
    goto/16 :goto_9

    .line 1250
    .line 1251
    :pswitch_3e
    const/4 v12, 0x0

    .line 1252
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v5

    .line 1256
    if-eqz v5, :cond_6

    .line 1257
    .line 1258
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    invoke-virtual {v7, v13, v0}, Ljn4;->g(II)V

    .line 1263
    .line 1264
    .line 1265
    goto :goto_9

    .line 1266
    :pswitch_3f
    const/4 v12, 0x0

    .line 1267
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v5

    .line 1271
    if-eqz v5, :cond_6

    .line 1272
    .line 1273
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1274
    .line 1275
    .line 1276
    move-result-wide v9

    .line 1277
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->i(IJ)V

    .line 1278
    .line 1279
    .line 1280
    goto :goto_9

    .line 1281
    :pswitch_40
    const/4 v12, 0x0

    .line 1282
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1283
    .line 1284
    .line 1285
    move-result v5

    .line 1286
    if-eqz v5, :cond_6

    .line 1287
    .line 1288
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1289
    .line 1290
    .line 1291
    move-result v0

    .line 1292
    invoke-virtual {v7, v13, v0}, Ljn4;->e(II)V

    .line 1293
    .line 1294
    .line 1295
    goto :goto_9

    .line 1296
    :pswitch_41
    const/4 v12, 0x0

    .line 1297
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v5

    .line 1301
    if-eqz v5, :cond_6

    .line 1302
    .line 1303
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v9

    .line 1307
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->h(IJ)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_9

    .line 1311
    :pswitch_42
    const/4 v12, 0x0

    .line 1312
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v5

    .line 1316
    if-eqz v5, :cond_6

    .line 1317
    .line 1318
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1319
    .line 1320
    .line 1321
    move-result-wide v9

    .line 1322
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->h(IJ)V

    .line 1323
    .line 1324
    .line 1325
    goto :goto_9

    .line 1326
    :pswitch_43
    const/4 v12, 0x0

    .line 1327
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v5

    .line 1331
    if-eqz v5, :cond_6

    .line 1332
    .line 1333
    sget-object v0, Lqp4;->c:Lpp4;

    .line 1334
    .line 1335
    invoke-virtual {v0, v10, v11, v1}, Lpp4;->f(JLjava/lang/Object;)F

    .line 1336
    .line 1337
    .line 1338
    move-result v0

    .line 1339
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1340
    .line 1341
    .line 1342
    move-result v0

    .line 1343
    invoke-virtual {v7, v13, v0}, Ljn4;->g(II)V

    .line 1344
    .line 1345
    .line 1346
    goto :goto_9

    .line 1347
    :pswitch_44
    const/4 v12, 0x0

    .line 1348
    invoke-virtual/range {v0 .. v5}, Luo4;->q(Ljava/lang/Object;IIII)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v5

    .line 1352
    if-eqz v5, :cond_6

    .line 1353
    .line 1354
    sget-object v0, Lqp4;->c:Lpp4;

    .line 1355
    .line 1356
    invoke-virtual {v0, v10, v11, v1}, Lpp4;->i(JLjava/lang/Object;)D

    .line 1357
    .line 1358
    .line 1359
    move-result-wide v9

    .line 1360
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 1361
    .line 1362
    .line 1363
    move-result-wide v9

    .line 1364
    invoke-virtual {v7, v13, v9, v10}, Ljn4;->i(IJ)V

    .line 1365
    .line 1366
    .line 1367
    :cond_6
    :goto_9
    add-int/lit8 v2, v2, 0x3

    .line 1368
    .line 1369
    const v10, 0xfffff

    .line 1370
    .line 1371
    .line 1372
    move-object/from16 v0, p0

    .line 1373
    .line 1374
    goto/16 :goto_0

    .line 1375
    .line 1376
    :cond_7
    move-object v0, v1

    .line 1377
    check-cast v0, Lrn4;

    .line 1378
    .line 1379
    iget-object v0, v0, Lrn4;->zzc:Llp4;

    .line 1380
    .line 1381
    invoke-virtual {v0, v6}, Llp4;->b(Ldd1;)V

    .line 1382
    .line 1383
    .line 1384
    return-void

    .line 1385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Luo4;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final p(Lrn4;Lrn4;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Luo4;->r(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Luo4;->r(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final q(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Luo4;->r(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    and-int p0, p4, p5

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final r(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Luo4;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Luo4;->j(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-int p1, p0, v1

    .line 27
    .line 28
    invoke-static {p0}, Luo4;->k(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long v0, p1

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lq73;->d()V

    .line 39
    .line 40
    .line 41
    return v5

    .line 42
    :pswitch_0
    invoke-static {v0, v1, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_1
    invoke-static {v0, v1, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    cmp-long p0, p0, v2

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :pswitch_2
    invoke-static {v0, v1, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_3
    invoke-static {v0, v1, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    cmp-long p0, p0, v2

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_4
    invoke-static {v0, v1, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_5
    invoke-static {v0, v1, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :pswitch_6
    invoke-static {v0, v1, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_7
    sget-object p0, Lzm4;->o:Lym4;

    .line 103
    .line 104
    invoke-static {v0, v1, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lzm4;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_3

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_8
    invoke-static {v0, v1, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-eqz p0, :cond_3

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_9
    invoke-static {v0, v1, p2}, Lqp4;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    instance-of p1, p0, Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p1, :cond_0

    .line 131
    .line 132
    check-cast p0, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_3

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_0
    instance-of p1, p0, Lzm4;

    .line 143
    .line 144
    if-eqz p1, :cond_1

    .line 145
    .line 146
    sget-object p1, Lzm4;->o:Lym4;

    .line 147
    .line 148
    invoke-virtual {p1, p0}, Lzm4;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_3

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lq73;->d()V

    .line 156
    .line 157
    .line 158
    return v5

    .line 159
    :pswitch_a
    sget-object p0, Lqp4;->c:Lpp4;

    .line 160
    .line 161
    invoke-virtual {p0, v0, v1, p2}, Lpp4;->d(JLjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0

    .line 166
    :pswitch_b
    invoke-static {v0, v1, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_3

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :pswitch_c
    invoke-static {v0, v1, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 174
    .line 175
    .line 176
    move-result-wide p0

    .line 177
    cmp-long p0, p0, v2

    .line 178
    .line 179
    if-eqz p0, :cond_3

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :pswitch_d
    invoke-static {v0, v1, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_3

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_e
    invoke-static {v0, v1, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 190
    .line 191
    .line 192
    move-result-wide p0

    .line 193
    cmp-long p0, p0, v2

    .line 194
    .line 195
    if-eqz p0, :cond_3

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_f
    invoke-static {v0, v1, p2}, Lqp4;->g(JLjava/lang/Object;)J

    .line 199
    .line 200
    .line 201
    move-result-wide p0

    .line 202
    cmp-long p0, p0, v2

    .line 203
    .line 204
    if-eqz p0, :cond_3

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :pswitch_10
    sget-object p0, Lqp4;->c:Lpp4;

    .line 208
    .line 209
    invoke-virtual {p0, v0, v1, p2}, Lpp4;->f(JLjava/lang/Object;)F

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_3

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :pswitch_11
    sget-object p0, Lqp4;->c:Lpp4;

    .line 221
    .line 222
    invoke-virtual {p0, v0, v1, p2}, Lpp4;->i(JLjava/lang/Object;)D

    .line 223
    .line 224
    .line 225
    move-result-wide p0

    .line 226
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 227
    .line 228
    .line 229
    move-result-wide p0

    .line 230
    cmp-long p0, p0, v2

    .line 231
    .line 232
    if-eqz p0, :cond_3

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    .line 236
    .line 237
    shl-int p0, v6, p0

    .line 238
    .line 239
    invoke-static {v2, v3, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    and-int/2addr p0, p1

    .line 244
    if-eqz p0, :cond_3

    .line 245
    .line 246
    :goto_0
    return v6

    .line 247
    :cond_3
    return v5

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Luo4;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    int-to-long v0, p1

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 21
    .line 22
    invoke-static {v0, v1, p2}, Lqp4;->e(JLjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v2, 0x1

    .line 27
    shl-int p0, v2, p0

    .line 28
    .line 29
    or-int/2addr p0, p1

    .line 30
    invoke-static {p2, v0, v1, p0}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final t(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Luo4;->a:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {v0, v1, p3}, Lqp4;->e(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final u(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Luo4;->a:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {p3, v0, v1, p1}, Lqp4;->f(Ljava/lang/Object;JI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final v(II)I
    .locals 5

    .line 1
    iget-object p0, p0, Luo4;->a:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    add-int/2addr v0, v1

    .line 8
    :goto_0
    if-gt p2, v0, :cond_2

    .line 9
    .line 10
    add-int v2, v0, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    aget v4, p0, v3

    .line 17
    .line 18
    if-ne p1, v4, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    if-ge p1, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v2, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v1
.end method

.method public final x(Ljava/lang/Object;[BIIILe91;)I
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 1
    invoke-static {v2}, Luo4;->m(Ljava/lang/Object;)V

    sget-object v1, Luo4;->l:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const-string v16, "Failed to parse the message."

    if-ge v4, v5, :cond_7c

    add-int/lit8 v15, v4, 0x1

    .line 2
    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    .line 3
    invoke-static {v4, v3, v15, v6}, Lvm4;->c(I[BILe91;)I

    move-result v15

    iget v4, v6, Le91;->a:I

    :cond_0
    move/from16 v34, v15

    move v15, v4

    move/from16 v4, v34

    const v17, 0xfffff

    ushr-int/lit8 v13, v15, 0x3

    iget v12, v0, Luo4;->d:I

    const/16 p3, 0x3

    iget v11, v0, Luo4;->c:I

    if-le v13, v7, :cond_2

    div-int/lit8 v8, v8, 0x3

    if-lt v13, v11, :cond_1

    if-gt v13, v12, :cond_1

    .line 4
    invoke-virtual {v0, v13, v8}, Luo4;->v(II)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    move v11, v7

    goto :goto_3

    :cond_2
    if-lt v13, v11, :cond_3

    if-gt v13, v12, :cond_3

    const/4 v7, 0x0

    .line 5
    invoke-virtual {v0, v13, v7}, Luo4;->v(II)I

    move-result v8

    goto :goto_2

    :cond_3
    const/4 v8, -0x1

    :goto_2
    move v11, v8

    .line 6
    :goto_3
    sget-object v8, Llp4;->f:Llp4;

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    move/from16 v7, p5

    move-object v10, v8

    move/from16 v32, v9

    move v11, v15

    const/16 v20, 0x0

    move-object v9, v1

    move-object v8, v2

    move v15, v13

    move v13, v4

    move-object v4, v6

    goto/16 :goto_4d

    :cond_4
    and-int/lit8 v7, v15, 0x7

    add-int/lit8 v18, v11, 0x1

    .line 7
    iget-object v12, v0, Luo4;->a:[I

    aget v3, v12, v18

    move/from16 v18, v4

    invoke-static {v3}, Luo4;->k(I)I

    move-result v4

    and-int v5, v3, v17

    int-to-long v5, v5

    move-wide/from16 v20, v5

    const/16 v5, 0x11

    const-wide/16 v22, 0x0

    const/high16 v24, 0x20000000

    const-string v6, ""

    const-string v26, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v27, v12

    const/16 v28, 0x1

    if-gt v4, v5, :cond_17

    add-int/lit8 v5, v11, 0x2

    .line 8
    aget v5, v27, v5

    ushr-int/lit8 v27, v5, 0x14

    shl-int v27, v28, v27

    and-int v5, v5, v17

    if-eq v5, v9, :cond_7

    move/from16 v12, v17

    move/from16 v30, v13

    if-eq v9, v12, :cond_5

    int-to-long v12, v9

    .line 9
    invoke-virtual {v1, v2, v12, v13, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v12, 0xfffff

    :cond_5
    if-ne v5, v12, :cond_6

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    int-to-long v12, v5

    .line 10
    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    :goto_4
    move v12, v5

    move v14, v9

    goto :goto_5

    :cond_7
    move/from16 v30, v13

    move v12, v9

    :goto_5
    packed-switch v4, :pswitch_data_0

    move/from16 v4, p3

    if-ne v7, v4, :cond_8

    or-int v14, v14, v27

    .line 11
    invoke-virtual {v0, v11, v2}, Luo4;->F(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v30, 0x3

    or-int/lit8 v8, v4, 0x4

    .line 12
    invoke-virtual {v0, v11}, Luo4;->C(I)Lcp4;

    move-result-object v4

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v6, v18

    .line 13
    invoke-static/range {v3 .. v9}, Lvm4;->k(Ljava/lang/Object;Lcp4;[BIIILe91;)I

    move-result v4

    move-object v13, v9

    move-object v9, v5

    .line 14
    invoke-virtual {v0, v11, v2, v3}, Luo4;->G(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    move/from16 v5, p4

    :goto_7
    move-object v3, v9

    move v8, v11

    move v9, v12

    move-object v6, v13

    :goto_8
    move/from16 v7, v30

    goto/16 :goto_0

    :cond_8
    move-object/from16 v13, p2

    move-object/from16 v9, p6

    move/from16 p3, v12

    move/from16 v5, v18

    move-object v12, v1

    move-object v1, v2

    move/from16 v18, v14

    goto/16 :goto_16

    :pswitch_0
    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move/from16 v4, v18

    if-nez v7, :cond_9

    or-int v14, v14, v27

    .line 15
    invoke-static {v9, v4, v13}, Lvm4;->d([BILe91;)I

    move-result v7

    iget-wide v3, v13, Le91;->b:J

    .line 16
    invoke-static {v3, v4}, Lcn4;->k(J)J

    move-result-wide v5

    move-wide/from16 v3, v20

    .line 17
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v34, v2

    move-object v2, v1

    move-object/from16 v1, v34

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move v4, v7

    goto :goto_7

    :cond_9
    move-object/from16 v34, v2

    move-object v2, v1

    move-object/from16 v1, v34

    :cond_a
    move-object/from16 p3, v13

    move-object v13, v9

    move-object/from16 v9, p3

    move v5, v4

    move/from16 p3, v12

    move/from16 v18, v14

    move-object v12, v2

    goto/16 :goto_16

    :pswitch_1
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move/from16 v4, v18

    move-wide/from16 v5, v20

    if-nez v7, :cond_a

    or-int v14, v14, v27

    .line 18
    invoke-static {v9, v4, v13}, Lvm4;->a([BILe91;)I

    move-result v4

    iget v3, v13, Le91;->a:I

    .line 19
    invoke-static {v3}, Lcn4;->j(I)I

    move-result v3

    .line 20
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_9
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_6

    :pswitch_2
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move/from16 v4, v18

    move-wide/from16 v5, v20

    if-nez v7, :cond_a

    .line 21
    invoke-static {v9, v4, v13}, Lvm4;->a([BILe91;)I

    move-result v4

    iget v7, v13, Le91;->a:I

    move/from16 p3, v4

    .line 22
    invoke-virtual {v0, v11}, Luo4;->E(I)Lmm4;

    move-result-object v4

    const/high16 v16, -0x80000000

    and-int v3, v3, v16

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    invoke-virtual {v4, v7}, Lmm4;->a(I)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_b

    .line 23
    :cond_b
    move-object v3, v1

    check-cast v3, Lrn4;

    iget-object v4, v3, Lrn4;->zzc:Llp4;

    if-ne v4, v8, :cond_c

    invoke-static {}, Llp4;->a()Llp4;

    move-result-object v4

    .line 24
    iput-object v4, v3, Lrn4;->zzc:Llp4;

    :cond_c
    int-to-long v5, v7

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v15, v3}, Llp4;->d(ILjava/lang/Object;)V

    :goto_a
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v4, p3

    goto/16 :goto_6

    :cond_d
    :goto_b
    or-int v14, v14, v27

    .line 26
    invoke-virtual {v2, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_3
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move/from16 v4, v18

    move-wide/from16 v5, v20

    const/4 v3, 0x2

    if-ne v7, v3, :cond_a

    or-int v14, v14, v27

    .line 27
    invoke-static {v9, v4, v13}, Lvm4;->i([BILe91;)I

    move-result v4

    iget-object v3, v13, Le91;->d:Ljava/lang/Object;

    .line 28
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move/from16 v4, v18

    const/4 v3, 0x2

    if-ne v7, v3, :cond_e

    or-int v14, v14, v27

    move-object v3, v1

    .line 29
    invoke-virtual {v0, v11, v3}, Luo4;->F(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    .line 30
    invoke-virtual {v0, v11}, Luo4;->C(I)Lcp4;

    move-result-object v2

    move-object v6, v9

    move-object v9, v3

    move-object v3, v6

    move-object v6, v13

    move-object v13, v5

    move/from16 v5, p4

    .line 31
    invoke-static/range {v1 .. v6}, Lvm4;->j(Ljava/lang/Object;Lcp4;[BIILe91;)I

    move-result v4

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    .line 32
    invoke-virtual {v0, v11, v9, v3}, Luo4;->G(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v1

    move-object v2, v9

    move v8, v11

    move v9, v12

    move-object v1, v13

    goto/16 :goto_8

    :cond_e
    move-object v5, v9

    move-object v9, v1

    move-object v1, v5

    move-object v5, v13

    move-object v13, v2

    move-object v2, v5

    move v5, v4

    move/from16 p3, v12

    move-object v12, v13

    move/from16 v18, v14

    :goto_c
    move-object v13, v1

    move-object v1, v9

    move-object v9, v2

    goto/16 :goto_16

    :pswitch_5
    move-object v13, v1

    move-object v9, v2

    move/from16 p3, v12

    move/from16 v5, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move v12, v3

    move/from16 v18, v14

    move-wide/from16 v3, v20

    const/4 v14, 0x2

    if-ne v7, v14, :cond_12

    and-int v7, v12, v24

    if-eqz v7, :cond_f

    or-int v6, v18, v27

    .line 33
    invoke-static {v1, v5, v2}, Lvm4;->h([BILe91;)I

    move-result v5

    move v14, v6

    goto :goto_e

    .line 34
    :cond_f
    invoke-static {v1, v5, v2}, Lvm4;->a([BILe91;)I

    move-result v5

    iget v7, v2, Le91;->a:I

    if-ltz v7, :cond_11

    or-int v8, v18, v27

    if-nez v7, :cond_10

    .line 35
    iput-object v6, v2, Le91;->d:Ljava/lang/Object;

    :goto_d
    move v14, v8

    goto :goto_e

    :cond_10
    new-instance v6, Ljava/lang/String;

    .line 36
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v5, v7, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v2, Le91;->d:Ljava/lang/Object;

    add-int/2addr v5, v7

    goto :goto_d

    .line 37
    :goto_e
    iget-object v6, v2, Le91;->d:Ljava/lang/Object;

    .line 38
    invoke-virtual {v13, v9, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_f
    move-object v3, v1

    move-object v6, v2

    move v4, v5

    move-object v2, v9

    move v8, v11

    move-object v1, v13

    :goto_10
    move/from16 v7, v30

    move/from16 v9, p3

    move/from16 v5, p4

    goto/16 :goto_0

    .line 39
    :cond_11
    invoke-static/range {v26 .. v26}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_12
    move-object v12, v13

    goto :goto_c

    :pswitch_6
    move-object v13, v1

    move-object v9, v2

    move/from16 p3, v12

    move/from16 v5, v18

    move-wide/from16 v3, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v18, v14

    if-nez v7, :cond_12

    or-int v14, v18, v27

    .line 40
    invoke-static {v1, v5, v2}, Lvm4;->d([BILe91;)I

    move-result v5

    iget-wide v6, v2, Le91;->b:J

    cmp-long v6, v6, v22

    if-eqz v6, :cond_13

    move/from16 v6, v28

    goto :goto_11

    :cond_13
    const/4 v6, 0x0

    .line 41
    :goto_11
    sget-object v7, Lqp4;->c:Lpp4;

    invoke-virtual {v7, v9, v3, v4, v6}, Lpp4;->e(Ljava/lang/Object;JZ)V

    goto :goto_f

    :pswitch_7
    move-object v13, v1

    move-object v9, v2

    move/from16 p3, v12

    move/from16 v5, v18

    move-wide/from16 v3, v20

    const/4 v6, 0x5

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v18, v14

    if-ne v7, v6, :cond_12

    add-int/lit8 v6, v5, 0x4

    or-int v14, v18, v27

    .line 42
    invoke-static {v5, v1}, Lvm4;->f(I[B)I

    move-result v5

    invoke-virtual {v13, v9, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move-object v3, v1

    move v4, v6

    move v8, v11

    move-object v1, v13

    move/from16 v7, v30

    move-object v6, v2

    move-object v2, v9

    :goto_12
    move/from16 v9, p3

    goto/16 :goto_0

    :pswitch_8
    move-object v13, v1

    move-object v9, v2

    move/from16 p3, v12

    move/from16 v5, v18

    move-wide/from16 v3, v20

    move/from16 v6, v28

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v18, v14

    if-ne v7, v6, :cond_14

    add-int/lit8 v7, v5, 0x8

    or-int v14, v18, v27

    .line 43
    invoke-static {v5, v1}, Lvm4;->g(I[B)J

    move-result-wide v5

    move-object/from16 v34, v13

    move-object v13, v1

    move-object/from16 v1, v34

    move-object/from16 v34, v9

    move-object v9, v2

    move-object/from16 v2, v34

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_13
    move/from16 v5, p4

    move v4, v7

    move-object v6, v9

    move v8, v11

    :goto_14
    move-object v3, v13

    move/from16 v7, v30

    goto :goto_12

    :cond_14
    move-object/from16 v34, v13

    move-object v13, v1

    move-object/from16 v1, v34

    move-object/from16 v34, v9

    move-object v9, v2

    move-object/from16 v2, v34

    :cond_15
    move-object v12, v1

    :cond_16
    move-object v1, v2

    goto/16 :goto_16

    :pswitch_9
    move-object/from16 v13, p2

    move-object/from16 v9, p6

    move/from16 p3, v12

    move/from16 v5, v18

    move-wide/from16 v3, v20

    move/from16 v18, v14

    if-nez v7, :cond_15

    or-int v14, v18, v27

    .line 44
    invoke-static {v13, v5, v9}, Lvm4;->a([BILe91;)I

    move-result v5

    iget v6, v9, Le91;->a:I

    .line 45
    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v4, v5

    move-object v6, v9

    move v8, v11

    move-object v3, v13

    goto/16 :goto_10

    :pswitch_a
    move-object/from16 v13, p2

    move-object/from16 v9, p6

    move/from16 p3, v12

    move/from16 v5, v18

    move-wide/from16 v3, v20

    move/from16 v18, v14

    if-nez v7, :cond_15

    or-int v14, v18, v27

    .line 46
    invoke-static {v13, v5, v9}, Lvm4;->d([BILe91;)I

    move-result v7

    iget-wide v5, v9, Le91;->b:J

    .line 47
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_13

    :pswitch_b
    move-object/from16 v13, p2

    move-object/from16 v9, p6

    move/from16 p3, v12

    move/from16 v5, v18

    move-wide/from16 v3, v20

    const/4 v6, 0x5

    move-object v12, v1

    move/from16 v18, v14

    if-ne v7, v6, :cond_16

    add-int/lit8 v1, v5, 0x4

    or-int v14, v18, v27

    .line 48
    invoke-static {v5, v13}, Lvm4;->f(I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 49
    sget-object v6, Lqp4;->c:Lpp4;

    invoke-virtual {v6, v2, v3, v4, v5}, Lpp4;->h(Ljava/lang/Object;JF)V

    move/from16 v5, p4

    move v4, v1

    :goto_15
    move-object v6, v9

    move v8, v11

    move-object v1, v12

    goto :goto_14

    :pswitch_c
    move-object/from16 v13, p2

    move-object/from16 v9, p6

    move/from16 p3, v12

    move/from16 v5, v18

    move-wide/from16 v3, v20

    move/from16 v6, v28

    move-object v12, v1

    move/from16 v18, v14

    if-ne v7, v6, :cond_16

    add-int/lit8 v7, v5, 0x8

    or-int v14, v18, v27

    .line 50
    invoke-static {v5, v13}, Lvm4;->g(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 51
    sget-object v1, Lqp4;->c:Lpp4;

    invoke-virtual/range {v1 .. v6}, Lpp4;->k(Ljava/lang/Object;JD)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_15

    :goto_16
    move/from16 v32, p3

    move/from16 v7, p5

    move-object v10, v8

    move-object v4, v9

    move/from16 v20, v11

    move-object v9, v12

    move-object v3, v13

    move v11, v15

    move/from16 v14, v18

    move/from16 v15, v30

    move-object v8, v1

    move v13, v5

    goto/16 :goto_4d

    :cond_17
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move v12, v3

    move/from16 v30, v13

    move/from16 v5, v18

    move/from16 v18, v14

    move-wide/from16 v13, v20

    const/16 v3, 0x1b

    move/from16 v20, v5

    if-ne v4, v3, :cond_1b

    const/4 v3, 0x2

    if-ne v7, v3, :cond_1a

    .line 52
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldo4;

    .line 53
    move-object v4, v3

    check-cast v4, Ltm4;

    .line 54
    iget-boolean v4, v4, Ltm4;->n:Z

    if-nez v4, :cond_19

    .line 55
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_18

    const/16 v5, 0xa

    goto :goto_17

    :cond_18
    add-int v5, v4, v4

    .line 56
    :goto_17
    invoke-interface {v3, v5}, Ldo4;->F(I)Ldo4;

    move-result-object v3

    .line 57
    invoke-virtual {v2, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_19
    move-object v6, v3

    .line 58
    invoke-virtual {v0, v11}, Luo4;->C(I)Lcp4;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v12, v2

    move v2, v15

    move/from16 v4, v20

    move-object/from16 v15, p1

    .line 59
    invoke-static/range {v1 .. v7}, Lvm4;->n(Lcp4;I[BIILdo4;Le91;)I

    move-result v4

    move v1, v2

    move-object/from16 v6, p6

    move v8, v11

    move-object v2, v15

    move/from16 v14, v18

    move/from16 v7, v30

    move v15, v1

    move-object v1, v12

    goto/16 :goto_0

    :cond_1a
    move/from16 v34, v15

    move-object v15, v1

    move/from16 v1, v34

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v26, v2

    move-object/from16 v33, v8

    move/from16 v32, v9

    move-object v8, v15

    move/from16 v9, v20

    move/from16 v15, v30

    move/from16 v20, v1

    :goto_18
    move/from16 v5, p4

    goto/16 :goto_41

    :cond_1b
    move v3, v15

    move-object v15, v1

    move v1, v3

    move/from16 v3, v20

    const/16 v5, 0x31

    const-string v21, "Protocol message had invalid UTF-8."

    const-string v31, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v4, v5, :cond_5e

    move/from16 v32, v9

    int-to-long v9, v12

    .line 60
    invoke-virtual {v2, v15, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldo4;

    .line 61
    move-object v12, v5

    check-cast v12, Ltm4;

    .line 62
    iget-boolean v12, v12, Ltm4;->n:Z

    if-nez v12, :cond_1c

    .line 63
    invoke-static {v5}, Lto4;->d(Ldo4;)Ldo4;

    move-result-object v5

    .line 64
    invoke-virtual {v2, v15, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1c
    move-object v12, v5

    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x3

    if-ne v7, v4, :cond_1e

    and-int/lit8 v4, v1, -0x8

    or-int/lit8 v6, v4, 0x4

    move-object v13, v2

    .line 65
    invoke-virtual {v0, v11}, Luo4;->C(I)Lcp4;

    move-result-object v2

    move v4, v1

    .line 66
    invoke-interface {v2}, Lcp4;->zza()Lrn4;

    move-result-object v1

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v9, v4

    move v4, v3

    move-object/from16 v3, p2

    .line 67
    invoke-static/range {v1 .. v7}, Lvm4;->k(Ljava/lang/Object;Lcp4;[BIIILe91;)I

    move-result v10

    move v14, v4

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    .line 68
    invoke-interface {v2, v4}, Lcp4;->h(Ljava/lang/Object;)V

    iput-object v4, v6, Le91;->d:Ljava/lang/Object;

    .line 69
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_19
    if-ge v10, v5, :cond_1d

    .line 70
    invoke-static {v3, v10, v6}, Lvm4;->a([BILe91;)I

    move-result v4

    iget v7, v6, Le91;->a:I

    if-ne v9, v7, :cond_1d

    move v6, v1

    .line 71
    invoke-interface {v2}, Lcp4;->zza()Lrn4;

    move-result-object v1

    move-object/from16 v7, p6

    .line 72
    invoke-static/range {v1 .. v7}, Lvm4;->k(Ljava/lang/Object;Lcp4;[BIIILe91;)I

    move-result v10

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    .line 73
    invoke-interface {v2, v4}, Lcp4;->h(Ljava/lang/Object;)V

    iput-object v4, v6, Le91;->d:Ljava/lang/Object;

    .line 74
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_1d
    move v2, v5

    move-object/from16 v33, v8

    move v1, v10

    move-object/from16 p3, v13

    move v4, v14

    move-object v8, v15

    move/from16 v15, v30

    const/16 v19, 0x0

    move-object v10, v6

    goto/16 :goto_39

    :cond_1e
    move-object/from16 v10, p6

    move v9, v1

    move-object/from16 p3, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v8, v15

    move/from16 v15, v30

    const/16 v19, 0x0

    move-object/from16 v3, p2

    move/from16 v2, p4

    goto/16 :goto_38

    :pswitch_d
    move/from16 v5, p4

    move-object/from16 v6, p6

    move v9, v1

    move-object v13, v2

    move v14, v3

    const/4 v1, 0x2

    move-object/from16 v3, p2

    if-ne v7, v1, :cond_23

    .line 75
    check-cast v12, Ljo4;

    .line 76
    invoke-static {v3, v14, v6}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v2, v6, Le91;->a:I

    add-int/2addr v2, v1

    :goto_1a
    if-ge v1, v2, :cond_1f

    .line 77
    invoke-static {v3, v1, v6}, Lvm4;->d([BILe91;)I

    move-result v1

    move-object/from16 v33, v8

    iget-wide v7, v6, Le91;->b:J

    .line 78
    invoke-static {v7, v8}, Lcn4;->k(J)J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Ljo4;->e(J)V

    move-object/from16 v8, v33

    goto :goto_1a

    :cond_1f
    move-object/from16 v33, v8

    if-ne v1, v2, :cond_22

    :cond_20
    :goto_1b
    move v2, v5

    move-object v10, v6

    move-object/from16 p3, v13

    move v4, v14

    move-object v8, v15

    move/from16 v15, v30

    :cond_21
    :goto_1c
    const/16 v19, 0x0

    goto/16 :goto_39

    .line 79
    :cond_22
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_23
    move-object/from16 v33, v8

    if-nez v7, :cond_24

    .line 80
    check-cast v12, Ljo4;

    .line 81
    invoke-static {v3, v14, v6}, Lvm4;->d([BILe91;)I

    move-result v1

    iget-wide v7, v6, Le91;->b:J

    .line 82
    invoke-static {v7, v8}, Lcn4;->k(J)J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Ljo4;->e(J)V

    :goto_1d
    if-ge v1, v5, :cond_20

    .line 83
    invoke-static {v3, v1, v6}, Lvm4;->a([BILe91;)I

    move-result v2

    iget v4, v6, Le91;->a:I

    if-ne v9, v4, :cond_20

    .line 84
    invoke-static {v3, v2, v6}, Lvm4;->d([BILe91;)I

    move-result v1

    iget-wide v7, v6, Le91;->b:J

    invoke-static {v7, v8}, Lcn4;->k(J)J

    move-result-wide v7

    .line 85
    invoke-virtual {v12, v7, v8}, Ljo4;->e(J)V

    goto :goto_1d

    :cond_24
    move v2, v5

    move-object v10, v6

    move-object/from16 p3, v13

    move v4, v14

    move-object v8, v15

    move/from16 v15, v30

    :cond_25
    :goto_1e
    const/16 v19, 0x0

    goto/16 :goto_38

    :pswitch_e
    move/from16 v5, p4

    move-object/from16 v6, p6

    move v9, v1

    move-object v13, v2

    move v14, v3

    move-object/from16 v33, v8

    const/4 v1, 0x2

    move-object/from16 v3, p2

    if-ne v7, v1, :cond_28

    .line 86
    check-cast v12, Lsn4;

    .line 87
    invoke-static {v3, v14, v6}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v2, v6, Le91;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_26

    .line 88
    invoke-static {v3, v1, v6}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v4, v6, Le91;->a:I

    .line 89
    invoke-static {v4}, Lcn4;->j(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lsn4;->e(I)V

    goto :goto_1f

    :cond_26
    if-ne v1, v2, :cond_27

    goto :goto_1b

    .line 90
    :cond_27
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_28
    if-nez v7, :cond_24

    .line 91
    check-cast v12, Lsn4;

    .line 92
    invoke-static {v3, v14, v6}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v2, v6, Le91;->a:I

    .line 93
    invoke-static {v2}, Lcn4;->j(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lsn4;->e(I)V

    :goto_20
    if-ge v1, v5, :cond_20

    .line 94
    invoke-static {v3, v1, v6}, Lvm4;->a([BILe91;)I

    move-result v2

    iget v4, v6, Le91;->a:I

    if-ne v9, v4, :cond_20

    .line 95
    invoke-static {v3, v2, v6}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v2, v6, Le91;->a:I

    invoke-static {v2}, Lcn4;->j(I)I

    move-result v2

    .line 96
    invoke-virtual {v12, v2}, Lsn4;->e(I)V

    goto :goto_20

    :pswitch_f
    move/from16 v5, p4

    move-object/from16 v6, p6

    move v9, v1

    move-object v13, v2

    move v14, v3

    move-object/from16 v33, v8

    const/4 v1, 0x2

    move-object/from16 v3, p2

    if-ne v7, v1, :cond_29

    .line 97
    invoke-static {v3, v14, v12, v6}, Lvm4;->m([BILdo4;Le91;)I

    move-result v1

    move v7, v1

    move v8, v5

    move-object v5, v12

    move v12, v9

    move-object v9, v3

    :goto_21
    move-object v10, v6

    goto :goto_22

    :cond_29
    if-nez v7, :cond_2a

    move-object v2, v3

    move v4, v5

    move v1, v9

    move-object v5, v12

    move v3, v14

    .line 98
    invoke-static/range {v1 .. v6}, Lvm4;->l(I[BIILdo4;Le91;)I

    move-result v7

    move v12, v1

    move-object v9, v2

    move v8, v4

    goto :goto_21

    .line 99
    :goto_22
    invoke-virtual {v0, v11}, Luo4;->E(I)Lmm4;

    move-result-object v4

    move-object v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Luo4;->j:Lbx3;

    move-object v1, v15

    move/from16 v2, v30

    .line 100
    invoke-static/range {v1 .. v6}, Ldp4;->c(Ljava/lang/Object;ILdo4;Lmm4;Ljava/lang/Object;Lbx3;)Ljava/lang/Object;

    move v15, v2

    move v1, v7

    move v2, v8

    move-object v3, v9

    move v9, v12

    move-object/from16 p3, v13

    move v4, v14

    const/16 v19, 0x0

    :goto_23
    move-object/from16 v8, p1

    goto/16 :goto_39

    :cond_2a
    move v12, v9

    move/from16 v15, v30

    move-object/from16 v8, p1

    move v2, v5

    move-object v10, v6

    :goto_24
    move-object/from16 p3, v13

    move v4, v14

    goto/16 :goto_1e

    :pswitch_10
    move-object/from16 v9, p2

    move-object/from16 v10, p6

    move-object v13, v2

    move v14, v3

    move-object/from16 v33, v8

    move-object v5, v12

    move/from16 v15, v30

    move/from16 v8, p4

    move v12, v1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_32

    .line 101
    invoke-static {v9, v14, v10}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v2, v10, Le91;->a:I

    if-ltz v2, :cond_31

    .line 102
    array-length v3, v9

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_30

    if-nez v2, :cond_2b

    .line 103
    sget-object v2, Lzm4;->o:Lym4;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 104
    :cond_2b
    invoke-static {v9, v1, v2}, Lzm4;->i([BII)Lym4;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/2addr v1, v2

    :goto_26
    if-ge v1, v8, :cond_2f

    .line 105
    invoke-static {v9, v1, v10}, Lvm4;->a([BILe91;)I

    move-result v2

    iget v3, v10, Le91;->a:I

    if-ne v12, v3, :cond_2f

    .line 106
    invoke-static {v9, v2, v10}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v2, v10, Le91;->a:I

    if-ltz v2, :cond_2e

    .line 107
    array-length v3, v9

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_2d

    if-nez v2, :cond_2c

    .line 108
    sget-object v2, Lzm4;->o:Lym4;

    .line 109
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 110
    :cond_2c
    invoke-static {v9, v1, v2}, Lzm4;->i([BII)Lym4;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 111
    :cond_2d
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_2e
    const/16 v19, 0x0

    .line 112
    invoke-static/range {v26 .. v26}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_2f
    const/16 v19, 0x0

    move v2, v8

    move-object v3, v9

    move v9, v12

    move-object/from16 p3, v13

    move v4, v14

    goto :goto_23

    :cond_30
    const/16 v19, 0x0

    .line 113
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_31
    const/16 v19, 0x0

    .line 114
    invoke-static/range {v26 .. v26}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_32
    move v2, v8

    move-object v3, v9

    move v9, v12

    move-object/from16 p3, v13

    move v4, v14

    const/16 v19, 0x0

    move-object/from16 v8, p1

    goto/16 :goto_38

    :pswitch_11
    move-object/from16 v9, p2

    move-object/from16 v10, p6

    move-object v13, v2

    move v14, v3

    move-object/from16 v33, v8

    move-object v5, v12

    move/from16 v15, v30

    move/from16 v8, p4

    move v12, v1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_33

    .line 115
    invoke-virtual {v0, v11}, Luo4;->C(I)Lcp4;

    move-result-object v1

    move-object v6, v5

    move v5, v8

    move-object v3, v9

    move-object v7, v10

    move v2, v12

    move v4, v14

    move-object/from16 v8, p1

    .line 116
    invoke-static/range {v1 .. v7}, Lvm4;->n(Lcp4;I[BIILdo4;Le91;)I

    move-result v1

    move v9, v2

    move v2, v5

    :goto_27
    move-object/from16 p3, v13

    goto/16 :goto_1c

    :cond_33
    move v5, v8

    move-object/from16 v8, p1

    move v2, v5

    move-object v3, v9

    move v9, v12

    goto/16 :goto_24

    :pswitch_12
    move/from16 v5, p4

    move-object v13, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v14, v12

    move-object v8, v15

    move/from16 v15, v30

    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move v12, v1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_40

    const-wide/32 v24, 0x20000000

    and-long v9, v9, v24

    cmp-long v1, v9, v22

    if-nez v1, :cond_39

    .line 117
    invoke-static {v3, v4, v2}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v7, v2, Le91;->a:I

    if-ltz v7, :cond_38

    if-nez v7, :cond_34

    .line 118
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 119
    :cond_34
    new-instance v9, Ljava/lang/String;

    .line 120
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v7, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 121
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/2addr v1, v7

    :goto_29
    if-ge v1, v5, :cond_37

    .line 122
    invoke-static {v3, v1, v2}, Lvm4;->a([BILe91;)I

    move-result v7

    iget v9, v2, Le91;->a:I

    if-ne v12, v9, :cond_37

    .line 123
    invoke-static {v3, v7, v2}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v7, v2, Le91;->a:I

    if-ltz v7, :cond_36

    if-nez v7, :cond_35

    .line 124
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_35
    new-instance v9, Ljava/lang/String;

    .line 125
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v7, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 126
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 127
    :cond_36
    invoke-static/range {v26 .. v26}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_37
    const/16 v19, 0x0

    move-object v10, v2

    move v2, v5

    move v9, v12

    move-object/from16 p3, v13

    goto/16 :goto_39

    :cond_38
    const/16 v19, 0x0

    .line 128
    invoke-static/range {v26 .. v26}, Lq73;->t(Ljava/lang/String;)V

    return v19

    .line 129
    :cond_39
    invoke-static {v3, v4, v2}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v7, v2, Le91;->a:I

    if-ltz v7, :cond_3f

    if-nez v7, :cond_3a

    .line 130
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3a
    add-int v9, v1, v7

    .line 131
    invoke-static {v3, v1, v9}, Ltp4;->a([BII)Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 132
    new-instance v10, Ljava/lang/String;

    move/from16 p3, v9

    .line 133
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v1, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 134
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    move/from16 v1, p3

    :goto_2b
    if-ge v1, v5, :cond_37

    .line 135
    invoke-static {v3, v1, v2}, Lvm4;->a([BILe91;)I

    move-result v7

    iget v9, v2, Le91;->a:I

    if-ne v12, v9, :cond_37

    .line 136
    invoke-static {v3, v7, v2}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v7, v2, Le91;->a:I

    if-ltz v7, :cond_3d

    if-nez v7, :cond_3b

    .line 137
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3b
    add-int v9, v1, v7

    .line 138
    invoke-static {v3, v1, v9}, Ltp4;->a([BII)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 139
    new-instance v10, Ljava/lang/String;

    move/from16 p3, v9

    .line 140
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v1, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 141
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 142
    :cond_3c
    invoke-static/range {v21 .. v21}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_3d
    const/16 v19, 0x0

    .line 143
    invoke-static/range {v26 .. v26}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_3e
    const/16 v19, 0x0

    .line 144
    invoke-static/range {v21 .. v21}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_3f
    const/16 v19, 0x0

    .line 145
    invoke-static/range {v26 .. v26}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_40
    const/16 v19, 0x0

    :goto_2c
    move-object v10, v2

    move v2, v5

    move v9, v12

    move-object/from16 p3, v13

    goto/16 :goto_38

    :pswitch_13
    move/from16 v5, p4

    move v12, v1

    move-object v13, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v8, v15

    move/from16 v15, v30

    const/4 v1, 0x2

    const/16 v19, 0x0

    move-object/from16 v3, p2

    move-object/from16 v2, p6

    if-eq v7, v1, :cond_42

    if-eqz v7, :cond_41

    goto :goto_2c

    .line 146
    :cond_41
    invoke-static {}, Lmk0;->b()V

    return v19

    .line 147
    :cond_42
    invoke-static {}, Lmk0;->b()V

    return v19

    :pswitch_14
    move/from16 v5, p4

    move-object v13, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v14, v12

    move-object v8, v15

    move/from16 v15, v30

    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move v12, v1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_49

    .line 148
    move-object v1, v14

    check-cast v1, Lsn4;

    .line 149
    invoke-static {v3, v4, v2}, Lvm4;->a([BILe91;)I

    move-result v6

    iget v7, v2, Le91;->a:I

    add-int v9, v6, v7

    .line 150
    array-length v10, v3

    if-gt v9, v10, :cond_48

    .line 151
    iget v10, v1, Lsn4;->p:I

    .line 152
    div-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v10

    .line 153
    iget-object v10, v1, Lsn4;->o:[I

    array-length v10, v10

    if-gt v7, v10, :cond_43

    goto :goto_2e

    :cond_43
    if-eqz v10, :cond_45

    :goto_2d
    if-ge v10, v7, :cond_44

    mul-int/lit8 v10, v10, 0x3

    const/16 v29, 0x2

    .line 154
    div-int/lit8 v10, v10, 0x2

    const/16 v28, 0x1

    add-int/lit8 v10, v10, 0x1

    const/16 v14, 0xa

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_2d

    .line 155
    :cond_44
    iget-object v7, v1, Lsn4;->o:[I

    .line 156
    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    iput-object v7, v1, Lsn4;->o:[I

    goto :goto_2e

    :cond_45
    const/16 v14, 0xa

    .line 157
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, v1, Lsn4;->o:[I

    :goto_2e
    if-ge v6, v9, :cond_46

    .line 158
    invoke-static {v6, v3}, Lvm4;->f(I[B)I

    move-result v7

    invoke-virtual {v1, v7}, Lsn4;->e(I)V

    add-int/lit8 v6, v6, 0x4

    goto :goto_2e

    :cond_46
    if-ne v6, v9, :cond_47

    move-object v10, v2

    move v2, v5

    move v1, v6

    :goto_2f
    move v9, v12

    goto/16 :goto_27

    .line 159
    :cond_47
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_48
    const/16 v19, 0x0

    .line 160
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_49
    const/4 v6, 0x5

    if-ne v7, v6, :cond_4b

    add-int/lit8 v1, v4, 0x4

    .line 161
    move-object v6, v14

    check-cast v6, Lsn4;

    .line 162
    invoke-static {v4, v3}, Lvm4;->f(I[B)I

    move-result v7

    invoke-virtual {v6, v7}, Lsn4;->e(I)V

    :goto_30
    if-ge v1, v5, :cond_4a

    .line 163
    invoke-static {v3, v1, v2}, Lvm4;->a([BILe91;)I

    move-result v7

    iget v9, v2, Le91;->a:I

    if-ne v12, v9, :cond_4a

    .line 164
    invoke-static {v7, v3}, Lvm4;->f(I[B)I

    move-result v1

    invoke-virtual {v6, v1}, Lsn4;->e(I)V

    add-int/lit8 v1, v7, 0x4

    goto :goto_30

    :cond_4a
    move-object v10, v2

    move v2, v5

    goto :goto_2f

    :cond_4b
    move-object v10, v2

    move v2, v5

    move v9, v12

    move-object/from16 p3, v13

    goto/16 :goto_1e

    :pswitch_15
    move/from16 v5, p4

    move-object v13, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v14, v12

    move-object v8, v15

    move/from16 v15, v30

    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move v12, v1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_52

    .line 165
    move-object v1, v14

    check-cast v1, Ljo4;

    .line 166
    invoke-static {v3, v4, v2}, Lvm4;->a([BILe91;)I

    move-result v6

    iget v7, v2, Le91;->a:I

    add-int v9, v6, v7

    .line 167
    array-length v10, v3

    if-gt v9, v10, :cond_51

    .line 168
    iget v10, v1, Ljo4;->p:I

    .line 169
    div-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v10

    .line 170
    iget-object v10, v1, Ljo4;->o:[J

    array-length v10, v10

    if-gt v7, v10, :cond_4c

    goto :goto_32

    :cond_4c
    if-eqz v10, :cond_4e

    :goto_31
    if-ge v10, v7, :cond_4d

    mul-int/lit8 v10, v10, 0x3

    const/16 v29, 0x2

    .line 171
    div-int/lit8 v10, v10, 0x2

    const/16 v28, 0x1

    add-int/lit8 v10, v10, 0x1

    const/16 v14, 0xa

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_31

    .line 172
    :cond_4d
    iget-object v7, v1, Ljo4;->o:[J

    .line 173
    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    iput-object v7, v1, Ljo4;->o:[J

    goto :goto_32

    :cond_4e
    const/16 v14, 0xa

    .line 174
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [J

    iput-object v7, v1, Ljo4;->o:[J

    :goto_32
    if-ge v6, v9, :cond_4f

    move-object/from16 p3, v13

    .line 175
    invoke-static {v6, v3}, Lvm4;->g(I[B)J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Ljo4;->e(J)V

    add-int/lit8 v6, v6, 0x8

    move-object/from16 v13, p3

    goto :goto_32

    :cond_4f
    move-object/from16 p3, v13

    if-ne v6, v9, :cond_50

    move-object v10, v2

    move v2, v5

    move v1, v6

    :goto_33
    move v9, v12

    goto/16 :goto_1c

    .line 176
    :cond_50
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_51
    const/16 v19, 0x0

    .line 177
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_52
    move-object/from16 p3, v13

    const/4 v6, 0x1

    if-ne v7, v6, :cond_54

    add-int/lit8 v1, v4, 0x8

    .line 178
    move-object v6, v14

    check-cast v6, Ljo4;

    .line 179
    invoke-static {v4, v3}, Lvm4;->g(I[B)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljo4;->e(J)V

    :goto_34
    if-ge v1, v5, :cond_53

    .line 180
    invoke-static {v3, v1, v2}, Lvm4;->a([BILe91;)I

    move-result v7

    iget v9, v2, Le91;->a:I

    if-ne v12, v9, :cond_53

    .line 181
    invoke-static {v7, v3}, Lvm4;->g(I[B)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljo4;->e(J)V

    add-int/lit8 v1, v7, 0x8

    goto :goto_34

    :cond_53
    :goto_35
    move-object v10, v2

    move v2, v5

    goto :goto_33

    :cond_54
    move-object v10, v2

    move v2, v5

    move v9, v12

    goto/16 :goto_1e

    :pswitch_16
    move/from16 v5, p4

    move-object/from16 p3, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v14, v12

    move-object v8, v15

    move/from16 v15, v30

    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move v12, v1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_55

    .line 182
    invoke-static {v3, v4, v14, v2}, Lvm4;->m([BILdo4;Le91;)I

    move-result v1

    goto :goto_35

    :cond_55
    if-nez v7, :cond_54

    move-object v6, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v1, v12

    move-object v5, v14

    .line 183
    invoke-static/range {v1 .. v6}, Lvm4;->l(I[BIILdo4;Le91;)I

    move-result v5

    move v9, v3

    move-object v3, v2

    move v2, v4

    move v4, v9

    move v9, v1

    move-object v10, v6

    move v1, v5

    goto/16 :goto_1c

    :pswitch_17
    move-object/from16 v10, p6

    move v9, v1

    move-object/from16 p3, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v5, v12

    move-object v8, v15

    move/from16 v15, v30

    const/4 v1, 0x2

    move-object/from16 v3, p2

    move/from16 v2, p4

    if-ne v7, v1, :cond_58

    .line 184
    move-object v12, v5

    check-cast v12, Ljo4;

    .line 185
    invoke-static {v3, v4, v10}, Lvm4;->a([BILe91;)I

    move-result v1

    iget v5, v10, Le91;->a:I

    add-int/2addr v5, v1

    :goto_36
    if-ge v1, v5, :cond_56

    .line 186
    invoke-static {v3, v1, v10}, Lvm4;->d([BILe91;)I

    move-result v1

    iget-wide v6, v10, Le91;->b:J

    .line 187
    invoke-virtual {v12, v6, v7}, Ljo4;->e(J)V

    goto :goto_36

    :cond_56
    if-ne v1, v5, :cond_57

    goto/16 :goto_1c

    .line 188
    :cond_57
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_58
    if-nez v7, :cond_25

    .line 189
    move-object v12, v5

    check-cast v12, Ljo4;

    .line 190
    invoke-static {v3, v4, v10}, Lvm4;->d([BILe91;)I

    move-result v1

    iget-wide v5, v10, Le91;->b:J

    .line 191
    invoke-virtual {v12, v5, v6}, Ljo4;->e(J)V

    :goto_37
    if-ge v1, v2, :cond_21

    .line 192
    invoke-static {v3, v1, v10}, Lvm4;->a([BILe91;)I

    move-result v5

    iget v6, v10, Le91;->a:I

    if-ne v9, v6, :cond_21

    .line 193
    invoke-static {v3, v5, v10}, Lvm4;->d([BILe91;)I

    move-result v1

    iget-wide v5, v10, Le91;->b:J

    .line 194
    invoke-virtual {v12, v5, v6}, Ljo4;->e(J)V

    goto :goto_37

    :pswitch_18
    move-object/from16 v10, p6

    move v9, v1

    move-object/from16 p3, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v8, v15

    move/from16 v15, v30

    const/4 v1, 0x2

    move-object/from16 v3, p2

    move/from16 v2, p4

    if-eq v7, v1, :cond_5a

    const/4 v6, 0x5

    if-eq v7, v6, :cond_59

    goto/16 :goto_1e

    .line 195
    :cond_59
    invoke-static {}, Lmk0;->b()V

    const/16 v19, 0x0

    return v19

    :cond_5a
    const/16 v19, 0x0

    .line 196
    invoke-static {}, Lmk0;->b()V

    return v19

    :pswitch_19
    move-object/from16 v10, p6

    move v9, v1

    move-object/from16 p3, v2

    move v4, v3

    move-object/from16 v33, v8

    move-object v8, v15

    move/from16 v15, v30

    const/4 v1, 0x2

    const/16 v19, 0x0

    move-object/from16 v3, p2

    move/from16 v2, p4

    if-eq v7, v1, :cond_5d

    const/4 v6, 0x1

    if-eq v7, v6, :cond_5c

    :goto_38
    move v1, v4

    :goto_39
    if-eq v1, v4, :cond_5b

    move v4, v1

    move v5, v2

    move-object v2, v8

    move-object v6, v10

    move v8, v11

    move v7, v15

    move/from16 v14, v18

    move-object/from16 v1, p3

    move v15, v9

    :goto_3a
    move/from16 v9, v32

    goto/16 :goto_0

    :cond_5b
    move/from16 v7, p5

    move v13, v1

    move-object v4, v10

    move/from16 v20, v11

    move/from16 v14, v18

    move-object/from16 v10, v33

    move v11, v9

    move-object/from16 v9, p3

    goto/16 :goto_4d

    .line 197
    :cond_5c
    invoke-static {}, Lmk0;->b()V

    return v19

    .line 198
    :cond_5d
    invoke-static {}, Lmk0;->b()V

    return v19

    :cond_5e
    move-object/from16 v10, p6

    move v5, v3

    move-object/from16 v33, v8

    move/from16 v32, v9

    move-object v8, v15

    move/from16 v15, v30

    move-object/from16 v3, p2

    move v9, v1

    move-object v1, v2

    const/16 v2, 0x32

    if-ne v4, v2, :cond_6a

    const/4 v2, 0x2

    if-ne v7, v2, :cond_69

    .line 199
    invoke-virtual {v0, v11}, Luo4;->D(I)Ljava/lang/Object;

    move-result-object v2

    .line 200
    invoke-virtual {v1, v8, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 201
    move-object v7, v4

    check-cast v7, Llo4;

    .line 202
    iget-boolean v7, v7, Llo4;->n:Z

    if-nez v7, :cond_5f

    .line 203
    sget-object v7, Llo4;->o:Llo4;

    .line 204
    invoke-virtual {v7}, Llo4;->a()Llo4;

    move-result-object v7

    .line 205
    invoke-static {v7, v4}, Lls3;->g(Ljava/lang/Object;Ljava/lang/Object;)Llo4;

    .line 206
    invoke-virtual {v1, v8, v13, v14, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v7

    .line 207
    :cond_5f
    check-cast v2, Lko4;

    .line 208
    iget-object v7, v2, Lko4;->a:Lui3;

    .line 209
    move-object v12, v4

    check-cast v12, Llo4;

    .line 210
    invoke-static {v3, v5, v10}, Lvm4;->a([BILe91;)I

    move-result v2

    iget v4, v10, Le91;->a:I

    if-ltz v4, :cond_68

    sub-int v13, p4, v2

    if-gt v4, v13, :cond_68

    add-int v13, v2, v4

    .line 211
    iget-object v14, v7, Lui3;->q:Ljava/lang/Object;

    move-object v4, v14

    :goto_3b
    if-ge v2, v13, :cond_65

    move-object/from16 v20, v1

    add-int/lit8 v1, v2, 0x1

    .line 212
    aget-byte v2, v3, v2

    if-gez v2, :cond_60

    .line 213
    invoke-static {v2, v3, v1, v10}, Lvm4;->c(I[BILe91;)I

    move-result v1

    iget v2, v10, Le91;->a:I

    :cond_60
    move/from16 v34, v2

    move v2, v1

    move/from16 v1, v34

    move/from16 p3, v2

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v3, v1, 0x7

    move-object/from16 v21, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_63

    const/4 v4, 0x2

    if-eq v2, v4, :cond_61

    move-object/from16 v3, p2

    move/from16 v2, p3

    move-object v4, v10

    move-object/from16 v26, v20

    move-object v10, v6

    move/from16 v20, v9

    move-object/from16 v6, v21

    move v9, v5

    move/from16 v5, p4

    goto/16 :goto_3f

    .line 214
    :cond_61
    iget-object v2, v7, Lui3;->p:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lup4;

    .line 215
    iget v2, v4, Lup4;->o:I

    if-ne v3, v2, :cond_62

    move v3, v5

    .line 216
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, v10

    move-object v10, v6

    move-object v6, v1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v26, v20

    move/from16 v20, v9

    move v9, v3

    move/from16 v3, p4

    .line 217
    invoke-static/range {v1 .. v6}, Luo4;->w([BIILup4;Ljava/lang/Class;Le91;)I

    move-result v2

    iget-object v4, v6, Le91;->d:Ljava/lang/Object;

    move-object v1, v10

    move-object v10, v6

    move-object v6, v1

    move-object/from16 v3, p2

    :goto_3c
    move v5, v9

    move/from16 v9, v20

    :goto_3d
    move-object/from16 v1, v26

    goto :goto_3b

    :cond_62
    move-object/from16 v26, v10

    move-object v10, v6

    move-object/from16 v6, v26

    move-object/from16 v26, v20

    move/from16 v20, v9

    move v9, v5

    move-object/from16 v3, p2

    move/from16 v2, p3

    :goto_3e
    move/from16 v5, p4

    move-object v4, v6

    move-object/from16 v6, v21

    goto :goto_3f

    :cond_63
    move-object v2, v10

    move-object v10, v6

    move-object v6, v2

    move/from16 v2, p3

    move-object/from16 v26, v20

    move/from16 v20, v9

    move v9, v5

    iget-object v4, v7, Lui3;->o:Ljava/lang/Object;

    check-cast v4, Lup4;

    .line 218
    iget v5, v4, Lup4;->o:I

    if-ne v3, v5, :cond_64

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    .line 219
    invoke-static/range {v1 .. v6}, Luo4;->w([BIILup4;Ljava/lang/Class;Le91;)I

    move-result v2

    move v5, v3

    move-object v4, v6

    move-object v3, v1

    iget-object v6, v4, Le91;->d:Ljava/lang/Object;

    move-object v10, v4

    move v5, v9

    move/from16 v9, v20

    move-object/from16 v4, v21

    goto :goto_3d

    :cond_64
    move-object/from16 v3, p2

    goto :goto_3e

    .line 220
    :goto_3f
    invoke-static {v1, v3, v2, v5, v4}, Lvm4;->p(I[BIILe91;)I

    move-result v2

    move-object v1, v10

    move-object v10, v4

    move-object v4, v6

    move-object v6, v1

    goto :goto_3c

    :cond_65
    move-object/from16 v20, v6

    move-object v6, v4

    move-object v4, v10

    move-object/from16 v10, v20

    move-object/from16 v26, v1

    move/from16 v20, v9

    move v9, v5

    move/from16 v5, p4

    if-ne v2, v13, :cond_67

    .line 221
    invoke-virtual {v12, v10, v6}, Llo4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v13, v9, :cond_66

    move-object v6, v4

    move-object v2, v8

    move v8, v11

    move v4, v13

    move v7, v15

    move/from16 v14, v18

    move/from16 v15, v20

    move-object/from16 v1, v26

    goto/16 :goto_3a

    :cond_66
    move/from16 v7, v20

    move/from16 v20, v11

    move v11, v7

    move/from16 v7, p5

    :goto_40
    move/from16 v14, v18

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    goto/16 :goto_4d

    .line 222
    :cond_67
    invoke-static/range {v16 .. v16}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_68
    const/16 v19, 0x0

    .line 223
    invoke-static/range {v31 .. v31}, Lq73;->t(Ljava/lang/String;)V

    return v19

    :cond_69
    move-object/from16 v26, v1

    move/from16 v20, v9

    move-object v4, v10

    move v9, v5

    goto/16 :goto_18

    :goto_41
    move/from16 v7, v20

    move/from16 v20, v11

    move v11, v7

    move/from16 v7, p5

    move v13, v9

    goto :goto_40

    :cond_6a
    move-object/from16 v26, v1

    move/from16 v20, v9

    move v9, v5

    move/from16 v5, p4

    add-int/lit8 v1, v11, 0x2

    .line 224
    aget v1, v27, v1

    const v17, 0xfffff

    and-int v1, v1, v17

    int-to-long v1, v1

    packed-switch v4, :pswitch_data_2

    :cond_6b
    move/from16 v4, v20

    move/from16 v20, v11

    move v11, v4

    move-object/from16 v4, p6

    move v12, v9

    move-object/from16 v9, v26

    :goto_42
    move-object/from16 v10, v33

    goto/16 :goto_4a

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v7, v4, :cond_6b

    and-int/lit8 v1, v20, -0x8

    or-int/lit8 v6, v1, 0x4

    .line 225
    invoke-virtual {v0, v15, v11, v8}, Luo4;->H(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v11}, Luo4;->C(I)Lcp4;

    move-result-object v2

    move-object/from16 v7, p6

    move v4, v9

    .line 227
    invoke-static/range {v1 .. v7}, Lvm4;->k(Ljava/lang/Object;Lcp4;[BIIILe91;)I

    move-result v2

    move-object v6, v7

    .line 228
    invoke-virtual {v0, v15, v11, v8, v1}, Luo4;->I(IILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v0, v20

    move/from16 v20, v11

    move v11, v0

    move v0, v2

    move v12, v4

    move-object v4, v6

    move-object/from16 v9, v26

    :goto_43
    move-object/from16 v10, v33

    goto/16 :goto_4b

    :pswitch_1b
    move-object/from16 v6, p6

    move v4, v9

    if-nez v7, :cond_6c

    .line 229
    invoke-static {v3, v4, v6}, Lvm4;->d([BILe91;)I

    move-result v5

    iget-wide v9, v6, Le91;->b:J

    .line 230
    invoke-static {v9, v10}, Lcn4;->k(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v9, v26

    invoke-virtual {v9, v8, v13, v14, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_44
    move/from16 v0, v20

    move/from16 v20, v11

    move v11, v0

    move v12, v4

    move v0, v5

    move-object v4, v6

    goto :goto_43

    :cond_6c
    move-object/from16 v9, v26

    :cond_6d
    move/from16 v10, v20

    move/from16 v20, v11

    move v11, v10

    move v12, v4

    move-object v4, v6

    goto :goto_42

    :pswitch_1c
    move-object/from16 v6, p6

    move v4, v9

    move-object/from16 v9, v26

    if-nez v7, :cond_6d

    .line 232
    invoke-static {v3, v4, v6}, Lvm4;->a([BILe91;)I

    move-result v5

    iget v7, v6, Le91;->a:I

    .line 233
    invoke-static {v7}, Lcn4;->j(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v8, v13, v14, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 234
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_44

    :pswitch_1d
    move-object/from16 v6, p6

    move v4, v9

    move-object/from16 v9, v26

    if-nez v7, :cond_71

    .line 235
    invoke-static {v3, v4, v6}, Lvm4;->a([BILe91;)I

    move-result v5

    iget v7, v6, Le91;->a:I

    .line 236
    invoke-virtual {v0, v11}, Luo4;->E(I)Lmm4;

    move-result-object v10

    if-eqz v10, :cond_6e

    invoke-virtual {v10, v7}, Lmm4;->a(I)Z

    move-result v10

    if-eqz v10, :cond_6f

    :cond_6e
    move/from16 v12, v20

    move-object/from16 v10, v33

    goto :goto_45

    .line 237
    :cond_6f
    move-object v1, v8

    check-cast v1, Lrn4;

    iget-object v2, v1, Lrn4;->zzc:Llp4;

    move-object/from16 v10, v33

    if-ne v2, v10, :cond_70

    invoke-static {}, Llp4;->a()Llp4;

    move-result-object v2

    .line 238
    iput-object v2, v1, Lrn4;->zzc:Llp4;

    :cond_70
    int-to-long v12, v7

    .line 239
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move/from16 v12, v20

    invoke-virtual {v2, v12, v1}, Llp4;->d(ILjava/lang/Object;)V

    goto :goto_46

    .line 240
    :goto_45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v8, v13, v14, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 241
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_46
    move v0, v5

    move/from16 v20, v11

    move v11, v12

    move v12, v4

    move-object v4, v6

    goto/16 :goto_4b

    :cond_71
    move-object/from16 v10, v33

    move/from16 v12, v20

    :cond_72
    move/from16 v20, v11

    move v11, v12

    move v12, v4

    move-object v4, v6

    goto/16 :goto_4a

    :pswitch_1e
    move-object/from16 v6, p6

    move v4, v9

    move/from16 v12, v20

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    const/4 v5, 0x2

    if-ne v7, v5, :cond_72

    .line 242
    invoke-static {v3, v4, v6}, Lvm4;->i([BILe91;)I

    move-result v5

    iget-object v7, v6, Le91;->d:Ljava/lang/Object;

    .line 243
    invoke-virtual {v9, v8, v13, v14, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 244
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_46

    :pswitch_1f
    move-object/from16 v6, p6

    move v4, v9

    move/from16 v12, v20

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    const/4 v5, 0x2

    if-ne v7, v5, :cond_73

    .line 245
    invoke-virtual {v0, v15, v11, v8}, Luo4;->H(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v11}, Luo4;->C(I)Lcp4;

    move-result-object v2

    move/from16 v5, p4

    .line 247
    invoke-static/range {v1 .. v6}, Lvm4;->j(Ljava/lang/Object;Lcp4;[BIILe91;)I

    move-result v2

    move v14, v4

    move-object v4, v6

    .line 248
    invoke-virtual {v0, v15, v11, v8, v1}, Luo4;->I(IILjava/lang/Object;Ljava/lang/Object;)V

    move v0, v2

    move/from16 v20, v11

    move v11, v12

    move v12, v14

    goto/16 :goto_4b

    :cond_73
    move v14, v4

    move-object v4, v6

    move/from16 v20, v11

    move v11, v12

    move v12, v14

    goto/16 :goto_4a

    :pswitch_20
    move/from16 p3, v20

    move/from16 v20, v11

    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v12

    move-object/from16 v10, v33

    const/4 v5, 0x2

    move v12, v9

    move-object/from16 v9, v26

    if-ne v7, v5, :cond_78

    .line 249
    invoke-static {v3, v12, v4}, Lvm4;->a([BILe91;)I

    move-result v5

    iget v7, v4, Le91;->a:I

    if-nez v7, :cond_74

    .line 250
    invoke-virtual {v9, v8, v13, v14, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_48

    :cond_74
    add-int v6, v5, v7

    and-int v22, p3, v24

    if-eqz v22, :cond_75

    .line 251
    invoke-static {v3, v5, v6}, Ltp4;->a([BII)Z

    move-result v22

    if-eqz v22, :cond_76

    :cond_75
    move/from16 p3, v6

    goto :goto_47

    .line 252
    :cond_76
    invoke-static/range {v21 .. v21}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :goto_47
    new-instance v6, Ljava/lang/String;

    .line 253
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v5, v7, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 254
    invoke-virtual {v9, v8, v13, v14, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, p3

    .line 255
    :goto_48
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v5

    goto/16 :goto_4b

    :pswitch_21
    move/from16 v4, v20

    move/from16 v20, v11

    move v11, v4

    move-object/from16 v4, p6

    move v12, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    if-nez v7, :cond_78

    .line 256
    invoke-static {v3, v12, v4}, Lvm4;->d([BILe91;)I

    move-result v0

    iget-wide v5, v4, Le91;->b:J

    cmp-long v5, v5, v22

    if-eqz v5, :cond_77

    const/4 v7, 0x1

    goto :goto_49

    :cond_77
    const/4 v7, 0x0

    .line 257
    :goto_49
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v9, v8, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 258
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_22
    move/from16 v4, v20

    move/from16 v20, v11

    move v11, v4

    move-object/from16 v4, p6

    move v12, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    const/4 v6, 0x5

    if-ne v7, v6, :cond_78

    add-int/lit8 v0, v12, 0x4

    .line 259
    invoke-static {v12, v3}, Lvm4;->f(I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v8, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 260
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_23
    move/from16 v4, v20

    move/from16 v20, v11

    move v11, v4

    move-object/from16 v4, p6

    move v12, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    const/4 v6, 0x1

    if-ne v7, v6, :cond_78

    add-int/lit8 v0, v12, 0x8

    .line 261
    invoke-static {v12, v3}, Lvm4;->g(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v8, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 262
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_24
    move/from16 v4, v20

    move/from16 v20, v11

    move v11, v4

    move-object/from16 v4, p6

    move v12, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    if-nez v7, :cond_78

    .line 263
    invoke-static {v3, v12, v4}, Lvm4;->a([BILe91;)I

    move-result v0

    iget v5, v4, Le91;->a:I

    .line 264
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v8, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 265
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_25
    move/from16 v4, v20

    move/from16 v20, v11

    move v11, v4

    move-object/from16 v4, p6

    move v12, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    if-nez v7, :cond_78

    .line 266
    invoke-static {v3, v12, v4}, Lvm4;->d([BILe91;)I

    move-result v0

    iget-wide v5, v4, Le91;->b:J

    .line 267
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v8, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 268
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :pswitch_26
    move/from16 v4, v20

    move/from16 v20, v11

    move v11, v4

    move-object/from16 v4, p6

    move v12, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    const/4 v6, 0x5

    if-ne v7, v6, :cond_78

    add-int/lit8 v0, v12, 0x4

    .line 269
    invoke-static {v12, v3}, Lvm4;->f(I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 270
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v9, v8, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 271
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :pswitch_27
    move/from16 v4, v20

    move/from16 v20, v11

    move v11, v4

    move-object/from16 v4, p6

    move v12, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    const/4 v6, 0x1

    if-ne v7, v6, :cond_78

    add-int/lit8 v0, v12, 0x8

    .line 272
    invoke-static {v12, v3}, Lvm4;->g(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 273
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v9, v8, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 274
    invoke-virtual {v9, v8, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :cond_78
    :goto_4a
    move v0, v12

    :goto_4b
    if-eq v0, v12, :cond_79

    move/from16 v5, p4

    move-object v6, v4

    move-object v2, v8

    move-object v1, v9

    move v7, v15

    move/from16 v14, v18

    move/from16 v8, v20

    move/from16 v9, v32

    move v4, v0

    move v15, v11

    :goto_4c
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_79
    move/from16 v7, p5

    move v13, v0

    move/from16 v14, v18

    :goto_4d
    if-ne v11, v7, :cond_7a

    if-eqz v7, :cond_7a

    move/from16 v6, p4

    move v15, v11

    :goto_4e
    move/from16 v0, v32

    const v12, 0xfffff

    goto :goto_4f

    .line 275
    :cond_7a
    move-object v0, v8

    check-cast v0, Lrn4;

    iget-object v1, v0, Lrn4;->zzc:Llp4;

    if-ne v1, v10, :cond_7b

    invoke-static {}, Llp4;->a()Llp4;

    move-result-object v1

    .line 276
    iput-object v1, v0, Lrn4;->zzc:Llp4;

    :cond_7b
    move-object v5, v1

    move-object v2, v3

    move-object v6, v4

    move v1, v11

    move v3, v13

    move/from16 v4, p4

    .line 277
    invoke-static/range {v1 .. v6}, Lvm4;->o(I[BIILlp4;Le91;)I

    move-result v0

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v5, v4

    move-object v2, v8

    move v7, v15

    move/from16 v8, v20

    move v4, v0

    move v15, v1

    move-object v1, v9

    move/from16 v9, v32

    goto :goto_4c

    :cond_7c
    move/from16 v7, p5

    move-object v8, v2

    move v6, v5

    move/from16 v32, v9

    move/from16 v18, v14

    move-object v9, v1

    move v13, v4

    goto :goto_4e

    :goto_4f
    if-eq v0, v12, :cond_7d

    int-to-long v0, v0

    .line 278
    invoke-virtual {v9, v8, v0, v1, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7d
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iget v2, v1, Luo4;->h:I

    move-object v3, v0

    move v9, v2

    :goto_50
    iget v0, v1, Luo4;->i:I

    if-ge v9, v0, :cond_7e

    iget-object v4, v1, Luo4;->j:Lbx3;

    .line 279
    iget-object v0, v1, Luo4;->g:[I

    aget v2, v0, v9

    move-object/from16 v5, p1

    move-object v0, v1

    move-object v1, v8

    .line 280
    invoke-virtual/range {v0 .. v5}, Luo4;->J(Ljava/lang/Object;ILjava/lang/Object;Lbx3;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Llp4;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p1

    move-object v1, v0

    goto :goto_50

    :cond_7e
    move-object v0, v1

    if-eqz v3, :cond_7f

    iget-object v0, v0, Luo4;->j:Lbx3;

    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    move-object/from16 v0, p1

    check-cast v0, Lrn4;

    iput-object v3, v0, Lrn4;->zzc:Llp4;

    :cond_7f
    if-nez v7, :cond_81

    if-ne v13, v6, :cond_80

    goto :goto_51

    .line 283
    :cond_80
    invoke-static/range {v16 .. v16}, Lq73;->t(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_81
    const/16 v19, 0x0

    if-gt v13, v6, :cond_82

    if-ne v15, v7, :cond_82

    :goto_51
    return v13

    .line 284
    :cond_82
    invoke-static/range {v16 .. v16}, Lq73;->t(Ljava/lang/String;)V

    return v19

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zza()Lrn4;
    .locals 0

    .line 1
    iget-object p0, p0, Luo4;->e:Lsm4;

    .line 2
    .line 3
    check-cast p0, Lrn4;

    .line 4
    .line 5
    invoke-virtual {p0}, Lrn4;->i()Lrn4;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
