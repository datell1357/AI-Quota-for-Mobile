.class public final synthetic Lu40;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lug3;

.field public final synthetic o:Z

.field public final synthetic p:Z

.field public final synthetic q:Lka0;

.field public final synthetic r:Lay3;

.field public final synthetic s:Ldf1;

.field public final synthetic t:F

.field public final synthetic u:Lqh;

.field public final synthetic v:Lzr2;


# direct methods
.method public synthetic constructor <init>(Lug3;ZZLka0;Lay3;Ldf1;FLqh;Lzr2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu40;->n:Lug3;

    .line 5
    .line 6
    iput-boolean p2, p0, Lu40;->o:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lu40;->p:Z

    .line 9
    .line 10
    iput-object p4, p0, Lu40;->q:Lka0;

    .line 11
    .line 12
    iput-object p5, p0, Lu40;->r:Lay3;

    .line 13
    .line 14
    iput-object p6, p0, Lu40;->s:Ldf1;

    .line 15
    .line 16
    iput p7, p0, Lu40;->t:F

    .line 17
    .line 18
    iput-object p8, p0, Lu40;->u:Lqh;

    .line 19
    .line 20
    iput-object p9, p0, Lu40;->v:Lzr2;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lag1;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    move v3, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    and-int/2addr v2, v5

    .line 25
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_7

    .line 30
    .line 31
    iget-object v2, v0, Lu40;->n:Lug3;

    .line 32
    .line 33
    iget-boolean v3, v0, Lu40;->o:Z

    .line 34
    .line 35
    iget-boolean v4, v0, Lu40;->p:Z

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    iget-wide v5, v2, Lug3;->f:J

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-nez v4, :cond_2

    .line 43
    .line 44
    iget-wide v5, v2, Lug3;->b:J

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-wide v5, v2, Lug3;->k:J

    .line 48
    .line 49
    :goto_1
    if-nez v3, :cond_3

    .line 50
    .line 51
    iget-wide v7, v2, Lug3;->g:J

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    if-nez v4, :cond_4

    .line 55
    .line 56
    iget-wide v7, v2, Lug3;->c:J

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget-wide v7, v2, Lug3;->l:J

    .line 60
    .line 61
    :goto_2
    if-nez v3, :cond_5

    .line 62
    .line 63
    iget-wide v2, v2, Lug3;->h:J

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    if-nez v4, :cond_6

    .line 67
    .line 68
    iget-wide v2, v2, Lug3;->d:J

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_6
    iget-wide v2, v2, Lug3;->m:J

    .line 72
    .line 73
    :goto_3
    sget-object v4, Lfe2;->q:Lfe2;

    .line 74
    .line 75
    invoke-static {v4, v1}, Lzf5;->Y(Lfe2;Lag1;)Lyq3;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    sget-object v4, Lfe2;->p:Lfe2;

    .line 80
    .line 81
    invoke-static {v4, v1}, Lzf5;->Y(Lfe2;Lag1;)Lyq3;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    sget-object v4, Lfe2;->n:Lfe2;

    .line 86
    .line 87
    invoke-static {v4, v1}, Lzf5;->Y(Lfe2;Lag1;)Lyq3;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    sget-object v4, Lfe2;->o:Lfe2;

    .line 92
    .line 93
    invoke-static {v4, v1}, Lzf5;->Y(Lfe2;Lag1;)Lyq3;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    iget-object v4, v0, Lu40;->q:Lka0;

    .line 100
    .line 101
    move-object/from16 v16, v1

    .line 102
    .line 103
    iget-object v1, v0, Lu40;->r:Lay3;

    .line 104
    .line 105
    move-object v9, v4

    .line 106
    iget-object v4, v0, Lu40;->s:Ldf1;

    .line 107
    .line 108
    move-object v10, v9

    .line 109
    iget v9, v0, Lu40;->t:F

    .line 110
    .line 111
    move-object v11, v10

    .line 112
    iget-object v10, v0, Lu40;->u:Lqh;

    .line 113
    .line 114
    iget-object v0, v0, Lu40;->v:Lzr2;

    .line 115
    .line 116
    move-object/from16 v18, v11

    .line 117
    .line 118
    move-object v11, v0

    .line 119
    move-object/from16 v0, v18

    .line 120
    .line 121
    move-wide/from16 v18, v7

    .line 122
    .line 123
    move-wide v7, v2

    .line 124
    move-wide v2, v5

    .line 125
    move-wide/from16 v5, v18

    .line 126
    .line 127
    invoke-static/range {v0 .. v17}, La50;->a(Lka0;Lay3;JLdf1;JJFLqh;Lzr2;Lyq3;Lyq3;Lyq3;Lyq3;Lag1;I)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    move-object/from16 v16, v1

    .line 132
    .line 133
    invoke-virtual/range {v16 .. v16}, Lag1;->Q()V

    .line 134
    .line 135
    .line 136
    :goto_4
    sget-object v0, Lt64;->a:Lt64;

    .line 137
    .line 138
    return-object v0
.end method
