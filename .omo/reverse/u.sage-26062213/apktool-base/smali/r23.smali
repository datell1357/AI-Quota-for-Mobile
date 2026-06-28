.class public final Lr23;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;

.field public c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le7;Lra3;Lh23;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lr23;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lr23;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p4, p0, Lr23;->a:Z

    .line 12
    .line 13
    sget-object p2, Lg01;->n:Lg01;

    .line 14
    .line 15
    iput-object p2, p0, Lr23;->b:Ljava/util/List;

    .line 16
    .line 17
    iput-object p2, p0, Lr23;->f:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance p2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lr23;->g:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object p2, p1, Le7;->h:Lcn1;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcn1;->g()Ljava/net/URI;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    if-nez p3, :cond_0

    .line 40
    .line 41
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 42
    .line 43
    filled-new-array {p1}, [Ljava/net/Proxy;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lhi4;->i([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object p1, p1, Le7;->g:Ljava/net/ProxySelector;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {p1}, Lhi4;->h(Ljava/util/List;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 73
    .line 74
    filled-new-array {p1}, [Ljava/net/Proxy;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lhi4;->i([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_1
    iput-object p1, p0, Lr23;->b:Ljava/util/List;

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lr23;->c:I

    .line 86
    .line 87
    return-void
.end method

.method public constructor <init>(Ljo1;Ljava/util/List;ILjo1;Lln3;Lj21;Z)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lr23;->d:Ljava/lang/Object;

    .line 90
    iput-object p2, p0, Lr23;->b:Ljava/util/List;

    .line 91
    iput p3, p0, Lr23;->c:I

    .line 92
    iput-object p4, p0, Lr23;->e:Ljava/lang/Object;

    .line 93
    iput-object p5, p0, Lr23;->f:Ljava/lang/Object;

    .line 94
    iput-object p6, p0, Lr23;->g:Ljava/lang/Object;

    .line 95
    iput-boolean p7, p0, Lr23;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lr23;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lr23;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lr23;->g:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public b(Lfh0;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lr23;->d:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v2, v0

    .line 4
    check-cast v2, Ljo1;

    .line 5
    .line 6
    iget v0, p0, Lr23;->c:I

    .line 7
    .line 8
    instance-of v1, p1, Lp23;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lp23;

    .line 14
    .line 15
    iget v3, v1, Lp23;->t:I

    .line 16
    .line 17
    const/high16 v4, -0x80000000

    .line 18
    .line 19
    and-int v5, v3, v4

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sub-int/2addr v3, v4

    .line 24
    iput v3, v1, Lp23;->t:I

    .line 25
    .line 26
    :goto_0
    move-object p1, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance v1, Lp23;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lp23;-><init>(Lr23;Lfh0;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iget-object v1, p1, Lp23;->r:Ljava/lang/Object;

    .line 35
    .line 36
    iget v3, p1, Lp23;->t:I

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-ne v3, v10, :cond_1

    .line 43
    .line 44
    iget-object p0, p1, Lp23;->q:Lx01;

    .line 45
    .line 46
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v9

    .line 56
    :cond_2
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lr23;->b:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v11, v1

    .line 66
    check-cast v11, Lx01;

    .line 67
    .line 68
    add-int/lit8 v4, v0, 0x1

    .line 69
    .line 70
    iget-object v0, p0, Lr23;->e:Ljava/lang/Object;

    .line 71
    .line 72
    move-object v5, v0

    .line 73
    check-cast v5, Ljo1;

    .line 74
    .line 75
    iget-object v0, p0, Lr23;->f:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v6, v0

    .line 78
    check-cast v6, Lln3;

    .line 79
    .line 80
    new-instance v1, Lr23;

    .line 81
    .line 82
    iget-object v0, p0, Lr23;->g:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v7, v0

    .line 85
    check-cast v7, Lj21;

    .line 86
    .line 87
    iget-boolean v8, p0, Lr23;->a:Z

    .line 88
    .line 89
    iget-object v3, p0, Lr23;->b:Ljava/util/List;

    .line 90
    .line 91
    invoke-direct/range {v1 .. v8}, Lr23;-><init>(Ljo1;Ljava/util/List;ILjo1;Lln3;Lj21;Z)V

    .line 92
    .line 93
    .line 94
    iput-object v11, p1, Lp23;->q:Lx01;

    .line 95
    .line 96
    iput v10, p1, Lp23;->t:I

    .line 97
    .line 98
    invoke-virtual {v11, v1, p1}, Lx01;->d(Lr23;Lfh0;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object p0, Lri0;->n:Lri0;

    .line 103
    .line 104
    if-ne v1, p0, :cond_3

    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_3
    move-object p0, v11

    .line 108
    :goto_2
    check-cast v1, Loo1;

    .line 109
    .line 110
    invoke-interface {v1}, Loo1;->a()Ljo1;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v0, p1, Ljo1;->a:Landroid/content/Context;

    .line 115
    .line 116
    iget-object v3, v2, Ljo1;->a:Landroid/content/Context;

    .line 117
    .line 118
    const-string v4, "Interceptor \'"

    .line 119
    .line 120
    if-ne v0, v3, :cond_7

    .line 121
    .line 122
    iget-object v0, p1, Ljo1;->b:Ljava/lang/Object;

    .line 123
    .line 124
    sget-object v3, Lhn2;->a:Lhn2;

    .line 125
    .line 126
    if-eq v0, v3, :cond_6

    .line 127
    .line 128
    iget-object v0, p1, Ljo1;->c:Ljw3;

    .line 129
    .line 130
    iget-object v3, v2, Ljo1;->c:Ljw3;

    .line 131
    .line 132
    if-ne v0, v3, :cond_5

    .line 133
    .line 134
    iget-object p1, p1, Ljo1;->o:Lqn3;

    .line 135
    .line 136
    iget-object v0, v2, Ljo1;->o:Lqn3;

    .line 137
    .line 138
    if-ne p1, v0, :cond_4

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_4
    const-string p1, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    .line 142
    .line 143
    invoke-static {p0, p1, v4}, Lk21;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object v9

    .line 147
    :cond_5
    const-string p1, "\' cannot modify the request\'s target."

    .line 148
    .line 149
    invoke-static {p0, p1, v4}, Lk21;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v9

    .line 153
    :cond_6
    const-string p1, "\' cannot set the request\'s data to null."

    .line 154
    .line 155
    invoke-static {p0, p1, v4}, Lk21;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v9

    .line 159
    :cond_7
    const-string p1, "\' cannot modify the request\'s context."

    .line 160
    .line 161
    invoke-static {p0, p1, v4}, Lk21;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v9
.end method
