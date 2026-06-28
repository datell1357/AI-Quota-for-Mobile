.class public final synthetic Lbx;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Z

.field public final synthetic o:Lzf5;

.field public final synthetic p:J

.field public final synthetic q:F

.field public final synthetic r:F

.field public final synthetic s:J

.field public final synthetic t:J

.field public final synthetic u:Lht3;


# direct methods
.method public synthetic constructor <init>(ZLsp3;JFFJJLht3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lbx;->n:Z

    .line 5
    .line 6
    iput-object p2, p0, Lbx;->o:Lzf5;

    .line 7
    .line 8
    iput-wide p3, p0, Lbx;->p:J

    .line 9
    .line 10
    iput p5, p0, Lbx;->q:F

    .line 11
    .line 12
    iput p6, p0, Lbx;->r:F

    .line 13
    .line 14
    iput-wide p7, p0, Lbx;->s:J

    .line 15
    .line 16
    iput-wide p9, p0, Lbx;->t:J

    .line 17
    .line 18
    iput-object p11, p0, Lbx;->u:Lht3;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lzy1;

    .line 6
    .line 7
    invoke-virtual {v1}, Lzy1;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lzy1;->n:Lx20;

    .line 11
    .line 12
    iget-boolean v3, v0, Lbx;->n:Z

    .line 13
    .line 14
    move-object v4, v1

    .line 15
    iget-object v1, v0, Lbx;->o:Lzf5;

    .line 16
    .line 17
    iget-wide v6, v0, Lbx;->p:J

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/16 v9, 0xf6

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    move-object v0, v4

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    invoke-static/range {v0 .. v9}, Lkx0;->D(Lkx0;Lzf5;JJJLtv4;I)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    const/16 v3, 0x20

    .line 35
    .line 36
    shr-long v8, v6, v3

    .line 37
    .line 38
    long-to-int v5, v8

    .line 39
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget v8, v0, Lbx;->q:F

    .line 44
    .line 45
    cmpg-float v5, v5, v8

    .line 46
    .line 47
    if-gez v5, :cond_1

    .line 48
    .line 49
    invoke-interface {v2}, Lkx0;->d()J

    .line 50
    .line 51
    .line 52
    move-result-wide v8

    .line 53
    shr-long/2addr v8, v3

    .line 54
    long-to-int v3, v8

    .line 55
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget v9, v0, Lbx;->r:F

    .line 60
    .line 61
    sub-float v11, v3, v9

    .line 62
    .line 63
    invoke-interface {v2}, Lkx0;->d()J

    .line 64
    .line 65
    .line 66
    move-result-wide v12

    .line 67
    const-wide v14, 0xffffffffL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    and-long/2addr v12, v14

    .line 73
    long-to-int v0, v12

    .line 74
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    sub-float v12, v0, v9

    .line 79
    .line 80
    iget-object v14, v2, Lx20;->o:Leh;

    .line 81
    .line 82
    invoke-virtual {v14}, Leh;->z()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    invoke-virtual {v14}, Leh;->u()Lv20;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Lv20;->j()V

    .line 91
    .line 92
    .line 93
    :try_start_0
    iget-object v0, v14, Leh;->o:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Ldh1;

    .line 96
    .line 97
    iget-object v0, v0, Ldh1;->n:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Leh;

    .line 100
    .line 101
    invoke-virtual {v0}, Leh;->u()Lv20;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    const/4 v13, 0x0

    .line 106
    move v10, v9

    .line 107
    invoke-interface/range {v8 .. v13}, Lv20;->e(FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const/16 v9, 0xf6

    .line 112
    .line 113
    move-wide v10, v2

    .line 114
    const-wide/16 v2, 0x0

    .line 115
    .line 116
    move-object v0, v4

    .line 117
    const-wide/16 v4, 0x0

    .line 118
    .line 119
    :try_start_1
    invoke-static/range {v0 .. v9}, Lkx0;->D(Lkx0;Lzf5;JJJLtv4;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v14}, Leh;->u()Lv20;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, Lv20;->h()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14, v10, v11}, Leh;->K(J)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    goto :goto_0

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    move-wide v10, v2

    .line 137
    :goto_0
    invoke-virtual {v14}, Leh;->u()Lv20;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1}, Lv20;->h()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v14, v10, v11}, Leh;->K(J)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_1
    invoke-static {v8, v6, v7}, Lc75;->Q(FJ)J

    .line 149
    .line 150
    .line 151
    move-result-wide v6

    .line 152
    const/16 v9, 0xd0

    .line 153
    .line 154
    iget-wide v2, v0, Lbx;->s:J

    .line 155
    .line 156
    move-object v8, v4

    .line 157
    iget-wide v4, v0, Lbx;->t:J

    .line 158
    .line 159
    iget-object v0, v0, Lbx;->u:Lht3;

    .line 160
    .line 161
    move-object/from16 v16, v8

    .line 162
    .line 163
    move-object v8, v0

    .line 164
    move-object/from16 v0, v16

    .line 165
    .line 166
    invoke-static/range {v0 .. v9}, Lkx0;->D(Lkx0;Lzf5;JJJLtv4;I)V

    .line 167
    .line 168
    .line 169
    :goto_1
    sget-object v0, Lt64;->a:Lt64;

    .line 170
    .line 171
    return-object v0
.end method
