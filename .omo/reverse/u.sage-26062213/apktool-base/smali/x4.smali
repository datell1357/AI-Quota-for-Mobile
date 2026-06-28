.class public final Lx4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lx4;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lx4;->s:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lx4;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ldj3;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lx4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lx4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lx4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lqi0;

    .line 24
    .line 25
    check-cast p2, Ldh0;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lx4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lx4;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lx4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_1
    check-cast p1, Lqi0;

    .line 38
    .line 39
    check-cast p2, Ldh0;

    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Lx4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lx4;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lx4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_2
    check-cast p1, Lsf0;

    .line 53
    .line 54
    check-cast p2, Ldh0;

    .line 55
    .line 56
    invoke-virtual {p0, p2, p1}, Lx4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lx4;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lx4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :pswitch_3
    check-cast p1, Lqi0;

    .line 67
    .line 68
    check-cast p2, Ldh0;

    .line 69
    .line 70
    invoke-virtual {p0, p2, p1}, Lx4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lx4;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lx4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 1

    .line 1
    iget p2, p0, Lx4;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Lx4;->s:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lx4;

    .line 9
    .line 10
    check-cast p0, Ldj3;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-direct {p2, p0, p1, v0}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_0
    new-instance p2, Lx4;

    .line 18
    .line 19
    check-cast p0, Lu/sage/MainActivity;

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-direct {p2, p0, p1, v0}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 23
    .line 24
    .line 25
    return-object p2

    .line 26
    :pswitch_1
    new-instance p2, Lx4;

    .line 27
    .line 28
    check-cast p0, Lqu0;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-direct {p2, p0, p1, v0}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 32
    .line 33
    .line 34
    return-object p2

    .line 35
    :pswitch_2
    new-instance p2, Lx4;

    .line 36
    .line 37
    check-cast p0, Log4;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-direct {p2, p0, p1, v0}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 41
    .line 42
    .line 43
    return-object p2

    .line 44
    :pswitch_3
    new-instance p2, Lx4;

    .line 45
    .line 46
    check-cast p0, Lh4;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-direct {p2, p0, p1, v0}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 50
    .line 51
    .line 52
    return-object p2

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lx4;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lx4;->s:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ldj3;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Ly84;->x:Lt11;

    .line 19
    .line 20
    iget-object p0, p0, Lx4;->s:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lu/sage/MainActivity;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lg1;

    .line 28
    .line 29
    invoke-direct {v0, v1, p1}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0}, Lg1;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lg1;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ly84;

    .line 43
    .line 44
    sget v1, Lu/sage/MainActivity;->C:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lu/sage/MainActivity;->j(Ly84;)Lpt;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v1, p1, Lpt;->f:Lbh0;

    .line 51
    .line 52
    new-instance v2, Lys;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-direct {v2, p1, v3}, Lys;-><init>(Lpt;Ldh0;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x3

    .line 59
    invoke-static {v1, v3, v3, v2, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lx4;->s:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lqu0;

    .line 72
    .line 73
    iget-object p1, p0, Lqu0;->u:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter p1

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lqu0;->z:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-boolean v0, p0, Lqu0;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_1
    const/4 v0, 0x1

    .line 86
    :try_start_1
    invoke-virtual {p0}, Lqu0;->R()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_5

    .line 92
    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lqu0;->B:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    :goto_1
    :try_start_3
    iget v2, p0, Lqu0;->w:I

    .line 95
    .line 96
    const/16 v3, 0x7d0

    .line 97
    .line 98
    if-lt v2, v3, :cond_2

    .line 99
    .line 100
    move v1, v0

    .line 101
    :cond_2
    if-eqz v1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p0}, Lqu0;->Y()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_1
    :try_start_4
    iput-boolean v0, p0, Lqu0;->C:Z

    .line 108
    .line 109
    new-instance v0, Lmw;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lc23;

    .line 115
    .line 116
    invoke-direct {v1, v0}, Lc23;-><init>(Lkn3;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lqu0;->x:Lc23;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    .line 121
    :cond_3
    :goto_2
    monitor-exit p1

    .line 122
    sget-object p0, Lt64;->a:Lt64;

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    :goto_3
    :try_start_5
    sget-object p0, Lt64;->a:Lt64;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    .line 127
    monitor-exit p1

    .line 128
    :goto_4
    return-object p0

    .line 129
    :goto_5
    monitor-exit p1

    .line 130
    throw p0

    .line 131
    :pswitch_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sget-object p1, Ljf0;->a:Ljava/lang/String;

    .line 135
    .line 136
    iget-object p0, p0, Lx4;->s:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Log4;

    .line 139
    .line 140
    invoke-static {}, Lt72;->g()Lt72;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v2, "Constraints changed for "

    .line 147
    .line 148
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v0, p1, p0}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object p0, Lt64;->a:Lt64;

    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lx4;->s:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p0, Lh4;

    .line 170
    .line 171
    invoke-virtual {p0}, Lh4;->a()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    sget-object p0, Lt64;->a:Lt64;

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
