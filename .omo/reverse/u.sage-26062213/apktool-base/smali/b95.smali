.class public final Lb95;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:Lb95;


# instance fields
.field public final a:Lpp1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb95;

    .line 2
    .line 3
    sget v1, Lpp1;->s:I

    .line 4
    .line 5
    sget-object v1, Lg53;->u:Lg53;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lb95;-><init>(Lpp1;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lb95;->b:Lb95;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lpp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb95;->a:Lpp1;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcn4;)Lb95;
    .locals 21

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn4;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_9

    .line 7
    .line 8
    sget v2, Lpp1;->s:I

    .line 9
    .line 10
    new-instance v2, Lop1;

    .line 11
    .line 12
    invoke-direct {v2}, Lop1;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-wide v6, v3

    .line 19
    :goto_0
    if-ge v5, v0, :cond_8

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lcn4;->H()J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    long-to-int v10, v8

    .line 26
    const/4 v11, 0x3

    .line 27
    ushr-long/2addr v8, v11

    .line 28
    cmp-long v12, v8, v3

    .line 29
    .line 30
    if-nez v12, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Lcn4;->w()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    move-wide v14, v3

    .line 37
    move-object/from16 v16, v8

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-long/2addr v8, v6

    .line 41
    const-wide v12, 0x1fffffffffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long v12, v8, v12

    .line 47
    .line 48
    if-gtz v12, :cond_7

    .line 49
    .line 50
    move-object/from16 v16, v1

    .line 51
    .line 52
    move-wide v14, v8

    .line 53
    :goto_1
    and-int/lit8 v8, v10, 0x7

    .line 54
    .line 55
    if-eqz v8, :cond_5

    .line 56
    .line 57
    const/4 v9, 0x1

    .line 58
    if-eq v8, v9, :cond_5

    .line 59
    .line 60
    const/4 v9, 0x2

    .line 61
    if-eq v8, v9, :cond_4

    .line 62
    .line 63
    if-eq v8, v11, :cond_3

    .line 64
    .line 65
    const/4 v9, 0x4

    .line 66
    if-eq v8, v9, :cond_2

    .line 67
    .line 68
    const/4 v9, 0x5

    .line 69
    if-ne v8, v9, :cond_1

    .line 70
    .line 71
    new-instance v13, La95;

    .line 72
    .line 73
    const-wide/16 v18, 0x0

    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Lcn4;->z()[B

    .line 76
    .line 77
    .line 78
    move-result-object v20

    .line 79
    move/from16 v17, v8

    .line 80
    .line 81
    invoke-direct/range {v13 .. v20}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    add-int/lit8 v0, v0, 0x17

    .line 96
    .line 97
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .line 99
    .line 100
    const-string v0, "Unrecognized flag type "

    .line 101
    .line 102
    invoke-static {v8, v0, v2}, Ldi0;->r(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lq73;->t(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_2
    new-instance v13, La95;

    .line 111
    .line 112
    const-wide/16 v18, 0x0

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcn4;->w()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v20

    .line 118
    move/from16 v17, v8

    .line 119
    .line 120
    invoke-direct/range {v13 .. v20}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move/from16 v17, v8

    .line 125
    .line 126
    new-instance v13, La95;

    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcn4;->o()D

    .line 129
    .line 130
    .line 131
    move-result-wide v8

    .line 132
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 133
    .line 134
    .line 135
    move-result-wide v18

    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    invoke-direct/range {v13 .. v20}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    move/from16 v17, v8

    .line 143
    .line 144
    new-instance v13, La95;

    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcn4;->H()J

    .line 147
    .line 148
    .line 149
    move-result-wide v18

    .line 150
    const/16 v20, 0x0

    .line 151
    .line 152
    invoke-direct/range {v13 .. v20}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    move/from16 v17, v8

    .line 157
    .line 158
    new-instance v13, La95;

    .line 159
    .line 160
    const-wide/16 v18, 0x0

    .line 161
    .line 162
    const/16 v20, 0x0

    .line 163
    .line 164
    invoke-direct/range {v13 .. v20}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    iget-wide v8, v13, La95;->n:J

    .line 168
    .line 169
    cmp-long v10, v8, v3

    .line 170
    .line 171
    if-eqz v10, :cond_6

    .line 172
    .line 173
    move-wide v6, v8

    .line 174
    :cond_6
    invoke-virtual {v2, v13}, Lcp1;->a(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_7
    const-string v0, "Flag name larger than max size"

    .line 182
    .line 183
    invoke-static {v0}, Lq73;->t(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v1

    .line 187
    :cond_8
    new-instance v0, Lb95;

    .line 188
    .line 189
    invoke-virtual {v2}, Lop1;->c()Lg53;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-direct {v0, v1}, Lb95;-><init>(Lpp1;)V

    .line 194
    .line 195
    .line 196
    return-object v0

    .line 197
    :cond_9
    const-string v0, "Negative number of flags"

    .line 198
    .line 199
    invoke-static {v0}, Lq73;->t(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lb95;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lb95;

    .line 6
    .line 7
    iget-object p1, p1, Lb95;->a:Lpp1;

    .line 8
    .line 9
    iget-object p0, p0, Lb95;->a:Lpp1;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lnp1;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lb95;->a:Lpp1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lnt1;->F(Ljava/util/Set;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
