.class public final Lxy1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lya0;
.implements Ltr2;
.implements Llb0;


# static fields
.field public static final e0:Lja3;

.field public static final f0:Lsy1;

.field public static final g0:Lyb;


# instance fields
.field public A:Lsr2;

.field public B:Lpb4;

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Lbh3;

.field public G:Z

.field public final H:Lug2;

.field public I:Z

.field public J:Ldb2;

.field public K:Lxh1;

.field public L:Las0;

.field public M:Lhy1;

.field public N:Lnb4;

.field public O:Lhc0;

.field public P:Lvy1;

.field public Q:Lvy1;

.field public R:Z

.field public final S:Lbo;

.field public final T:Lbz1;

.field public U:Llz1;

.field public V:Lmm2;

.field public W:Z

.field public X:Lnd2;

.field public Y:Lnd2;

.field public Z:Lvc;

.field public a0:Lwc;

.field public b0:Z

.field public c0:I

.field public d0:Z

.field public final n:Z

.field public o:I

.field public p:Z

.field public q:J

.field public r:Z

.field public s:Z

.field public t:I

.field public u:Lxy1;

.field public v:I

.field public final w:Lxh1;

.field public x:Lug2;

.field public y:Z

.field public z:Lxy1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lja3;

    .line 2
    .line 3
    const-string v1, "Undefined intrinsics block and it is required"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lja3;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lxy1;->e0:Lja3;

    .line 10
    .line 11
    new-instance v0, Lsy1;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lxy1;->f0:Lsy1;

    .line 17
    .line 18
    new-instance v0, Lyb;

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    invoke-direct {v0, v1}, Lyb;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lxy1;->g0:Lyb;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 108
    :goto_0
    sget-object v1, Ldh3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 109
    invoke-direct {p0, p1, v0}, Lxy1;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lxy1;->n:Z

    .line 5
    .line 6
    iput p2, p0, Lxy1;->o:I

    .line 7
    .line 8
    const-wide p1, 0x7fffffff7fffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Lxy1;->q:J

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lxy1;->r:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lxy1;->s:Z

    .line 19
    .line 20
    const/4 p2, -0x4

    .line 21
    iput p2, p0, Lxy1;->t:I

    .line 22
    .line 23
    new-instance p2, Lxh1;

    .line 24
    .line 25
    new-instance v0, Lug2;

    .line 26
    .line 27
    const/16 v1, 0x10

    .line 28
    .line 29
    new-array v2, v1, [Lxy1;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lje;

    .line 35
    .line 36
    const/4 v3, 0x6

    .line 37
    invoke-direct {v2, v3, p0}, Lje;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0, v2}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lxy1;->w:Lxh1;

    .line 44
    .line 45
    new-instance p2, Lug2;

    .line 46
    .line 47
    new-array v0, v1, [Lxy1;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lxy1;->H:Lug2;

    .line 53
    .line 54
    iput-boolean p1, p0, Lxy1;->I:Z

    .line 55
    .line 56
    sget-object p2, Lxy1;->e0:Lja3;

    .line 57
    .line 58
    iput-object p2, p0, Lxy1;->J:Ldb2;

    .line 59
    .line 60
    sget-object p2, Laz1;->a:Lds0;

    .line 61
    .line 62
    iput-object p2, p0, Lxy1;->L:Las0;

    .line 63
    .line 64
    sget-object p2, Lhy1;->n:Lhy1;

    .line 65
    .line 66
    iput-object p2, p0, Lxy1;->M:Lhy1;

    .line 67
    .line 68
    sget-object p2, Lxy1;->f0:Lsy1;

    .line 69
    .line 70
    iput-object p2, p0, Lxy1;->N:Lnb4;

    .line 71
    .line 72
    sget-object p2, Lhc0;->d:Lgc0;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-object p2, Lgc0;->b:Lhu2;

    .line 78
    .line 79
    iput-object p2, p0, Lxy1;->O:Lhc0;

    .line 80
    .line 81
    sget-object p2, Lvy1;->p:Lvy1;

    .line 82
    .line 83
    iput-object p2, p0, Lxy1;->P:Lvy1;

    .line 84
    .line 85
    iput-object p2, p0, Lxy1;->Q:Lvy1;

    .line 86
    .line 87
    new-instance p2, Lbo;

    .line 88
    .line 89
    invoke-direct {p2, p0}, Lbo;-><init>(Lxy1;)V

    .line 90
    .line 91
    .line 92
    iput-object p2, p0, Lxy1;->S:Lbo;

    .line 93
    .line 94
    new-instance p2, Lbz1;

    .line 95
    .line 96
    invoke-direct {p2, p0}, Lbz1;-><init>(Lxy1;)V

    .line 97
    .line 98
    .line 99
    iput-object p2, p0, Lxy1;->T:Lbz1;

    .line 100
    .line 101
    iput-boolean p1, p0, Lxy1;->W:Z

    .line 102
    .line 103
    sget-object p1, Lkd2;->b:Lkd2;

    .line 104
    .line 105
    iput-object p1, p0, Lxy1;->X:Lnd2;

    .line 106
    .line 107
    return-void
.end method

.method public static Q(Lxy1;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object v0, v0, Lbz1;->p:Lcb2;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcb2;->w:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, v0, Ldv2;->q:J

    .line 10
    .line 11
    new-instance v2, Lmf0;

    .line 12
    .line 13
    invoke-direct {v2, v0, v1}, Lmf0;-><init>(J)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, v2}, Lxy1;->P(Lmf0;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public static V(Lxy1;ZI)V
    .locals 4

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    and-int/lit8 p2, p2, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_2
    iget-object p2, p0, Lxy1;->u:Lxy1;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_3
    const-string p2, "Lookahead measure cannot be requested on a node that is not a part of the LookaheadScope"

    .line 26
    .line 27
    invoke-static {p2}, Lar1;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    iget-object p2, p0, Lxy1;->A:Lsr2;

    .line 31
    .line 32
    if-nez p2, :cond_4

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_4
    iget-boolean v3, p0, Lxy1;->D:Z

    .line 36
    .line 37
    if-nez v3, :cond_b

    .line 38
    .line 39
    iget-boolean v3, p0, Lxy1;->n:Z

    .line 40
    .line 41
    if-nez v3, :cond_b

    .line 42
    .line 43
    check-cast p2, Lq9;

    .line 44
    .line 45
    invoke-virtual {p2, p0, v2, p1, v0}, Lq9;->w(Lxy1;ZZZ)V

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_b

    .line 49
    .line 50
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 51
    .line 52
    iget-object p0, p0, Lbz1;->q:Lq82;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lq82;->s:Lbz1;

    .line 58
    .line 59
    iget-object p2, p0, Lbz1;->a:Lxy1;

    .line 60
    .line 61
    invoke-virtual {p2}, Lxy1;->u()Lxy1;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 66
    .line 67
    iget-object p0, p0, Lxy1;->P:Lvy1;

    .line 68
    .line 69
    if-eqz p2, :cond_b

    .line 70
    .line 71
    sget-object v0, Lvy1;->p:Lvy1;

    .line 72
    .line 73
    if-eq p0, v0, :cond_b

    .line 74
    .line 75
    :goto_2
    iget-object v0, p2, Lxy1;->P:Lvy1;

    .line 76
    .line 77
    if-ne v0, p0, :cond_6

    .line 78
    .line 79
    invoke-virtual {p2}, Lxy1;->u()Lxy1;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    move-object p2, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_9

    .line 93
    .line 94
    if-ne p0, v2, :cond_8

    .line 95
    .line 96
    iget-object p0, p2, Lxy1;->u:Lxy1;

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lxy1;->U(Z)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_7
    invoke-virtual {p2, p1}, Lxy1;->W(Z)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_8
    const-string p0, "Intrinsics isn\'t used by the parent"

    .line 109
    .line 110
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_9
    iget-object p0, p2, Lxy1;->u:Lxy1;

    .line 115
    .line 116
    const/4 v0, 0x6

    .line 117
    if-eqz p0, :cond_a

    .line 118
    .line 119
    invoke-static {p2, p1, v0}, Lxy1;->V(Lxy1;ZI)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_a
    invoke-static {p2, p1, v0}, Lxy1;->X(Lxy1;ZI)V

    .line 124
    .line 125
    .line 126
    :cond_b
    :goto_4
    return-void
.end method

.method public static X(Lxy1;ZI)V
    .locals 4

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    and-int/lit8 p2, p2, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    move p2, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move p2, v1

    .line 22
    :goto_1
    iget-boolean v3, p0, Lxy1;->D:Z

    .line 23
    .line 24
    if-nez v3, :cond_8

    .line 25
    .line 26
    iget-boolean v3, p0, Lxy1;->n:Z

    .line 27
    .line 28
    if-nez v3, :cond_8

    .line 29
    .line 30
    iget-object v3, p0, Lxy1;->A:Lsr2;

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_3
    check-cast v3, Lq9;

    .line 36
    .line 37
    invoke-virtual {v3, p0, v1, p1, v0}, Lq9;->w(Lxy1;ZZZ)V

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_8

    .line 41
    .line 42
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 43
    .line 44
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 45
    .line 46
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 47
    .line 48
    iget-object p2, p0, Lbz1;->a:Lxy1;

    .line 49
    .line 50
    invoke-virtual {p2}, Lxy1;->u()Lxy1;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 55
    .line 56
    iget-object p0, p0, Lxy1;->P:Lvy1;

    .line 57
    .line 58
    if-eqz p2, :cond_8

    .line 59
    .line 60
    sget-object v0, Lvy1;->p:Lvy1;

    .line 61
    .line 62
    if-eq p0, v0, :cond_8

    .line 63
    .line 64
    :goto_2
    iget-object v0, p2, Lxy1;->P:Lvy1;

    .line 65
    .line 66
    if-ne v0, p0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p2}, Lxy1;->u()Lxy1;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move-object p2, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_7

    .line 82
    .line 83
    if-ne p0, v2, :cond_6

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lxy1;->W(Z)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    const-string p0, "Intrinsics isn\'t used by the parent"

    .line 90
    .line 91
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_7
    const/4 p0, 0x6

    .line 96
    invoke-static {p2, p1, p0}, Lxy1;->X(Lxy1;ZI)V

    .line 97
    .line 98
    .line 99
    :cond_8
    :goto_4
    return-void
.end method

.method public static Y(Lxy1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object v0, v0, Lbz1;->d:Lty1;

    .line 4
    .line 5
    sget-object v1, Lwy1;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    iget-object v1, p0, Lxy1;->T:Lbz1;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_4

    .line 17
    .line 18
    iget-boolean v0, v1, Lbz1;->e:Z

    .line 19
    .line 20
    const/4 v3, 0x6

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {p0, v2, v3}, Lxy1;->V(Lxy1;ZI)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-boolean v0, v1, Lbz1;->f:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lxy1;->U(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lxy1;->q()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {p0, v2, v3}, Lxy1;->X(Lxy1;ZI)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {p0}, Lxy1;->p()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lxy1;->W(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void

    .line 54
    :cond_4
    iget-object p0, v1, Lbz1;->d:Lty1;

    .line 55
    .line 56
    const-string v0, "Unexpected state "

    .line 57
    .line 58
    invoke-static {p0, v0}, Lp61;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final j(Lxy1;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lxy1;->e(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iget-object v1, p1, Lxy1;->z:Lxy1;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lxy1;->e(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Cannot insert "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " because it already has a parent or an owner. This tree: "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, " Other tree: "

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public final A(JLzj1;IZ)V
    .locals 9

    .line 1
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 2
    .line 3
    iget-object v0, p0, Lbo;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lmm2;

    .line 6
    .line 7
    sget-object v1, Lmm2;->d0:Lo83;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lmm2;->L0(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iget-object p0, p0, Lbo;->e:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    check-cast v2, Lmm2;

    .line 17
    .line 18
    sget-object v3, Lmm2;->f0:Ljm2;

    .line 19
    .line 20
    move-object v6, p3

    .line 21
    move v7, p4

    .line 22
    move v8, p5

    .line 23
    invoke-virtual/range {v2 .. v8}, Lmm2;->T0(Lkm2;JLzj1;IZ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final B(ILxy1;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lxy1;->z:Lxy1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p2, Lxy1;->A:Lsr2;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lxy1;->j(Lxy1;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iput-object p0, p2, Lxy1;->z:Lxy1;

    .line 18
    .line 19
    iget-object v0, p0, Lxy1;->w:Lxh1;

    .line 20
    .line 21
    iget-object v1, v0, Lxh1;->n:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lug2;

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Lug2;->a(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lxh1;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lje;

    .line 31
    .line 32
    invoke-virtual {p1}, Lje;->a()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lxy1;->O()V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p2, Lxy1;->n:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget p1, p0, Lxy1;->v:I

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    iput p1, p0, Lxy1;->v:I

    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Lxy1;->G()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lxy1;->A:Lsr2;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lxy1;->b(Lsr2;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p2, Lxy1;->T:Lbz1;

    .line 59
    .line 60
    iget p1, p1, Lbz1;->l:I

    .line 61
    .line 62
    if-lez p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lxy1;->T:Lbz1;

    .line 65
    .line 66
    iget v0, p1, Lbz1;->l:I

    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lbz1;->d(I)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget p1, p2, Lxy1;->c0:I

    .line 74
    .line 75
    if-lez p1, :cond_5

    .line 76
    .line 77
    iget p1, p0, Lxy1;->c0:I

    .line 78
    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lxy1;->c0(I)V

    .line 82
    .line 83
    .line 84
    :cond_5
    return-void
.end method

.method public final C()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lxy1;->W:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lxy1;->S:Lbo;

    .line 6
    .line 7
    iget-object v1, v0, Lbo;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lgr1;

    .line 10
    .line 11
    iget-object v0, v0, Lbo;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lmm2;

    .line 14
    .line 15
    iget-object v0, v0, Lmm2;->H:Lmm2;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lxy1;->V:Lmm2;

    .line 19
    .line 20
    :goto_0
    invoke-static {v1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v3, v1, Lmm2;->c0:Lrr2;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move-object v3, v2

    .line 32
    :goto_1
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iput-object v1, p0, Lxy1;->V:Lmm2;

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, v1, Lmm2;->H:Lmm2;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lxy1;->W:Z

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lxy1;->V:Lmm2;

    .line 48
    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    iget-object v1, v0, Lmm2;->c0:Lrr2;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_5
    const-string p0, "layer was not set. This error is usually caused by operating off of the UI thread. Did you call invalidate() instead of postInvalidate()?"

    .line 57
    .line 58
    invoke-static {p0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0

    .line 63
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {v0}, Lmm2;->V0()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_7
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    invoke-virtual {v0}, Lxy1;->C()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_8
    iget-object p0, p0, Lxy1;->A:Lsr2;

    .line 80
    .line 81
    if-eqz p0, :cond_9

    .line 82
    .line 83
    check-cast p0, Lq9;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 86
    .line 87
    .line 88
    :cond_9
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 2
    .line 3
    iget-object v0, p0, Lbo;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lmm2;

    .line 6
    .line 7
    iget-object v1, p0, Lbo;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lgr1;

    .line 10
    .line 11
    :goto_0
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Lqy1;

    .line 17
    .line 18
    iget-object v2, v0, Lmm2;->c0:Lrr2;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v2, Lci1;

    .line 23
    .line 24
    invoke-virtual {v2}, Lci1;->c()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, v0, Lmm2;->G:Lmm2;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Lbo;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lgr1;

    .line 33
    .line 34
    iget-object p0, p0, Lmm2;->c0:Lrr2;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    check-cast p0, Lci1;

    .line 39
    .line 40
    invoke-virtual {p0}, Lci1;->c()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lxy1;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lxy1;->E()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lxy1;->u:Lxy1;

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-static {p0, v2, v1}, Lxy1;->V(Lxy1;ZI)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-static {p0, v2, v1}, Lxy1;->X(Lxy1;ZI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final F()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lxy1;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lxy1;->S:Lbo;

    .line 7
    .line 8
    iget-object v0, v0, Lbo;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lim2;

    .line 11
    .line 12
    iget-object v0, v0, Lmd2;->s:Lmd2;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lxy1;->Y:Lnd2;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :goto_0
    iput-boolean v1, p0, Lxy1;->E:Z

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object v0, p0, Lxy1;->F:Lbh3;

    .line 26
    .line 27
    iput-boolean v1, p0, Lxy1;->G:Z

    .line 28
    .line 29
    new-instance v1, Lw33;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lbh3;

    .line 35
    .line 36
    invoke-direct {v2}, Lbh3;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, v1, Lw33;->n:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p0}, Laz1;->a(Lxy1;)Lsr2;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lq9;

    .line 46
    .line 47
    invoke-virtual {v2}, Lq9;->getSnapshotObserver()Lur2;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Lj9;

    .line 52
    .line 53
    const/4 v4, 0x7

    .line 54
    invoke-direct {v3, v4, p0, v1}, Lj9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, v2, Lur2;->d:Ldo2;

    .line 58
    .line 59
    iget-object v2, v2, Lur2;->a:Lip3;

    .line 60
    .line 61
    invoke-virtual {v2, p0, v4, v3}, Lip3;->c(Ljava/lang/Object;Lpe1;Lne1;)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iput-boolean v2, p0, Lxy1;->G:Z

    .line 66
    .line 67
    iget-object v1, v1, Lw33;->n:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lbh3;

    .line 70
    .line 71
    iput-object v1, p0, Lxy1;->F:Lbh3;

    .line 72
    .line 73
    iput-boolean v2, p0, Lxy1;->E:Z

    .line 74
    .line 75
    invoke-static {p0}, Laz1;->a(Lxy1;)Lsr2;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lq9;

    .line 80
    .line 81
    invoke-virtual {v1}, Lq9;->getSemanticsOwner()Ljh3;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2, p0, v0}, Ljh3;->b(Lxy1;Lbh3;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lq9;->y()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final G()V
    .locals 1

    .line 1
    iget v0, p0, Lxy1;->v:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lxy1;->y:Z

    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lxy1;->n:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lxy1;->z:Lxy1;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lxy1;->G()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final H()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->A:Lsr2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final I()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcb2;->F:Z

    .line 6
    .line 7
    return p0
.end method

.method public final J()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->q:Lq82;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lq82;->D:Lo82;

    .line 8
    .line 9
    sget-object v0, Lo82;->p:Lo82;

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final K()V
    .locals 5

    .line 1
    iget-object v0, p0, Lxy1;->P:Lvy1;

    .line 2
    .line 3
    sget-object v1, Lvy1;->p:Lvy1;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lxy1;->d()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 11
    .line 12
    iget-object p0, p0, Lbz1;->q:Lq82;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    iput-boolean v0, p0, Lq82;->t:Z

    .line 20
    .line 21
    iget-boolean v2, p0, Lq82;->y:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "replace() called on item that was not placed"

    .line 26
    .line 27
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lq82;->O:Z

    .line 34
    .line 35
    iget-object v2, p0, Lq82;->D:Lo82;

    .line 36
    .line 37
    sget-object v3, Lo82;->p:Lo82;

    .line 38
    .line 39
    if-eq v2, v3, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v0, v1

    .line 43
    :goto_1
    iget-wide v2, p0, Lq82;->B:J

    .line 44
    .line 45
    iget-object v4, p0, Lq82;->C:Lpe1;

    .line 46
    .line 47
    invoke-virtual {p0, v2, v3, v4}, Lq82;->q0(JLpe1;)V

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-boolean v0, p0, Lq82;->O:Z

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lq82;->s:Lbz1;

    .line 57
    .line 58
    iget-object v0, v0, Lbz1;->a:Lxy1;

    .line 59
    .line 60
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lxy1;->U(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_3
    iput-boolean v1, p0, Lq82;->t:Z

    .line 70
    .line 71
    return-void

    .line 72
    :goto_2
    iput-boolean v1, p0, Lq82;->t:Z

    .line 73
    .line 74
    throw v0
.end method

.method public final L(III)V
    .locals 6

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    if-ge v0, p3, :cond_3

    .line 6
    .line 7
    if-le p1, p2, :cond_1

    .line 8
    .line 9
    add-int v1, p1, v0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v1, p1

    .line 13
    :goto_1
    if-le p1, p2, :cond_2

    .line 14
    .line 15
    add-int v2, p2, v0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_2
    add-int v2, p2, p3

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x2

    .line 21
    .line 22
    :goto_2
    iget-object v3, p0, Lxy1;->w:Lxh1;

    .line 23
    .line 24
    iget-object v4, v3, Lxh1;->n:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Lug2;

    .line 27
    .line 28
    iget-object v5, v3, Lxh1;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Lje;

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Lug2;->l(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v5}, Lje;->a()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    check-cast v1, Lxy1;

    .line 40
    .line 41
    iget-object v3, v3, Lxh1;->n:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lug2;

    .line 44
    .line 45
    invoke-virtual {v3, v2, v1}, Lug2;->a(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Lje;->a()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lxy1;->O()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lxy1;->G()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lxy1;->E()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final M(Lxy1;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget v0, v0, Lbz1;->l:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lxy1;->T:Lbz1;

    .line 8
    .line 9
    iget v1, v0, Lbz1;->l:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lbz1;->d(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lxy1;->A:Lsr2;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lxy1;->g()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lxy1;->z:Lxy1;

    .line 25
    .line 26
    iget v1, p1, Lxy1;->c0:I

    .line 27
    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    iget v1, p0, Lxy1;->c0:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lxy1;->c0(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v1, p1, Lxy1;->S:Lbo;

    .line 38
    .line 39
    iget-object v1, v1, Lbo;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lmm2;

    .line 42
    .line 43
    iput-object v0, v1, Lmm2;->H:Lmm2;

    .line 44
    .line 45
    iget-boolean v1, p1, Lxy1;->n:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget v1, p0, Lxy1;->v:I

    .line 50
    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    iput v1, p0, Lxy1;->v:I

    .line 54
    .line 55
    iget-object p1, p1, Lxy1;->w:Lxh1;

    .line 56
    .line 57
    iget-object p1, p1, Lxh1;->n:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lug2;

    .line 60
    .line 61
    iget-object v1, p1, Lug2;->n:[Ljava/lang/Object;

    .line 62
    .line 63
    iget p1, p1, Lug2;->p:I

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    :goto_0
    if-ge v2, p1, :cond_3

    .line 67
    .line 68
    aget-object v3, v1, v2

    .line 69
    .line 70
    check-cast v3, Lxy1;

    .line 71
    .line 72
    iget-object v3, v3, Lxy1;->S:Lbo;

    .line 73
    .line 74
    iget-object v3, v3, Lbo;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Lmm2;

    .line 77
    .line 78
    iput-object v0, v3, Lmm2;->H:Lmm2;

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lxy1;->G()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lxy1;->O()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final N(Lmm2;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lxy1;->A:Lsr2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lq9;

    .line 6
    .line 7
    invoke-virtual {v0}, Lq9;->getRectManager()Ln33;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lxy1;->T:Lbz1;

    .line 14
    .line 15
    iget-object v2, v1, Lbz1;->d:Lty1;

    .line 16
    .line 17
    sget-object v3, Lty1;->r:Lty1;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v2, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lxy1;->q()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lxy1;->p()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v2, v4

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    move v2, v5

    .line 39
    :goto_2
    iget v3, p0, Lxy1;->t:I

    .line 40
    .line 41
    const/4 v6, -0x4

    .line 42
    if-eq v3, v6, :cond_7

    .line 43
    .line 44
    if-eqz v0, :cond_7

    .line 45
    .line 46
    iget-object v3, p0, Lxy1;->S:Lbo;

    .line 47
    .line 48
    iget-object v3, v3, Lbo;->e:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v3, Lmm2;

    .line 51
    .line 52
    if-ne p1, v3, :cond_3

    .line 53
    .line 54
    iput-boolean v5, p0, Lxy1;->s:Z

    .line 55
    .line 56
    if-nez v2, :cond_7

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ln33;->h(Lxy1;)V

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_3
    iput-boolean v5, p0, Lxy1;->r:Z

    .line 63
    .line 64
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v3, p1, Lug2;->n:[Ljava/lang/Object;

    .line 69
    .line 70
    iget p1, p1, Lug2;->p:I

    .line 71
    .line 72
    :goto_3
    if-ge v4, p1, :cond_5

    .line 73
    .line 74
    aget-object v7, v3, v4

    .line 75
    .line 76
    check-cast v7, Lxy1;

    .line 77
    .line 78
    iput-boolean v5, v7, Lxy1;->s:Z

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, v7}, Ln33;->h(Lxy1;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    iget p1, p0, Lxy1;->t:I

    .line 89
    .line 90
    if-eq p1, v6, :cond_6

    .line 91
    .line 92
    iput-boolean v5, v0, Ln33;->f:Z

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ln33;->e(Lxy1;)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    iget-object p1, v0, Ln33;->c:Lhb;

    .line 99
    .line 100
    iget-object p1, p1, Lhb;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, [J

    .line 103
    .line 104
    add-int/lit8 p0, p0, 0x2

    .line 105
    .line 106
    aget-wide v2, p1, p0

    .line 107
    .line 108
    const/16 v4, 0x3f

    .line 109
    .line 110
    shr-long v4, v2, v4

    .line 111
    .line 112
    const-wide/16 v6, 0x1

    .line 113
    .line 114
    and-long/2addr v4, v6

    .line 115
    const/16 v6, 0x3c

    .line 116
    .line 117
    shl-long/2addr v4, v6

    .line 118
    or-long/2addr v2, v4

    .line 119
    aput-wide v2, p1, p0

    .line 120
    .line 121
    :cond_6
    invoke-virtual {v0}, Ln33;->k()V

    .line 122
    .line 123
    .line 124
    :cond_7
    :goto_4
    iget-object p0, v1, Lbz1;->p:Lcb2;

    .line 125
    .line 126
    invoke-virtual {p0}, Lcb2;->u0()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxy1;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lxy1;->O()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lxy1;->I:Z

    .line 17
    .line 18
    return-void
.end method

.method public final P(Lmf0;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lxy1;->P:Lvy1;

    .line 4
    .line 5
    sget-object v1, Lvy1;->p:Lvy1;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lxy1;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 13
    .line 14
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 15
    .line 16
    iget-wide v0, p1, Lmf0;->a:J

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcb2;->q0(J)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final R()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxy1;->w:Lxh1;

    .line 2
    .line 3
    iget-object v1, v0, Lxh1;->n:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lug2;

    .line 6
    .line 7
    iget v1, v1, Lug2;->p:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    iget-object v2, v0, Lxh1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lug2;

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    iget-object v2, v2, Lug2;->n:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    check-cast v2, Lxy1;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lxy1;->M(Lxy1;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v2}, Lug2;->h()V

    .line 31
    .line 32
    .line 33
    iget-object p0, v0, Lxh1;->o:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lje;

    .line 36
    .line 37
    invoke-virtual {p0}, Lje;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final S(II)V
    .locals 2

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "count ("

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ") must be greater than 0"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    add-int/2addr p2, p1

    .line 27
    add-int/lit8 p2, p2, -0x1

    .line 28
    .line 29
    if-gt p1, p2, :cond_1

    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Lxy1;->w:Lxh1;

    .line 32
    .line 33
    iget-object v1, v0, Lxh1;->n:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lug2;

    .line 36
    .line 37
    iget-object v1, v1, Lug2;->n:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v1, v1, p2

    .line 40
    .line 41
    check-cast v1, Lxy1;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lxy1;->M(Lxy1;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lxh1;->n:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lug2;

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Lug2;->l(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v0, v0, Lxh1;->o:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lje;

    .line 57
    .line 58
    invoke-virtual {v0}, Lje;->a()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    check-cast v1, Lxy1;

    .line 62
    .line 63
    if-eq p2, p1, :cond_1

    .line 64
    .line 65
    add-int/lit8 p2, p2, -0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    return-void
.end method

.method public final T()V
    .locals 7

    .line 1
    iget-object v0, p0, Lxy1;->P:Lvy1;

    .line 2
    .line 3
    sget-object v1, Lvy1;->p:Lvy1;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lxy1;->d()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 11
    .line 12
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 13
    .line 14
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    :try_start_0
    iput-boolean v2, p0, Lcb2;->t:Z

    .line 19
    .line 20
    iget-boolean v2, p0, Lcb2;->x:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    const-string v2, "replace called on unplaced item"

    .line 25
    .line 26
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcb2;->F:Z

    .line 33
    .line 34
    iget-wide v3, p0, Lcb2;->A:J

    .line 35
    .line 36
    iget v5, p0, Lcb2;->C:F

    .line 37
    .line 38
    iget-object v6, p0, Lcb2;->B:Lpe1;

    .line 39
    .line 40
    invoke-virtual {p0, v3, v4, v5, v6}, Lcb2;->o0(JFLpe1;)V

    .line 41
    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-boolean v2, p0, Lcb2;->S:Z

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    iget-object v2, v0, Lbz1;->a:Lxy1;

    .line 50
    .line 51
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lxy1;->W(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_2
    iput-boolean v1, p0, Lcb2;->t:Z

    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_1
    iget-object v0, v0, Lbz1;->a:Lxy1;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lxy1;->a0(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    iput-boolean v1, p0, Lcb2;->t:Z

    .line 72
    .line 73
    throw v0
.end method

.method public final U(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lxy1;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lxy1;->A:Lsr2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    check-cast v0, Lq9;

    .line 11
    .line 12
    invoke-virtual {v0, p0, v1, p1}, Lq9;->x(Lxy1;ZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final W(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lxy1;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lxy1;->A:Lsr2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    check-cast v0, Lq9;

    .line 11
    .line 12
    invoke-virtual {v0, p0, v1, p1}, Lq9;->x(Lxy1;ZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final Z()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p0, p0, Lug2;->p:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p0, :cond_1

    .line 11
    .line 12
    aget-object v2, v0, v1

    .line 13
    .line 14
    check-cast v2, Lxy1;

    .line 15
    .line 16
    iget-object v3, v2, Lxy1;->Q:Lvy1;

    .line 17
    .line 18
    iput-object v3, v2, Lxy1;->P:Lvy1;

    .line 19
    .line 20
    sget-object v4, Lvy1;->p:Lvy1;

    .line 21
    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lxy1;->Z()V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final a(Lnd2;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lxy1;->S:Lbo;

    .line 6
    .line 7
    const/16 v7, 0x10

    .line 8
    .line 9
    invoke-virtual {v2, v7}, Lbo;->f(I)Z

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    iget-object v3, v2, Lbo;->f:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v9, v3

    .line 16
    check-cast v9, Lgw3;

    .line 17
    .line 18
    const/16 v10, 0x400

    .line 19
    .line 20
    invoke-virtual {v2, v10}, Lbo;->f(I)Z

    .line 21
    .line 22
    .line 23
    move-result v11

    .line 24
    iput-object v1, v0, Lxy1;->X:Lnd2;

    .line 25
    .line 26
    iget-object v3, v2, Lbo;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Lgr1;

    .line 29
    .line 30
    iget-object v4, v2, Lbo;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Lxy1;

    .line 33
    .line 34
    iget-object v5, v2, Lbo;->g:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Lmd2;

    .line 37
    .line 38
    iget-object v6, v2, Lbo;->c:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v12, v6

    .line 41
    check-cast v12, Lim2;

    .line 42
    .line 43
    if-eq v5, v12, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v5, "padChain called on already padded chain"

    .line 47
    .line 48
    invoke-static {v5}, Lar1;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v5, v2, Lbo;->g:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Lmd2;

    .line 54
    .line 55
    iput-object v12, v5, Lmd2;->r:Lmd2;

    .line 56
    .line 57
    iput-object v5, v12, Lmd2;->s:Lmd2;

    .line 58
    .line 59
    iget-object v5, v2, Lbo;->h:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v5, Lug2;

    .line 62
    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    iget v13, v5, Lug2;->p:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v13, 0x0

    .line 69
    :goto_1
    iget-object v14, v2, Lbo;->i:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v14, Lug2;

    .line 72
    .line 73
    if-nez v14, :cond_2

    .line 74
    .line 75
    new-instance v14, Lug2;

    .line 76
    .line 77
    new-array v15, v7, [Lld2;

    .line 78
    .line 79
    invoke-direct {v14, v15}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v15, v2, Lbo;->j:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v15, Lug2;

    .line 85
    .line 86
    invoke-virtual {v15, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    :goto_2
    iget v1, v15, Lug2;->p:I

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    add-int/lit8 v1, v1, -0x1

    .line 96
    .line 97
    invoke-virtual {v15, v1}, Lug2;->l(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lnd2;

    .line 102
    .line 103
    instance-of v6, v1, Lt80;

    .line 104
    .line 105
    if-eqz v6, :cond_3

    .line 106
    .line 107
    check-cast v1, Lt80;

    .line 108
    .line 109
    iget-object v6, v1, Lt80;->c:Lnd2;

    .line 110
    .line 111
    invoke-virtual {v15, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v1, Lt80;->b:Lnd2;

    .line 115
    .line 116
    invoke-virtual {v15, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_3
    instance-of v6, v1, Lld2;

    .line 121
    .line 122
    if-eqz v6, :cond_4

    .line 123
    .line 124
    invoke-virtual {v14, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_4
    if-nez v16, :cond_5

    .line 129
    .line 130
    new-instance v6, Lc8;

    .line 131
    .line 132
    const/16 v10, 0x12

    .line 133
    .line 134
    invoke-direct {v6, v10, v14}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v16, v6

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    move-object/from16 v6, v16

    .line 141
    .line 142
    :goto_3
    invoke-interface {v1, v6}, Lnd2;->b(Lpe1;)Z

    .line 143
    .line 144
    .line 145
    :goto_4
    const/16 v10, 0x400

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    iget v1, v14, Lug2;->p:I

    .line 149
    .line 150
    const-string v6, "expected prior modifier list to be non-empty"

    .line 151
    .line 152
    if-ne v1, v13, :cond_11

    .line 153
    .line 154
    iget-object v1, v12, Lmd2;->s:Lmd2;

    .line 155
    .line 156
    move-object v3, v2

    .line 157
    const/4 v2, 0x0

    .line 158
    :goto_5
    if-eqz v1, :cond_c

    .line 159
    .line 160
    if-ge v2, v13, :cond_c

    .line 161
    .line 162
    if-eqz v5, :cond_b

    .line 163
    .line 164
    const/16 v16, 0x2

    .line 165
    .line 166
    iget-object v10, v5, Lug2;->n:[Ljava/lang/Object;

    .line 167
    .line 168
    aget-object v10, v10, v2

    .line 169
    .line 170
    check-cast v10, Lld2;

    .line 171
    .line 172
    iget-object v7, v14, Lug2;->n:[Ljava/lang/Object;

    .line 173
    .line 174
    aget-object v7, v7, v2

    .line 175
    .line 176
    check-cast v7, Lld2;

    .line 177
    .line 178
    invoke-static {v10, v7}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    if-eqz v17, :cond_7

    .line 183
    .line 184
    move-object/from16 v18, v3

    .line 185
    .line 186
    move/from16 v3, v16

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    move-object/from16 v18, v3

    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-ne v15, v3, :cond_8

    .line 200
    .line 201
    const/4 v3, 0x1

    .line 202
    goto :goto_6

    .line 203
    :cond_8
    const/4 v3, 0x0

    .line 204
    :goto_6
    if-eqz v3, :cond_a

    .line 205
    .line 206
    const/4 v15, 0x1

    .line 207
    if-eq v3, v15, :cond_9

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_9
    invoke-static {v10, v7, v1}, Lbo;->j(Lld2;Lld2;Lmd2;)V

    .line 211
    .line 212
    .line 213
    :goto_7
    iget-object v1, v1, Lmd2;->s:Lmd2;

    .line 214
    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    move-object/from16 v3, v18

    .line 218
    .line 219
    const/16 v7, 0x10

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_b
    invoke-static {v6}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    throw v0

    .line 230
    :cond_c
    move-object/from16 v18, v3

    .line 231
    .line 232
    const/16 v16, 0x2

    .line 233
    .line 234
    :goto_8
    if-ge v2, v13, :cond_10

    .line 235
    .line 236
    if-eqz v5, :cond_f

    .line 237
    .line 238
    if-eqz v1, :cond_e

    .line 239
    .line 240
    iget-object v3, v4, Lxy1;->Y:Lnd2;

    .line 241
    .line 242
    if-eqz v3, :cond_d

    .line 243
    .line 244
    const/4 v6, 0x1

    .line 245
    :goto_9
    const/16 v17, 0x1

    .line 246
    .line 247
    goto :goto_a

    .line 248
    :cond_d
    const/4 v6, 0x0

    .line 249
    goto :goto_9

    .line 250
    :goto_a
    xor-int/lit8 v6, v6, 0x1

    .line 251
    .line 252
    move-object v3, v5

    .line 253
    move-object v4, v14

    .line 254
    const/4 v7, 0x0

    .line 255
    move-object v5, v1

    .line 256
    move-object/from16 v1, v18

    .line 257
    .line 258
    invoke-virtual/range {v1 .. v6}, Lbo;->h(ILug2;Lug2;Lmd2;Z)V

    .line 259
    .line 260
    .line 261
    move-object v5, v3

    .line 262
    move-object v5, v12

    .line 263
    :goto_b
    const/4 v6, 0x1

    .line 264
    goto/16 :goto_13

    .line 265
    .line 266
    :cond_e
    const-string v0, "structuralUpdate requires a non-null tail"

    .line 267
    .line 268
    invoke-static {v0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    throw v0

    .line 273
    :cond_f
    invoke-static {v6}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    throw v0

    .line 278
    :cond_10
    move-object/from16 v2, v18

    .line 279
    .line 280
    const/4 v7, 0x0

    .line 281
    goto :goto_10

    .line 282
    :cond_11
    const/4 v7, 0x0

    .line 283
    const/16 v16, 0x2

    .line 284
    .line 285
    iget-object v10, v4, Lxy1;->Y:Lnd2;

    .line 286
    .line 287
    if-eqz v10, :cond_14

    .line 288
    .line 289
    if-nez v13, :cond_14

    .line 290
    .line 291
    move-object v3, v12

    .line 292
    const/4 v1, 0x0

    .line 293
    :goto_c
    iget v4, v14, Lug2;->p:I

    .line 294
    .line 295
    if-ge v1, v4, :cond_12

    .line 296
    .line 297
    iget-object v4, v14, Lug2;->n:[Ljava/lang/Object;

    .line 298
    .line 299
    aget-object v4, v4, v1

    .line 300
    .line 301
    check-cast v4, Lld2;

    .line 302
    .line 303
    invoke-static {v4, v3}, Lbo;->d(Lld2;Lmd2;)Lmd2;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    add-int/lit8 v1, v1, 0x1

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_12
    iget-object v1, v9, Lmd2;->r:Lmd2;

    .line 311
    .line 312
    const/4 v6, 0x0

    .line 313
    :goto_d
    if-eqz v1, :cond_13

    .line 314
    .line 315
    if-eq v1, v12, :cond_13

    .line 316
    .line 317
    iget v3, v1, Lmd2;->p:I

    .line 318
    .line 319
    or-int/2addr v6, v3

    .line 320
    iput v6, v1, Lmd2;->q:I

    .line 321
    .line 322
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 323
    .line 324
    goto :goto_d

    .line 325
    :cond_13
    move-object v1, v2

    .line 326
    move-object v3, v5

    .line 327
    move-object v5, v12

    .line 328
    move-object v4, v14

    .line 329
    goto :goto_b

    .line 330
    :cond_14
    if-nez v1, :cond_18

    .line 331
    .line 332
    if-eqz v5, :cond_17

    .line 333
    .line 334
    iget-object v1, v12, Lmd2;->s:Lmd2;

    .line 335
    .line 336
    const/4 v6, 0x0

    .line 337
    :goto_e
    if-eqz v1, :cond_15

    .line 338
    .line 339
    iget v10, v5, Lug2;->p:I

    .line 340
    .line 341
    if-ge v6, v10, :cond_15

    .line 342
    .line 343
    invoke-static {v1}, Lbo;->e(Lmd2;)Lmd2;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    iget-object v1, v1, Lmd2;->s:Lmd2;

    .line 348
    .line 349
    add-int/lit8 v6, v6, 0x1

    .line 350
    .line 351
    goto :goto_e

    .line 352
    :cond_15
    invoke-virtual {v4}, Lxy1;->u()Lxy1;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    if-eqz v1, :cond_16

    .line 357
    .line 358
    iget-object v1, v1, Lxy1;->S:Lbo;

    .line 359
    .line 360
    iget-object v1, v1, Lbo;->d:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v1, Lgr1;

    .line 363
    .line 364
    goto :goto_f

    .line 365
    :cond_16
    move-object v1, v7

    .line 366
    :goto_f
    iput-object v1, v3, Lmm2;->H:Lmm2;

    .line 367
    .line 368
    iput-object v3, v2, Lbo;->e:Ljava/lang/Object;

    .line 369
    .line 370
    :goto_10
    move-object v1, v2

    .line 371
    move-object v3, v5

    .line 372
    move-object v5, v12

    .line 373
    move-object v4, v14

    .line 374
    const/4 v6, 0x0

    .line 375
    goto :goto_13

    .line 376
    :cond_17
    invoke-static {v6}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    throw v0

    .line 381
    :cond_18
    if-nez v5, :cond_19

    .line 382
    .line 383
    new-instance v5, Lug2;

    .line 384
    .line 385
    const/16 v1, 0x10

    .line 386
    .line 387
    new-array v3, v1, [Lld2;

    .line 388
    .line 389
    invoke-direct {v5, v3}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    :cond_19
    move-object v3, v5

    .line 393
    if-eqz v10, :cond_1a

    .line 394
    .line 395
    const/4 v6, 0x1

    .line 396
    :goto_11
    const/16 v17, 0x1

    .line 397
    .line 398
    goto :goto_12

    .line 399
    :cond_1a
    const/4 v6, 0x0

    .line 400
    goto :goto_11

    .line 401
    :goto_12
    xor-int/lit8 v6, v6, 0x1

    .line 402
    .line 403
    move-object v1, v2

    .line 404
    const/4 v2, 0x0

    .line 405
    move-object v5, v12

    .line 406
    move-object v4, v14

    .line 407
    invoke-virtual/range {v1 .. v6}, Lbo;->h(ILug2;Lug2;Lmd2;Z)V

    .line 408
    .line 409
    .line 410
    move/from16 v6, v17

    .line 411
    .line 412
    :goto_13
    iput-object v4, v1, Lbo;->h:Ljava/lang/Object;

    .line 413
    .line 414
    if-eqz v3, :cond_1b

    .line 415
    .line 416
    invoke-virtual {v3}, Lug2;->h()V

    .line 417
    .line 418
    .line 419
    goto :goto_14

    .line 420
    :cond_1b
    move-object v3, v7

    .line 421
    :goto_14
    iput-object v3, v1, Lbo;->i:Ljava/lang/Object;

    .line 422
    .line 423
    iget-object v2, v5, Lmd2;->s:Lmd2;

    .line 424
    .line 425
    if-nez v2, :cond_1c

    .line 426
    .line 427
    goto :goto_15

    .line 428
    :cond_1c
    move-object v9, v2

    .line 429
    :goto_15
    iput-object v7, v9, Lmd2;->r:Lmd2;

    .line 430
    .line 431
    iput-object v7, v5, Lmd2;->s:Lmd2;

    .line 432
    .line 433
    const/4 v2, -0x1

    .line 434
    iput v2, v5, Lmd2;->q:I

    .line 435
    .line 436
    iput-object v7, v5, Lmd2;->u:Lmm2;

    .line 437
    .line 438
    if-eq v9, v5, :cond_1d

    .line 439
    .line 440
    goto :goto_16

    .line 441
    :cond_1d
    const-string v2, "trimChain did not update the head"

    .line 442
    .line 443
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :goto_16
    iput-object v9, v1, Lbo;->g:Ljava/lang/Object;

    .line 447
    .line 448
    if-eqz v6, :cond_1e

    .line 449
    .line 450
    invoke-virtual {v1}, Lbo;->i()V

    .line 451
    .line 452
    .line 453
    :cond_1e
    const/16 v2, 0x10

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Lbo;->f(I)Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    const/16 v3, 0x400

    .line 460
    .line 461
    invoke-virtual {v1, v3}, Lbo;->f(I)Z

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    iget-object v4, v0, Lxy1;->T:Lbz1;

    .line 466
    .line 467
    invoke-virtual {v4}, Lbz1;->j()V

    .line 468
    .line 469
    .line 470
    iget-object v4, v0, Lxy1;->u:Lxy1;

    .line 471
    .line 472
    if-nez v4, :cond_1f

    .line 473
    .line 474
    const/16 v4, 0x200

    .line 475
    .line 476
    invoke-virtual {v1, v4}, Lbo;->f(I)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-eqz v1, :cond_1f

    .line 481
    .line 482
    invoke-virtual {v0, v0}, Lxy1;->d0(Lxy1;)V

    .line 483
    .line 484
    .line 485
    :cond_1f
    if-ne v8, v2, :cond_20

    .line 486
    .line 487
    if-eq v11, v3, :cond_21

    .line 488
    .line 489
    :cond_20
    invoke-static {v0}, Laz1;->a(Lxy1;)Lsr2;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    check-cast v1, Lq9;

    .line 494
    .line 495
    invoke-virtual {v1}, Lq9;->getRectManager()Ln33;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0}, Lxy1;->H()Z

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    if-eqz v4, :cond_21

    .line 507
    .line 508
    iget v4, v0, Lxy1;->t:I

    .line 509
    .line 510
    const/4 v5, -0x4

    .line 511
    if-eq v4, v5, :cond_21

    .line 512
    .line 513
    iget-object v4, v1, Ln33;->c:Lhb;

    .line 514
    .line 515
    invoke-virtual {v1, v0}, Ln33;->e(Lxy1;)I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    iget-object v1, v4, Lhb;->c:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v1, [J

    .line 522
    .line 523
    add-int/lit8 v0, v0, 0x2

    .line 524
    .line 525
    aget-wide v4, v1, v0

    .line 526
    .line 527
    const-wide v6, -0x6000000000000001L

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    and-long/2addr v4, v6

    .line 533
    const-wide/high16 v6, 0x2000000000000000L

    .line 534
    .line 535
    int-to-long v8, v3

    .line 536
    mul-long/2addr v8, v6

    .line 537
    or-long v3, v4, v8

    .line 538
    .line 539
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 540
    .line 541
    int-to-long v7, v2

    .line 542
    mul-long/2addr v7, v5

    .line 543
    or-long v2, v3, v7

    .line 544
    .line 545
    aput-wide v2, v1, v0

    .line 546
    .line 547
    :cond_21
    return-void
.end method

.method public final a0(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lxy1;->O:Lhc0;

    .line 2
    .line 3
    sget-object v1, Ldc0;->a:Lis3;

    .line 4
    .line 5
    check-cast v0, Lhu2;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lbi4;->F(Lhu2;Lh03;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcc0;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v1, Lh4;

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-direct {v1, v2, v0, p0}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Lmt1;->W(Ljava/lang/Throwable;Lne1;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    throw p1
.end method

.method public final b(Lsr2;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lxy1;->A:Lsr2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Lxy1;->e(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Cannot attach "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, " as it already is attached.  Tree: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lxy1;->z:Lxy1;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object v0, v0, Lxy1;->A:Lsr2;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, v0, Lxy1;->A:Lsr2;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v0, v2

    .line 60
    :goto_1
    invoke-virtual {p0, v1}, Lxy1;->e(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v4, p0, Lxy1;->z:Lxy1;

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4, v1}, Lxy1;->e(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move-object v4, v2

    .line 74
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v6, "Attaching to a different owner("

    .line 77
    .line 78
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, ") than the parent\'s owner("

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "). This tree: "

    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, " Parent tree: "

    .line 101
    .line 102
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v3, p0, Lxy1;->T:Lbz1;

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    iget-object v5, v3, Lbz1;->p:Lcb2;

    .line 125
    .line 126
    iput-boolean v4, v5, Lcb2;->F:Z

    .line 127
    .line 128
    move-object v5, p1

    .line 129
    check-cast v5, Lq9;

    .line 130
    .line 131
    invoke-virtual {v5}, Lq9;->getRectManager()Ln33;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5, p0}, Ln33;->h(Lxy1;)V

    .line 136
    .line 137
    .line 138
    iget-object v5, v3, Lbz1;->q:Lq82;

    .line 139
    .line 140
    if-eqz v5, :cond_5

    .line 141
    .line 142
    sget-object v6, Lo82;->n:Lo82;

    .line 143
    .line 144
    iput-object v6, v5, Lq82;->D:Lo82;

    .line 145
    .line 146
    :cond_5
    iget-object v5, p0, Lxy1;->S:Lbo;

    .line 147
    .line 148
    iget-object v6, v5, Lbo;->e:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v6, Lmm2;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    iget-object v7, v0, Lxy1;->S:Lbo;

    .line 155
    .line 156
    iget-object v7, v7, Lbo;->d:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v7, Lgr1;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    move-object v7, v2

    .line 162
    :goto_4
    iput-object v7, v6, Lmm2;->H:Lmm2;

    .line 163
    .line 164
    iput-object p1, p0, Lxy1;->A:Lsr2;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    iget v6, v0, Lxy1;->C:I

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_7
    const/4 v6, -0x1

    .line 172
    :goto_5
    add-int/2addr v6, v4

    .line 173
    iput v6, p0, Lxy1;->C:I

    .line 174
    .line 175
    iget-object v6, p0, Lxy1;->Y:Lnd2;

    .line 176
    .line 177
    if-eqz v6, :cond_8

    .line 178
    .line 179
    invoke-virtual {p0, v6}, Lxy1;->a(Lnd2;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    iput-object v2, p0, Lxy1;->Y:Lnd2;

    .line 183
    .line 184
    move-object v2, p1

    .line 185
    check-cast v2, Lq9;

    .line 186
    .line 187
    invoke-virtual {v2}, Lq9;->getLayoutNodes()Ltf2;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iget v6, p0, Lxy1;->o:I

    .line 192
    .line 193
    invoke-virtual {v2, v6, p0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iget-object v2, p0, Lxy1;->z:Lxy1;

    .line 197
    .line 198
    if-eqz v2, :cond_9

    .line 199
    .line 200
    iget-object v2, v2, Lxy1;->u:Lxy1;

    .line 201
    .line 202
    if-nez v2, :cond_a

    .line 203
    .line 204
    :cond_9
    iget-object v2, p0, Lxy1;->u:Lxy1;

    .line 205
    .line 206
    :cond_a
    invoke-virtual {p0, v2}, Lxy1;->d0(Lxy1;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lxy1;->u:Lxy1;

    .line 210
    .line 211
    if-nez v2, :cond_b

    .line 212
    .line 213
    const/16 v2, 0x200

    .line 214
    .line 215
    invoke-virtual {v5, v2}, Lbo;->f(I)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_b

    .line 220
    .line 221
    invoke-virtual {p0, p0}, Lxy1;->d0(Lxy1;)V

    .line 222
    .line 223
    .line 224
    :cond_b
    iget-boolean v2, p0, Lxy1;->d0:Z

    .line 225
    .line 226
    if-nez v2, :cond_c

    .line 227
    .line 228
    iget-object v2, v5, Lbo;->g:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v2, Lmd2;

    .line 231
    .line 232
    :goto_6
    if-eqz v2, :cond_c

    .line 233
    .line 234
    invoke-virtual {v2}, Lmd2;->w0()V

    .line 235
    .line 236
    .line 237
    iget-object v2, v2, Lmd2;->s:Lmd2;

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_c
    iget-object v2, p0, Lxy1;->w:Lxh1;

    .line 241
    .line 242
    iget-object v2, v2, Lxh1;->n:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v2, Lug2;

    .line 245
    .line 246
    iget-object v6, v2, Lug2;->n:[Ljava/lang/Object;

    .line 247
    .line 248
    iget v2, v2, Lug2;->p:I

    .line 249
    .line 250
    :goto_7
    if-ge v1, v2, :cond_d

    .line 251
    .line 252
    aget-object v7, v6, v1

    .line 253
    .line 254
    check-cast v7, Lxy1;

    .line 255
    .line 256
    invoke-virtual {v7, p1}, Lxy1;->b(Lsr2;)V

    .line 257
    .line 258
    .line 259
    add-int/lit8 v1, v1, 0x1

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_d
    iget-boolean v1, p0, Lxy1;->d0:Z

    .line 263
    .line 264
    if-nez v1, :cond_e

    .line 265
    .line 266
    invoke-virtual {v5}, Lbo;->g()V

    .line 267
    .line 268
    .line 269
    :cond_e
    invoke-virtual {p0}, Lxy1;->E()V

    .line 270
    .line 271
    .line 272
    if-eqz v0, :cond_f

    .line 273
    .line 274
    invoke-virtual {v0}, Lxy1;->E()V

    .line 275
    .line 276
    .line 277
    :cond_f
    iget-object v0, p0, Lxy1;->Z:Lvc;

    .line 278
    .line 279
    if-eqz v0, :cond_10

    .line 280
    .line 281
    invoke-virtual {v0, p1}, Lvc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    :cond_10
    invoke-virtual {v3}, Lbz1;->j()V

    .line 285
    .line 286
    .line 287
    iget-boolean v0, p0, Lxy1;->d0:Z

    .line 288
    .line 289
    if-nez v0, :cond_11

    .line 290
    .line 291
    const/16 v0, 0x8

    .line 292
    .line 293
    invoke-virtual {v5, v0}, Lbo;->f(I)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-eqz v0, :cond_11

    .line 298
    .line 299
    invoke-virtual {p0}, Lxy1;->F()V

    .line 300
    .line 301
    .line 302
    :cond_11
    check-cast p1, Lq9;

    .line 303
    .line 304
    invoke-static {}, Lq9;->d()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_12

    .line 309
    .line 310
    invoke-virtual {p1}, Lq9;->getAutofillManager()Lw8;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-eqz p1, :cond_12

    .line 315
    .line 316
    invoke-virtual {p0}, Lxy1;->x()Lbh3;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-eqz v0, :cond_12

    .line 321
    .line 322
    iget-object v0, v0, Lbh3;->n:Lkg2;

    .line 323
    .line 324
    sget-object v1, Llh3;->r:Loh3;

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Lkg2;->b(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-ne v0, v4, :cond_12

    .line 331
    .line 332
    iget-object v0, p1, Lw8;->t:Luf2;

    .line 333
    .line 334
    iget v1, p0, Lxy1;->o:I

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Luf2;->a(I)Z

    .line 337
    .line 338
    .line 339
    iget-object v0, p1, Lw8;->n:Lxh1;

    .line 340
    .line 341
    iget-object p1, p1, Lw8;->p:Lq9;

    .line 342
    .line 343
    iget p0, p0, Lxy1;->o:I

    .line 344
    .line 345
    invoke-virtual {v0, p1, p0, v4}, Lxh1;->u(Landroid/view/View;IZ)V

    .line 346
    .line 347
    .line 348
    :cond_12
    return-void
.end method

.method public final b0(Las0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxy1;->L:Las0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iput-object p1, p0, Lxy1;->L:Las0;

    .line 10
    .line 11
    invoke-virtual {p0}, Lxy1;->E()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lxy1;->C()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lxy1;->A:Lsr2;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    check-cast p1, Lq9;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lxy1;->D()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 37
    .line 38
    iget-object p0, p0, Lbo;->g:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lmd2;

    .line 41
    .line 42
    :goto_1
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {p0}, Ljr0;->a()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lxy1;->P:Lvy1;

    .line 2
    .line 3
    iput-object v0, p0, Lxy1;->Q:Lvy1;

    .line 4
    .line 5
    sget-object v0, Lvy1;->p:Lvy1;

    .line 6
    .line 7
    iput-object v0, p0, Lxy1;->P:Lvy1;

    .line 8
    .line 9
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object v1, p0, Lug2;->n:[Ljava/lang/Object;

    .line 14
    .line 15
    iget p0, p0, Lug2;->p:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, p0, :cond_1

    .line 19
    .line 20
    aget-object v3, v1, v2

    .line 21
    .line 22
    check-cast v3, Lxy1;

    .line 23
    .line 24
    iget-object v4, v3, Lxy1;->P:Lvy1;

    .line 25
    .line 26
    if-eq v4, v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Lxy1;->c()V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final c0(I)V
    .locals 2

    .line 1
    iget v0, p0, Lxy1;->c0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v1, v0, Lxy1;->c0:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lxy1;->c0(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lxy1;->c0:I

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v1, v0, Lxy1;->c0:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lxy1;->c0(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iput p1, p0, Lxy1;->c0:I

    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lxy1;->P:Lvy1;

    .line 2
    .line 3
    iput-object v0, p0, Lxy1;->Q:Lvy1;

    .line 4
    .line 5
    sget-object v0, Lvy1;->p:Lvy1;

    .line 6
    .line 7
    iput-object v0, p0, Lxy1;->P:Lvy1;

    .line 8
    .line 9
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 14
    .line 15
    iget p0, p0, Lug2;->p:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, p0, :cond_1

    .line 19
    .line 20
    aget-object v2, v0, v1

    .line 21
    .line 22
    check-cast v2, Lxy1;

    .line 23
    .line 24
    iget-object v3, v2, Lxy1;->P:Lvy1;

    .line 25
    .line 26
    sget-object v4, Lvy1;->o:Lvy1;

    .line 27
    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lxy1;->d()V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final d0(Lxy1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxy1;->u:Lxy1;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iput-object p1, p0, Lxy1;->u:Lxy1;

    .line 10
    .line 11
    iget-object v0, p0, Lxy1;->T:Lbz1;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, v0, Lbz1;->q:Lq82;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lq82;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lq82;-><init>(Lbz1;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Lbz1;->q:Lq82;

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lxy1;->S:Lbo;

    .line 27
    .line 28
    iget-object v0, p1, Lbo;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lmm2;

    .line 31
    .line 32
    iget-object p1, p1, Lbo;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lgr1;

    .line 35
    .line 36
    iget-object p1, p1, Lmm2;->G:Lmm2;

    .line 37
    .line 38
    :goto_0
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lmm2;->J0()V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lmm2;->G:Lmm2;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    iput-object p1, v0, Lbz1;->q:Lq82;

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, v0, Lbz1;->f:Z

    .line 57
    .line 58
    iput-boolean p1, v0, Lbz1;->e:Z

    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Lxy1;->E()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final e(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, p1, :cond_0

    .line 9
    .line 10
    const-string v3, "  "

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "|-"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lxy1;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object v2, p0, Lug2;->n:[Ljava/lang/Object;

    .line 40
    .line 41
    iget p0, p0, Lug2;->p:I

    .line 42
    .line 43
    move v3, v1

    .line 44
    :goto_1
    if-ge v3, p0, :cond_1

    .line 45
    .line 46
    aget-object v4, v2, v3

    .line 47
    .line 48
    check-cast v4, Lxy1;

    .line 49
    .line 50
    add-int/lit8 v5, p1, 0x1

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Lxy1;->e(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    add-int/lit8 p1, p1, -0x1

    .line 73
    .line 74
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :cond_2
    return-object p0
.end method

.method public final e0(Ldb2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxy1;->J:Ldb2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lxy1;->J:Ldb2;

    .line 10
    .line 11
    iget-object v0, p0, Lxy1;->K:Lxh1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lxh1;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lws2;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lxy1;->E()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxy1;->B:Lpb4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lbd;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lxy1;->U:Llz1;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Llz1;->f()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 16
    .line 17
    iget-object v0, p0, Lbo;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lmm2;

    .line 20
    .line 21
    iget-object p0, p0, Lbo;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lgr1;

    .line 24
    .line 25
    iget-object p0, p0, Lmm2;->G:Lmm2;

    .line 26
    .line 27
    :goto_0
    invoke-static {v0, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lmm2;->a1()V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lmm2;->G:Lmm2;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public final f0(Lnd2;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lxy1;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lxy1;->X:Lnd2;

    .line 6
    .line 7
    sget-object v1, Lkd2;->b:Lkd2;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Modifiers are not supported on virtual LayoutNodes"

    .line 13
    .line 14
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lxy1;->d0:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-string v0, "modifier is updated when deactivated"

    .line 22
    .line 23
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Lxy1;->H()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lxy1;->a(Lnd2;)V

    .line 33
    .line 34
    .line 35
    iget-boolean p1, p0, Lxy1;->E:Z

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Lxy1;->F()V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void

    .line 43
    :cond_4
    iput-object p1, p0, Lxy1;->Y:Lnd2;

    .line 44
    .line 45
    return-void
.end method

.method public final g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lxy1;->A:Lsr2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lxy1;->e(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Cannot detach node that is already detached!  Tree: "

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lar1;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lp61;->q()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, p0, Lxy1;->T:Lbz1;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3}, Lxy1;->C()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lxy1;->E()V

    .line 50
    .line 51
    .line 52
    iget-object v3, v4, Lbz1;->p:Lcb2;

    .line 53
    .line 54
    sget-object v5, Lvy1;->p:Lvy1;

    .line 55
    .line 56
    iput-object v5, v3, Lcb2;->y:Lvy1;

    .line 57
    .line 58
    iget-object v3, v4, Lbz1;->q:Lq82;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iput-object v5, v3, Lq82;->w:Lvy1;

    .line 63
    .line 64
    :cond_2
    iget-object v3, v4, Lbz1;->p:Lcb2;

    .line 65
    .line 66
    iget-object v3, v3, Lcb2;->K:Lyy1;

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    iput-boolean v5, v3, Lyy1;->b:Z

    .line 70
    .line 71
    iput-boolean v2, v3, Lyy1;->c:Z

    .line 72
    .line 73
    iput-boolean v2, v3, Lyy1;->e:Z

    .line 74
    .line 75
    iput-boolean v2, v3, Lyy1;->d:Z

    .line 76
    .line 77
    iput-boolean v2, v3, Lyy1;->f:Z

    .line 78
    .line 79
    iput-boolean v2, v3, Lyy1;->g:Z

    .line 80
    .line 81
    iput-object v1, v3, Lyy1;->h:Ld8;

    .line 82
    .line 83
    iget-object v3, v4, Lbz1;->q:Lq82;

    .line 84
    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    iget-object v3, v3, Lq82;->E:Lyy1;

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    iput-boolean v5, v3, Lyy1;->b:Z

    .line 92
    .line 93
    iput-boolean v2, v3, Lyy1;->c:Z

    .line 94
    .line 95
    iput-boolean v2, v3, Lyy1;->e:Z

    .line 96
    .line 97
    iput-boolean v2, v3, Lyy1;->d:Z

    .line 98
    .line 99
    iput-boolean v2, v3, Lyy1;->f:Z

    .line 100
    .line 101
    iput-boolean v2, v3, Lyy1;->g:Z

    .line 102
    .line 103
    iput-object v1, v3, Lyy1;->h:Ld8;

    .line 104
    .line 105
    :cond_3
    iget-object v3, p0, Lxy1;->S:Lbo;

    .line 106
    .line 107
    iget-object v6, v3, Lbo;->e:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v6, Lmm2;

    .line 110
    .line 111
    iget-object v7, v3, Lbo;->f:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v7, Lgw3;

    .line 114
    .line 115
    iget-object v8, v3, Lbo;->d:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v8, Lgr1;

    .line 118
    .line 119
    iget-object v8, v8, Lmm2;->G:Lmm2;

    .line 120
    .line 121
    :goto_0
    invoke-static {v6, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v9, :cond_5

    .line 126
    .line 127
    if-eqz v6, :cond_5

    .line 128
    .line 129
    invoke-virtual {v6}, Lmm2;->g1()V

    .line 130
    .line 131
    .line 132
    iget-object v9, v6, Lmm2;->F:Lxy1;

    .line 133
    .line 134
    invoke-virtual {v9}, Lxy1;->I()Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-eqz v9, :cond_4

    .line 139
    .line 140
    invoke-virtual {v6}, Lmm2;->b1()V

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object v6, v6, Lmm2;->G:Lmm2;

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    iget-object v6, p0, Lxy1;->a0:Lwc;

    .line 147
    .line 148
    if-eqz v6, :cond_6

    .line 149
    .line 150
    invoke-virtual {v6, v0}, Lwc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_6
    move-object v6, v7

    .line 154
    :goto_1
    if-eqz v6, :cond_8

    .line 155
    .line 156
    iget-boolean v8, v6, Lmd2;->A:Z

    .line 157
    .line 158
    if-eqz v8, :cond_7

    .line 159
    .line 160
    invoke-virtual {v6}, Lmd2;->D0()V

    .line 161
    .line 162
    .line 163
    :cond_7
    iget-object v6, v6, Lmd2;->r:Lmd2;

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    iput-boolean v5, p0, Lxy1;->D:Z

    .line 167
    .line 168
    iget-object v6, p0, Lxy1;->w:Lxh1;

    .line 169
    .line 170
    iget-object v6, v6, Lxh1;->n:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v6, Lug2;

    .line 173
    .line 174
    iget-object v8, v6, Lug2;->n:[Ljava/lang/Object;

    .line 175
    .line 176
    iget v6, v6, Lug2;->p:I

    .line 177
    .line 178
    move v9, v2

    .line 179
    :goto_2
    if-ge v9, v6, :cond_9

    .line 180
    .line 181
    aget-object v10, v8, v9

    .line 182
    .line 183
    check-cast v10, Lxy1;

    .line 184
    .line 185
    invoke-virtual {v10}, Lxy1;->g()V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v9, v9, 0x1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_9
    iput-boolean v2, p0, Lxy1;->D:Z

    .line 192
    .line 193
    :goto_3
    if-eqz v7, :cond_b

    .line 194
    .line 195
    iget-boolean v6, v7, Lmd2;->A:Z

    .line 196
    .line 197
    if-eqz v6, :cond_a

    .line 198
    .line 199
    invoke-virtual {v7}, Lmd2;->x0()V

    .line 200
    .line 201
    .line 202
    :cond_a
    iget-object v7, v7, Lmd2;->r:Lmd2;

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_b
    check-cast v0, Lq9;

    .line 206
    .line 207
    invoke-virtual {v0}, Lq9;->getLayoutNodes()Ltf2;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    iget v7, p0, Lxy1;->o:I

    .line 212
    .line 213
    invoke-virtual {v6, v7}, Ltf2;->g(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object v6, v0, Lq9;->f0:Lab2;

    .line 217
    .line 218
    iget-object v7, v6, Lab2;->b:Leh;

    .line 219
    .line 220
    iget-object v8, v7, Leh;->o:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v8, Lwu4;

    .line 223
    .line 224
    invoke-virtual {v8, p0}, Lwu4;->s(Lxy1;)Z

    .line 225
    .line 226
    .line 227
    iget-object v8, v7, Leh;->p:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v8, Lwu4;

    .line 230
    .line 231
    invoke-virtual {v8, p0}, Lwu4;->s(Lxy1;)Z

    .line 232
    .line 233
    .line 234
    iget-object v7, v7, Leh;->q:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v7, Lwu4;

    .line 237
    .line 238
    invoke-virtual {v7, p0}, Lwu4;->s(Lxy1;)Z

    .line 239
    .line 240
    .line 241
    iget-object v6, v6, Lab2;->e:Lxh1;

    .line 242
    .line 243
    iget-object v6, v6, Lxh1;->n:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v6, Lug2;

    .line 246
    .line 247
    invoke-virtual {v6, p0}, Lug2;->k(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    iput-boolean v5, v0, Lq9;->W:Z

    .line 251
    .line 252
    invoke-static {}, Lq9;->d()Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_c

    .line 257
    .line 258
    invoke-virtual {v0}, Lq9;->getAutofillManager()Lw8;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    if-eqz v5, :cond_c

    .line 263
    .line 264
    iget-object v6, v5, Lw8;->t:Luf2;

    .line 265
    .line 266
    iget v7, p0, Lxy1;->o:I

    .line 267
    .line 268
    invoke-virtual {v6, v7}, Luf2;->e(I)Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_c

    .line 273
    .line 274
    iget-object v6, v5, Lw8;->n:Lxh1;

    .line 275
    .line 276
    iget-object v5, v5, Lw8;->p:Lq9;

    .line 277
    .line 278
    iget v7, p0, Lxy1;->o:I

    .line 279
    .line 280
    invoke-virtual {v6, v5, v7, v2}, Lxh1;->u(Landroid/view/View;IZ)V

    .line 281
    .line 282
    .line 283
    :cond_c
    invoke-virtual {v0}, Lq9;->getRectManager()Ln33;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v5, p0}, Ln33;->i(Lxy1;)V

    .line 288
    .line 289
    .line 290
    iput-object v1, p0, Lxy1;->A:Lsr2;

    .line 291
    .line 292
    invoke-virtual {p0, v1}, Lxy1;->d0(Lxy1;)V

    .line 293
    .line 294
    .line 295
    iput v2, p0, Lxy1;->C:I

    .line 296
    .line 297
    iget-object v5, v4, Lbz1;->p:Lcb2;

    .line 298
    .line 299
    const v6, 0x7fffffff

    .line 300
    .line 301
    .line 302
    iput v6, v5, Lcb2;->v:I

    .line 303
    .line 304
    iput v6, v5, Lcb2;->u:I

    .line 305
    .line 306
    iput-boolean v2, v5, Lcb2;->F:Z

    .line 307
    .line 308
    iget-object v4, v4, Lbz1;->q:Lq82;

    .line 309
    .line 310
    if-eqz v4, :cond_d

    .line 311
    .line 312
    iput v6, v4, Lq82;->v:I

    .line 313
    .line 314
    iput v6, v4, Lq82;->u:I

    .line 315
    .line 316
    sget-object v5, Lo82;->p:Lo82;

    .line 317
    .line 318
    iput-object v5, v4, Lq82;->D:Lo82;

    .line 319
    .line 320
    :cond_d
    const/16 v4, 0x8

    .line 321
    .line 322
    invoke-virtual {v3, v4}, Lbo;->f(I)Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-eqz v3, :cond_e

    .line 327
    .line 328
    iget-object v3, p0, Lxy1;->F:Lbh3;

    .line 329
    .line 330
    iput-object v1, p0, Lxy1;->F:Lbh3;

    .line 331
    .line 332
    iput-boolean v2, p0, Lxy1;->E:Z

    .line 333
    .line 334
    invoke-virtual {v0}, Lq9;->getSemanticsOwner()Ljh3;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v1, p0, v3}, Ljh3;->b(Lxy1;Lbh3;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Lq9;->y()V

    .line 342
    .line 343
    .line 344
    :cond_e
    return-void
.end method

.method public final g0(Lnb4;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lxy1;->N:Lnb4;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iput-object p1, p0, Lxy1;->N:Lnb4;

    .line 10
    .line 11
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 12
    .line 13
    iget-object p0, p0, Lbo;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lmd2;

    .line 16
    .line 17
    iget p1, p0, Lmd2;->q:I

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    and-int/2addr p1, v0

    .line 22
    if-eqz p1, :cond_8

    .line 23
    .line 24
    :goto_0
    if-eqz p0, :cond_8

    .line 25
    .line 26
    iget p1, p0, Lmd2;->p:I

    .line 27
    .line 28
    and-int/2addr p1, v0

    .line 29
    if-eqz p1, :cond_7

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    :goto_1
    if-eqz v1, :cond_7

    .line 35
    .line 36
    instance-of v3, v1, Lcw2;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    check-cast v1, Lcw2;

    .line 41
    .line 42
    invoke-interface {v1}, Lcw2;->Y()V

    .line 43
    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_0
    iget v3, v1, Lmd2;->p:I

    .line 47
    .line 48
    and-int/2addr v3, v0

    .line 49
    if-eqz v3, :cond_6

    .line 50
    .line 51
    instance-of v3, v1, Lkr0;

    .line 52
    .line 53
    if-eqz v3, :cond_6

    .line 54
    .line 55
    move-object v3, v1

    .line 56
    check-cast v3, Lkr0;

    .line 57
    .line 58
    iget-object v3, v3, Lkr0;->C:Lmd2;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_2
    const/4 v5, 0x1

    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    iget v6, v3, Lmd2;->p:I

    .line 65
    .line 66
    and-int/2addr v6, v0

    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    if-ne v4, v5, :cond_1

    .line 72
    .line 73
    move-object v1, v3

    .line 74
    goto :goto_3

    .line 75
    :cond_1
    if-nez v2, :cond_2

    .line 76
    .line 77
    new-instance v2, Lug2;

    .line 78
    .line 79
    new-array v5, v0, [Lmd2;

    .line 80
    .line 81
    invoke-direct {v2, v5}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object v1, p1

    .line 90
    :cond_3
    invoke-virtual {v2, v3}, Lug2;->c(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_3
    iget-object v3, v3, Lmd2;->s:Lmd2;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    if-ne v4, v5, :cond_6

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    :goto_4
    invoke-static {v2}, Lw80;->g(Lug2;)Lmd2;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    goto :goto_1

    .line 104
    :cond_7
    iget p1, p0, Lmd2;->q:I

    .line 105
    .line 106
    and-int/2addr p1, v0

    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_8
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxy1;->B:Lpb4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lbd;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lxy1;->U:Llz1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Llz1;->i(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-boolean v1, p0, Lxy1;->d0:Z

    .line 17
    .line 18
    iget-object v0, p0, Lxy1;->S:Lbo;

    .line 19
    .line 20
    iget-object v0, v0, Lbo;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lgw3;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    :goto_0
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-boolean v2, v1, Lmd2;->A:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Lmd2;->B0()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    move-object v1, v0

    .line 38
    :goto_1
    if-eqz v1, :cond_5

    .line 39
    .line 40
    iget-boolean v2, v1, Lmd2;->A:Z

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {v1}, Lmd2;->D0()V

    .line 45
    .line 46
    .line 47
    :cond_4
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    .line 51
    .line 52
    iget-boolean v1, v0, Lmd2;->A:Z

    .line 53
    .line 54
    if-eqz v1, :cond_6

    .line 55
    .line 56
    invoke-virtual {v0}, Lmd2;->x0()V

    .line 57
    .line 58
    .line 59
    :cond_6
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_7
    invoke-virtual {p0}, Lxy1;->H()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lxy1;->F:Lbh3;

    .line 71
    .line 72
    iput-boolean v1, p0, Lxy1;->E:Z

    .line 73
    .line 74
    :cond_8
    iget-object v0, p0, Lxy1;->A:Lsr2;

    .line 75
    .line 76
    if-eqz v0, :cond_9

    .line 77
    .line 78
    check-cast v0, Lq9;

    .line 79
    .line 80
    invoke-static {}, Lq9;->d()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_9

    .line 85
    .line 86
    invoke-virtual {v0}, Lq9;->getAutofillManager()Lw8;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_9

    .line 91
    .line 92
    iget-object v2, v0, Lw8;->t:Luf2;

    .line 93
    .line 94
    iget v3, p0, Lxy1;->o:I

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Luf2;->e(I)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_9

    .line 101
    .line 102
    iget-object v2, v0, Lw8;->n:Lxh1;

    .line 103
    .line 104
    iget-object v0, v0, Lw8;->p:Lq9;

    .line 105
    .line 106
    iget p0, p0, Lxy1;->o:I

    .line 107
    .line 108
    invoke-virtual {v2, v0, p0, v1}, Lxh1;->u(Landroid/view/View;IZ)V

    .line 109
    .line 110
    .line 111
    :cond_9
    return-void
.end method

.method public final h0()V
    .locals 6

    .line 1
    iget v0, p0, Lxy1;->v:I

    .line 2
    .line 3
    if-lez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lxy1;->y:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lxy1;->y:Z

    .line 11
    .line 12
    iget-object v1, p0, Lxy1;->x:Lug2;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lug2;

    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    new-array v2, v2, [Lxy1;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lxy1;->x:Lug2;

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1}, Lug2;->h()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lxy1;->w:Lxh1;

    .line 31
    .line 32
    iget-object v2, v2, Lxh1;->n:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lug2;

    .line 35
    .line 36
    iget-object v3, v2, Lug2;->n:[Ljava/lang/Object;

    .line 37
    .line 38
    iget v2, v2, Lug2;->p:I

    .line 39
    .line 40
    :goto_0
    if-ge v0, v2, :cond_2

    .line 41
    .line 42
    aget-object v4, v3, v0

    .line 43
    .line 44
    check-cast v4, Lxy1;

    .line 45
    .line 46
    iget-boolean v5, v4, Lxy1;->n:Z

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Lxy1;->z()Lug2;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget v5, v1, Lug2;->p:I

    .line 55
    .line 56
    invoke-virtual {v1, v5, v4}, Lug2;->d(ILug2;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v1, v4}, Lug2;->c(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 67
    .line 68
    iget-object v0, p0, Lbz1;->p:Lcb2;

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    iput-boolean v1, v0, Lcb2;->M:Z

    .line 72
    .line 73
    iget-object p0, p0, Lbz1;->q:Lq82;

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    iput-boolean v1, p0, Lq82;->G:Z

    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final i(Lv20;Lzh1;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lxy1;->S:Lbo;

    .line 2
    .line 3
    iget-object v0, v0, Lbo;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lmm2;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lmm2;->H0(Lv20;Lzh1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p0, p1}, Lxy1;->a0(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lxy1;->u:Lxy1;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, v2, v1}, Lxy1;->V(Lxy1;ZI)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, v2, v1}, Lxy1;->X(Lxy1;ZI)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lxy1;->T:Lbz1;

    .line 15
    .line 16
    iget-object v0, v0, Lbz1;->p:Lcb2;

    .line 17
    .line 18
    iget-boolean v1, v0, Lcb2;->w:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-wide v0, v0, Ldv2;->q:J

    .line 23
    .line 24
    new-instance v2, Lmf0;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lmf0;-><init>(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    iget-object v0, p0, Lxy1;->A:Lsr2;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-wide v1, v2, Lmf0;->a:J

    .line 38
    .line 39
    check-cast v0, Lq9;

    .line 40
    .line 41
    invoke-virtual {v0, p0, v1, v2}, Lq9;->s(Lxy1;J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    check-cast v0, Lq9;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lq9;->q(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 9

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->q:Lq82;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lq82;->F:Lug2;

    .line 9
    .line 10
    iget-object v1, p0, Lq82;->s:Lbz1;

    .line 11
    .line 12
    iget-object v2, v1, Lbz1;->a:Lxy1;

    .line 13
    .line 14
    invoke-virtual {v2}, Lxy1;->n()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Lq82;->G:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lug2;->g()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    iget-object v1, v1, Lbz1;->a:Lxy1;

    .line 27
    .line 28
    invoke-virtual {v1}, Lxy1;->z()Lug2;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, v2, Lug2;->n:[Ljava/lang/Object;

    .line 33
    .line 34
    iget v2, v2, Lug2;->p:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    move v5, v4

    .line 38
    :goto_0
    if-ge v5, v2, :cond_2

    .line 39
    .line 40
    aget-object v6, v3, v5

    .line 41
    .line 42
    check-cast v6, Lxy1;

    .line 43
    .line 44
    iget v7, v0, Lug2;->p:I

    .line 45
    .line 46
    if-gt v7, v5, :cond_1

    .line 47
    .line 48
    iget-object v6, v6, Lxy1;->T:Lbz1;

    .line 49
    .line 50
    iget-object v6, v6, Lbz1;->q:Lq82;

    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v6, v6, Lxy1;->T:Lbz1;

    .line 60
    .line 61
    iget-object v6, v6, Lbz1;->q:Lq82;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object v7, v0, Lug2;->n:[Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v8, v7, v5

    .line 69
    .line 70
    aput-object v6, v7, v5

    .line 71
    .line 72
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v1}, Lxy1;->n()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lrg2;

    .line 80
    .line 81
    iget-object v1, v1, Lrg2;->n:Lug2;

    .line 82
    .line 83
    iget v1, v1, Lug2;->p:I

    .line 84
    .line 85
    iget v2, v0, Lug2;->p:I

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lug2;->m(II)V

    .line 88
    .line 89
    .line 90
    iput-boolean v4, p0, Lq82;->G:Z

    .line 91
    .line 92
    invoke-virtual {v0}, Lug2;->g()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method public final m()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcb2;->j0()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final n()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lug2;->g()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->w:Lxh1;

    .line 2
    .line 3
    iget-object p0, p0, Lxh1;->n:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lug2;

    .line 6
    .line 7
    invoke-virtual {p0}, Lug2;->g()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final p()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcb2;->I:Z

    .line 6
    .line 7
    return p0
.end method

.method public final q()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcb2;->H:Z

    .line 6
    .line 7
    return p0
.end method

.method public final r()Lvy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 4
    .line 5
    iget-object p0, p0, Lcb2;->y:Lvy1;

    .line 6
    .line 7
    return-object p0
.end method

.method public final s()Lvy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->q:Lq82;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lq82;->w:Lvy1;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object p0

    .line 13
    :cond_1
    :goto_0
    sget-object p0, Lvy1;->p:Lvy1;

    .line 14
    .line 15
    return-object p0
.end method

.method public final t()Lxh1;
    .locals 2

    .line 1
    iget-object v0, p0, Lxy1;->K:Lxh1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lxh1;

    .line 6
    .line 7
    iget-object v1, p0, Lxy1;->J:Ldb2;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p0, v0, Lxh1;->n:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lxh1;->o:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v0, p0, Lxy1;->K:Lxh1;

    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lfl4;->x(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lxy1;->n()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lrg2;

    .line 10
    .line 11
    iget-object v1, v1, Lrg2;->n:Lug2;

    .line 12
    .line 13
    iget v1, v1, Lug2;->p:I

    .line 14
    .line 15
    iget-object v2, p0, Lxy1;->J:Ldb2;

    .line 16
    .line 17
    iget-boolean v3, p0, Lxy1;->d0:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lxy1;->I()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " children: "

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " measurePolicy: "

    .line 40
    .line 41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " deactivated: "

    .line 48
    .line 49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, " isVirtual: "

    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-boolean p0, p0, Lxy1;->n:Z

    .line 61
    .line 62
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p0, " isPlaced: "

    .line 66
    .line 67
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public final u()Lxy1;
    .locals 2

    .line 1
    iget-object p0, p0, Lxy1;->z:Lxy1;

    .line 2
    .line 3
    :goto_0
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lxy1;->n:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lxy1;->z:Lxy1;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object p0
.end method

.method public final v()I
    .locals 0

    .line 1
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 4
    .line 5
    iget p0, p0, Lcb2;->v:I

    .line 6
    .line 7
    return p0
.end method

.method public final w()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lxy1;->H()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final x()Lbh3;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lxy1;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lxy1;->d0:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lxy1;->S:Lbo;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lbo;->f(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lxy1;->F:Lbh3;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final y()Lug2;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lxy1;->I:Z

    .line 2
    .line 3
    iget-object v1, p0, Lxy1;->H:Lug2;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lug2;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, v1, Lug2;->p:I

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Lug2;->d(ILug2;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lug2;->n:[Ljava/lang/Object;

    .line 20
    .line 21
    iget v2, v1, Lug2;->p:I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    sget-object v4, Lxy1;->g0:Lyb;

    .line 25
    .line 26
    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 27
    .line 28
    .line 29
    iput-boolean v3, p0, Lxy1;->I:Z

    .line 30
    .line 31
    :cond_0
    return-object v1
.end method

.method public final z()Lug2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lxy1;->h0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lxy1;->v:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lxy1;->w:Lxh1;

    .line 9
    .line 10
    iget-object p0, p0, Lxh1;->n:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lug2;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p0, p0, Lxy1;->x:Lug2;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
