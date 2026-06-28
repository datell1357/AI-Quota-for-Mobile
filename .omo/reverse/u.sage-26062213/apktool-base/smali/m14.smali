.class public final Lm14;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltr3;


# instance fields
.field public final A:Lyq3;

.field public final synthetic B:Ln14;

.field public final n:Le34;

.field public final o:Lws2;

.field public final p:Lws2;

.field public final q:Lws2;

.field public r:Lig3;

.field public s:Llw3;

.field public final t:Lws2;

.field public final u:Lss2;

.field public v:Z

.field public final w:Lws2;

.field public x:Lbf;

.field public final y:Lus2;

.field public z:Z


# direct methods
.method public constructor <init>(Ln14;Ljava/lang/Object;Lbf;Le34;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm14;->B:Ln14;

    .line 5
    .line 6
    iput-object p4, p0, Lm14;->n:Le34;

    .line 7
    .line 8
    invoke-static {p2}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lm14;->o:Lws2;

    .line 13
    .line 14
    const/4 v0, 0x7

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v1, v1, v2, v0}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lm14;->p:Lws2;

    .line 26
    .line 27
    new-instance v3, Llw3;

    .line 28
    .line 29
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v4, v0

    .line 34
    check-cast v4, Lz51;

    .line 35
    .line 36
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    move-object v6, p2

    .line 41
    move-object v8, p3

    .line 42
    move-object v5, p4

    .line 43
    invoke-direct/range {v3 .. v8}, Llw3;-><init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lm14;->q:Lws2;

    .line 51
    .line 52
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lm14;->t:Lws2;

    .line 59
    .line 60
    new-instance p1, Lss2;

    .line 61
    .line 62
    const/high16 p2, -0x40800000    # -1.0f

    .line 63
    .line 64
    invoke-direct {p1, p2}, Lss2;-><init>(F)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lm14;->u:Lss2;

    .line 68
    .line 69
    invoke-static {v6}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lm14;->w:Lws2;

    .line 74
    .line 75
    iput-object v8, p0, Lm14;->x:Lbf;

    .line 76
    .line 77
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Llw3;->c()J

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    new-instance p3, Lus2;

    .line 86
    .line 87
    invoke-direct {p3, p1, p2}, Lus2;-><init>(J)V

    .line 88
    .line 89
    .line 90
    iput-object p3, p0, Lm14;->y:Lus2;

    .line 91
    .line 92
    sget-object p1, Lic4;->a:Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/Float;

    .line 99
    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iget-object p2, v5, Le34;->a:Lpe1;

    .line 107
    .line 108
    invoke-interface {p2, v6}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lbf;

    .line 113
    .line 114
    invoke-virtual {p2}, Lbf;->b()I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    const/4 p4, 0x0

    .line 119
    :goto_0
    if-ge p4, p3, :cond_0

    .line 120
    .line 121
    invoke-virtual {p2, p4, p1}, Lbf;->e(IF)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 p4, p4, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lm14;->n:Le34;

    .line 128
    .line 129
    iget-object p1, p1, Le34;->b:Lpe1;

    .line 130
    .line 131
    invoke-interface {p1, p2}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :cond_1
    const/4 p1, 0x3

    .line 136
    invoke-static {v1, v1, v2, p1}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput-object p1, p0, Lm14;->A:Lyq3;

    .line 141
    .line 142
    return-void
.end method


# virtual methods
.method public final a()Llw3;
    .locals 0

    .line 1
    iget-object p0, p0, Lm14;->q:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Llw3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final c(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm14;->u:Lss2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lss2;->g()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpg-float v0, v0, v1

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lm14;->z:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Llw3;->c:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Llw3;->d:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Llw3;->c:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lm14;->d(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1, p2}, Llw3;->b(J)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lm14;->d(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1, p2}, Llw3;->f(J)Lbf;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lm14;->x:Lbf;

    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lm14;->w:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Ljava/lang/Object;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lm14;->s:Llw3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Llw3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lm14;->o:Lws2;

    .line 10
    .line 11
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v2, p0, Lm14;->y:Lus2;

    .line 20
    .line 21
    iget-object v3, p0, Lm14;->q:Lws2;

    .line 22
    .line 23
    iget-object v6, p0, Lm14;->n:Le34;

    .line 24
    .line 25
    iget-object v5, p0, Lm14;->A:Lyq3;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v4, Llw3;

    .line 30
    .line 31
    iget-object p2, p0, Lm14;->x:Lbf;

    .line 32
    .line 33
    invoke-virtual {p2}, Lbf;->c()Lbf;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    move-object v8, p1

    .line 38
    move-object v7, p1

    .line 39
    invoke-direct/range {v4 .. v9}, Llw3;-><init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lm14;->v:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Llw3;->c()J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    invoke-virtual {v2, p0, p1}, Lus2;->h(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    move-object v7, p1

    .line 61
    iget-object p1, p0, Lm14;->p:Lws2;

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    iget-boolean p2, p0, Lm14;->z:Z

    .line 66
    .line 67
    if-nez p2, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lz51;

    .line 74
    .line 75
    instance-of p2, p2, Lyq3;

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    move-object v5, p1

    .line 84
    check-cast v5, Lz51;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    move-object v5, p1

    .line 92
    check-cast v5, Lz51;

    .line 93
    .line 94
    :cond_3
    :goto_1
    iget-object p1, p0, Lm14;->B:Ln14;

    .line 95
    .line 96
    invoke-virtual {p1}, Ln14;->e()J

    .line 97
    .line 98
    .line 99
    move-result-wide v8

    .line 100
    iget-object p2, p1, Ln14;->i:Lws2;

    .line 101
    .line 102
    const-wide/16 v10, 0x0

    .line 103
    .line 104
    cmp-long v0, v8, v10

    .line 105
    .line 106
    if-gtz v0, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {p1}, Ln14;->e()J

    .line 110
    .line 111
    .line 112
    move-result-wide v8

    .line 113
    new-instance v0, Llr3;

    .line 114
    .line 115
    invoke-direct {v0, v5, v8, v9}, Llr3;-><init>(Lz51;J)V

    .line 116
    .line 117
    .line 118
    move-object v5, v0

    .line 119
    :goto_2
    new-instance v4, Llw3;

    .line 120
    .line 121
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    iget-object v9, p0, Lm14;->x:Lbf;

    .line 126
    .line 127
    invoke-direct/range {v4 .. v9}, Llw3;-><init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Llw3;->c()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-virtual {v2, v0, v1}, Lus2;->h(J)V

    .line 142
    .line 143
    .line 144
    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lm14;->v:Z

    .line 146
    .line 147
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {p2, p0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ln14;->g()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_6

    .line 157
    .line 158
    iget-object p0, p1, Ln14;->j:Lgp3;

    .line 159
    .line 160
    invoke-virtual {p0}, Lgp3;->size()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    move-wide v1, v10

    .line 165
    :goto_3
    if-ge v0, p1, :cond_5

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Lgp3;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lm14;

    .line 172
    .line 173
    iget-object v4, v3, Lm14;->y:Lus2;

    .line 174
    .line 175
    invoke-virtual {v4}, Lus2;->g()J

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    invoke-virtual {v3, v10, v11}, Lm14;->c(J)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-virtual {p2, p0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;Lz51;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm14;->o:Lws2;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm14;->p:Lws2;

    .line 7
    .line 8
    invoke-virtual {v0, p3}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget-object p3, p3, Llw3;->d:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p3, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lm14;->a()Llw3;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    iget-object p3, p3, Llw3;->c:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {p3, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p1, p2}, Lm14;->e(Ljava/lang/Object;Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lm14;->w:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lm14;->w:Lws2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lm14;->o:Lws2;

    .line 8
    .line 9
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Lm14;->p:Lws2;

    .line 14
    .line 15
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lz51;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "current value: "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", target: "

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", spec: "

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
