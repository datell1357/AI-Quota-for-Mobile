.class public final Lfn0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llm0;


# instance fields
.field public final a:Lk51;

.field public final b:Lyi0;

.field public final c:Lqi0;

.field public final d:Lmt;

.field public final e:Lhh2;

.field public f:I

.field public g:Lir3;

.field public final h:Lwu4;

.field public final i:Lqd1;

.field public final j:Lnv3;

.field public final k:Lnv3;

.field public final l:Lqd1;


# direct methods
.method public constructor <init>(Lk51;Ljava/util/List;Lyi0;Lqi0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfn0;->a:Lk51;

    .line 5
    .line 6
    iput-object p3, p0, Lfn0;->b:Lyi0;

    .line 7
    .line 8
    iput-object p4, p0, Lfn0;->c:Lqi0;

    .line 9
    .line 10
    new-instance p1, Lp;

    .line 11
    .line 12
    const/16 p3, 0x9

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p1, p0, v0, p3}, Lp;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Lmt;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-direct {p3, v1, p1}, Lmt;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lfn0;->d:Lmt;

    .line 25
    .line 26
    new-instance p1, Lhh2;

    .line 27
    .line 28
    invoke-direct {p1}, Lhh2;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lfn0;->e:Lhh2;

    .line 32
    .line 33
    new-instance p1, Lwu4;

    .line 34
    .line 35
    const/16 p3, 0x13

    .line 36
    .line 37
    invoke-direct {p1, p3}, Lwu4;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lfn0;->h:Lwu4;

    .line 41
    .line 42
    new-instance p1, Lqd1;

    .line 43
    .line 44
    invoke-direct {p1, p0, p2}, Lqd1;-><init>(Lfn0;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lfn0;->i:Lqd1;

    .line 48
    .line 49
    new-instance p1, Lmm0;

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-direct {p1, p0, p2}, Lmm0;-><init>(Lfn0;I)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lnv3;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lfn0;->j:Lnv3;

    .line 61
    .line 62
    new-instance p1, Lmm0;

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    invoke-direct {p1, p0, p2}, Lmm0;-><init>(Lfn0;I)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Lnv3;

    .line 69
    .line 70
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lfn0;->k:Lnv3;

    .line 74
    .line 75
    new-instance p1, Lqd1;

    .line 76
    .line 77
    new-instance p2, Lv;

    .line 78
    .line 79
    const/4 p3, 0x5

    .line 80
    invoke-direct {p2, p3, p0}, Lv;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance p3, Lei0;

    .line 84
    .line 85
    const/4 v1, 0x4

    .line 86
    invoke-direct {p3, v1}, Lei0;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Ln;

    .line 90
    .line 91
    const/16 v2, 0x12

    .line 92
    .line 93
    invoke-direct {v1, p0, v0, v2}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p4, p2, p3, v1}, Lqd1;-><init>(Lqi0;Lv;Lei0;Ln;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lfn0;->l:Lqd1;

    .line 100
    .line 101
    return-void
.end method

.method public static final c(Lfn0;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lum0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lum0;

    .line 7
    .line 8
    iget v1, v0, Lum0;->t:I

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
    iput v1, v0, Lum0;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lum0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lum0;-><init>(Lfn0;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lum0;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lum0;->t:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lum0;->q:Lhh2;

    .line 36
    .line 37
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lfn0;->e:Lhh2;

    .line 51
    .line 52
    iput-object p1, v0, Lum0;->q:Lhh2;

    .line 53
    .line 54
    iput v2, v0, Lum0;->t:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lhh2;->j(Lfh0;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lri0;->n:Lri0;

    .line 61
    .line 62
    if-ne v0, v1, :cond_3

    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    move-object v0, p1

    .line 66
    :goto_1
    :try_start_0
    iget p1, p0, Lfn0;->f:I

    .line 67
    .line 68
    add-int/lit8 p1, p1, -0x1

    .line 69
    .line 70
    iput p1, p0, Lfn0;->f:I

    .line 71
    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    iget-object p1, p0, Lfn0;->g:Lir3;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Lbv1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    :goto_2
    iput-object v3, p0, Lfn0;->g:Lir3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    :cond_5
    invoke-interface {v0, v3}, Lfh2;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object p0, Lt64;->a:Lt64;

    .line 90
    .line 91
    return-object p0

    .line 92
    :goto_3
    invoke-interface {v0, v3}, Lfh2;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public static final d(Lfn0;Llc2;Lfh0;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lvm0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lvm0;

    .line 7
    .line 8
    iget v1, v0, Lvm0;->t:I

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
    iput v1, v0, Lvm0;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lvm0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lvm0;-><init>(Lfn0;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lvm0;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lvm0;->t:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lvm0;->q:Lz80;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Llc2;->b:Lz80;

    .line 53
    .line 54
    :try_start_1
    iget-object v1, p1, Llc2;->d:Lhi0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    :try_start_2
    iget-object v4, v0, Lfh0;->o:Lhi0;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    .line 60
    .line 61
    :try_start_3
    invoke-interface {v1, v4}, Lhi0;->F(Lhi0;)Lhi0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v4, Ln;

    .line 66
    .line 67
    const/16 v5, 0x10

    .line 68
    .line 69
    invoke-direct {v4, p0, p1, v2, v5}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 70
    .line 71
    .line 72
    iput-object p2, v0, Lvm0;->q:Lz80;

    .line 73
    .line 74
    iput v3, v0, Lvm0;->t:I

    .line 75
    .line 76
    invoke-static {v1, v4, v0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    sget-object p1, Lri0;->n:Lri0;

    .line 81
    .line 82
    if-ne p0, p1, :cond_3

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_3
    move-object v6, p2

    .line 86
    move-object p2, p0

    .line 87
    move-object p0, v6

    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    :goto_1
    move-object p0, p2

    .line 91
    goto :goto_2

    .line 92
    :catchall_2
    move-exception p0

    .line 93
    move-object p1, p0

    .line 94
    goto :goto_1

    .line 95
    :goto_2
    new-instance p2, Lf83;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_3
    invoke-static {p2}, Lg83;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Lbv1;->U(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance p2, Lc90;

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-direct {p2, p1, v0}, Lc90;-><init>(Ljava/lang/Throwable;Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p2}, Lbv1;->U(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :goto_4
    sget-object p0, Lt64;->a:Lt64;

    .line 123
    .line 124
    return-object p0
.end method

.method public static final e(Lfn0;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lwm0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwm0;

    .line 7
    .line 8
    iget v1, v0, Lwm0;->t:I

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
    iput v1, v0, Lwm0;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lwm0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lwm0;-><init>(Lfn0;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lwm0;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lwm0;->t:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lwm0;->q:Lhh2;

    .line 36
    .line 37
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lfn0;->e:Lhh2;

    .line 51
    .line 52
    iput-object p1, v0, Lwm0;->q:Lhh2;

    .line 53
    .line 54
    iput v2, v0, Lwm0;->t:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lhh2;->j(Lfh0;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lri0;->n:Lri0;

    .line 61
    .line 62
    if-ne v0, v1, :cond_3

    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    move-object v0, p1

    .line 66
    :goto_1
    :try_start_0
    iget p1, p0, Lfn0;->f:I

    .line 67
    .line 68
    add-int/2addr p1, v2

    .line 69
    iput p1, p0, Lfn0;->f:I

    .line 70
    .line 71
    if-ne p1, v2, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lfn0;->c:Lqi0;

    .line 74
    .line 75
    new-instance v1, Lrm0;

    .line 76
    .line 77
    invoke-direct {v1, p0, v3, v2}, Lrm0;-><init>(Lfn0;Ldh0;I)V

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x3

    .line 81
    invoke-static {p1, v3, v3, v1, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lfn0;->g:Lir3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    :goto_2
    invoke-interface {v0, v3}, Lfh2;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    sget-object p0, Lt64;->a:Lt64;

    .line 94
    .line 95
    return-object p0

    .line 96
    :goto_3
    invoke-interface {v0, v3}, Lfh2;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public static final f(Lfn0;Lfh0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lxm0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lxm0;

    .line 7
    .line 8
    iget v1, v0, Lxm0;->t:I

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
    iput v1, v0, Lxm0;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lxm0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lxm0;-><init>(Lfn0;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lxm0;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lxm0;->t:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    sget-object v4, Lri0;->n:Lri0;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget v0, v0, Lxm0;->q:I

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_4

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lfn0;->i()Lvs1;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput v3, v0, Lxm0;->t:I

    .line 66
    .line 67
    invoke-interface {p1, v0}, Lvs1;->b(Lfh0;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v4, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    :try_start_1
    iget-object v1, p0, Lfn0;->i:Lqd1;

    .line 81
    .line 82
    iput p1, v0, Lxm0;->q:I

    .line 83
    .line 84
    iput v2, v0, Lxm0;->t:I

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lqd1;->G(Lfh0;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    if-ne p0, v4, :cond_5

    .line 91
    .line 92
    :goto_2
    return-object v4

    .line 93
    :cond_5
    :goto_3
    sget-object p0, Lt64;->a:Lt64;

    .line 94
    .line 95
    return-object p0

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    move-object v5, v0

    .line 98
    move v0, p1

    .line 99
    move-object p1, v5

    .line 100
    :goto_4
    iget-object p0, p0, Lfn0;->h:Lwu4;

    .line 101
    .line 102
    new-instance v1, Lx13;

    .line 103
    .line 104
    invoke-direct {v1, p1, v0}, Lx13;-><init>(Ljava/lang/Throwable;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lwu4;->v(Lsr3;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public static final g(Lfn0;ZLdh0;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lfn0;->h:Lwu4;

    .line 2
    .line 3
    instance-of v1, p2, Lym0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lym0;

    .line 9
    .line 10
    iget v2, v1, Lym0;->u:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lym0;->u:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lym0;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lym0;-><init>(Lfn0;Ldh0;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Lym0;->s:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lym0;->u:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    sget-object v7, Lri0;->n:Lri0;

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v6

    .line 56
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    iget-boolean p1, v1, Lym0;->q:Z

    .line 61
    .line 62
    iget-object v2, v1, Lym0;->r:Lsr3;

    .line 63
    .line 64
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lwu4;->m()Lsr3;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    instance-of p2, v2, Lj64;

    .line 76
    .line 77
    if-nez p2, :cond_c

    .line 78
    .line 79
    invoke-virtual {p0}, Lfn0;->i()Lvs1;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object v2, v1, Lym0;->r:Lsr3;

    .line 84
    .line 85
    iput-boolean p1, v1, Lym0;->q:Z

    .line 86
    .line 87
    iput v5, v1, Lym0;->u:I

    .line 88
    .line 89
    invoke-interface {p2, v1}, Lvs1;->b(Lfh0;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-ne p2, v7, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    instance-of v5, v2, Lam0;

    .line 103
    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    move-object v8, v2

    .line 107
    check-cast v8, Lam0;

    .line 108
    .line 109
    iget v8, v8, Lsr3;->a:I

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const/4 v8, -0x1

    .line 113
    :goto_2
    if-eqz v5, :cond_7

    .line 114
    .line 115
    if-ne p2, v8, :cond_7

    .line 116
    .line 117
    return-object v2

    .line 118
    :cond_7
    const/4 p2, 0x0

    .line 119
    if-eqz p1, :cond_9

    .line 120
    .line 121
    invoke-virtual {p0}, Lfn0;->i()Lvs1;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance v2, Lzm0;

    .line 126
    .line 127
    invoke-direct {v2, p0, v6, p2}, Lzm0;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 128
    .line 129
    .line 130
    iput-object v6, v1, Lym0;->r:Lsr3;

    .line 131
    .line 132
    iput v4, v1, Lym0;->u:I

    .line 133
    .line 134
    invoke-interface {p1, v2, v1}, Lvs1;->a(Lpe1;Lfh0;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    if-ne p2, v7, :cond_8

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_8
    :goto_3
    check-cast p2, Ljs2;

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_9
    invoke-virtual {p0}, Lfn0;->i()Lvs1;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v2, Lan0;

    .line 149
    .line 150
    invoke-direct {v2, p0, v8, v6, p2}, Lan0;-><init>(Lfn0;ILdh0;I)V

    .line 151
    .line 152
    .line 153
    iput-object v6, v1, Lym0;->r:Lsr3;

    .line 154
    .line 155
    iput v3, v1, Lym0;->u:I

    .line 156
    .line 157
    invoke-interface {p1, v2, v1}, Lvs1;->e(Ldf1;Lfh0;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-ne p2, v7, :cond_a

    .line 162
    .line 163
    :goto_4
    return-object v7

    .line 164
    :cond_a
    :goto_5
    check-cast p2, Ljs2;

    .line 165
    .line 166
    :goto_6
    iget-object p0, p2, Ljs2;->n:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p0, Lsr3;

    .line 169
    .line 170
    iget-object p1, p2, Ljs2;->o:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_b

    .line 179
    .line 180
    invoke-virtual {v0, p0}, Lwu4;->v(Lsr3;)V

    .line 181
    .line 182
    .line 183
    :cond_b
    return-object p0

    .line 184
    :cond_c
    const-string p0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 185
    .line 186
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-object v6
.end method

.method public static final h(Lfn0;ZLfh0;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lbn0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lbn0;

    .line 7
    .line 8
    iget v1, v0, Lbn0;->x:I

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
    iput v1, v0, Lbn0;->x:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lbn0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lbn0;-><init>(Lfn0;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lbn0;->v:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lbn0;->x:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lri0;->n:Lri0;

    .line 33
    .line 34
    packed-switch v1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v4

    .line 43
    :pswitch_0
    iget-object p0, v0, Lbn0;->t:Ljava/io/Serializable;

    .line 44
    .line 45
    check-cast p0, Lu33;

    .line 46
    .line 47
    iget-object p1, v0, Lbn0;->s:Lw33;

    .line 48
    .line 49
    iget-object v0, v0, Lbn0;->r:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lxi0;

    .line 52
    .line 53
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_9

    .line 57
    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto/16 :goto_c

    .line 60
    .line 61
    :pswitch_1
    iget-boolean p1, v0, Lbn0;->q:Z

    .line 62
    .line 63
    iget-object v1, v0, Lbn0;->t:Ljava/io/Serializable;

    .line 64
    .line 65
    check-cast v1, Lw33;

    .line 66
    .line 67
    iget-object v6, v0, Lbn0;->s:Lw33;

    .line 68
    .line 69
    iget-object v7, v0, Lbn0;->r:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v7, Lxi0;

    .line 72
    .line 73
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object v9, v6

    .line 77
    move-object v6, v1

    .line 78
    move-object v1, v9

    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :pswitch_2
    iget-boolean p1, v0, Lbn0;->q:Z

    .line 82
    .line 83
    :try_start_1
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catch Lxi0; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :catch_0
    move-exception p2

    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :pswitch_3
    iget-boolean p1, v0, Lbn0;->q:Z

    .line 92
    .line 93
    :try_start_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_2
    .catch Lxi0; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :pswitch_4
    iget p1, v0, Lbn0;->u:I

    .line 99
    .line 100
    iget-boolean v1, v0, Lbn0;->q:Z

    .line 101
    .line 102
    iget-object v6, v0, Lbn0;->r:Ljava/lang/Object;

    .line 103
    .line 104
    :try_start_3
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_3
    .catch Lxi0; {:try_start_3 .. :try_end_3} :catch_1

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catch_1
    move-exception p2

    .line 109
    move p1, v1

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :pswitch_5
    iget-boolean p1, v0, Lbn0;->q:Z

    .line 113
    .line 114
    :try_start_4
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_4
    .catch Lxi0; {:try_start_4 .. :try_end_4} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_6
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    :try_start_5
    iput-boolean p1, v0, Lbn0;->q:Z

    .line 124
    .line 125
    iput v2, v0, Lbn0;->x:I

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lfn0;->j(Lfh0;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-ne p2, v5, :cond_1

    .line 132
    .line 133
    goto/16 :goto_a

    .line 134
    .line 135
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    move v1, v3

    .line 143
    :goto_2
    invoke-virtual {p0}, Lfn0;->i()Lvs1;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    iput-object p2, v0, Lbn0;->r:Ljava/lang/Object;

    .line 148
    .line 149
    iput-boolean p1, v0, Lbn0;->q:Z

    .line 150
    .line 151
    iput v1, v0, Lbn0;->u:I

    .line 152
    .line 153
    const/4 v7, 0x2

    .line 154
    iput v7, v0, Lbn0;->x:I

    .line 155
    .line 156
    invoke-interface {v6, v0}, Lvs1;->b(Lfh0;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6
    :try_end_5
    .catch Lxi0; {:try_start_5 .. :try_end_5} :catch_0

    .line 160
    if-ne v6, v5, :cond_3

    .line 161
    .line 162
    goto/16 :goto_a

    .line 163
    .line 164
    :cond_3
    move v9, v1

    .line 165
    move v1, p1

    .line 166
    move p1, v9

    .line 167
    move-object v9, v6

    .line 168
    move-object v6, p2

    .line 169
    move-object p2, v9

    .line 170
    :goto_3
    :try_start_6
    check-cast p2, Ljava/lang/Number;

    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    new-instance v7, Lam0;

    .line 177
    .line 178
    invoke-direct {v7, p1, p2, v6}, Lam0;-><init>(IILjava/lang/Object;)V
    :try_end_6
    .catch Lxi0; {:try_start_6 .. :try_end_6} :catch_1

    .line 179
    .line 180
    .line 181
    return-object v7

    .line 182
    :cond_4
    :try_start_7
    invoke-virtual {p0}, Lfn0;->i()Lvs1;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iput-boolean p1, v0, Lbn0;->q:Z

    .line 187
    .line 188
    const/4 v1, 0x3

    .line 189
    iput v1, v0, Lbn0;->x:I

    .line 190
    .line 191
    invoke-interface {p2, v0}, Lvs1;->b(Lfh0;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    if-ne p2, v5, :cond_5

    .line 196
    .line 197
    goto/16 :goto_a

    .line 198
    .line 199
    :cond_5
    :goto_4
    check-cast p2, Ljava/lang/Number;

    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    invoke-virtual {p0}, Lfn0;->i()Lvs1;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    new-instance v6, Lan0;

    .line 210
    .line 211
    invoke-direct {v6, p0, p2, v4, v2}, Lan0;-><init>(Lfn0;ILdh0;I)V

    .line 212
    .line 213
    .line 214
    iput-boolean p1, v0, Lbn0;->q:Z

    .line 215
    .line 216
    const/4 p2, 0x4

    .line 217
    iput p2, v0, Lbn0;->x:I

    .line 218
    .line 219
    invoke-interface {v1, v6, v0}, Lvs1;->e(Ldf1;Lfh0;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    if-ne p2, v5, :cond_6

    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_6
    :goto_5
    check-cast p2, Lam0;
    :try_end_7
    .catch Lxi0; {:try_start_7 .. :try_end_7} :catch_0

    .line 227
    .line 228
    return-object p2

    .line 229
    :goto_6
    new-instance v1, Lw33;

    .line 230
    .line 231
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 232
    .line 233
    .line 234
    iget-object v6, p0, Lfn0;->b:Lyi0;

    .line 235
    .line 236
    iput-object p2, v0, Lbn0;->r:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v1, v0, Lbn0;->s:Lw33;

    .line 239
    .line 240
    iput-object v1, v0, Lbn0;->t:Ljava/io/Serializable;

    .line 241
    .line 242
    iput-boolean p1, v0, Lbn0;->q:Z

    .line 243
    .line 244
    const/4 v7, 0x5

    .line 245
    iput v7, v0, Lbn0;->x:I

    .line 246
    .line 247
    invoke-interface {v6, p2}, Lyi0;->b(Lxi0;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    if-ne v6, v5, :cond_7

    .line 252
    .line 253
    goto :goto_a

    .line 254
    :cond_7
    move-object v7, p2

    .line 255
    move-object p2, v6

    .line 256
    move-object v6, v1

    .line 257
    :goto_7
    iput-object p2, v6, Lw33;->n:Ljava/lang/Object;

    .line 258
    .line 259
    new-instance p2, Lu33;

    .line 260
    .line 261
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 262
    .line 263
    .line 264
    :try_start_8
    new-instance v6, Lcn0;

    .line 265
    .line 266
    invoke-direct {v6, v1, p0, p2, v4}, Lcn0;-><init>(Lw33;Lfn0;Lu33;Ldh0;)V

    .line 267
    .line 268
    .line 269
    iput-object v7, v0, Lbn0;->r:Ljava/lang/Object;

    .line 270
    .line 271
    iput-object v1, v0, Lbn0;->s:Lw33;

    .line 272
    .line 273
    iput-object p2, v0, Lbn0;->t:Ljava/io/Serializable;

    .line 274
    .line 275
    const/4 v8, 0x6

    .line 276
    iput v8, v0, Lbn0;->x:I

    .line 277
    .line 278
    if-eqz p1, :cond_8

    .line 279
    .line 280
    invoke-virtual {v6, v0}, Lcn0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    goto :goto_8

    .line 285
    :cond_8
    invoke-virtual {p0}, Lfn0;->i()Lvs1;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    new-instance p1, Lim0;

    .line 290
    .line 291
    invoke-direct {p1, v6, v4, v2}, Lim0;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 292
    .line 293
    .line 294
    invoke-interface {p0, p1, v0}, Lvs1;->a(Lpe1;Lfh0;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 298
    :goto_8
    if-ne p0, v5, :cond_9

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_9
    move-object p0, p2

    .line 302
    move-object p1, v1

    .line 303
    :goto_9
    new-instance v5, Lam0;

    .line 304
    .line 305
    iget-object p1, p1, Lw33;->n:Ljava/lang/Object;

    .line 306
    .line 307
    if-eqz p1, :cond_a

    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    :cond_a
    iget p0, p0, Lu33;->n:I

    .line 314
    .line 315
    invoke-direct {v5, v3, p0, p1}, Lam0;-><init>(IILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :goto_a
    return-object v5

    .line 319
    :goto_b
    move-object v0, v7

    .line 320
    goto :goto_c

    .line 321
    :catchall_1
    move-exception p0

    .line 322
    goto :goto_b

    .line 323
    :goto_c
    invoke-static {v0, p0}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
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


# virtual methods
.method public final a(Ldf1;Ldh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-interface {p2}, Ldh0;->e()Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lbx3;->q:Lbx3;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lhi0;->K(Lgi0;)Lfi0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lu74;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lu74;->a(Lfn0;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v1, Lu74;

    .line 19
    .line 20
    invoke-direct {v1, v0, p0}, Lu74;-><init>(Lu74;Lfn0;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lp;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/16 v3, 0xa

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, v2, v3}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0, p2}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final b()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lfn0;->d:Lmt;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i()Lvs1;
    .locals 0

    .line 1
    iget-object p0, p0, Lfn0;->k:Lnv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvs1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final j(Lfh0;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lfn0;->j:Lnv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ln51;

    .line 8
    .line 9
    new-instance v0, Lsm0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v0, v2, v1}, Lsm0;-><init>(ILdh0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Ln51;->a(Lsm0;Lfh0;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final k(Ljava/lang/Object;ZLfh0;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p3, Ldn0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Ldn0;

    .line 7
    .line 8
    iget v1, v0, Ldn0;->t:I

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
    iput v1, v0, Ldn0;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ldn0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Ldn0;-><init>(Lfn0;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Ldn0;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Ldn0;->t:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Ldn0;->q:Lu33;

    .line 35
    .line 36
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Lu33;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object p3, p0, Lfn0;->j:Lnv3;

    .line 56
    .line 57
    invoke-virtual {p3}, Lnv3;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Ln51;

    .line 62
    .line 63
    new-instance v3, Len0;

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    move-object v5, p0

    .line 67
    move-object v6, p1

    .line 68
    move v7, p2

    .line 69
    invoke-direct/range {v3 .. v8}, Len0;-><init>(Lu33;Lfn0;Ljava/lang/Object;ZLdh0;)V

    .line 70
    .line 71
    .line 72
    iput-object v4, v0, Ldn0;->q:Lu33;

    .line 73
    .line 74
    iput v2, v0, Ldn0;->t:I

    .line 75
    .line 76
    invoke-virtual {p3, v3, v0}, Ln51;->b(Len0;Lfh0;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    sget-object p1, Lri0;->n:Lri0;

    .line 81
    .line 82
    if-ne p0, p1, :cond_3

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_3
    move-object p0, v4

    .line 86
    :goto_1
    iget p0, p0, Lu33;->n:I

    .line 87
    .line 88
    new-instance p1, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 91
    .line 92
    .line 93
    return-object p1
.end method
