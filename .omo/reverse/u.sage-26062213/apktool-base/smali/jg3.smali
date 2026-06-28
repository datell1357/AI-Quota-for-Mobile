.class public final Ljg3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lpg3;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ln14;


# direct methods
.method public synthetic constructor <init>(Lpg3;Ljava/lang/Object;Ln14;Ldh0;I)V
    .locals 0

    .line 1
    iput p5, p0, Ljg3;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Ljg3;->t:Lpg3;

    .line 4
    .line 5
    iput-object p2, p0, Ljg3;->u:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ljg3;->v:Ln14;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Ljg3;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    move-object v6, p1

    .line 6
    check-cast v6, Ldh0;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljg3;

    .line 12
    .line 13
    iget-object v5, p0, Ljg3;->v:Ln14;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    iget-object v3, p0, Ljg3;->t:Lpg3;

    .line 17
    .line 18
    iget-object v4, p0, Ljg3;->u:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct/range {v2 .. v7}, Ljg3;-><init>(Lpg3;Ljava/lang/Object;Ln14;Ldh0;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljg3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_0
    new-instance v2, Ljg3;

    .line 29
    .line 30
    iget-object v5, p0, Ljg3;->v:Ln14;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    iget-object v3, p0, Ljg3;->t:Lpg3;

    .line 34
    .line 35
    iget-object v4, p0, Ljg3;->u:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct/range {v2 .. v7}, Ljg3;-><init>(Lpg3;Ljava/lang/Object;Ln14;Ldh0;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljg3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Ljg3;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lri0;->n:Lri0;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, p0, Ljg3;->s:I

    .line 15
    .line 16
    iget-object v6, p0, Ljg3;->v:Ln14;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Ljg3;->t:Lpg3;

    .line 35
    .line 36
    invoke-virtual {p1}, Lpg3;->B()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lpg3;->b:Lws2;

    .line 40
    .line 41
    const-wide/high16 v2, -0x8000000000000000L

    .line 42
    .line 43
    iput-wide v2, p1, Lpg3;->m:J

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1, v2}, Lpg3;->F(F)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p1, Lpg3;->c:Lws2;

    .line 50
    .line 51
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v7, p0, Ljg3;->u:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/high16 v8, -0x3fc00000    # -3.0f

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    const/high16 v3, -0x3f800000    # -4.0f

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    const/high16 v3, -0x3f600000    # -5.0f

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    move v3, v8

    .line 82
    :goto_0
    invoke-virtual {v6, v7}, Ln14;->p(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const-wide/16 v9, 0x0

    .line 86
    .line 87
    invoke-virtual {v6, v9, v10}, Ln14;->n(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v7}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lpg3;->F(F)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v7}, Lpg3;->q(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v3}, Ln14;->j(F)V

    .line 100
    .line 101
    .line 102
    cmpg-float v0, v3, v8

    .line 103
    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    iput v5, p0, Ljg3;->s:I

    .line 107
    .line 108
    invoke-static {p1, p0}, Lpg3;->z(Lpg3;Lfh0;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-ne p0, v4, :cond_4

    .line 113
    .line 114
    move-object v1, v4

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    :goto_1
    invoke-virtual {v6}, Ln14;->i()V

    .line 117
    .line 118
    .line 119
    :goto_2
    return-object v1

    .line 120
    :pswitch_0
    iget v0, p0, Ljg3;->s:I

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    if-ne v0, v5, :cond_5

    .line 125
    .line 126
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    move-object v1, v2

    .line 134
    goto :goto_3

    .line 135
    :cond_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    new-instance v6, Lr4;

    .line 139
    .line 140
    const/4 v10, 0x0

    .line 141
    const/4 v11, 0x5

    .line 142
    iget-object v7, p0, Ljg3;->t:Lpg3;

    .line 143
    .line 144
    iget-object v8, p0, Ljg3;->u:Ljava/lang/Object;

    .line 145
    .line 146
    iget-object v9, p0, Ljg3;->v:Ln14;

    .line 147
    .line 148
    invoke-direct/range {v6 .. v11}, Lr4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 149
    .line 150
    .line 151
    iput v5, p0, Ljg3;->s:I

    .line 152
    .line 153
    invoke-static {v6, p0}, Ldm0;->r(Ldf1;Ldh0;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-ne p0, v4, :cond_7

    .line 158
    .line 159
    move-object v1, v4

    .line 160
    :cond_7
    :goto_3
    return-object v1

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
