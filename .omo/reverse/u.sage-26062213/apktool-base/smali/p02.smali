.class public final synthetic Lp02;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Lh12;

.field public final synthetic o:I

.field public final synthetic p:F

.field public final synthetic q:Lt33;

.field public final synthetic r:Ls33;

.field public final synthetic s:Z

.field public final synthetic t:F

.field public final synthetic u:Lu33;

.field public final synthetic v:I

.field public final synthetic w:Lw33;


# direct methods
.method public synthetic constructor <init>(Lh12;IFLt33;Ls33;ZFLu33;ILw33;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp02;->n:Lh12;

    .line 5
    .line 6
    iput p2, p0, Lp02;->o:I

    .line 7
    .line 8
    iput p3, p0, Lp02;->p:F

    .line 9
    .line 10
    iput-object p4, p0, Lp02;->q:Lt33;

    .line 11
    .line 12
    iput-object p5, p0, Lp02;->r:Ls33;

    .line 13
    .line 14
    iput-boolean p6, p0, Lp02;->s:Z

    .line 15
    .line 16
    iput p7, p0, Lp02;->t:F

    .line 17
    .line 18
    iput-object p8, p0, Lp02;->u:Lu33;

    .line 19
    .line 20
    iput p9, p0, Lp02;->v:I

    .line 21
    .line 22
    iput-object p10, p0, Lp02;->w:Lw33;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lp02;->n:Lh12;

    .line 2
    .line 3
    iget-object v1, v0, Lh12;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ln12;

    .line 6
    .line 7
    check-cast p1, Lue;

    .line 8
    .line 9
    iget v2, p0, Lp02;->o:I

    .line 10
    .line 11
    invoke-static {v0, v2}, Ln44;->x0(Lh12;I)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, p0, Lp02;->r:Ls33;

    .line 16
    .line 17
    iget-boolean v5, p0, Lp02;->s:Z

    .line 18
    .line 19
    sget-object v6, Lt64;->a:Lt64;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    if-nez v3, :cond_7

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    iget v8, p0, Lp02;->p:F

    .line 26
    .line 27
    cmpl-float v3, v8, v3

    .line 28
    .line 29
    if-lez v3, :cond_1

    .line 30
    .line 31
    iget-object v3, p1, Lue;->e:Lws2;

    .line 32
    .line 33
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    cmpl-float v9, v3, v8

    .line 44
    .line 45
    if-lez v9, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v8, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v3, p1, Lue;->e:Lws2;

    .line 51
    .line 52
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    cmpg-float v9, v3, v8

    .line 63
    .line 64
    if-gez v9, :cond_0

    .line 65
    .line 66
    :goto_0
    iget-object v3, p0, Lp02;->q:Lt33;

    .line 67
    .line 68
    iget v9, v3, Lt33;->n:F

    .line 69
    .line 70
    sub-float/2addr v8, v9

    .line 71
    iget-object v9, v0, Lh12;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v9, Ljf3;

    .line 74
    .line 75
    invoke-interface {v9, v8}, Ljf3;->a(F)F

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-static {v0, v2}, Ln44;->x0(Lh12;I)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-static {v5, v0, v2}, Ln44;->N(ZLh12;I)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_7

    .line 91
    .line 92
    cmpg-float v9, v8, v9

    .line 93
    .line 94
    if-nez v9, :cond_6

    .line 95
    .line 96
    iget v9, v3, Lt33;->n:F

    .line 97
    .line 98
    add-float/2addr v9, v8

    .line 99
    iput v9, v3, Lt33;->n:F

    .line 100
    .line 101
    iget v3, p0, Lp02;->t:F

    .line 102
    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    iget-object v8, p1, Lue;->e:Lws2;

    .line 106
    .line 107
    invoke-virtual {v8}, Lws2;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    cmpl-float v3, v8, v3

    .line 118
    .line 119
    if-lez v3, :cond_4

    .line 120
    .line 121
    invoke-virtual {p1}, Lue;->a()V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object v8, p1, Lue;->e:Lws2;

    .line 126
    .line 127
    invoke-virtual {v8}, Lws2;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    check-cast v8, Ljava/lang/Number;

    .line 132
    .line 133
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    neg-float v3, v3

    .line 138
    cmpg-float v3, v8, v3

    .line 139
    .line 140
    if-gez v3, :cond_4

    .line 141
    .line 142
    invoke-virtual {p1}, Lue;->a()V

    .line 143
    .line 144
    .line 145
    :cond_4
    :goto_1
    iget-object v3, p0, Lp02;->u:Lu33;

    .line 146
    .line 147
    iget v3, v3, Lu33;->n:I

    .line 148
    .line 149
    iget v8, p0, Lp02;->v:I

    .line 150
    .line 151
    const/4 v9, 0x2

    .line 152
    if-eqz v5, :cond_5

    .line 153
    .line 154
    if-lt v3, v9, :cond_7

    .line 155
    .line 156
    invoke-virtual {v0}, Lh12;->c()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    sub-int v3, v2, v3

    .line 161
    .line 162
    if-le v3, v8, :cond_7

    .line 163
    .line 164
    sub-int v3, v2, v8

    .line 165
    .line 166
    invoke-virtual {v1, v3}, Ln12;->l(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    if-lt v3, v9, :cond_7

    .line 171
    .line 172
    invoke-virtual {v1}, Ln12;->d()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    sub-int/2addr v3, v2

    .line 177
    if-le v3, v8, :cond_7

    .line 178
    .line 179
    add-int/2addr v8, v2

    .line 180
    invoke-virtual {v1, v8}, Ln12;->l(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    invoke-virtual {p1}, Lue;->a()V

    .line 185
    .line 186
    .line 187
    iput-boolean v7, v4, Ls33;->n:Z

    .line 188
    .line 189
    return-object v6

    .line 190
    :cond_7
    :goto_2
    invoke-static {v5, v0, v2}, Ln44;->N(ZLh12;I)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_8

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ln12;->l(I)V

    .line 197
    .line 198
    .line 199
    iput-boolean v7, v4, Ls33;->n:Z

    .line 200
    .line 201
    invoke-virtual {p1}, Lue;->a()V

    .line 202
    .line 203
    .line 204
    return-object v6

    .line 205
    :cond_8
    invoke-static {v0, v2}, Ln44;->x0(Lh12;I)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_9

    .line 210
    .line 211
    return-object v6

    .line 212
    :cond_9
    invoke-static {v0, v2}, Lh12;->b(Lh12;I)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    new-instance v0, Leu1;

    .line 217
    .line 218
    iget-object p0, p0, Lp02;->w:Lw33;

    .line 219
    .line 220
    iget-object p0, p0, Lw33;->n:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p0, Lwe;

    .line 223
    .line 224
    invoke-direct {v0, p1, p0}, Leu1;-><init>(ILwe;)V

    .line 225
    .line 226
    .line 227
    throw v0
.end method
