.class public final synthetic Lq02;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:F

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLt33;Lh12;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lq02;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lq02;->o:F

    .line 8
    .line 9
    iput-object p2, p0, Lq02;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lq02;->q:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ldv2;Lbz3;F)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lq02;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq02;->p:Ljava/lang/Object;

    iput-object p2, p0, Lq02;->q:Ljava/lang/Object;

    iput p3, p0, Lq02;->o:F

    return-void
.end method

.method public synthetic constructor <init>(Lt74;FLpe1;)V
    .locals 1

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lq02;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq02;->p:Ljava/lang/Object;

    iput p2, p0, Lq02;->o:F

    iput-object p3, p0, Lq02;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lq02;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lt64;->a:Lt64;

    .line 5
    .line 6
    iget-object v3, p0, Lq02;->q:Ljava/lang/Object;

    .line 7
    .line 8
    iget v4, p0, Lq02;->o:F

    .line 9
    .line 10
    iget-object p0, p0, Lq02;->p:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lt74;

    .line 16
    .line 17
    check-cast v3, Lpe1;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    iget-wide v7, p0, Lt74;->b:J

    .line 26
    .line 27
    const-wide/high16 v9, -0x8000000000000000L

    .line 28
    .line 29
    cmp-long p1, v7, v9

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iput-wide v5, p0, Lt74;->b:J

    .line 34
    .line 35
    :cond_0
    new-instance v10, Lxe;

    .line 36
    .line 37
    iget p1, p0, Lt74;->e:F

    .line 38
    .line 39
    invoke-direct {v10, p1}, Lxe;-><init>(F)V

    .line 40
    .line 41
    .line 42
    cmpg-float v0, v4, v1

    .line 43
    .line 44
    sget-object v11, Lt74;->f:Lxe;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lt74;->a:Lia4;

    .line 49
    .line 50
    new-instance v1, Lxe;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lxe;-><init>(F)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lt74;->c:Lxe;

    .line 56
    .line 57
    invoke-interface {v0, v1, v11, p1}, Lia4;->c(Lbf;Lbf;Lbf;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    :goto_0
    move-wide v8, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-wide v0, p0, Lt74;->b:J

    .line 64
    .line 65
    sub-long v0, v5, v0

    .line 66
    .line 67
    long-to-float p1, v0

    .line 68
    div-float/2addr p1, v4

    .line 69
    float-to-double v0, p1

    .line 70
    invoke-static {v0, v1}, Lis0;->W(D)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    iget-object v7, p0, Lt74;->a:Lia4;

    .line 76
    .line 77
    iget-object v12, p0, Lt74;->c:Lxe;

    .line 78
    .line 79
    invoke-interface/range {v7 .. v12}, Lia4;->p(JLbf;Lbf;Lbf;)Lbf;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lxe;

    .line 84
    .line 85
    iget p1, p1, Lxe;->a:F

    .line 86
    .line 87
    iget-object v7, p0, Lt74;->a:Lia4;

    .line 88
    .line 89
    iget-object v12, p0, Lt74;->c:Lxe;

    .line 90
    .line 91
    invoke-interface/range {v7 .. v12}, Lia4;->m(JLbf;Lbf;Lbf;)Lbf;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lxe;

    .line 96
    .line 97
    iput-object v0, p0, Lt74;->c:Lxe;

    .line 98
    .line 99
    iput-wide v5, p0, Lt74;->b:J

    .line 100
    .line 101
    iget v0, p0, Lt74;->e:F

    .line 102
    .line 103
    sub-float/2addr v0, p1

    .line 104
    iput p1, p0, Lt74;->e:F

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-interface {v3, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    return-object v2

    .line 114
    :pswitch_0
    check-cast p0, Ldv2;

    .line 115
    .line 116
    check-cast v3, Lbz3;

    .line 117
    .line 118
    check-cast p1, Lcv2;

    .line 119
    .line 120
    iget-object v0, v3, Lbz3;->F:Lpd;

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    invoke-virtual {v0}, Lpd;->d()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Number;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    float-to-int v0, v0

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    float-to-int v0, v4

    .line 137
    :goto_2
    const/4 v1, 0x0

    .line 138
    invoke-static {p1, p0, v0, v1}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 139
    .line 140
    .line 141
    return-object v2

    .line 142
    :pswitch_1
    check-cast p0, Lt33;

    .line 143
    .line 144
    check-cast v3, Lh12;

    .line 145
    .line 146
    check-cast p1, Lue;

    .line 147
    .line 148
    cmpl-float v0, v4, v1

    .line 149
    .line 150
    if-lez v0, :cond_4

    .line 151
    .line 152
    iget-object v0, p1, Lue;->e:Lws2;

    .line 153
    .line 154
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    cmpl-float v1, v0, v4

    .line 165
    .line 166
    if-lez v1, :cond_3

    .line 167
    .line 168
    :goto_3
    move v1, v4

    .line 169
    goto :goto_4

    .line 170
    :cond_3
    move v1, v0

    .line 171
    goto :goto_4

    .line 172
    :cond_4
    cmpg-float v0, v4, v1

    .line 173
    .line 174
    if-gez v0, :cond_5

    .line 175
    .line 176
    iget-object v0, p1, Lue;->e:Lws2;

    .line 177
    .line 178
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/lang/Number;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    cmpg-float v1, v0, v4

    .line 189
    .line 190
    if-gez v1, :cond_3

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    :goto_4
    iget v0, p0, Lt33;->n:F

    .line 194
    .line 195
    sub-float v0, v1, v0

    .line 196
    .line 197
    iget-object v3, v3, Lh12;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v3, Ljf3;

    .line 200
    .line 201
    invoke-interface {v3, v0}, Ljf3;->a(F)F

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    cmpg-float v3, v0, v3

    .line 206
    .line 207
    if-nez v3, :cond_6

    .line 208
    .line 209
    iget-object v3, p1, Lue;->e:Lws2;

    .line 210
    .line 211
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Ljava/lang/Number;

    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    cmpg-float v1, v1, v3

    .line 222
    .line 223
    if-nez v1, :cond_6

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_6
    invoke-virtual {p1}, Lue;->a()V

    .line 227
    .line 228
    .line 229
    :goto_5
    iget p1, p0, Lt33;->n:F

    .line 230
    .line 231
    add-float/2addr p1, v0

    .line 232
    iput p1, p0, Lt33;->n:F

    .line 233
    .line 234
    return-object v2

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
