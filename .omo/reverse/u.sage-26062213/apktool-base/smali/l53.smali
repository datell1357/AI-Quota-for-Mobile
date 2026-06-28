.class public final Ll53;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Ljava/util/Set;

.field public b:Lcc0;

.field public final c:Lug2;

.field public d:Llg2;

.field public e:Lug2;

.field public final f:Lug2;

.field public final g:Lug2;

.field public h:Llg2;

.field public i:Lkg2;

.field public j:Ljava/util/ArrayList;

.field public k:Llg2;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lug2;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v2, v1, [Leg1;

    .line 9
    .line 10
    invoke-direct {v0, v2}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ll53;->c:Lug2;

    .line 14
    .line 15
    sget-object v2, Lud3;->a:Llg2;

    .line 16
    .line 17
    new-instance v2, Llg2;

    .line 18
    .line 19
    invoke-direct {v2}, Llg2;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Ll53;->d:Llg2;

    .line 23
    .line 24
    iput-object v0, p0, Ll53;->e:Lug2;

    .line 25
    .line 26
    new-instance v0, Lug2;

    .line 27
    .line 28
    new-array v2, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v0, v2}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Ll53;->f:Lug2;

    .line 34
    .line 35
    new-instance v0, Lug2;

    .line 36
    .line 37
    new-array v1, v1, [Lne1;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Ll53;->g:Lug2;

    .line 43
    .line 44
    return-void
.end method

.method public static final f(Leg1;Lug2;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lug2;->n:[Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p1, Lug2;->p:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    check-cast v3, Leg1;

    .line 12
    .line 13
    iget-object v3, v3, Leg1;->a:Lm53;

    .line 14
    .line 15
    instance-of v4, v3, Lau2;

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    check-cast v3, Lau2;

    .line 20
    .line 21
    iget-object v3, v3, Lau2;->o:Lug2;

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Lug2;->k(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p0, v3}, Ll53;->f(Leg1;Lug2;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    :goto_1
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ll53;->a:Ljava/util/Set;

    .line 3
    .line 4
    iput-object v0, p0, Ll53;->b:Lcc0;

    .line 5
    .line 6
    iget-object v1, p0, Ll53;->c:Lug2;

    .line 7
    .line 8
    invoke-virtual {v1}, Lug2;->h()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Ll53;->d:Llg2;

    .line 12
    .line 13
    invoke-virtual {v2}, Llg2;->b()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Ll53;->e:Lug2;

    .line 17
    .line 18
    iget-object v1, p0, Ll53;->f:Lug2;

    .line 19
    .line 20
    invoke-virtual {v1}, Lug2;->h()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ll53;->g:Lug2;

    .line 24
    .line 25
    invoke-virtual {v1}, Lug2;->h()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Ll53;->h:Llg2;

    .line 29
    .line 30
    iput-object v0, p0, Ll53;->i:Lkg2;

    .line 31
    .line 32
    iput-object v0, p0, Ll53;->j:Ljava/util/ArrayList;

    .line 33
    .line 34
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object p0, p0, Ll53;->a:Ljava/util/Set;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    move-object v0, p0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    const-string v0, "Compose:abandons"

    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lm53;

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lm53;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Ll53;->a:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Ll53;->k:Llg2;

    .line 9
    .line 10
    iget-object v1, p0, Ll53;->f:Lug2;

    .line 11
    .line 12
    iget v2, v1, Lug2;->p:I

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    const-string v2, "Compose:onForgotten"

    .line 19
    .line 20
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v2, p0, Ll53;->h:Llg2;

    .line 24
    .line 25
    iget v4, v1, Lug2;->p:I

    .line 26
    .line 27
    add-int/lit8 v4, v4, -0x1

    .line 28
    .line 29
    :goto_0
    const/4 v5, -0x1

    .line 30
    if-ge v5, v4, :cond_5

    .line 31
    .line 32
    iget-object v5, v1, Lug2;->n:[Ljava/lang/Object;

    .line 33
    .line 34
    aget-object v5, v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    .line 36
    :try_start_1
    instance-of v6, v5, Leg1;

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    move-object v6, v5

    .line 41
    check-cast v6, Leg1;

    .line 42
    .line 43
    iget-object v6, v6, Leg1;->a:Lm53;

    .line 44
    .line 45
    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-interface {v6}, Lm53;->e()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    :goto_1
    instance-of v6, v5, Lya0;

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, v5}, Llg2;->c(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    move-object v6, v5

    .line 67
    check-cast v6, Lya0;

    .line 68
    .line 69
    invoke-interface {v6}, Lya0;->f()V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-object v6, v5

    .line 74
    check-cast v6, Lya0;

    .line 75
    .line 76
    invoke-interface {v6}, Lya0;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_3
    :try_start_2
    iget-object p0, p0, Ll53;->b:Lcc0;

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    new-instance v1, Lh4;

    .line 87
    .line 88
    invoke-direct {v1, v3, p0, v5}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lmt1;->W(Ljava/lang/Throwable;Lne1;)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_6
    :goto_4
    iget-object v0, p0, Ll53;->c:Lug2;

    .line 105
    .line 106
    iget v1, v0, Lug2;->p:I

    .line 107
    .line 108
    if-eqz v1, :cond_a

    .line 109
    .line 110
    const-string v1, "Compose:onRemembered"

    .line 111
    .line 112
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :try_start_3
    iget-object v1, p0, Ll53;->a:Ljava/util/Set;

    .line 116
    .line 117
    if-nez v1, :cond_7

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_7
    iget-object v2, v0, Lug2;->n:[Ljava/lang/Object;

    .line 121
    .line 122
    iget v0, v0, Lug2;->p:I

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    :goto_5
    if-ge v4, v0, :cond_9

    .line 126
    .line 127
    aget-object v5, v2, v4

    .line 128
    .line 129
    check-cast v5, Leg1;

    .line 130
    .line 131
    iget-object v6, v5, Leg1;->a:Lm53;

    .line 132
    .line 133
    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 134
    .line 135
    .line 136
    :try_start_4
    invoke-interface {v6}, Lm53;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 137
    .line 138
    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :catchall_2
    move-exception v0

    .line 143
    :try_start_5
    iget-object p0, p0, Ll53;->b:Lcc0;

    .line 144
    .line 145
    if-eqz p0, :cond_8

    .line 146
    .line 147
    new-instance v1, Lh4;

    .line 148
    .line 149
    invoke-direct {v1, v3, p0, v5}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Lmt1;->W(Ljava/lang/Throwable;Lne1;)Z

    .line 153
    .line 154
    .line 155
    :cond_8
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 156
    :cond_9
    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :catchall_3
    move-exception p0

    .line 161
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_a
    :goto_7
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object p0, p0, Ll53;->g:Lug2;

    .line 2
    .line 3
    iget v0, p0, Lug2;->p:I

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "Compose:sideeffects"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, p0, Lug2;->p:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_0

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    check-cast v3, Lne1;

    .line 22
    .line 23
    invoke-interface {v3}, Lne1;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lug2;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    return-void
.end method

.method public final e(Leg1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll53;->d:Llg2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Llg2;->c(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Ll53;->d:Llg2;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Llg2;->l(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ll53;->e:Lug2;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lug2;->k(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Ll53;->c:Lug2;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lug2;->k(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1, v0}, Ll53;->f(Leg1;Lug2;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p0, p0, Ll53;->a:Ljava/util/Set;

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p1, p1, Leg1;->a:Lm53;

    .line 40
    .line 41
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget-object v0, p0, Ll53;->k:Llg2;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Llg2;->c(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    :goto_1
    return-void

    .line 57
    :cond_5
    :goto_2
    iget-object p0, p0, Ll53;->f:Lug2;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lug2;->c(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final g(Ljava/util/Set;Lcc0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll53;->a()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll53;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Ll53;->b:Lcc0;

    .line 7
    .line 8
    return-void
.end method
