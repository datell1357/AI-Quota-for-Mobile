.class public final Lqh2;
.super Loj;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final o:Lph2;

.field public p:I

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lph2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqh2;->o:Lph2;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lqh2;->p:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lqh2;->q:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lyk0;Lom1;)Lgj1;
    .locals 11

    .line 1
    :try_start_0
    check-cast p1, Ljh2;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    iget p2, p0, Lqh2;->p:I

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    if-eq p2, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iget-object v1, p0, Lqh2;->o:Lph2;

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Ljh2;->n:Lrh2;

    .line 14
    .line 15
    iget-object p1, p1, Lrh2;->o:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object p1, Lph2;->e:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x3

    .line 23
    iput p2, p0, Lqh2;->p:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x4

    .line 27
    if-ne p2, v0, :cond_2

    .line 28
    .line 29
    iget-object p2, p1, Ljh2;->n:Lrh2;

    .line 30
    .line 31
    iget-object v5, p2, Lrh2;->n:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v6, p1, Ljh2;->o:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p2, Lrh2;->o:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v4, p1, Ljh2;->p:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p0, Lqh2;->q:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p2, Lnh2;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Lnh2;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Loh2;

    .line 50
    .line 51
    iget-object v7, p2, Lnh2;->p:[B

    .line 52
    .line 53
    iget v8, p2, Lnh2;->s:I

    .line 54
    .line 55
    iget-object v9, p2, Lnh2;->q:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v10, p2, Lnh2;->r:[B

    .line 58
    .line 59
    invoke-direct/range {v2 .. v10}, Loh2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lb70;->h()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 p2, 0x5

    .line 67
    iput p2, p0, Lqh2;->p:I

    .line 68
    .line 69
    :goto_0
    new-instance p2, Lb40;

    .line 70
    .line 71
    const/16 v0, 0x20

    .line 72
    .line 73
    invoke-direct {p2, v0}, Lb40;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Loj;->g()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_1

    .line 81
    .line 82
    const-string p0, "Proxy-Authorization"

    .line 83
    .line 84
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string p0, "Authorization"

    .line 89
    .line 90
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    const-string p0, ": NTLM "

    .line 94
    .line 95
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Lb40;->b(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Lcz;

    .line 102
    .line 103
    invoke-direct {p0, p2}, Lcz;-><init>(Lb40;)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_2
    new-instance p1, Luj;

    .line 108
    .line 109
    iget p0, p0, Lqh2;->p:I

    .line 110
    .line 111
    packed-switch p0, :pswitch_data_0

    .line 112
    .line 113
    .line 114
    const-string p0, "null"

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_0
    const-string p0, "FAILED"

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_1
    const-string p0, "MSG_TYPE3_GENERATED"

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_2
    const-string p0, "MSG_TYPE2_RECEVIED"

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :pswitch_3
    const-string p0, "MSG_TYPE1_GENERATED"

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_4
    const-string p0, "CHALLENGE_RECEIVED"

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :pswitch_5
    const-string p0, "UNINITIATED"

    .line 133
    .line 134
    :goto_2
    const-string p2, "Unexpected state: "

    .line 135
    .line 136
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_3
    new-instance p0, Luj;

    .line 149
    .line 150
    const-string p1, "NTLM authentication failed"

    .line 151
    .line 152
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :catch_0
    new-instance p0, Lut1;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string p2, "Credentials cannot be used for NTLM authentication: "

    .line 171
    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ntlm"

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget p0, p0, Lqh2;->p:I

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final h(Lb40;II)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lb40;->i(II)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lqh2;->q:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget p2, p0, Lqh2;->p:I

    .line 12
    .line 13
    const/4 p3, 0x6

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    iput p1, p0, Lqh2;->p:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput p3, p0, Lqh2;->p:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 p1, 0x3

    .line 27
    invoke-static {p2, p1}, Ldi0;->h(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ltz p2, :cond_3

    .line 32
    .line 33
    iget p2, p0, Lqh2;->p:I

    .line 34
    .line 35
    if-ne p2, p1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x4

    .line 38
    iput p1, p0, Lqh2;->p:I

    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :cond_3
    iput p3, p0, Lqh2;->p:I

    .line 42
    .line 43
    new-instance p0, Lo92;

    .line 44
    .line 45
    const-string p1, "Out of sequence NTLM response message"

    .line 46
    .line 47
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method
