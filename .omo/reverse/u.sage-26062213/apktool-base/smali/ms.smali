.class public final Lms;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public synthetic s:Ljava/lang/Object;

.field public synthetic t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lms;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lms;->s:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ZLdh0;I)V
    .locals 0

    .line 11
    iput p3, p0, Lms;->r:I

    iput-boolean p1, p0, Lms;->t:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lms;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    check-cast p2, Ldh0;

    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lms;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lms;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lms;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_0
    check-cast p1, Lhg2;

    .line 26
    .line 27
    check-cast p2, Ldh0;

    .line 28
    .line 29
    invoke-virtual {p0, p2, p1}, Lms;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lms;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lms;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_1
    check-cast p1, Lhg2;

    .line 40
    .line 41
    check-cast p2, Ldh0;

    .line 42
    .line 43
    invoke-virtual {p0, p2, p1}, Lms;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lms;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lms;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :pswitch_2
    check-cast p1, Lhg2;

    .line 54
    .line 55
    check-cast p2, Ldh0;

    .line 56
    .line 57
    invoke-virtual {p0, p2, p1}, Lms;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lms;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lms;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :pswitch_3
    check-cast p1, Lhg2;

    .line 68
    .line 69
    check-cast p2, Ldh0;

    .line 70
    .line 71
    invoke-virtual {p0, p2, p1}, Lms;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lms;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lms;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_4
    check-cast p1, Lhg2;

    .line 82
    .line 83
    check-cast p2, Ldh0;

    .line 84
    .line 85
    invoke-virtual {p0, p2, p1}, Lms;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Lms;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lms;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :pswitch_5
    check-cast p1, Lhg2;

    .line 96
    .line 97
    check-cast p2, Ldh0;

    .line 98
    .line 99
    invoke-virtual {p0, p2, p1}, Lms;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Lms;

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lms;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :pswitch_6
    check-cast p1, Lhg2;

    .line 110
    .line 111
    check-cast p2, Ldh0;

    .line 112
    .line 113
    invoke-virtual {p0, p2, p1}, Lms;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Lms;

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lms;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    return-object v1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lms;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lms;

    .line 7
    .line 8
    iget-object p0, p0, Lms;->s:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lms;-><init>(Landroid/content/Context;Ldh0;)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iput-boolean p0, v0, Lms;->t:Z

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance v0, Lms;

    .line 25
    .line 26
    iget-boolean p0, p0, Lms;->t:Z

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    invoke-direct {v0, p0, p1, v1}, Lms;-><init>(ZLdh0;I)V

    .line 30
    .line 31
    .line 32
    iput-object p2, v0, Lms;->s:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_1
    new-instance v0, Lms;

    .line 36
    .line 37
    iget-boolean p0, p0, Lms;->t:Z

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    invoke-direct {v0, p0, p1, v1}, Lms;-><init>(ZLdh0;I)V

    .line 41
    .line 42
    .line 43
    iput-object p2, v0, Lms;->s:Ljava/lang/Object;

    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_2
    new-instance v0, Lms;

    .line 47
    .line 48
    iget-boolean p0, p0, Lms;->t:Z

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-direct {v0, p0, p1, v1}, Lms;-><init>(ZLdh0;I)V

    .line 52
    .line 53
    .line 54
    iput-object p2, v0, Lms;->s:Ljava/lang/Object;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_3
    new-instance v0, Lms;

    .line 58
    .line 59
    iget-boolean p0, p0, Lms;->t:Z

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    invoke-direct {v0, p0, p1, v1}, Lms;-><init>(ZLdh0;I)V

    .line 63
    .line 64
    .line 65
    iput-object p2, v0, Lms;->s:Ljava/lang/Object;

    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_4
    new-instance v0, Lms;

    .line 69
    .line 70
    iget-boolean p0, p0, Lms;->t:Z

    .line 71
    .line 72
    const/4 v1, 0x2

    .line 73
    invoke-direct {v0, p0, p1, v1}, Lms;-><init>(ZLdh0;I)V

    .line 74
    .line 75
    .line 76
    iput-object p2, v0, Lms;->s:Ljava/lang/Object;

    .line 77
    .line 78
    return-object v0

    .line 79
    :pswitch_5
    new-instance v0, Lms;

    .line 80
    .line 81
    iget-boolean p0, p0, Lms;->t:Z

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-direct {v0, p0, p1, v1}, Lms;-><init>(ZLdh0;I)V

    .line 85
    .line 86
    .line 87
    iput-object p2, v0, Lms;->s:Ljava/lang/Object;

    .line 88
    .line 89
    return-object v0

    .line 90
    :pswitch_6
    new-instance v0, Lms;

    .line 91
    .line 92
    iget-boolean p0, p0, Lms;->t:Z

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-direct {v0, p0, p1, v1}, Lms;-><init>(ZLdh0;I)V

    .line 96
    .line 97
    .line 98
    iput-object p2, v0, Lms;->s:Ljava/lang/Object;

    .line 99
    .line 100
    return-object v0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 2

    .line 1
    iget v0, p0, Lms;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lms;->t:Z

    .line 12
    .line 13
    iget-object p0, p0, Lms;->s:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroid/content/Context;

    .line 16
    .line 17
    const-class v0, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 18
    .line 19
    invoke-static {p0, v0, p1}, Lvr2;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_0
    iget-object v0, p0, Lms;->s:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lhg2;

    .line 26
    .line 27
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lus0;->e:Lrx2;

    .line 31
    .line 32
    iget-boolean p0, p0, Lms;->t:Z

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_1
    iget-object v0, p0, Lms;->s:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lhg2;

    .line 45
    .line 46
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lus0;->h:Lrx2;

    .line 50
    .line 51
    iget-boolean p0, p0, Lms;->t:Z

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :pswitch_2
    iget-object v0, p0, Lms;->s:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lhg2;

    .line 64
    .line 65
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lus0;->f:Lrx2;

    .line 69
    .line 70
    iget-boolean p0, p0, Lms;->t:Z

    .line 71
    .line 72
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :pswitch_3
    iget-object v0, p0, Lms;->s:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lhg2;

    .line 83
    .line 84
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lo10;->a:Lrx2;

    .line 88
    .line 89
    iget-boolean p0, p0, Lms;->t:Z

    .line 90
    .line 91
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object v1

    .line 99
    :pswitch_4
    iget-object v0, p0, Lms;->s:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lhg2;

    .line 102
    .line 103
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lps;->i:Lrx2;

    .line 107
    .line 108
    sget-object p1, Lps;->m:Lrx2;

    .line 109
    .line 110
    iget-boolean p0, p0, Lms;->t:Z

    .line 111
    .line 112
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v0, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    :pswitch_5
    iget-object v0, p0, Lms;->s:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lhg2;

    .line 123
    .line 124
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lps;->i:Lrx2;

    .line 128
    .line 129
    sget-object p1, Lps;->k:Lrx2;

    .line 130
    .line 131
    iget-boolean p0, p0, Lms;->t:Z

    .line 132
    .line 133
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {v0, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    return-object v1

    .line 141
    :pswitch_6
    iget-object v0, p0, Lms;->s:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Lhg2;

    .line 144
    .line 145
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lps;->i:Lrx2;

    .line 149
    .line 150
    sget-object p1, Lps;->q:Lrx2;

    .line 151
    .line 152
    iget-boolean p0, p0, Lms;->t:Z

    .line 153
    .line 154
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v0, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    return-object v1

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
