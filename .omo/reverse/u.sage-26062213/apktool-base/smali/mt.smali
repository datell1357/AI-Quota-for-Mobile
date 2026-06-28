.class public final Lmt;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements La81;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lmt;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lmt;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lmt;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lt64;->a:Lt64;

    .line 5
    .line 6
    sget-object v3, Lri0;->n:Lri0;

    .line 7
    .line 8
    iget-object v4, p0, Lmt;->o:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v4, [La81;

    .line 14
    .line 15
    new-instance p0, Lfq0;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p0, v0, v4}, Lfq0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lrf4;

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    invoke-direct {v0, v5, v1}, Lbv3;-><init>(ILdh0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p1, p0, v0, v4}, Lw80;->o(Ldh0;Lb81;Lne1;Lff1;[La81;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-ne p0, v3, :cond_0

    .line 32
    .line 33
    move-object v2, p0

    .line 34
    :cond_0
    return-object v2

    .line 35
    :pswitch_0
    instance-of v0, p2, Lk0;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    move-object v0, p2

    .line 40
    check-cast v0, Lk0;

    .line 41
    .line 42
    iget v5, v0, Lk0;->t:I

    .line 43
    .line 44
    const/high16 v6, -0x80000000

    .line 45
    .line 46
    and-int v7, v5, v6

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    sub-int/2addr v5, v6

    .line 51
    iput v5, v0, Lk0;->t:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Lk0;

    .line 55
    .line 56
    invoke-direct {v0, p0, p2}, Lk0;-><init>(Lmt;Ldh0;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object p0, v0, Lk0;->r:Ljava/lang/Object;

    .line 60
    .line 61
    iget p2, v0, Lk0;->t:I

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    if-ne p2, v5, :cond_2

    .line 67
    .line 68
    iget-object p1, v0, Lk0;->q:Lsb3;

    .line 69
    .line 70
    :try_start_0
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_5

    .line 76
    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance p0, Lsb3;

    .line 86
    .line 87
    iget-object p2, v0, Lfh0;->o:Lhi0;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1, p2}, Lsb3;-><init>(Lb81;Lhi0;)V

    .line 93
    .line 94
    .line 95
    :try_start_1
    iput-object p0, v0, Lk0;->q:Lsb3;

    .line 96
    .line 97
    iput v5, v0, Lk0;->t:I

    .line 98
    .line 99
    check-cast v4, Ldf1;

    .line 100
    .line 101
    invoke-interface {v4, p0, v0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    if-ne p1, v3, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    move-object p1, v2

    .line 109
    :goto_1
    if-ne p1, v3, :cond_5

    .line 110
    .line 111
    move-object v1, v3

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    move-object p1, p0

    .line 114
    :goto_2
    invoke-virtual {p1}, Lfh0;->s()V

    .line 115
    .line 116
    .line 117
    move-object v1, v2

    .line 118
    :goto_3
    return-object v1

    .line 119
    :goto_4
    move-object v8, p1

    .line 120
    move-object p1, p0

    .line 121
    move-object p0, v8

    .line 122
    goto :goto_5

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    goto :goto_4

    .line 125
    :goto_5
    invoke-virtual {p1}, Lfh0;->s()V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :pswitch_1
    check-cast v4, Lk81;

    .line 130
    .line 131
    new-instance p0, Lxq;

    .line 132
    .line 133
    const/16 v0, 0x13

    .line 134
    .line 135
    invoke-direct {p0, p1, v0}, Lxq;-><init>(Lb81;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, p0, p2}, Lk81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    if-ne p0, v3, :cond_6

    .line 143
    .line 144
    move-object v2, p0

    .line 145
    :cond_6
    return-object v2

    .line 146
    :pswitch_2
    check-cast v4, Lk81;

    .line 147
    .line 148
    new-instance p0, Lxq;

    .line 149
    .line 150
    const/16 v0, 0x12

    .line 151
    .line 152
    invoke-direct {p0, p1, v0}, Lxq;-><init>(Lb81;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, p0, p2}, Lk81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-ne p0, v3, :cond_7

    .line 160
    .line 161
    move-object v2, p0

    .line 162
    :cond_7
    return-object v2

    .line 163
    :pswitch_3
    check-cast v4, Lyq;

    .line 164
    .line 165
    new-instance p0, Lxq;

    .line 166
    .line 167
    const/16 v0, 0xc

    .line 168
    .line 169
    invoke-direct {p0, p1, v0}, Lxq;-><init>(Lb81;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, p0, p2}, Lyq;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    if-ne p0, v3, :cond_8

    .line 177
    .line 178
    move-object v2, p0

    .line 179
    :cond_8
    return-object v2

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
