.class public final Ld12;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ltf2;

.field public final b:La12;

.field public final c:Lg02;

.field public final d:J

.field public final synthetic e:Z

.field public final synthetic f:Lg02;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Law;

.field public final synthetic j:Lbw;

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:J

.field public final synthetic n:Ln12;


# direct methods
.method public constructor <init>(JZLa12;Lg02;IILaw;Lbw;IIJLn12;)V
    .locals 0

    .line 1
    iput-boolean p3, p0, Ld12;->e:Z

    .line 2
    .line 3
    iput-object p5, p0, Ld12;->f:Lg02;

    .line 4
    .line 5
    iput p6, p0, Ld12;->g:I

    .line 6
    .line 7
    iput p7, p0, Ld12;->h:I

    .line 8
    .line 9
    iput-object p8, p0, Ld12;->i:Law;

    .line 10
    .line 11
    iput-object p9, p0, Ld12;->j:Lbw;

    .line 12
    .line 13
    iput p10, p0, Ld12;->k:I

    .line 14
    .line 15
    iput p11, p0, Ld12;->l:I

    .line 16
    .line 17
    iput-wide p12, p0, Ld12;->m:J

    .line 18
    .line 19
    iput-object p14, p0, Ld12;->n:Ln12;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object p6, Lis1;->a:Ltf2;

    .line 25
    .line 26
    new-instance p6, Ltf2;

    .line 27
    .line 28
    invoke-direct {p6}, Ltf2;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p6, p0, Ld12;->a:Ltf2;

    .line 32
    .line 33
    iput-object p4, p0, Ld12;->b:La12;

    .line 34
    .line 35
    iput-object p5, p0, Ld12;->c:Lg02;

    .line 36
    .line 37
    const p4, 0x7fffffff

    .line 38
    .line 39
    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    invoke-static {p1, p2}, Lmf0;->h(J)I

    .line 43
    .line 44
    .line 45
    move-result p5

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move p5, p4

    .line 48
    :goto_0
    if-nez p3, :cond_1

    .line 49
    .line 50
    invoke-static {p1, p2}, Lmf0;->g(J)I

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    :cond_1
    const/4 p1, 0x5

    .line 55
    invoke-static {p5, p4, p1}, Lnf0;->b(III)J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    iput-wide p1, p0, Ld12;->d:J

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a(IJ)Lg12;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Ld12;->b:La12;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, La12;->d(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v12

    .line 11
    invoke-virtual {v2, v1}, La12;->b(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v13

    .line 15
    iget-object v2, v0, Ld12;->a:Ltf2;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lhs1;->b(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/util/List;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-object v2, v3

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    iget-object v3, v0, Ld12;->c:Lg02;

    .line 31
    .line 32
    iget-object v5, v3, Lg02;->p:La12;

    .line 33
    .line 34
    iget-object v6, v3, Lg02;->q:Ltf2;

    .line 35
    .line 36
    invoke-virtual {v6, v1}, Lhs1;->b(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Ljava/util/List;

    .line 41
    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v5, v1}, La12;->d(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v5, v1}, La12;->b(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v8, v3, Lg02;->n:Lc02;

    .line 54
    .line 55
    invoke-virtual {v8, v1, v7, v5}, Lc02;->a(ILjava/lang/Object;Ljava/lang/Object;)Ldf1;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v3, v3, Lg02;->o:Lqt3;

    .line 60
    .line 61
    invoke-interface {v3, v5, v7}, Lqt3;->o(Ldf1;Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v1, v7}, Ltf2;->h(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    move v6, v4

    .line 78
    :goto_1
    if-ge v6, v3, :cond_2

    .line 79
    .line 80
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Lya2;

    .line 85
    .line 86
    move-wide/from16 v9, p2

    .line 87
    .line 88
    invoke-interface {v8, v9, v10}, Lya2;->e(J)Ldv2;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    move-wide/from16 v9, p2

    .line 99
    .line 100
    invoke-virtual {v2, v1, v5}, Ltf2;->h(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object v2, v5

    .line 104
    :goto_2
    iget v3, v0, Ld12;->g:I

    .line 105
    .line 106
    add-int/lit8 v3, v3, -0x1

    .line 107
    .line 108
    if-ne v1, v3, :cond_3

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    iget v4, v0, Ld12;->h:I

    .line 112
    .line 113
    :goto_3
    new-instance v3, Lg12;

    .line 114
    .line 115
    iget-object v5, v0, Ld12;->f:Lg02;

    .line 116
    .line 117
    iget-object v5, v5, Lg02;->o:Lqt3;

    .line 118
    .line 119
    invoke-interface {v5}, Ljt1;->getLayoutDirection()Lhy1;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iget-object v5, v0, Ld12;->n:Ln12;

    .line 124
    .line 125
    iget-object v14, v5, Ln12;->o:Ldh;

    .line 126
    .line 127
    move-object v5, v3

    .line 128
    iget-boolean v3, v0, Ld12;->e:Z

    .line 129
    .line 130
    move v9, v4

    .line 131
    iget-object v4, v0, Ld12;->i:Law;

    .line 132
    .line 133
    move-object v7, v5

    .line 134
    iget-object v5, v0, Ld12;->j:Lbw;

    .line 135
    .line 136
    move-object v8, v7

    .line 137
    iget v7, v0, Ld12;->k:I

    .line 138
    .line 139
    move-object v10, v8

    .line 140
    iget v8, v0, Ld12;->l:I

    .line 141
    .line 142
    iget-wide v0, v0, Ld12;->m:J

    .line 143
    .line 144
    move-wide v15, v0

    .line 145
    move-object v0, v10

    .line 146
    move-wide v10, v15

    .line 147
    move/from16 v1, p1

    .line 148
    .line 149
    move-wide/from16 v15, p2

    .line 150
    .line 151
    invoke-direct/range {v0 .. v16}, Lg12;-><init>(ILjava/util/List;ZLaw;Lbw;Lhy1;IIIJLjava/lang/Object;Ljava/lang/Object;Ldh;J)V

    .line 152
    .line 153
    .line 154
    return-object v0
.end method
