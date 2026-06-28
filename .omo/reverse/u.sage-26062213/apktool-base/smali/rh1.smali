.class public final Lrh1;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:Lcom/google/api/services/calendar/Calendar;

.field public s:I

.field public final synthetic t:Lwh1;


# direct methods
.method public constructor <init>(Lwh1;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrh1;->t:Lwh1;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lrh1;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lrh1;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lrh1;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 0

    .line 1
    new-instance p2, Lrh1;

    .line 2
    .line 3
    iget-object p0, p0, Lrh1;->t:Lwh1;

    .line 4
    .line 5
    invoke-direct {p2, p0, p1}, Lrh1;-><init>(Lwh1;Ldh0;)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lrh1;->t:Lwh1;

    .line 2
    .line 3
    iget-object v1, v0, Lwh1;->c:Lm10;

    .line 4
    .line 5
    iget v2, p0, Lrh1;->s:I

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    const-string v4, "primary"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Lt64;->a:Lt64;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    sget-object v8, Lri0;->n:Lri0;

    .line 15
    .line 16
    packed-switch v2, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v7

    .line 25
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :pswitch_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :pswitch_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :pswitch_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :pswitch_4
    iget-object v2, p0, Lrh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 46
    .line 47
    :try_start_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :try_start_2
    invoke-static {v0}, Lwh1;->c(Lwh1;)Lcom/google/api/services/calendar/Calendar;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_0

    .line 59
    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_0
    iput-object v2, p0, Lrh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    iput p1, p0, Lrh1;->s:I

    .line 66
    .line 67
    iget-object p1, v1, Lm10;->d:Lnv3;

    .line 68
    .line 69
    invoke-virtual {p1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, La81;

    .line 74
    .line 75
    invoke-static {p1, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v8, :cond_1

    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_1
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p1, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    sget-object v10, Lg01;->n:Lg01;

    .line 90
    .line 91
    if-nez v9, :cond_2

    .line 92
    .line 93
    :try_start_3
    invoke-static {p1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 97
    if-nez v9, :cond_2

    .line 98
    .line 99
    :try_start_4
    invoke-virtual {v2}, Lcom/google/api/services/calendar/Calendar;->calendars()Lcom/google/api/services/calendar/Calendar$Calendars;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v9, p1}, Lcom/google/api/services/calendar/Calendar$Calendars;->delete(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Calendars$Delete;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-virtual {v9}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    sget-object v9, Lez3;->a:Lra3;

    .line 111
    .line 112
    new-array v11, v5, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v11}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_0
    :try_start_5
    sget-object v9, Lez3;->a:Lra3;

    .line 122
    .line 123
    new-array v11, v5, [Ljava/lang/Object;

    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {v11}, Lra3;->g([Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iput-object v7, p0, Lrh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 132
    .line 133
    const/4 v9, 0x2

    .line 134
    iput v9, p0, Lrh1;->s:I

    .line 135
    .line 136
    sget-object v9, Lwh1;->i:Lhh2;

    .line 137
    .line 138
    invoke-virtual {v0, v2, p1, v10}, Lwh1;->e(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    if-ne v6, v8, :cond_3

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_2
    iput-object v7, p0, Lrh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 145
    .line 146
    const/4 p1, 0x3

    .line 147
    iput p1, p0, Lrh1;->s:I

    .line 148
    .line 149
    sget-object p1, Lwh1;->i:Lhh2;

    .line 150
    .line 151
    invoke-virtual {v0, v2, v4, v10}, Lwh1;->e(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    if-ne v6, v8, :cond_3

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_3
    :goto_1
    iput-object v7, p0, Lrh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 158
    .line 159
    const/4 p1, 0x4

    .line 160
    iput p1, p0, Lrh1;->s:I

    .line 161
    .line 162
    iget-object p1, v1, Lm10;->a:Llm0;

    .line 163
    .line 164
    new-instance v0, Lar;

    .line 165
    .line 166
    invoke-direct {v0, v7, v7, v3}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v0, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-ne p1, v8, :cond_4

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    move-object p1, v6

    .line 177
    :goto_2
    if-ne p1, v8, :cond_5

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_5
    :goto_3
    iput-object v7, p0, Lrh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 181
    .line 182
    iput v3, p0, Lrh1;->s:I

    .line 183
    .line 184
    invoke-virtual {v1, v4, p0}, Lm10;->c(Ljava/lang/String;Lfh0;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-ne p1, v8, :cond_6

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_6
    :goto_4
    iput-object v7, p0, Lrh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 192
    .line 193
    const/4 p1, 0x6

    .line 194
    iput p1, p0, Lrh1;->s:I

    .line 195
    .line 196
    iget-object v0, v1, Lm10;->a:Llm0;

    .line 197
    .line 198
    new-instance v1, Lar;

    .line 199
    .line 200
    invoke-direct {v1, v7, v7, p1}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    if-ne p0, v8, :cond_7

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_7
    move-object p0, v6

    .line 211
    :goto_5
    if-ne p0, v8, :cond_8

    .line 212
    .line 213
    :goto_6
    return-object v8

    .line 214
    :cond_8
    :goto_7
    sget-object p0, Lez3;->a:Lra3;

    .line 215
    .line 216
    new-array p1, v5, [Ljava/lang/Object;

    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 222
    .line 223
    .line 224
    goto :goto_8

    .line 225
    :catch_1
    sget-object p0, Lez3;->a:Lra3;

    .line 226
    .line 227
    new-array p1, v5, [Ljava/lang/Object;

    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-static {p1}, Lra3;->g([Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :goto_8
    return-object v6

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
