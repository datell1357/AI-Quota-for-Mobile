.class public final Li81;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements La81;


# instance fields
.field public final synthetic n:La81;

.field public final synthetic o:Lff1;


# direct methods
.method public constructor <init>(La81;Lff1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li81;->n:La81;

    .line 5
    .line 6
    iput-object p2, p0, Li81;->o:Lff1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lh81;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lh81;

    .line 7
    .line 8
    iget v1, v0, Lh81;->r:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lh81;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lh81;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lh81;-><init>(Li81;Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lh81;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lh81;->r:I

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    sget-object v6, Lri0;->n:Lri0;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eq v1, v4, :cond_3

    .line 38
    .line 39
    if-eq v1, v3, :cond_2

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lh81;->t:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lsb3;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v5

    .line 59
    :cond_2
    iget-object p0, v0, Lh81;->t:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Ljava/lang/Throwable;

    .line 62
    .line 63
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_6

    .line 67
    :cond_3
    iget-object p1, v0, Lh81;->u:Lb81;

    .line 68
    .line 69
    iget-object p0, v0, Lh81;->t:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Li81;

    .line 72
    .line 73
    :try_start_1
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    move-object v7, p1

    .line 79
    move-object p1, p0

    .line 80
    move-object p0, v7

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :try_start_2
    iget-object p2, p0, Li81;->n:La81;

    .line 86
    .line 87
    iput-object p0, v0, Lh81;->t:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object p1, v0, Lh81;->u:Lb81;

    .line 90
    .line 91
    iput v4, v0, Lh81;->r:I

    .line 92
    .line 93
    invoke-interface {p2, p1, v0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    if-ne p2, v6, :cond_5

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_5
    :goto_1
    new-instance p2, Lsb3;

    .line 101
    .line 102
    iget-object v1, v0, Lfh0;->o:Lhi0;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, p1, v1}, Lsb3;-><init>(Lb81;Lhi0;)V

    .line 108
    .line 109
    .line 110
    :try_start_3
    iget-object p0, p0, Li81;->o:Lff1;

    .line 111
    .line 112
    iput-object p2, v0, Lh81;->t:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v5, v0, Lh81;->u:Lb81;

    .line 115
    .line 116
    iput v2, v0, Lh81;->r:I

    .line 117
    .line 118
    invoke-interface {p0, p2, v5, v0}, Lff1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 122
    if-ne p0, v6, :cond_6

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_6
    move-object p0, p2

    .line 126
    :goto_2
    invoke-virtual {p0}, Lfh0;->s()V

    .line 127
    .line 128
    .line 129
    sget-object p0, Lt64;->a:Lt64;

    .line 130
    .line 131
    return-object p0

    .line 132
    :catchall_2
    move-exception p1

    .line 133
    move-object p0, p2

    .line 134
    :goto_3
    invoke-virtual {p0}, Lfh0;->s()V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :goto_4
    new-instance p2, Lyy3;

    .line 139
    .line 140
    invoke-direct {p2, p0}, Lyy3;-><init>(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Li81;->o:Lff1;

    .line 144
    .line 145
    iput-object p0, v0, Lh81;->t:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object v5, v0, Lh81;->u:Lb81;

    .line 148
    .line 149
    iput v3, v0, Lh81;->r:I

    .line 150
    .line 151
    invoke-static {p2, p1, p0, v0}, Lqn0;->f(Lyy3;Lff1;Ljava/lang/Throwable;Lfh0;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-ne p1, v6, :cond_7

    .line 156
    .line 157
    :goto_5
    return-object v6

    .line 158
    :cond_7
    :goto_6
    throw p0
.end method
