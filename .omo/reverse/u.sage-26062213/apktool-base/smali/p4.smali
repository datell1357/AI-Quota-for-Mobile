.class public final Lp4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 12
    iput p3, p0, Lp4;->r:I

    iput-object p1, p0, Lp4;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lp4;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lp4;->s:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lp4;->t:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lp4;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lhg2;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lp4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lp4;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lp4;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_2
    check-cast p1, Lqi0;

    .line 53
    .line 54
    check-cast p2, Ldh0;

    .line 55
    .line 56
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lp4;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    throw p0

    .line 67
    :pswitch_3
    check-cast p1, Lqi0;

    .line 68
    .line 69
    check-cast p2, Ldh0;

    .line 70
    .line 71
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lp4;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_4
    check-cast p1, Lqi0;

    .line 82
    .line 83
    check-cast p2, Ldh0;

    .line 84
    .line 85
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Lp4;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :pswitch_5
    check-cast p1, Lqi0;

    .line 96
    .line 97
    check-cast p2, Ldh0;

    .line 98
    .line 99
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Lp4;

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :pswitch_6
    check-cast p1, Lqi0;

    .line 110
    .line 111
    check-cast p2, Ldh0;

    .line 112
    .line 113
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Lp4;

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :pswitch_7
    check-cast p1, Lsr3;

    .line 125
    .line 126
    check-cast p2, Ldh0;

    .line 127
    .line 128
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lp4;

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :pswitch_8
    check-cast p1, Lhg2;

    .line 140
    .line 141
    check-cast p2, Ldh0;

    .line 142
    .line 143
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Lp4;

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    return-object v1

    .line 153
    :pswitch_9
    check-cast p1, Lqi0;

    .line 154
    .line 155
    check-cast p2, Ldh0;

    .line 156
    .line 157
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p0, Lp4;

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :pswitch_a
    check-cast p1, Lqi0;

    .line 168
    .line 169
    check-cast p2, Ldh0;

    .line 170
    .line 171
    invoke-virtual {p0, p2, p1}, Lp4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Lp4;

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Lp4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    return-object v1

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget v0, p0, Lp4;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lp4;->t:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lp4;

    .line 9
    .line 10
    check-cast v1, Ljava/util/Set;

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    invoke-direct {p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lp4;->s:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    new-instance p2, Lp4;

    .line 21
    .line 22
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lpg2;

    .line 25
    .line 26
    check-cast v1, Lpg2;

    .line 27
    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    invoke-direct {p2, p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :pswitch_1
    new-instance p0, Lp4;

    .line 35
    .line 36
    check-cast v1, Ldf1;

    .line 37
    .line 38
    const/16 v0, 0x9

    .line 39
    .line 40
    invoke-direct {p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lp4;->s:Ljava/lang/Object;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_2
    new-instance p0, Lp4;

    .line 47
    .line 48
    check-cast v1, Lmb2;

    .line 49
    .line 50
    const/16 v0, 0x8

    .line 51
    .line 52
    invoke-direct {p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lp4;->s:Ljava/lang/Object;

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_3
    new-instance p2, Lp4;

    .line 59
    .line 60
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lxi2;

    .line 63
    .line 64
    check-cast v1, Ly84;

    .line 65
    .line 66
    const/4 v0, 0x7

    .line 67
    invoke-direct {p2, p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 68
    .line 69
    .line 70
    return-object p2

    .line 71
    :pswitch_4
    new-instance p2, Lp4;

    .line 72
    .line 73
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lu/sage/MainActivity;

    .line 76
    .line 77
    check-cast v1, Ly84;

    .line 78
    .line 79
    const/4 v0, 0x6

    .line 80
    invoke-direct {p2, p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 81
    .line 82
    .line 83
    return-object p2

    .line 84
    :pswitch_5
    new-instance p0, Lp4;

    .line 85
    .line 86
    check-cast v1, Li22;

    .line 87
    .line 88
    const/4 v0, 0x5

    .line 89
    invoke-direct {p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 90
    .line 91
    .line 92
    iput-object p2, p0, Lp4;->s:Ljava/lang/Object;

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_6
    new-instance p0, Lp4;

    .line 96
    .line 97
    check-cast v1, Lne1;

    .line 98
    .line 99
    const/4 v0, 0x4

    .line 100
    invoke-direct {p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 101
    .line 102
    .line 103
    iput-object p2, p0, Lp4;->s:Ljava/lang/Object;

    .line 104
    .line 105
    return-object p0

    .line 106
    :pswitch_7
    new-instance p0, Lp4;

    .line 107
    .line 108
    check-cast v1, Lsr3;

    .line 109
    .line 110
    const/4 v0, 0x3

    .line 111
    invoke-direct {p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 112
    .line 113
    .line 114
    iput-object p2, p0, Lp4;->s:Ljava/lang/Object;

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_8
    new-instance p0, Lp4;

    .line 118
    .line 119
    check-cast v1, Lps;

    .line 120
    .line 121
    const/4 v0, 0x2

    .line 122
    invoke-direct {p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 123
    .line 124
    .line 125
    iput-object p2, p0, Lp4;->s:Ljava/lang/Object;

    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_9
    new-instance p2, Lp4;

    .line 129
    .line 130
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Ls33;

    .line 133
    .line 134
    check-cast v1, Le4;

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    invoke-direct {p2, p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 138
    .line 139
    .line 140
    return-object p2

    .line 141
    :pswitch_a
    new-instance p2, Lp4;

    .line 142
    .line 143
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p0, Ln8;

    .line 146
    .line 147
    check-cast v1, Ly3;

    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-direct {p2, p0, v1, p1, v0}, Lp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 151
    .line 152
    .line 153
    return-object p2

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lp4;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lt64;->a:Lt64;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lp4;->t:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lhg2;

    .line 19
    .line 20
    invoke-virtual {p0}, Lhg2;->a()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Iterable;

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    const/16 v0, 0xa

    .line 33
    .line 34
    invoke-static {p0, v0}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lrx2;

    .line 56
    .line 57
    iget-object v0, v0, Lrx2;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    check-cast v5, Ljava/util/Set;

    .line 64
    .line 65
    sget-object p0, Ldm3;->a:Ljava/util/LinkedHashSet;

    .line 66
    .line 67
    if-ne v5, p0, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    check-cast v5, Ljava/lang/Iterable;

    .line 71
    .line 72
    instance-of p0, v5, Ljava/util/Collection;

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    move-object p0, v5

    .line 77
    check-cast p0, Ljava/util/Collection;

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    :cond_2
    move v1, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_4

    .line 108
    .line 109
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p0, Lpg2;

    .line 120
    .line 121
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/util/Map;

    .line 126
    .line 127
    check-cast v5, Lpg2;

    .line 128
    .line 129
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ly84;

    .line 134
    .line 135
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    sget-object p1, Lzi3;->a:Lwr3;

    .line 148
    .line 149
    invoke-virtual {p1}, Lwr3;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object v1, v0

    .line 170
    check-cast v1, Ly84;

    .line 171
    .line 172
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Ljava/util/Map;

    .line 177
    .line 178
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-static {v1, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_5

    .line 189
    .line 190
    move-object v2, v0

    .line 191
    :cond_6
    check-cast v2, Ly84;

    .line 192
    .line 193
    if-eqz v2, :cond_7

    .line 194
    .line 195
    invoke-interface {v5, v2}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    return-object v3

    .line 199
    :pswitch_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p0, Lqi0;

    .line 205
    .line 206
    invoke-interface {p0}, Lqi0;->d()Lhi0;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    sget-object p1, Lw13;->s:Lw13;

    .line 211
    .line 212
    invoke-interface {p0, p1}, Lhi0;->K(Lgi0;)Lfi0;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    check-cast p0, Lji0;

    .line 220
    .line 221
    invoke-static {}, Lix;->d()Lz80;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-instance v0, Lp;

    .line 226
    .line 227
    check-cast v5, Ldf1;

    .line 228
    .line 229
    const/16 v1, 0x17

    .line 230
    .line 231
    invoke-direct {v0, p1, v5, v2, v1}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 232
    .line 233
    .line 234
    sget-object v1, Lhh1;->n:Lhh1;

    .line 235
    .line 236
    sget-object v3, Lti0;->q:Lti0;

    .line 237
    .line 238
    invoke-static {v1, p0, v3, v0}, Lca;->x(Lqi0;Lhi0;Lti0;Ldf1;)Lir3;

    .line 239
    .line 240
    .line 241
    :catch_0
    invoke-virtual {p1}, Lbv1;->M()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    instance-of v0, v0, Lrp1;

    .line 246
    .line 247
    if-eqz v0, :cond_8

    .line 248
    .line 249
    :try_start_0
    new-instance v0, Lx50;

    .line 250
    .line 251
    const/16 v1, 0x11

    .line 252
    .line 253
    invoke-direct {v0, p1, v2, v1}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 254
    .line 255
    .line 256
    invoke-static {p0, v0}, Lca;->H(Lhi0;Ldf1;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_2

    .line 261
    :cond_8
    invoke-virtual {p1}, Lbv1;->D()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    :goto_2
    return-object p0

    .line 266
    :pswitch_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p0, Lqi0;

    .line 272
    .line 273
    throw v2

    .line 274
    :pswitch_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Lxi2;

    .line 280
    .line 281
    iget-object p1, p0, Lxi2;->b:Lii2;

    .line 282
    .line 283
    invoke-virtual {p1}, Lii2;->g()Lyh2;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    if-eqz p1, :cond_9

    .line 288
    .line 289
    iget-object p1, p1, Lyh2;->o:Lqi2;

    .line 290
    .line 291
    if-eqz p1, :cond_9

    .line 292
    .line 293
    iget-object p1, p1, Lqi2;->o:Lgg;

    .line 294
    .line 295
    iget-object p1, p1, Lgg;->e:Ljava/lang/Object;

    .line 296
    .line 297
    :cond_9
    sget-object p1, Lez3;->a:Lra3;

    .line 298
    .line 299
    check-cast v5, Ly84;

    .line 300
    .line 301
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    new-array v0, v4, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Lxi2;->c()V

    .line 313
    .line 314
    .line 315
    return-object v3

    .line 316
    :pswitch_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast p0, Lu/sage/MainActivity;

    .line 322
    .line 323
    invoke-virtual {p0}, Lu/sage/MainActivity;->i()Ln8;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    check-cast v5, Ly84;

    .line 328
    .line 329
    iget-object p1, v5, Ly84;->q:Ljava/lang/String;

    .line 330
    .line 331
    const-string v0, "UsageScreen"

    .line 332
    .line 333
    invoke-virtual {p0, p1, v0}, Ln8;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return-object v3

    .line 337
    :pswitch_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast p0, Lqi0;

    .line 343
    .line 344
    check-cast v5, Li22;

    .line 345
    .line 346
    iget-object p1, v5, Li22;->n:Lh22;

    .line 347
    .line 348
    move-object v0, p1

    .line 349
    check-cast v0, Lr22;

    .line 350
    .line 351
    iget-object v0, v0, Lr22;->d:Lg22;

    .line 352
    .line 353
    sget-object v1, Lg22;->o:Lg22;

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-ltz v0, :cond_a

    .line 360
    .line 361
    invoke-virtual {p1, v5}, Lh22;->a(Lo22;)V

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_a
    invoke-interface {p0}, Lqi0;->d()Lhi0;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    invoke-static {p0, v2}, Ln44;->S(Lhi0;Ljava/util/concurrent/CancellationException;)V

    .line 370
    .line 371
    .line 372
    :goto_3
    return-object v3

    .line 373
    :pswitch_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast p0, Lqi0;

    .line 379
    .line 380
    invoke-interface {p0}, Lqi0;->d()Lhi0;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    check-cast v5, Lne1;

    .line 385
    .line 386
    :try_start_1
    new-instance p1, Lty3;

    .line 387
    .line 388
    invoke-direct {p1}, Lty3;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-static {p0}, Ln44;->o0(Lhi0;)Ltu1;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    invoke-static {p0, v1, p1}, Ln44;->s0(Ltu1;ZLwu1;)Ljv0;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    iput-object p0, p1, Lty3;->v:Ljv0;

    .line 400
    .line 401
    sget-object p0, Lty3;->w:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 402
    .line 403
    :cond_b
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_d

    .line 408
    .line 409
    const/4 p0, 0x2

    .line 410
    if-eq v0, p0, :cond_e

    .line 411
    .line 412
    const/4 p0, 0x3

    .line 413
    if-ne v0, p0, :cond_c

    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_c
    invoke-static {v0}, Lty3;->u(I)V

    .line 417
    .line 418
    .line 419
    throw v2

    .line 420
    :cond_d
    invoke-virtual {p0, p1, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 421
    .line 422
    .line 423
    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    if-eqz v0, :cond_b

    .line 425
    .line 426
    :cond_e
    :goto_4
    :try_start_2
    invoke-interface {v5}, Lne1;->a()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :try_start_3
    invoke-virtual {p1}, Lty3;->t()V

    .line 431
    .line 432
    .line 433
    return-object p0

    .line 434
    :catchall_0
    move-exception p0

    .line 435
    invoke-virtual {p1}, Lty3;->t()V

    .line 436
    .line 437
    .line 438
    throw p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 439
    :catch_1
    move-exception p0

    .line 440
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 441
    .line 442
    const-string v0, "Blocking call was interrupted due to parent cancellation"

    .line 443
    .line 444
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    throw p0

    .line 452
    :pswitch_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast p0, Lsr3;

    .line 458
    .line 459
    instance-of p1, p0, Lam0;

    .line 460
    .line 461
    if-eqz p1, :cond_f

    .line 462
    .line 463
    check-cast p0, Lam0;

    .line 464
    .line 465
    iget p0, p0, Lsr3;->a:I

    .line 466
    .line 467
    check-cast v5, Lsr3;

    .line 468
    .line 469
    check-cast v5, Lam0;

    .line 470
    .line 471
    iget p1, v5, Lsr3;->a:I

    .line 472
    .line 473
    if-gt p0, p1, :cond_f

    .line 474
    .line 475
    goto :goto_5

    .line 476
    :cond_f
    move v1, v4

    .line 477
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    return-object p0

    .line 482
    :pswitch_8
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast p0, Lhg2;

    .line 485
    .line 486
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    sget-object p1, Lps;->l:Lrx2;

    .line 490
    .line 491
    invoke-virtual {p0, p1}, Lhg2;->c(Lrx2;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 496
    .line 497
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    if-nez v0, :cond_13

    .line 502
    .line 503
    sget-object v0, Lps;->j:Lrx2;

    .line 504
    .line 505
    invoke-virtual {p0, v0}, Lhg2;->c(Lrx2;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    check-cast v6, Ljava/lang/Boolean;

    .line 510
    .line 511
    if-eqz v6, :cond_10

    .line 512
    .line 513
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 514
    .line 515
    .line 516
    move-result v6

    .line 517
    goto :goto_6

    .line 518
    :cond_10
    move v6, v4

    .line 519
    :goto_6
    if-eqz v6, :cond_12

    .line 520
    .line 521
    :cond_11
    move v1, v4

    .line 522
    goto :goto_7

    .line 523
    :cond_12
    check-cast v5, Lps;

    .line 524
    .line 525
    invoke-virtual {v5}, Lps;->b()Ly84;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    sget-object v6, Ly84;->r:Ly84;

    .line 530
    .line 531
    if-ne v5, v6, :cond_11

    .line 532
    .line 533
    :goto_7
    sget-object v4, Lps;->k:Lrx2;

    .line 534
    .line 535
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {p0, v4, v1}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p0, p1, v2}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p0, v0}, Lhg2;->d(Lrx2;)V

    .line 546
    .line 547
    .line 548
    :cond_13
    return-object v3

    .line 549
    :pswitch_9
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast p0, Ls33;

    .line 555
    .line 556
    iput-boolean v4, p0, Ls33;->n:Z

    .line 557
    .line 558
    check-cast v5, Le4;

    .line 559
    .line 560
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 561
    .line 562
    invoke-virtual {v5, p0}, Le4;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    return-object v3

    .line 566
    :pswitch_a
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    iget-object p0, p0, Lp4;->s:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast p0, Ln8;

    .line 572
    .line 573
    check-cast v5, Ly3;

    .line 574
    .line 575
    iget-object p1, v5, Ly3;->a:Ly84;

    .line 576
    .line 577
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 582
    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    const-string v1, "_account"

    .line 591
    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    const-string v1, "AccountScreen"

    .line 597
    .line 598
    invoke-virtual {p0, v0, v1}, Ln8;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    sget-object v0, Lez3;->a:Lra3;

    .line 602
    .line 603
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    new-array v1, v4, [Ljava/lang/Object;

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    new-instance v0, Landroid/os/Bundle;

    .line 615
    .line 616
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string v1, "service_type"

    .line 620
    .line 621
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    const-string p1, "account_screen_opened"

    .line 629
    .line 630
    invoke-virtual {p0, p1, v0}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p0}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 634
    .line 635
    .line 636
    move-result-object p0

    .line 637
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 638
    .line 639
    .line 640
    return-object v3

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
