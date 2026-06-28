.class public final Lk81;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements La81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:La81;

.field public final synthetic p:Ldf1;


# direct methods
.method public constructor <init>(La81;Ldf1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk81;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lk81;->p:Ldf1;

    .line 8
    .line 9
    iput-object p1, p0, Lk81;->o:La81;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(La81;Ldf1;I)V
    .locals 0

    .line 12
    iput p3, p0, Lk81;->n:I

    iput-object p1, p0, Lk81;->o:La81;

    iput-object p2, p0, Lk81;->p:Ldf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lk81;->n:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lk81;->o:La81;

    .line 5
    .line 6
    sget-object v3, Lt64;->a:Lt64;

    .line 7
    .line 8
    sget-object v4, Lri0;->n:Lri0;

    .line 9
    .line 10
    iget-object v5, p0, Lk81;->p:Ldf1;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance p0, Luq;

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    invoke-direct {p0, v0, p1, v5}, Luq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, p0, p2}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-ne p0, v4, :cond_0

    .line 26
    .line 27
    move-object v3, p0

    .line 28
    :cond_0
    return-object v3

    .line 29
    :pswitch_0
    new-instance p0, Ls33;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lke;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1, v5, v1}, Lke;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v0, p2}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-ne p0, v4, :cond_1

    .line 44
    .line 45
    move-object v3, p0

    .line 46
    :cond_1
    return-object v3

    .line 47
    :pswitch_1
    instance-of v0, p2, Lj81;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    move-object v0, p2

    .line 52
    check-cast v0, Lj81;

    .line 53
    .line 54
    iget v2, v0, Lj81;->r:I

    .line 55
    .line 56
    const/high16 v6, -0x80000000

    .line 57
    .line 58
    and-int v7, v2, v6

    .line 59
    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    sub-int/2addr v2, v6

    .line 63
    iput v2, v0, Lj81;->r:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Lj81;

    .line 67
    .line 68
    invoke-direct {v0, p0, p2}, Lj81;-><init>(Lk81;Ldh0;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object p2, v0, Lj81;->q:Ljava/lang/Object;

    .line 72
    .line 73
    iget v2, v0, Lj81;->r:I

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x1

    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    if-eq v2, v7, :cond_4

    .line 80
    .line 81
    if-ne v2, v1, :cond_3

    .line 82
    .line 83
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 88
    .line 89
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object v3, v6

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    iget-object p0, v0, Lj81;->v:Lsb3;

    .line 95
    .line 96
    iget-object p1, v0, Lj81;->u:Lb81;

    .line 97
    .line 98
    iget-object v2, v0, Lj81;->t:Lk81;

    .line 99
    .line 100
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_4

    .line 106
    :cond_5
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Lsb3;

    .line 110
    .line 111
    iget-object v2, v0, Lfh0;->o:Lhi0;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, p1, v2}, Lsb3;-><init>(Lb81;Lhi0;)V

    .line 117
    .line 118
    .line 119
    :try_start_1
    iput-object p0, v0, Lj81;->t:Lk81;

    .line 120
    .line 121
    iput-object p1, v0, Lj81;->u:Lb81;

    .line 122
    .line 123
    iput-object p2, v0, Lj81;->v:Lsb3;

    .line 124
    .line 125
    iput v7, v0, Lj81;->r:I

    .line 126
    .line 127
    invoke-interface {v5, p2, v0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    if-ne v2, v4, :cond_6

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    move-object v2, p0

    .line 135
    move-object p0, p2

    .line 136
    :goto_1
    invoke-virtual {p0}, Lfh0;->s()V

    .line 137
    .line 138
    .line 139
    iget-object p0, v2, Lk81;->o:La81;

    .line 140
    .line 141
    iput-object v6, v0, Lj81;->t:Lk81;

    .line 142
    .line 143
    iput-object v6, v0, Lj81;->u:Lb81;

    .line 144
    .line 145
    iput-object v6, v0, Lj81;->v:Lsb3;

    .line 146
    .line 147
    iput v1, v0, Lj81;->r:I

    .line 148
    .line 149
    invoke-interface {p0, p1, v0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-ne p0, v4, :cond_7

    .line 154
    .line 155
    :goto_2
    move-object v3, v4

    .line 156
    :cond_7
    :goto_3
    return-object v3

    .line 157
    :catchall_1
    move-exception p1

    .line 158
    move-object p0, p2

    .line 159
    :goto_4
    invoke-virtual {p0}, Lfh0;->s()V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
