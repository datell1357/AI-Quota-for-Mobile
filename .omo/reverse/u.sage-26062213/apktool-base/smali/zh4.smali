.class public final synthetic Lzh4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ld23;

.field public final synthetic p:Lw33;

.field public final synthetic q:Lw33;

.field public final synthetic r:Lw33;


# direct methods
.method public synthetic constructor <init>(Ld23;Lw33;Lw33;Lw33;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lzh4;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lzh4;->o:Ld23;

    .line 8
    .line 9
    iput-object p2, p0, Lzh4;->p:Lw33;

    .line 10
    .line 11
    iput-object p3, p0, Lzh4;->q:Lw33;

    .line 12
    .line 13
    iput-object p4, p0, Lzh4;->r:Lw33;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lw33;Ld23;Lw33;Lw33;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lzh4;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzh4;->p:Lw33;

    iput-object p2, p0, Lzh4;->o:Ld23;

    iput-object p3, p0, Lzh4;->q:Lw33;

    iput-object p4, p0, Lzh4;->r:Lw33;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lzh4;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lzh4;->r:Lw33;

    .line 9
    .line 10
    iget-object v5, v0, Lzh4;->q:Lw33;

    .line 11
    .line 12
    iget-object v6, v0, Lzh4;->p:Lw33;

    .line 13
    .line 14
    iget-object v0, v0, Lzh4;->o:Ld23;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move-object/from16 v8, p2

    .line 28
    .line 29
    check-cast v8, Ljava/lang/Long;

    .line 30
    .line 31
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    const/16 v10, 0x5455

    .line 36
    .line 37
    if-ne v1, v10, :cond_a

    .line 38
    .line 39
    const-wide/16 v10, 0x1

    .line 40
    .line 41
    cmp-long v1, v8, v10

    .line 42
    .line 43
    const-string v12, "bad zip: extended timestamp extra too short"

    .line 44
    .line 45
    if-ltz v1, :cond_9

    .line 46
    .line 47
    invoke-virtual {v0}, Ld23;->readByte()B

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    and-int/lit8 v13, v1, 0x1

    .line 52
    .line 53
    const/4 v14, 0x0

    .line 54
    if-ne v13, v3, :cond_0

    .line 55
    .line 56
    move v13, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v13, v14

    .line 59
    :goto_0
    and-int/lit8 v15, v1, 0x2

    .line 60
    .line 61
    const/4 v7, 0x2

    .line 62
    if-ne v15, v7, :cond_1

    .line 63
    .line 64
    move v7, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v7, v14

    .line 67
    :goto_1
    const/4 v15, 0x4

    .line 68
    and-int/2addr v1, v15

    .line 69
    if-ne v1, v15, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v3, v14

    .line 73
    :goto_2
    if-eqz v13, :cond_3

    .line 74
    .line 75
    const-wide/16 v10, 0x5

    .line 76
    .line 77
    :cond_3
    const-wide/16 v14, 0x4

    .line 78
    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    add-long/2addr v10, v14

    .line 82
    :cond_4
    if-eqz v3, :cond_5

    .line 83
    .line 84
    add-long/2addr v10, v14

    .line 85
    :cond_5
    cmp-long v1, v8, v10

    .line 86
    .line 87
    if-ltz v1, :cond_8

    .line 88
    .line 89
    if-eqz v13, :cond_6

    .line 90
    .line 91
    invoke-virtual {v0}, Ld23;->r()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, v6, Lw33;->n:Ljava/lang/Object;

    .line 100
    .line 101
    :cond_6
    if-eqz v7, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Ld23;->r()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, v5, Lw33;->n:Ljava/lang/Object;

    .line 112
    .line 113
    :cond_7
    if-eqz v3, :cond_a

    .line 114
    .line 115
    invoke-virtual {v0}, Ld23;->r()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iput-object v0, v4, Lw33;->n:Ljava/lang/Object;

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_8
    invoke-static {v12}, Lp61;->k(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    const/4 v2, 0x0

    .line 130
    goto :goto_4

    .line 131
    :cond_9
    invoke-static {v12}, Lp61;->k(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_a
    :goto_4
    return-object v2

    .line 136
    :pswitch_0
    move-object/from16 v1, p1

    .line 137
    .line 138
    check-cast v1, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    move-object/from16 v7, p2

    .line 145
    .line 146
    check-cast v7, Ljava/lang/Long;

    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v7

    .line 152
    if-ne v1, v3, :cond_d

    .line 153
    .line 154
    iget-object v1, v6, Lw33;->n:Ljava/lang/Object;

    .line 155
    .line 156
    if-nez v1, :cond_c

    .line 157
    .line 158
    const-wide/16 v9, 0x18

    .line 159
    .line 160
    cmp-long v1, v7, v9

    .line 161
    .line 162
    if-nez v1, :cond_b

    .line 163
    .line 164
    invoke-virtual {v0}, Ld23;->z()J

    .line 165
    .line 166
    .line 167
    move-result-wide v7

    .line 168
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v6, Lw33;->n:Ljava/lang/Object;

    .line 173
    .line 174
    invoke-virtual {v0}, Ld23;->z()J

    .line 175
    .line 176
    .line 177
    move-result-wide v6

    .line 178
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iput-object v1, v5, Lw33;->n:Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {v0}, Ld23;->z()J

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v0, v4, Lw33;->n:Ljava/lang/Object;

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_b
    const-string v0, "bad zip: NTFS extra attribute tag 0x0001 size != 24"

    .line 196
    .line 197
    invoke-static {v0}, Lp61;->k(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_5
    const/4 v2, 0x0

    .line 201
    goto :goto_6

    .line 202
    :cond_c
    const-string v0, "bad zip: NTFS extra attribute tag 0x0001 repeated"

    .line 203
    .line 204
    invoke-static {v0}, Lp61;->k(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_d
    :goto_6
    return-object v2

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
