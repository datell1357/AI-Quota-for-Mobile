.class public final Li14;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltr3;


# instance fields
.field public final n:Lm14;

.field public o:Lpe1;

.field public p:Lpe1;

.field public final synthetic q:Lj14;


# direct methods
.method public constructor <init>(Lj14;Lm14;Lpe1;Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li14;->q:Lj14;

    .line 5
    .line 6
    iput-object p2, p0, Li14;->n:Lm14;

    .line 7
    .line 8
    iput-object p3, p0, Li14;->o:Lpe1;

    .line 9
    .line 10
    iput-object p4, p0, Li14;->p:Lpe1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lk14;Ljava/lang/Object;Lbf;)V
    .locals 6

    .line 1
    iget-object v0, p0, Li14;->p:Lpe1;

    .line 2
    .line 3
    invoke-interface {p1}, Lk14;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Li14;->q:Lj14;

    .line 12
    .line 13
    iget-object v1, v1, Lj14;->c:Ln14;

    .line 14
    .line 15
    invoke-virtual {v1}, Ln14;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Li14;->n:Lm14;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Li14;->p:Lpe1;

    .line 24
    .line 25
    invoke-interface {p1}, Lk14;->b()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-interface {p2, p3}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p0, p0, Li14;->o:Lpe1;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lz51;

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, p0}, Lm14;->f(Ljava/lang/Object;Ljava/lang/Object;Lz51;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object p0, p0, Li14;->o:Lpe1;

    .line 46
    .line 47
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lz51;

    .line 52
    .line 53
    iget-object p1, v2, Lm14;->t:Lws2;

    .line 54
    .line 55
    iget-object v1, v2, Lm14;->o:Lws2;

    .line 56
    .line 57
    iget-object v3, v2, Lm14;->u:Lss2;

    .line 58
    .line 59
    iget-boolean v4, v2, Lm14;->v:Z

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    iget-object v4, v2, Lm14;->s:Llw3;

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    iget-object v4, v4, Llw3;->c:Ljava/lang/Object;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v4, 0x0

    .line 71
    :goto_0
    invoke-static {v0, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_2
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v4, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const/high16 v5, -0x40800000    # -1.0f

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3}, Lss2;->g()F

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    cmpg-float v4, v4, v5

    .line 96
    .line 97
    if-nez v4, :cond_3

    .line 98
    .line 99
    if-eqz p2, :cond_a

    .line 100
    .line 101
    invoke-virtual {v2}, Lm14;->a()Llw3;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-object v4, v4, Llw3;->d:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_3
    invoke-virtual {v1, v0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v2, Lm14;->p:Lws2;

    .line 119
    .line 120
    invoke-virtual {v1, p0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const/high16 p0, -0x3fc00000    # -3.0f

    .line 124
    .line 125
    if-nez p2, :cond_5

    .line 126
    .line 127
    invoke-virtual {v3}, Lss2;->g()F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    cmpg-float v1, v1, p0

    .line 132
    .line 133
    if-nez v1, :cond_4

    .line 134
    .line 135
    move-object v1, v0

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    iget-object v1, v2, Lm14;->w:Lws2;

    .line 138
    .line 139
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    move-object v1, p2

    .line 145
    :goto_1
    if-eqz p2, :cond_6

    .line 146
    .line 147
    invoke-virtual {v2, v1}, Lm14;->d(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    if-eqz p3, :cond_6

    .line 151
    .line 152
    iput-object p3, v2, Lm14;->x:Lbf;

    .line 153
    .line 154
    :cond_6
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    check-cast p2, Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    const/4 p3, 0x1

    .line 165
    xor-int/2addr p2, p3

    .line 166
    invoke-virtual {v2, v1, p2}, Lm14;->e(Ljava/lang/Object;Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Lss2;->g()F

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    cmpg-float p2, p2, p0

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    if-nez p2, :cond_7

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    move p3, v1

    .line 180
    :goto_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p1, p2}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Lss2;->g()F

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    const/4 p2, 0x0

    .line 192
    cmpl-float p1, p1, p2

    .line 193
    .line 194
    if-ltz p1, :cond_8

    .line 195
    .line 196
    invoke-virtual {v2}, Lm14;->a()Llw3;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0}, Llw3;->c()J

    .line 201
    .line 202
    .line 203
    move-result-wide p0

    .line 204
    invoke-virtual {v2}, Lm14;->a()Llw3;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    long-to-float p0, p0

    .line 209
    invoke-virtual {v3}, Lss2;->g()F

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    mul-float/2addr p1, p0

    .line 214
    float-to-long p0, p1

    .line 215
    invoke-virtual {p2, p0, p1}, Llw3;->b(J)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v2, p0}, Lm14;->d(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_8
    invoke-virtual {v3}, Lss2;->g()F

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    cmpg-float p0, p1, p0

    .line 228
    .line 229
    if-nez p0, :cond_9

    .line 230
    .line 231
    invoke-virtual {v2, v0}, Lm14;->d(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_9
    :goto_3
    iput-boolean v1, v2, Lm14;->v:Z

    .line 235
    .line 236
    invoke-virtual {v3, v5}, Lss2;->h(F)V

    .line 237
    .line 238
    .line 239
    :cond_a
    :goto_4
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Li14;->q:Lj14;

    .line 2
    .line 3
    iget-object v0, v0, Lj14;->c:Ln14;

    .line 4
    .line 5
    invoke-virtual {v0}, Ln14;->f()Lk14;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v1}, Li14;->a(Lk14;Ljava/lang/Object;Lbf;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Li14;->n:Lm14;

    .line 14
    .line 15
    iget-object p0, p0, Lm14;->w:Lws2;

    .line 16
    .line 17
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
