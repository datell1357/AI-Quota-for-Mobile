.class public final Lwf3;
.super Lkr0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpx1;
.implements Leh3;
.implements Lcw2;
.implements Ljq1;
.implements Lfc0;
.implements Lbx0;


# instance fields
.field public D:Lhr2;

.field public E:Lpe1;

.field public F:Z

.field public G:Lvf2;

.field public H:Lzy;

.field public I:Lzw0;

.field public J:Z

.field public K:Z

.field public L:Liw0;

.field public M:J

.field public N:Lxg1;

.field public O:Lxg1;

.field public P:Llw0;

.field public Q:Lkw0;

.field public R:Ljw0;

.field public S:Lht4;

.field public T:Lra3;

.field public U:Llj1;

.field public V:Liq1;

.field public W:Lwa;

.field public X:Lto0;

.field public final Y:Ltk2;

.field public final Z:Lto0;

.field public final a0:Ldg3;

.field public final b0:Lsb0;

.field public final c0:Lka1;

.field public final d0:Lfg0;

.field public e0:Lsp0;

.field public f0:Luf3;

.field public g0:Lme2;

.field public h0:Lz04;


# direct methods
.method public constructor <init>(Lwa;Lto0;Lvf2;Lhr2;Lxf3;ZZ)V
    .locals 10

    .line 1
    move/from16 v9, p6

    .line 2
    .line 3
    sget-object v0, Lrf3;->a:Ljd3;

    .line 4
    .line 5
    invoke-direct {p0}, Lkr0;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p4, p0, Lwf3;->D:Lhr2;

    .line 9
    .line 10
    iput-object v0, p0, Lwf3;->E:Lpe1;

    .line 11
    .line 12
    iput-boolean v9, p0, Lwf3;->F:Z

    .line 13
    .line 14
    iput-object p3, p0, Lwf3;->G:Lvf2;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lwf3;->M:J

    .line 19
    .line 20
    iput-object p1, p0, Lwf3;->W:Lwa;

    .line 21
    .line 22
    iput-object p2, p0, Lwf3;->X:Lto0;

    .line 23
    .line 24
    new-instance v6, Ltk2;

    .line 25
    .line 26
    invoke-direct {v6}, Ltk2;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v6, p0, Lwf3;->Y:Ltk2;

    .line 30
    .line 31
    new-instance v0, Lto0;

    .line 32
    .line 33
    sget-object v1, Lrf3;->d:Lpf3;

    .line 34
    .line 35
    new-instance v2, Ldd1;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Ldd1;-><init>(Las0;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lsn0;

    .line 41
    .line 42
    invoke-direct {v1, v2}, Lsn0;-><init>(Ldd1;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lto0;-><init>(Lsn0;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lwf3;->Z:Lto0;

    .line 49
    .line 50
    iget-object v2, p0, Lwf3;->W:Lwa;

    .line 51
    .line 52
    iget-object v1, p0, Lwf3;->X:Lto0;

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    move-object v3, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v3, v1

    .line 59
    :goto_0
    new-instance v0, Ldg3;

    .line 60
    .line 61
    new-instance v8, Ltf3;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v8, p0, v1}, Ltf3;-><init>(Lwf3;I)V

    .line 65
    .line 66
    .line 67
    move-object v7, p0

    .line 68
    move-object v4, p4

    .line 69
    move-object v1, p5

    .line 70
    move/from16 v5, p7

    .line 71
    .line 72
    invoke-direct/range {v0 .. v8}, Ldg3;-><init>(Lxf3;Lwa;Lto0;Lhr2;ZLtk2;Lwf3;Ltf3;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lwf3;->a0:Ldg3;

    .line 76
    .line 77
    new-instance v1, Lsb0;

    .line 78
    .line 79
    invoke-direct {v1, v0, v9}, Lsb0;-><init>(Ljava/lang/Object;Z)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lwf3;->b0:Lsb0;

    .line 83
    .line 84
    new-instance v2, Lka1;

    .line 85
    .line 86
    const/16 v3, 0xa

    .line 87
    .line 88
    const/4 v5, 0x2

    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-direct {v2, v5, v8, v3}, Lka1;-><init>(ILdf1;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lwf3;->c0:Lka1;

    .line 97
    .line 98
    new-instance v2, Lfg0;

    .line 99
    .line 100
    new-instance v3, Ltf3;

    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    invoke-direct {v3, p0, v5}, Ltf3;-><init>(Lwf3;I)V

    .line 104
    .line 105
    .line 106
    move/from16 v5, p7

    .line 107
    .line 108
    invoke-direct {v2, p4, v0, v5, v3}, Lfg0;-><init>(Lhr2;Ldg3;ZLtf3;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 112
    .line 113
    .line 114
    iput-object v2, p0, Lwf3;->d0:Lfg0;

    .line 115
    .line 116
    new-instance v0, Lxk2;

    .line 117
    .line 118
    invoke-direct {v0, v1, v6}, Lxk2;-><init>(Lqk2;Ltk2;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 122
    .line 123
    .line 124
    new-instance v0, Ldy;

    .line 125
    .line 126
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v2, v0, Ldy;->B:Lfg0;

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public static final J0(Lwf3;Lfh0;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Luw0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Luw0;

    .line 7
    .line 8
    iget v1, v0, Luw0;->s:I

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
    iput v1, v0, Luw0;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Luw0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Luw0;-><init>(Lwf3;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Luw0;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Luw0;->s:I

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
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lwf3;->I:Lzw0;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lwf3;->G:Lvf2;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    new-instance v4, Lyw0;

    .line 57
    .line 58
    invoke-direct {v4, p1}, Lyw0;-><init>(Lzw0;)V

    .line 59
    .line 60
    .line 61
    iput v3, v0, Luw0;->s:I

    .line 62
    .line 63
    invoke-virtual {v1, v4, v0}, Lvf2;->b(Lws1;Ldh0;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v0, Lri0;->n:Lri0;

    .line 68
    .line 69
    if-ne p1, v0, :cond_3

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_3
    :goto_1
    iput-object v2, p0, Lwf3;->I:Lzw0;

    .line 73
    .line 74
    :cond_4
    new-instance p1, Lpw0;

    .line 75
    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-direct {p1, v2, v0, v1}, Lpw0;-><init>(ZJ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lwf3;->S0(Lpw0;)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lt64;->a:Lt64;

    .line 86
    .line 87
    return-object p0
.end method

.method public static final K0(Lwf3;Low0;Lfh0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lvw0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lvw0;

    .line 7
    .line 8
    iget v1, v0, Lvw0;->u:I

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
    iput v1, v0, Lvw0;->u:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lvw0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lvw0;-><init>(Lwf3;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lvw0;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lvw0;->u:I

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
    iget-object p1, v0, Lvw0;->r:Lzw0;

    .line 40
    .line 41
    iget-object v0, v0, Lvw0;->q:Low0;

    .line 42
    .line 43
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

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
    iget-object p1, v0, Lvw0;->q:Low0;

    .line 55
    .line 56
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lwf3;->I:Lzw0;

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Lwf3;->G:Lvf2;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    new-instance v5, Lyw0;

    .line 72
    .line 73
    invoke-direct {v5, p2}, Lyw0;-><init>(Lzw0;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, v0, Lvw0;->q:Low0;

    .line 77
    .line 78
    iput v3, v0, Lvw0;->u:I

    .line 79
    .line 80
    invoke-virtual {v1, v5, v0}, Lvf2;->b(Lws1;Ldh0;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-ne p2, v4, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    :goto_1
    new-instance p2, Lzw0;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lwf3;->G:Lvf2;

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    iput-object p1, v0, Lvw0;->q:Low0;

    .line 97
    .line 98
    iput-object p2, v0, Lvw0;->r:Lzw0;

    .line 99
    .line 100
    iput v2, v0, Lvw0;->u:I

    .line 101
    .line 102
    invoke-virtual {v1, p2, v0}, Lvf2;->b(Lws1;Ldh0;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-ne v0, v4, :cond_5

    .line 107
    .line 108
    :goto_2
    return-object v4

    .line 109
    :cond_5
    move-object v0, p1

    .line 110
    move-object p1, p2

    .line 111
    :goto_3
    move-object p2, p1

    .line 112
    move-object p1, v0

    .line 113
    :cond_6
    iput-object p2, p0, Lwf3;->I:Lzw0;

    .line 114
    .line 115
    iget-wide p0, p1, Low0;->a:J

    .line 116
    .line 117
    sget-object p0, Lt64;->a:Lt64;

    .line 118
    .line 119
    return-object p0
.end method

.method public static final L0(Lwf3;Lpw0;Lfh0;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lww0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lww0;

    .line 7
    .line 8
    iget v1, v0, Lww0;->t:I

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
    iput v1, v0, Lww0;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lww0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lww0;-><init>(Lwf3;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lww0;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lww0;->t:I

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
    iget-object p1, v0, Lww0;->q:Lpw0;

    .line 36
    .line 37
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

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
    return-object v2

    .line 47
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lwf3;->I:Lzw0;

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    iget-object v1, p0, Lwf3;->G:Lvf2;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    new-instance v4, Lax0;

    .line 59
    .line 60
    invoke-direct {v4, p2}, Lax0;-><init>(Lzw0;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, v0, Lww0;->q:Lpw0;

    .line 64
    .line 65
    iput v3, v0, Lww0;->t:I

    .line 66
    .line 67
    invoke-virtual {v1, v4, v0}, Lvf2;->b(Lws1;Ldh0;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    sget-object v0, Lri0;->n:Lri0;

    .line 72
    .line 73
    if-ne p2, v0, :cond_3

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    :goto_1
    iput-object v2, p0, Lwf3;->I:Lzw0;

    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Lwf3;->S0(Lpw0;)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lt64;->a:Lt64;

    .line 82
    .line 83
    return-object p0
.end method

.method public static P0(Lwf3;Lzv2;JJI)V
    .locals 3

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-wide/16 p4, 0x0

    .line 6
    .line 7
    :cond_0
    iget-object p6, p0, Lwf3;->Q:Lkw0;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p6, :cond_1

    .line 11
    .line 12
    new-instance p6, Lkw0;

    .line 13
    .line 14
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p6, Lkw0;->r:Lzv2;

    .line 19
    .line 20
    const-wide v1, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v1, p6, Lkw0;->s:J

    .line 26
    .line 27
    iput-boolean v0, p6, Lkw0;->t:Z

    .line 28
    .line 29
    iput-object p6, p0, Lwf3;->Q:Lkw0;

    .line 30
    .line 31
    :cond_1
    iput-object p1, p6, Lkw0;->r:Lzv2;

    .line 32
    .line 33
    iput-wide p2, p6, Lkw0;->s:J

    .line 34
    .line 35
    iget-object p1, p0, Lwf3;->U:Llj1;

    .line 36
    .line 37
    iget-object p2, p0, Lwf3;->D:Lhr2;

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    new-instance p1, Llj1;

    .line 42
    .line 43
    invoke-direct {p1, p2, v0}, Llj1;-><init>(Lhr2;I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lwf3;->U:Llj1;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-object p2, p1, Llj1;->o:Ljava/lang/Object;

    .line 50
    .line 51
    iput-wide p4, p1, Llj1;->n:J

    .line 52
    .line 53
    :goto_0
    iput-boolean v0, p6, Lkw0;->t:Z

    .line 54
    .line 55
    iput-object p6, p0, Lwf3;->S:Lht4;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final B(Lhb;Lwv2;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Lhb;->b:I

    .line 8
    .line 9
    iget-object v1, v1, Lhb;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-boolean v4, v0, Lwf3;->F:Z

    .line 14
    .line 15
    if-eqz v4, :cond_43

    .line 16
    .line 17
    iget-object v4, v0, Lwf3;->V:Liq1;

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    new-instance v4, Liq1;

    .line 22
    .line 23
    invoke-direct {v4, v0}, Liq1;-><init>(Lwf3;)V

    .line 24
    .line 25
    .line 26
    iput-object v4, v0, Lwf3;->V:Liq1;

    .line 27
    .line 28
    :cond_0
    iget-object v4, v0, Lwf3;->O:Lxg1;

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    iget-object v4, v0, Lwf3;->V:Liq1;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v5, Lxg1;

    .line 38
    .line 39
    invoke-direct {v5, v4}, Lxg1;-><init>(Lwg1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 43
    .line 44
    .line 45
    iput-object v5, v0, Lwf3;->O:Lxg1;

    .line 46
    .line 47
    :cond_1
    iget-object v6, v0, Lwf3;->V:Liq1;

    .line 48
    .line 49
    if-eqz v6, :cond_43

    .line 50
    .line 51
    iget-object v0, v6, Liq1;->n:Lwf3;

    .line 52
    .line 53
    iget-object v4, v6, Liq1;->s:Ltv4;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    iget-object v4, v6, Liq1;->o:Ldq1;

    .line 59
    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    new-instance v4, Ldq1;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v7, Lcq1;->p:Lcq1;

    .line 68
    .line 69
    iput-object v7, v4, Ldq1;->f:Lcq1;

    .line 70
    .line 71
    iput-boolean v5, v4, Ldq1;->g:Z

    .line 72
    .line 73
    iput-boolean v5, v4, Ldq1;->h:Z

    .line 74
    .line 75
    iput-object v4, v6, Liq1;->o:Ldq1;

    .line 76
    .line 77
    :cond_2
    iput-object v4, v6, Liq1;->s:Ltv4;

    .line 78
    .line 79
    :cond_3
    iget-object v4, v6, Liq1;->s:Ltv4;

    .line 80
    .line 81
    if-eqz v4, :cond_42

    .line 82
    .line 83
    instance-of v7, v4, Ldq1;

    .line 84
    .line 85
    const-wide v12, 0x7fffffffffffffffL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const-wide/16 v14, 0x0

    .line 91
    .line 92
    sget-object v8, Lwv2;->n:Lwv2;

    .line 93
    .line 94
    const/4 v9, 0x1

    .line 95
    sget-object v10, Lwv2;->o:Lwv2;

    .line 96
    .line 97
    if-eqz v7, :cond_d

    .line 98
    .line 99
    check-cast v4, Ldq1;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    goto/16 :goto_19

    .line 108
    .line 109
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    :goto_0
    if-ge v5, v7, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    check-cast v11, Lbq1;

    .line 120
    .line 121
    invoke-static {v11}, Lk30;->k(Lbq1;)Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-nez v11, :cond_5

    .line 126
    .line 127
    goto/16 :goto_19

    .line 128
    .line 129
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    invoke-static {v1}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    move-object v7, v1

    .line 137
    check-cast v7, Lbq1;

    .line 138
    .line 139
    iget-object v1, v4, Ldq1;->f:Lcq1;

    .line 140
    .line 141
    sget-object v5, Lhq1;->a:[I

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    aget v1, v5, v1

    .line 148
    .line 149
    sget-object v5, Lcq1;->o:Lcq1;

    .line 150
    .line 151
    sget-object v11, Lcq1;->n:Lcq1;

    .line 152
    .line 153
    if-ne v1, v9, :cond_8

    .line 154
    .line 155
    invoke-virtual {v0}, Lwf3;->X0()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_7

    .line 160
    .line 161
    move-object v0, v11

    .line 162
    goto :goto_1

    .line 163
    :cond_7
    move-object v0, v5

    .line 164
    goto :goto_1

    .line 165
    :cond_8
    iget-object v0, v4, Ldq1;->f:Lcq1;

    .line 166
    .line 167
    :goto_1
    iput-object v0, v4, Ldq1;->f:Lcq1;

    .line 168
    .line 169
    if-ne v2, v8, :cond_a

    .line 170
    .line 171
    if-ne v0, v5, :cond_9

    .line 172
    .line 173
    iput-boolean v9, v7, Lbq1;->i:Z

    .line 174
    .line 175
    iput-boolean v9, v4, Ldq1;->g:Z

    .line 176
    .line 177
    :cond_9
    iput-boolean v9, v4, Ldq1;->h:Z

    .line 178
    .line 179
    :cond_a
    if-ne v2, v10, :cond_43

    .line 180
    .line 181
    if-ne v0, v11, :cond_b

    .line 182
    .line 183
    iget-wide v8, v7, Lbq1;->a:J

    .line 184
    .line 185
    const-wide/16 v10, 0x0

    .line 186
    .line 187
    const/16 v12, 0xc

    .line 188
    .line 189
    invoke-static/range {v6 .. v12}, Liq1;->c(Liq1;Lbq1;JJI)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_b
    iget-boolean v0, v4, Ldq1;->g:Z

    .line 194
    .line 195
    if-eqz v0, :cond_43

    .line 196
    .line 197
    new-instance v9, Laq1;

    .line 198
    .line 199
    invoke-direct {v9, v3}, Laq1;-><init>(I)V

    .line 200
    .line 201
    .line 202
    const-wide/16 v10, 0x0

    .line 203
    .line 204
    move-object v8, v7

    .line 205
    invoke-virtual/range {v6 .. v11}, Liq1;->f(Lbq1;Lbq1;Laq1;J)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Laq1;

    .line 209
    .line 210
    invoke-direct {v0, v3}, Laq1;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v7, v0, v14, v15}, Liq1;->e(Lbq1;Laq1;J)V

    .line 214
    .line 215
    .line 216
    iget-wide v0, v7, Lbq1;->a:J

    .line 217
    .line 218
    iget-object v2, v6, Liq1;->p:Lgq1;

    .line 219
    .line 220
    if-nez v2, :cond_c

    .line 221
    .line 222
    new-instance v2, Lgq1;

    .line 223
    .line 224
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 225
    .line 226
    .line 227
    iput-wide v12, v2, Lgq1;->f:J

    .line 228
    .line 229
    iput-object v2, v6, Liq1;->p:Lgq1;

    .line 230
    .line 231
    :cond_c
    iput-wide v0, v2, Lgq1;->f:J

    .line 232
    .line 233
    iput-object v2, v6, Liq1;->s:Ltv4;

    .line 234
    .line 235
    return-void

    .line 236
    :cond_d
    instance-of v7, v4, Lfq1;

    .line 237
    .line 238
    sget-object v11, Lwv2;->p:Lwv2;

    .line 239
    .line 240
    if-eqz v7, :cond_23

    .line 241
    .line 242
    check-cast v4, Lfq1;

    .line 243
    .line 244
    if-ne v2, v8, :cond_e

    .line 245
    .line 246
    goto/16 :goto_19

    .line 247
    .line 248
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    move v8, v5

    .line 253
    :goto_2
    if-ge v8, v7, :cond_10

    .line 254
    .line 255
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    move-object v14, v15

    .line 260
    check-cast v14, Lbq1;

    .line 261
    .line 262
    iget-wide v12, v14, Lbq1;->a:J

    .line 263
    .line 264
    move-object v14, v6

    .line 265
    iget-wide v5, v4, Lfq1;->g:J

    .line 266
    .line 267
    invoke-static {v12, v13, v5, v6}, Lqj0;->G(JJ)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_f

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 275
    .line 276
    move-object v6, v14

    .line 277
    const/4 v5, 0x0

    .line 278
    const-wide v12, 0x7fffffffffffffffL

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_10
    move-object v14, v6

    .line 285
    const/4 v15, 0x0

    .line 286
    :goto_3
    check-cast v15, Lbq1;

    .line 287
    .line 288
    if-nez v15, :cond_14

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    const/4 v6, 0x0

    .line 295
    :goto_4
    if-ge v6, v5, :cond_12

    .line 296
    .line 297
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    move-object v8, v7

    .line 302
    check-cast v8, Lbq1;

    .line 303
    .line 304
    iget-boolean v8, v8, Lbq1;->d:Z

    .line 305
    .line 306
    if-eqz v8, :cond_11

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_11
    add-int/lit8 v6, v6, 0x1

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_12
    const/4 v7, 0x0

    .line 313
    :goto_5
    move-object v15, v7

    .line 314
    check-cast v15, Lbq1;

    .line 315
    .line 316
    if-nez v15, :cond_13

    .line 317
    .line 318
    invoke-virtual {v14}, Liq1;->a()V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_13
    iget-wide v5, v15, Lbq1;->a:J

    .line 323
    .line 324
    iput-wide v5, v4, Lfq1;->g:J

    .line 325
    .line 326
    :cond_14
    move-object v8, v15

    .line 327
    const-string v5, "AwaitTouchSlop.touchSlopDetector was not initialized"

    .line 328
    .line 329
    const-string v12, "AwaitTouchSlop.initialDown was not initialized"

    .line 330
    .line 331
    if-ne v2, v10, :cond_17

    .line 332
    .line 333
    iget-boolean v6, v8, Lbq1;->i:Z

    .line 334
    .line 335
    if-nez v6, :cond_1d

    .line 336
    .line 337
    invoke-static {v8}, Lk30;->g(Lbq1;)Z

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    if-eqz v6, :cond_19

    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    const/4 v3, 0x0

    .line 348
    :goto_6
    if-ge v3, v0, :cond_16

    .line 349
    .line 350
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    move-object v7, v6

    .line 355
    check-cast v7, Lbq1;

    .line 356
    .line 357
    iget-boolean v7, v7, Lbq1;->d:Z

    .line 358
    .line 359
    if-eqz v7, :cond_15

    .line 360
    .line 361
    move-object/from16 v16, v6

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_16
    const/16 v16, 0x0

    .line 368
    .line 369
    :goto_7
    move-object/from16 v0, v16

    .line 370
    .line 371
    check-cast v0, Lbq1;

    .line 372
    .line 373
    if-nez v0, :cond_18

    .line 374
    .line 375
    invoke-virtual {v14}, Liq1;->a()V

    .line 376
    .line 377
    .line 378
    :cond_17
    :goto_8
    move-object v13, v11

    .line 379
    move-object v6, v14

    .line 380
    goto/16 :goto_9

    .line 381
    .line 382
    :cond_18
    iget-wide v0, v0, Lbq1;->a:J

    .line 383
    .line 384
    iput-wide v0, v4, Lfq1;->g:J

    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_19
    sget-object v1, Lkc0;->t:Lis3;

    .line 388
    .line 389
    invoke-static {v0, v1}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    check-cast v1, Lnb4;

    .line 394
    .line 395
    sget v6, Lrw0;->a:F

    .line 396
    .line 397
    invoke-interface {v1}, Lnb4;->b()F

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    move-object v6, v14

    .line 402
    iget-object v7, v6, Liq1;->u:Llj1;

    .line 403
    .line 404
    if-eqz v7, :cond_1c

    .line 405
    .line 406
    iget-object v0, v0, Lwf3;->D:Lhr2;

    .line 407
    .line 408
    new-instance v10, Laq1;

    .line 409
    .line 410
    invoke-direct {v10, v3}, Laq1;-><init>(I)V

    .line 411
    .line 412
    .line 413
    invoke-static {v8, v0, v10, v9}, Lk30;->B(Lbq1;Lhr2;Laq1;Z)J

    .line 414
    .line 415
    .line 416
    move-result-wide v13

    .line 417
    invoke-static {v7, v13, v14, v1}, Llj1;->a(Llj1;JF)J

    .line 418
    .line 419
    .line 420
    move-result-wide v0

    .line 421
    const-wide v13, 0x7fffffff7fffffffL

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    and-long/2addr v13, v0

    .line 427
    const-wide v15, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    cmp-long v7, v13, v15

    .line 433
    .line 434
    if-eqz v7, :cond_1b

    .line 435
    .line 436
    iput-boolean v9, v8, Lbq1;->i:Z

    .line 437
    .line 438
    iget-object v7, v4, Lfq1;->f:Lbq1;

    .line 439
    .line 440
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    new-instance v9, Laq1;

    .line 444
    .line 445
    invoke-direct {v9, v3}, Laq1;-><init>(I)V

    .line 446
    .line 447
    .line 448
    move-object v13, v11

    .line 449
    move-wide v10, v0

    .line 450
    invoke-virtual/range {v6 .. v11}, Liq1;->f(Lbq1;Lbq1;Laq1;J)V

    .line 451
    .line 452
    .line 453
    new-instance v0, Laq1;

    .line 454
    .line 455
    invoke-direct {v0, v3}, Laq1;-><init>(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6, v8, v0, v10, v11}, Liq1;->e(Lbq1;Laq1;J)V

    .line 459
    .line 460
    .line 461
    iget-wide v0, v8, Lbq1;->a:J

    .line 462
    .line 463
    iget-object v3, v6, Liq1;->p:Lgq1;

    .line 464
    .line 465
    if-nez v3, :cond_1a

    .line 466
    .line 467
    new-instance v3, Lgq1;

    .line 468
    .line 469
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 470
    .line 471
    .line 472
    const-wide v9, 0x7fffffffffffffffL

    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    iput-wide v9, v3, Lgq1;->f:J

    .line 478
    .line 479
    iput-object v3, v6, Liq1;->p:Lgq1;

    .line 480
    .line 481
    :cond_1a
    iput-wide v0, v3, Lgq1;->f:J

    .line 482
    .line 483
    iput-object v3, v6, Liq1;->s:Ltv4;

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_1b
    move-object v13, v11

    .line 487
    iput-boolean v9, v4, Lfq1;->h:Z

    .line 488
    .line 489
    goto :goto_9

    .line 490
    :cond_1c
    const-string v0, "Touch slop detector not initialized."

    .line 491
    .line 492
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :cond_1d
    move-object v13, v11

    .line 497
    move-object v6, v14

    .line 498
    iget-object v0, v4, Lfq1;->f:Lbq1;

    .line 499
    .line 500
    if-eqz v0, :cond_1f

    .line 501
    .line 502
    iget-wide v9, v4, Lfq1;->g:J

    .line 503
    .line 504
    iget-object v1, v6, Liq1;->u:Llj1;

    .line 505
    .line 506
    if-eqz v1, :cond_1e

    .line 507
    .line 508
    invoke-virtual {v6, v0, v9, v10, v1}, Liq1;->b(Lbq1;JLlj1;)V

    .line 509
    .line 510
    .line 511
    goto :goto_9

    .line 512
    :cond_1e
    invoke-static {v5}, Lk21;->f(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :cond_1f
    invoke-static {v12}, Lk21;->f(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    :goto_9
    if-ne v2, v13, :cond_43

    .line 521
    .line 522
    iget-boolean v0, v4, Lfq1;->h:Z

    .line 523
    .line 524
    if-eqz v0, :cond_43

    .line 525
    .line 526
    iget-boolean v0, v8, Lbq1;->i:Z

    .line 527
    .line 528
    if-eqz v0, :cond_22

    .line 529
    .line 530
    iget-object v0, v4, Lfq1;->f:Lbq1;

    .line 531
    .line 532
    if-eqz v0, :cond_21

    .line 533
    .line 534
    iget-wide v1, v4, Lfq1;->g:J

    .line 535
    .line 536
    iget-object v3, v6, Liq1;->u:Llj1;

    .line 537
    .line 538
    if-eqz v3, :cond_20

    .line 539
    .line 540
    invoke-virtual {v6, v0, v1, v2, v3}, Liq1;->b(Lbq1;JLlj1;)V

    .line 541
    .line 542
    .line 543
    return-void

    .line 544
    :cond_20
    invoke-static {v5}, Lk21;->f(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    return-void

    .line 548
    :cond_21
    invoke-static {v12}, Lk21;->f(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    return-void

    .line 552
    :cond_22
    const/4 v0, 0x0

    .line 553
    iput-boolean v0, v4, Lfq1;->h:Z

    .line 554
    .line 555
    return-void

    .line 556
    :cond_23
    move-object v13, v11

    .line 557
    instance-of v5, v4, Leq1;

    .line 558
    .line 559
    if-eqz v5, :cond_2b

    .line 560
    .line 561
    check-cast v4, Leq1;

    .line 562
    .line 563
    if-eq v2, v13, :cond_24

    .line 564
    .line 565
    goto/16 :goto_19

    .line 566
    .line 567
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    const/4 v5, 0x0

    .line 572
    :goto_a
    if-ge v5, v2, :cond_26

    .line 573
    .line 574
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    check-cast v7, Lbq1;

    .line 579
    .line 580
    iget-boolean v7, v7, Lbq1;->i:Z

    .line 581
    .line 582
    if-eqz v7, :cond_25

    .line 583
    .line 584
    const/4 v9, 0x0

    .line 585
    goto :goto_b

    .line 586
    :cond_25
    add-int/lit8 v5, v5, 0x1

    .line 587
    .line 588
    goto :goto_a

    .line 589
    :cond_26
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    const/4 v5, 0x0

    .line 594
    :goto_c
    if-ge v5, v2, :cond_2a

    .line 595
    .line 596
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    check-cast v7, Lbq1;

    .line 601
    .line 602
    iget-boolean v7, v7, Lbq1;->d:Z

    .line 603
    .line 604
    if-eqz v7, :cond_29

    .line 605
    .line 606
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    if-eqz v2, :cond_27

    .line 611
    .line 612
    goto :goto_d

    .line 613
    :cond_27
    if-eqz v9, :cond_43

    .line 614
    .line 615
    invoke-static {v1}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    check-cast v1, Lbq1;

    .line 620
    .line 621
    iget-object v2, v0, Lwf3;->D:Lhr2;

    .line 622
    .line 623
    new-instance v5, Laq1;

    .line 624
    .line 625
    invoke-direct {v5, v3}, Laq1;-><init>(I)V

    .line 626
    .line 627
    .line 628
    invoke-static {v1, v2, v5}, Lk30;->C(Lbq1;Lhr2;Laq1;)J

    .line 629
    .line 630
    .line 631
    move-result-wide v1

    .line 632
    iget-object v5, v4, Leq1;->f:Lbq1;

    .line 633
    .line 634
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    iget-object v0, v0, Lwf3;->D:Lhr2;

    .line 638
    .line 639
    new-instance v7, Laq1;

    .line 640
    .line 641
    invoke-direct {v7, v3}, Laq1;-><init>(I)V

    .line 642
    .line 643
    .line 644
    invoke-static {v5, v0, v7}, Lk30;->C(Lbq1;Lhr2;Laq1;)J

    .line 645
    .line 646
    .line 647
    move-result-wide v7

    .line 648
    invoke-static {v1, v2, v7, v8}, Lgo2;->d(JJ)J

    .line 649
    .line 650
    .line 651
    move-result-wide v10

    .line 652
    iget-object v7, v4, Leq1;->f:Lbq1;

    .line 653
    .line 654
    if-eqz v7, :cond_28

    .line 655
    .line 656
    iget-wide v8, v4, Leq1;->g:J

    .line 657
    .line 658
    const/16 v12, 0x8

    .line 659
    .line 660
    invoke-static/range {v6 .. v12}, Liq1;->c(Liq1;Lbq1;JJI)V

    .line 661
    .line 662
    .line 663
    return-void

    .line 664
    :cond_28
    const-string v0, "AwaitGesturePickup.initialDown was not initialized."

    .line 665
    .line 666
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    return-void

    .line 670
    :cond_29
    add-int/lit8 v5, v5, 0x1

    .line 671
    .line 672
    goto :goto_c

    .line 673
    :cond_2a
    :goto_d
    invoke-virtual {v6}, Liq1;->a()V

    .line 674
    .line 675
    .line 676
    return-void

    .line 677
    :cond_2b
    instance-of v5, v4, Lgq1;

    .line 678
    .line 679
    if-eqz v5, :cond_41

    .line 680
    .line 681
    check-cast v4, Lgq1;

    .line 682
    .line 683
    if-eq v2, v10, :cond_2c

    .line 684
    .line 685
    goto/16 :goto_19

    .line 686
    .line 687
    :cond_2c
    iget-wide v7, v4, Lgq1;->f:J

    .line 688
    .line 689
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    const/4 v5, 0x0

    .line 694
    :goto_e
    if-ge v5, v2, :cond_2e

    .line 695
    .line 696
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v10

    .line 700
    move-object v11, v10

    .line 701
    check-cast v11, Lbq1;

    .line 702
    .line 703
    iget-wide v11, v11, Lbq1;->a:J

    .line 704
    .line 705
    invoke-static {v11, v12, v7, v8}, Lqj0;->G(JJ)Z

    .line 706
    .line 707
    .line 708
    move-result v11

    .line 709
    if-eqz v11, :cond_2d

    .line 710
    .line 711
    goto :goto_f

    .line 712
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    .line 713
    .line 714
    goto :goto_e

    .line 715
    :cond_2e
    const/4 v10, 0x0

    .line 716
    :goto_f
    check-cast v10, Lbq1;

    .line 717
    .line 718
    if-nez v10, :cond_2f

    .line 719
    .line 720
    goto/16 :goto_19

    .line 721
    .line 722
    :cond_2f
    iget-wide v7, v10, Lbq1;->c:J

    .line 723
    .line 724
    invoke-static {v10}, Lk30;->g(Lbq1;)Z

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    sget-object v5, Lmw0;->a:Lmw0;

    .line 729
    .line 730
    if-eqz v2, :cond_3e

    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 733
    .line 734
    .line 735
    move-result v2

    .line 736
    const/4 v12, 0x0

    .line 737
    :goto_10
    if-ge v12, v2, :cond_31

    .line 738
    .line 739
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v13

    .line 743
    move-object v14, v13

    .line 744
    check-cast v14, Lbq1;

    .line 745
    .line 746
    iget-boolean v14, v14, Lbq1;->d:Z

    .line 747
    .line 748
    if-eqz v14, :cond_30

    .line 749
    .line 750
    goto :goto_11

    .line 751
    :cond_30
    add-int/lit8 v12, v12, 0x1

    .line 752
    .line 753
    goto :goto_10

    .line 754
    :cond_31
    const/4 v13, 0x0

    .line 755
    :goto_11
    check-cast v13, Lbq1;

    .line 756
    .line 757
    if-nez v13, :cond_3d

    .line 758
    .line 759
    iget-boolean v1, v10, Lbq1;->i:Z

    .line 760
    .line 761
    if-nez v1, :cond_3c

    .line 762
    .line 763
    invoke-static {v10}, Lk30;->g(Lbq1;)Z

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    if-eqz v1, :cond_3c

    .line 768
    .line 769
    invoke-virtual {v6}, Liq1;->d()Lra3;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    iget-object v2, v0, Lwf3;->D:Lhr2;

    .line 774
    .line 775
    iget-object v4, v6, Liq1;->v:Ld90;

    .line 776
    .line 777
    iget-object v5, v4, Ld90;->p:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v5, Ldg2;

    .line 780
    .line 781
    const/16 v12, 0x20

    .line 782
    .line 783
    shr-long v13, v7, v12

    .line 784
    .line 785
    long-to-int v13, v13

    .line 786
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 787
    .line 788
    .line 789
    move-result v13

    .line 790
    const-wide v14, 0xffffffffL

    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    and-long/2addr v7, v14

    .line 796
    long-to-int v7, v7

    .line 797
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 798
    .line 799
    .line 800
    move-result v7

    .line 801
    invoke-static {v10}, Lk30;->k(Lbq1;)Z

    .line 802
    .line 803
    .line 804
    move-result v8

    .line 805
    if-eqz v8, :cond_32

    .line 806
    .line 807
    const/4 v8, 0x0

    .line 808
    iput v8, v4, Ld90;->o:I

    .line 809
    .line 810
    invoke-virtual {v5}, Ldg2;->d()V

    .line 811
    .line 812
    .line 813
    :cond_32
    invoke-static {v10}, Lk30;->g(Lbq1;)Z

    .line 814
    .line 815
    .line 816
    move-result v8

    .line 817
    if-nez v8, :cond_37

    .line 818
    .line 819
    invoke-static {v10}, Lk30;->k(Lbq1;)Z

    .line 820
    .line 821
    .line 822
    move-result v8

    .line 823
    if-nez v8, :cond_37

    .line 824
    .line 825
    iget v7, v5, Ldg2;->b:I

    .line 826
    .line 827
    const/4 v8, 0x3

    .line 828
    if-ne v7, v8, :cond_33

    .line 829
    .line 830
    iget v7, v4, Ld90;->o:I

    .line 831
    .line 832
    add-int/lit8 v13, v7, 0x1

    .line 833
    .line 834
    iput v13, v4, Ld90;->o:I

    .line 835
    .line 836
    invoke-virtual {v5, v7, v10}, Ldg2;->n(ILjava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    goto :goto_12

    .line 840
    :cond_33
    invoke-virtual {v5, v10}, Ldg2;->a(Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    :goto_12
    iget v7, v4, Ld90;->o:I

    .line 844
    .line 845
    if-ne v7, v8, :cond_34

    .line 846
    .line 847
    const/4 v8, 0x0

    .line 848
    iput v8, v4, Ld90;->o:I

    .line 849
    .line 850
    :cond_34
    iget-object v4, v5, Ldg2;->a:[Ljava/lang/Object;

    .line 851
    .line 852
    iget v7, v5, Ldg2;->b:I

    .line 853
    .line 854
    const/4 v8, 0x0

    .line 855
    const/4 v13, 0x0

    .line 856
    :goto_13
    if-ge v8, v7, :cond_35

    .line 857
    .line 858
    aget-object v17, v4, v8

    .line 859
    .line 860
    const/16 p2, 0x0

    .line 861
    .line 862
    move-object/from16 v11, v17

    .line 863
    .line 864
    check-cast v11, Lbq1;

    .line 865
    .line 866
    move/from16 v17, v12

    .line 867
    .line 868
    move/from16 v18, v13

    .line 869
    .line 870
    iget-wide v12, v11, Lbq1;->c:J

    .line 871
    .line 872
    shr-long v11, v12, v17

    .line 873
    .line 874
    long-to-int v11, v11

    .line 875
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 876
    .line 877
    .line 878
    move-result v11

    .line 879
    add-float v13, v11, v18

    .line 880
    .line 881
    add-int/lit8 v8, v8, 0x1

    .line 882
    .line 883
    move/from16 v12, v17

    .line 884
    .line 885
    goto :goto_13

    .line 886
    :cond_35
    move/from16 v17, v12

    .line 887
    .line 888
    move/from16 v18, v13

    .line 889
    .line 890
    const/16 p2, 0x0

    .line 891
    .line 892
    iget v4, v5, Ldg2;->b:I

    .line 893
    .line 894
    int-to-float v7, v4

    .line 895
    div-float v13, v18, v7

    .line 896
    .line 897
    iget-object v7, v5, Ldg2;->a:[Ljava/lang/Object;

    .line 898
    .line 899
    move/from16 v11, p2

    .line 900
    .line 901
    const/4 v8, 0x0

    .line 902
    :goto_14
    if-ge v8, v4, :cond_36

    .line 903
    .line 904
    aget-object v12, v7, v8

    .line 905
    .line 906
    check-cast v12, Lbq1;

    .line 907
    .line 908
    move-wide/from16 v19, v14

    .line 909
    .line 910
    iget-wide v14, v12, Lbq1;->c:J

    .line 911
    .line 912
    and-long v14, v14, v19

    .line 913
    .line 914
    long-to-int v12, v14

    .line 915
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 916
    .line 917
    .line 918
    move-result v12

    .line 919
    add-float/2addr v11, v12

    .line 920
    add-int/lit8 v8, v8, 0x1

    .line 921
    .line 922
    move-wide/from16 v14, v19

    .line 923
    .line 924
    goto :goto_14

    .line 925
    :cond_36
    move-wide/from16 v19, v14

    .line 926
    .line 927
    iget v4, v5, Ldg2;->b:I

    .line 928
    .line 929
    int-to-float v4, v4

    .line 930
    div-float v7, v11, v4

    .line 931
    .line 932
    goto :goto_15

    .line 933
    :cond_37
    move/from16 v17, v12

    .line 934
    .line 935
    move-wide/from16 v19, v14

    .line 936
    .line 937
    const/16 p2, 0x0

    .line 938
    .line 939
    :goto_15
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 940
    .line 941
    .line 942
    move-result v4

    .line 943
    int-to-long v4, v4

    .line 944
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 945
    .line 946
    .line 947
    move-result v7

    .line 948
    int-to-long v7, v7

    .line 949
    shl-long v4, v4, v17

    .line 950
    .line 951
    and-long v7, v7, v19

    .line 952
    .line 953
    or-long/2addr v4, v7

    .line 954
    if-nez v2, :cond_38

    .line 955
    .line 956
    goto :goto_17

    .line 957
    :cond_38
    if-ne v3, v9, :cond_39

    .line 958
    .line 959
    shr-long v3, v4, v17

    .line 960
    .line 961
    long-to-int v3, v3

    .line 962
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 963
    .line 964
    .line 965
    move-result v3

    .line 966
    goto :goto_16

    .line 967
    :cond_39
    const/4 v7, 0x2

    .line 968
    if-ne v3, v7, :cond_3b

    .line 969
    .line 970
    and-long v3, v4, v19

    .line 971
    .line 972
    long-to-int v3, v3

    .line 973
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    :goto_16
    sget-object v4, Lhr2;->o:Lhr2;

    .line 978
    .line 979
    if-ne v2, v4, :cond_3a

    .line 980
    .line 981
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    int-to-long v2, v2

    .line 986
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 987
    .line 988
    .line 989
    move-result v4

    .line 990
    int-to-long v4, v4

    .line 991
    shl-long v2, v2, v17

    .line 992
    .line 993
    and-long v4, v4, v19

    .line 994
    .line 995
    or-long/2addr v4, v2

    .line 996
    goto :goto_17

    .line 997
    :cond_3a
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 998
    .line 999
    .line 1000
    move-result v2

    .line 1001
    int-to-long v4, v2

    .line 1002
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    int-to-long v2, v2

    .line 1007
    shl-long v4, v4, v17

    .line 1008
    .line 1009
    and-long v2, v2, v19

    .line 1010
    .line 1011
    or-long/2addr v4, v2

    .line 1012
    :cond_3b
    :goto_17
    iget-wide v2, v10, Lbq1;->b:J

    .line 1013
    .line 1014
    iget-object v1, v1, Lra3;->o:Ljava/lang/Object;

    .line 1015
    .line 1016
    check-cast v1, Lt82;

    .line 1017
    .line 1018
    invoke-virtual {v1, v2, v3, v4, v5}, Lt82;->a(JJ)V

    .line 1019
    .line 1020
    .line 1021
    sget-object v1, Lkc0;->t:Lis3;

    .line 1022
    .line 1023
    invoke-static {v0, v1}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    check-cast v1, Lnb4;

    .line 1028
    .line 1029
    invoke-interface {v1}, Lnb4;->a()F

    .line 1030
    .line 1031
    .line 1032
    move-result v1

    .line 1033
    invoke-virtual {v6}, Liq1;->d()Lra3;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v2

    .line 1037
    invoke-static {v1, v1}, Lis0;->g(FF)J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v3

    .line 1041
    invoke-virtual {v2, v3, v4}, Lra3;->a(J)J

    .line 1042
    .line 1043
    .line 1044
    move-result-wide v1

    .line 1045
    invoke-virtual {v6}, Liq1;->d()Lra3;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v3

    .line 1049
    iget-object v3, v3, Lra3;->o:Ljava/lang/Object;

    .line 1050
    .line 1051
    check-cast v3, Lt82;

    .line 1052
    .line 1053
    iget-object v4, v3, Lt82;->b:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v4, Lta4;

    .line 1056
    .line 1057
    iget-object v5, v4, Lta4;->d:[Ljm0;

    .line 1058
    .line 1059
    const/4 v7, 0x0

    .line 1060
    invoke-static {v5, v7}, Lji;->W([Ljava/lang/Object;Lsg0;)V

    .line 1061
    .line 1062
    .line 1063
    const/4 v8, 0x0

    .line 1064
    iput v8, v4, Lta4;->e:I

    .line 1065
    .line 1066
    iget-object v4, v3, Lt82;->c:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast v4, Lta4;

    .line 1069
    .line 1070
    iget-object v5, v4, Lta4;->d:[Ljm0;

    .line 1071
    .line 1072
    invoke-static {v5, v7}, Lji;->W([Ljava/lang/Object;Lsg0;)V

    .line 1073
    .line 1074
    .line 1075
    iput v8, v4, Lta4;->e:I

    .line 1076
    .line 1077
    const-wide/16 v4, 0x0

    .line 1078
    .line 1079
    iput-wide v4, v3, Lt82;->a:J

    .line 1080
    .line 1081
    new-instance v3, Lpw0;

    .line 1082
    .line 1083
    invoke-static {v1, v2}, Ldx0;->a(J)J

    .line 1084
    .line 1085
    .line 1086
    move-result-wide v1

    .line 1087
    invoke-direct {v3, v9, v1, v2}, Lpw0;-><init>(ZJ)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v0, v3}, Lwf3;->Q0(Lqw0;)V

    .line 1091
    .line 1092
    .line 1093
    goto :goto_18

    .line 1094
    :cond_3c
    invoke-virtual {v0, v5}, Lwf3;->Q0(Lqw0;)V

    .line 1095
    .line 1096
    .line 1097
    :goto_18
    invoke-virtual {v6}, Liq1;->a()V

    .line 1098
    .line 1099
    .line 1100
    return-void

    .line 1101
    :cond_3d
    iget-wide v0, v13, Lbq1;->a:J

    .line 1102
    .line 1103
    iput-wide v0, v4, Lgq1;->f:J

    .line 1104
    .line 1105
    return-void

    .line 1106
    :cond_3e
    const/16 p2, 0x0

    .line 1107
    .line 1108
    iget-boolean v1, v10, Lbq1;->i:Z

    .line 1109
    .line 1110
    if-eqz v1, :cond_3f

    .line 1111
    .line 1112
    invoke-virtual {v0, v5}, Lwf3;->Q0(Lqw0;)V

    .line 1113
    .line 1114
    .line 1115
    return-void

    .line 1116
    :cond_3f
    iget-object v1, v0, Lwf3;->D:Lhr2;

    .line 1117
    .line 1118
    new-instance v2, Laq1;

    .line 1119
    .line 1120
    invoke-direct {v2, v3}, Laq1;-><init>(I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-static {v10, v1, v2, v9}, Lk30;->B(Lbq1;Lhr2;Laq1;Z)J

    .line 1124
    .line 1125
    .line 1126
    move-result-wide v1

    .line 1127
    invoke-static {v1, v2}, Lgo2;->c(J)F

    .line 1128
    .line 1129
    .line 1130
    move-result v1

    .line 1131
    cmpg-float v1, v1, p2

    .line 1132
    .line 1133
    if-nez v1, :cond_40

    .line 1134
    .line 1135
    goto :goto_19

    .line 1136
    :cond_40
    iget-object v0, v0, Lwf3;->D:Lhr2;

    .line 1137
    .line 1138
    new-instance v1, Laq1;

    .line 1139
    .line 1140
    invoke-direct {v1, v3}, Laq1;-><init>(I)V

    .line 1141
    .line 1142
    .line 1143
    const/4 v8, 0x0

    .line 1144
    invoke-static {v10, v0, v1, v8}, Lk30;->B(Lbq1;Lhr2;Laq1;Z)J

    .line 1145
    .line 1146
    .line 1147
    move-result-wide v0

    .line 1148
    new-instance v2, Laq1;

    .line 1149
    .line 1150
    invoke-direct {v2, v3}, Laq1;-><init>(I)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v6, v10, v2, v0, v1}, Liq1;->e(Lbq1;Laq1;J)V

    .line 1154
    .line 1155
    .line 1156
    iput-boolean v9, v10, Lbq1;->i:Z

    .line 1157
    .line 1158
    return-void

    .line 1159
    :cond_41
    invoke-static {}, Lp61;->x()V

    .line 1160
    .line 1161
    .line 1162
    return-void

    .line 1163
    :cond_42
    const-string v0, "currentDragState should not be null"

    .line 1164
    .line 1165
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    :cond_43
    :goto_19
    return-void
.end method

.method public final F(Lvv2;Lwv2;J)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v10, v8, Lvv2;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v11, 0x0

    .line 14
    move v2, v11

    .line 15
    :goto_0
    sget-object v12, Lwv2;->o:Lwv2;

    .line 16
    .line 17
    sget-object v13, Lwv2;->n:Lwv2;

    .line 18
    .line 19
    if-ge v2, v1, :cond_3f

    .line 20
    .line 21
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lzv2;

    .line 26
    .line 27
    iget-object v4, v0, Lwf3;->E:Lpe1;

    .line 28
    .line 29
    iget v3, v3, Lzv2;->i:I

    .line 30
    .line 31
    new-instance v5, Lhw2;

    .line 32
    .line 33
    invoke-direct {v5, v3}, Lhw2;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, v5}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_3e

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, v0, Lwf3;->K:Z

    .line 50
    .line 51
    iget-boolean v2, v0, Lwf3;->F:Z

    .line 52
    .line 53
    if-eqz v2, :cond_3f

    .line 54
    .line 55
    iget-object v2, v0, Lwf3;->N:Lxg1;

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    new-instance v2, Lxg1;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Lxg1;-><init>(Lwg1;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 65
    .line 66
    .line 67
    iput-object v2, v0, Lwf3;->N:Lxg1;

    .line 68
    .line 69
    :cond_0
    iget-object v2, v0, Lwf3;->S:Lht4;

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    iget-object v2, v0, Lwf3;->L:Liw0;

    .line 74
    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    new-instance v2, Liw0;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v3, Lhw0;->p:Lhw0;

    .line 83
    .line 84
    iput-object v3, v2, Liw0;->r:Lhw0;

    .line 85
    .line 86
    iput-boolean v11, v2, Liw0;->s:Z

    .line 87
    .line 88
    iput-boolean v11, v2, Liw0;->t:Z

    .line 89
    .line 90
    iput-object v2, v0, Lwf3;->L:Liw0;

    .line 91
    .line 92
    :cond_1
    iput-object v2, v0, Lwf3;->S:Lht4;

    .line 93
    .line 94
    :cond_2
    iget-object v2, v0, Lwf3;->S:Lht4;

    .line 95
    .line 96
    if-eqz v2, :cond_3d

    .line 97
    .line 98
    instance-of v3, v2, Liw0;

    .line 99
    .line 100
    const-wide v4, 0x7fffffffffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    const-wide/16 v14, 0x0

    .line 106
    .line 107
    if-eqz v3, :cond_d

    .line 108
    .line 109
    check-cast v2, Liw0;

    .line 110
    .line 111
    iget-object v3, v8, Lvv2;->a:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    goto/16 :goto_1a

    .line 120
    .line 121
    :cond_3
    invoke-static {v8, v11}, Lqj0;->O(Lvv2;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_4

    .line 126
    .line 127
    goto/16 :goto_1a

    .line 128
    .line 129
    :cond_4
    iget-object v3, v8, Lvv2;->a:Ljava/util/List;

    .line 130
    .line 131
    invoke-static {v3}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lzv2;

    .line 136
    .line 137
    iget-object v6, v2, Liw0;->r:Lhw0;

    .line 138
    .line 139
    sget-object v16, Ltw0;->a:[I

    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    aget v6, v16, v6

    .line 146
    .line 147
    sget-object v7, Lhw0;->o:Lhw0;

    .line 148
    .line 149
    sget-object v11, Lhw0;->n:Lhw0;

    .line 150
    .line 151
    if-ne v6, v1, :cond_6

    .line 152
    .line 153
    invoke-virtual {v0}, Lwf3;->X0()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-nez v6, :cond_5

    .line 158
    .line 159
    move-object v6, v11

    .line 160
    goto :goto_1

    .line 161
    :cond_5
    move-object v6, v7

    .line 162
    goto :goto_1

    .line 163
    :cond_6
    iget-object v6, v2, Liw0;->r:Lhw0;

    .line 164
    .line 165
    :goto_1
    iput-object v6, v2, Liw0;->r:Lhw0;

    .line 166
    .line 167
    if-ne v9, v13, :cond_8

    .line 168
    .line 169
    if-ne v6, v7, :cond_7

    .line 170
    .line 171
    invoke-virtual {v3}, Lzv2;->a()V

    .line 172
    .line 173
    .line 174
    iput-boolean v1, v2, Liw0;->s:Z

    .line 175
    .line 176
    :cond_7
    iput-boolean v1, v2, Liw0;->t:Z

    .line 177
    .line 178
    :cond_8
    if-ne v9, v12, :cond_b

    .line 179
    .line 180
    if-ne v6, v11, :cond_9

    .line 181
    .line 182
    move-object v1, v3

    .line 183
    iget-wide v2, v1, Lzv2;->a:J

    .line 184
    .line 185
    const-wide/16 v4, 0x0

    .line 186
    .line 187
    const/16 v6, 0xc

    .line 188
    .line 189
    invoke-static/range {v0 .. v6}, Lwf3;->P0(Lwf3;Lzv2;JJI)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_9
    move-object v1, v3

    .line 194
    iget-boolean v2, v2, Liw0;->s:Z

    .line 195
    .line 196
    if-eqz v2, :cond_b

    .line 197
    .line 198
    invoke-virtual {v0, v1, v1, v14, v15}, Lwf3;->W0(Lzv2;Lzv2;J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1, v14, v15}, Lwf3;->V0(Lzv2;J)V

    .line 202
    .line 203
    .line 204
    iget-wide v1, v1, Lzv2;->a:J

    .line 205
    .line 206
    iget-object v3, v0, Lwf3;->P:Llw0;

    .line 207
    .line 208
    if-nez v3, :cond_a

    .line 209
    .line 210
    new-instance v3, Llw0;

    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 213
    .line 214
    .line 215
    iput-wide v4, v3, Llw0;->r:J

    .line 216
    .line 217
    iput-object v3, v0, Lwf3;->P:Llw0;

    .line 218
    .line 219
    :cond_a
    iput-wide v1, v3, Llw0;->r:J

    .line 220
    .line 221
    iput-object v3, v0, Lwf3;->S:Lht4;

    .line 222
    .line 223
    :cond_b
    :goto_2
    move-object/from16 v19, v10

    .line 224
    .line 225
    :cond_c
    :goto_3
    const/4 v11, 0x0

    .line 226
    goto/16 :goto_1b

    .line 227
    .line 228
    :cond_d
    instance-of v3, v2, Lkw0;

    .line 229
    .line 230
    sget-object v6, Lwv2;->p:Lwv2;

    .line 231
    .line 232
    if-eqz v3, :cond_28

    .line 233
    .line 234
    check-cast v2, Lkw0;

    .line 235
    .line 236
    if-ne v9, v13, :cond_e

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_e
    iget-object v3, v8, Lvv2;->a:Ljava/util/List;

    .line 240
    .line 241
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    const/4 v11, 0x0

    .line 246
    :goto_4
    if-ge v11, v7, :cond_10

    .line 247
    .line 248
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    move-object v15, v14

    .line 253
    check-cast v15, Lzv2;

    .line 254
    .line 255
    iget-wide v4, v15, Lzv2;->a:J

    .line 256
    .line 257
    move-object/from16 v18, v14

    .line 258
    .line 259
    iget-wide v14, v2, Lkw0;->s:J

    .line 260
    .line 261
    invoke-static {v4, v5, v14, v15}, Lqj0;->G(JJ)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_f

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 269
    .line 270
    const-wide v4, 0x7fffffffffffffffL

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_10
    const/16 v18, 0x0

    .line 277
    .line 278
    :goto_5
    check-cast v18, Lzv2;

    .line 279
    .line 280
    if-nez v18, :cond_14

    .line 281
    .line 282
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    const/4 v5, 0x0

    .line 287
    :goto_6
    if-ge v5, v4, :cond_12

    .line 288
    .line 289
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    move-object v11, v7

    .line 294
    check-cast v11, Lzv2;

    .line 295
    .line 296
    iget-boolean v11, v11, Lzv2;->d:Z

    .line 297
    .line 298
    if-eqz v11, :cond_11

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_12
    const/4 v7, 0x0

    .line 305
    :goto_7
    move-object v4, v7

    .line 306
    check-cast v4, Lzv2;

    .line 307
    .line 308
    if-nez v4, :cond_13

    .line 309
    .line 310
    invoke-virtual {v0}, Lwf3;->N0()V

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_13
    iget-wide v14, v4, Lzv2;->a:J

    .line 315
    .line 316
    iput-wide v14, v2, Lkw0;->s:J

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_14
    move-object/from16 v4, v18

    .line 320
    .line 321
    :goto_8
    const-string v5, "AwaitTouchSlop.touchSlopDetector was not initialized"

    .line 322
    .line 323
    const-string v7, "AwaitTouchSlop.initialDown was not initialized"

    .line 324
    .line 325
    if-ne v9, v12, :cond_17

    .line 326
    .line 327
    invoke-virtual {v4}, Lzv2;->c()Z

    .line 328
    .line 329
    .line 330
    move-result v11

    .line 331
    if-nez v11, :cond_22

    .line 332
    .line 333
    invoke-static {v4}, Lse0;->f(Lzv2;)Z

    .line 334
    .line 335
    .line 336
    move-result v11

    .line 337
    if-eqz v11, :cond_19

    .line 338
    .line 339
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    const/4 v11, 0x0

    .line 344
    :goto_9
    if-ge v11, v1, :cond_16

    .line 345
    .line 346
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v14

    .line 350
    move-object v15, v14

    .line 351
    check-cast v15, Lzv2;

    .line 352
    .line 353
    iget-boolean v15, v15, Lzv2;->d:Z

    .line 354
    .line 355
    if-eqz v15, :cond_15

    .line 356
    .line 357
    goto :goto_a

    .line 358
    :cond_15
    add-int/lit8 v11, v11, 0x1

    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_16
    const/4 v14, 0x0

    .line 362
    :goto_a
    check-cast v14, Lzv2;

    .line 363
    .line 364
    if-nez v14, :cond_18

    .line 365
    .line 366
    invoke-virtual {v0}, Lwf3;->N0()V

    .line 367
    .line 368
    .line 369
    :cond_17
    :goto_b
    move-object v11, v2

    .line 370
    move-object/from16 v19, v10

    .line 371
    .line 372
    goto/16 :goto_10

    .line 373
    .line 374
    :cond_18
    iget-wide v14, v14, Lzv2;->a:J

    .line 375
    .line 376
    iput-wide v14, v2, Lkw0;->s:J

    .line 377
    .line 378
    goto :goto_b

    .line 379
    :cond_19
    sget-object v3, Lkc0;->t:Lis3;

    .line 380
    .line 381
    invoke-static {v0, v3}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Lnb4;

    .line 386
    .line 387
    iget v11, v4, Lzv2;->i:I

    .line 388
    .line 389
    sget v14, Lrw0;->a:F

    .line 390
    .line 391
    const/4 v14, 0x2

    .line 392
    if-ne v11, v14, :cond_1a

    .line 393
    .line 394
    invoke-interface {v3}, Lnb4;->b()F

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    sget v11, Lrw0;->a:F

    .line 399
    .line 400
    mul-float/2addr v3, v11

    .line 401
    goto :goto_c

    .line 402
    :cond_1a
    invoke-interface {v3}, Lnb4;->b()F

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    :goto_c
    iget-object v11, v0, Lwf3;->U:Llj1;

    .line 407
    .line 408
    if-eqz v11, :cond_21

    .line 409
    .line 410
    invoke-static {v4, v1}, Lse0;->C(Lzv2;Z)J

    .line 411
    .line 412
    .line 413
    move-result-wide v14

    .line 414
    invoke-static {v11, v14, v15, v3}, Llj1;->a(Llj1;JF)J

    .line 415
    .line 416
    .line 417
    move-result-wide v14

    .line 418
    const-wide v18, 0x7fffffff7fffffffL

    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    and-long v18, v14, v18

    .line 424
    .line 425
    const-wide v20, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    cmp-long v3, v18, v20

    .line 431
    .line 432
    if-eqz v3, :cond_20

    .line 433
    .line 434
    move-object v11, v2

    .line 435
    const/4 v3, 0x0

    .line 436
    invoke-static {v4, v3}, Lse0;->C(Lzv2;Z)J

    .line 437
    .line 438
    .line 439
    move-result-wide v1

    .line 440
    move-object/from16 v19, v10

    .line 441
    .line 442
    move-object v3, v11

    .line 443
    iget-wide v10, v0, Lwf3;->M:J

    .line 444
    .line 445
    invoke-static {v10, v11, v1, v2}, Lgo2;->e(JJ)J

    .line 446
    .line 447
    .line 448
    move-result-wide v1

    .line 449
    iput-wide v1, v0, Lwf3;->M:J

    .line 450
    .line 451
    const/16 v10, 0x20

    .line 452
    .line 453
    shr-long/2addr v1, v10

    .line 454
    long-to-int v1, v1

    .line 455
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    iget-wide v10, v0, Lwf3;->M:J

    .line 464
    .line 465
    const-wide v20, 0xffffffffL

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    and-long v10, v10, v20

    .line 471
    .line 472
    long-to-int v2, v10

    .line 473
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    float-to-double v10, v2

    .line 482
    float-to-double v1, v1

    .line 483
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    .line 484
    .line 485
    .line 486
    move-result-wide v1

    .line 487
    double-to-float v1, v1

    .line 488
    const v2, 0x42652ee1

    .line 489
    .line 490
    .line 491
    mul-float/2addr v1, v2

    .line 492
    iget-object v2, v0, Lwf3;->D:Lhr2;

    .line 493
    .line 494
    if-nez v2, :cond_1b

    .line 495
    .line 496
    :goto_d
    const/4 v2, 0x1

    .line 497
    goto :goto_f

    .line 498
    :cond_1b
    sget v10, Ldx0;->a:I

    .line 499
    .line 500
    sget-object v10, Lhr2;->o:Lhr2;

    .line 501
    .line 502
    const/high16 v11, 0x41f00000    # 30.0f

    .line 503
    .line 504
    if-ne v2, v10, :cond_1c

    .line 505
    .line 506
    cmpg-float v2, v1, v11

    .line 507
    .line 508
    if-gtz v2, :cond_1d

    .line 509
    .line 510
    goto :goto_e

    .line 511
    :cond_1c
    cmpl-float v2, v1, v11

    .line 512
    .line 513
    if-lez v2, :cond_1d

    .line 514
    .line 515
    const/high16 v2, 0x42b40000    # 90.0f

    .line 516
    .line 517
    cmpg-float v2, v1, v2

    .line 518
    .line 519
    if-gtz v2, :cond_1d

    .line 520
    .line 521
    :goto_e
    goto :goto_d

    .line 522
    :cond_1d
    const/4 v2, 0x0

    .line 523
    :goto_f
    new-instance v10, Ls33;

    .line 524
    .line 525
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 526
    .line 527
    .line 528
    new-instance v11, Lsw0;

    .line 529
    .line 530
    invoke-direct {v11, v1, v10}, Lsw0;-><init>(FLs33;)V

    .line 531
    .line 532
    .line 533
    sget v1, Ldx0;->a:I

    .line 534
    .line 535
    new-instance v1, Lv;

    .line 536
    .line 537
    move/from16 v20, v2

    .line 538
    .line 539
    const/4 v2, 0x7

    .line 540
    invoke-direct {v1, v2, v11}, Lv;-><init>(ILjava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    new-instance v2, Lyg1;

    .line 544
    .line 545
    const/4 v11, 0x0

    .line 546
    invoke-direct {v2, v1, v11}, Lyg1;-><init>(Lpe1;I)V

    .line 547
    .line 548
    .line 549
    sget-object v1, Lxg1;->C:Lqz0;

    .line 550
    .line 551
    invoke-static {v0, v1, v2}, Lqj0;->b0(Lmd2;Ljava/lang/Object;Lpe1;)V

    .line 552
    .line 553
    .line 554
    if-nez v20, :cond_1e

    .line 555
    .line 556
    iget-boolean v1, v10, Ls33;->n:Z

    .line 557
    .line 558
    if-eqz v1, :cond_1e

    .line 559
    .line 560
    move-object v11, v3

    .line 561
    const/4 v1, 0x1

    .line 562
    iput-boolean v1, v11, Lkw0;->t:Z

    .line 563
    .line 564
    goto :goto_10

    .line 565
    :cond_1e
    move-object v11, v3

    .line 566
    invoke-virtual {v4}, Lzv2;->a()V

    .line 567
    .line 568
    .line 569
    iget-object v1, v11, Lkw0;->r:Lzv2;

    .line 570
    .line 571
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v1, v4, v14, v15}, Lwf3;->W0(Lzv2;Lzv2;J)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v4, v14, v15}, Lwf3;->V0(Lzv2;J)V

    .line 578
    .line 579
    .line 580
    iget-wide v1, v4, Lzv2;->a:J

    .line 581
    .line 582
    iget-object v3, v0, Lwf3;->P:Llw0;

    .line 583
    .line 584
    if-nez v3, :cond_1f

    .line 585
    .line 586
    new-instance v3, Llw0;

    .line 587
    .line 588
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 589
    .line 590
    .line 591
    const-wide v14, 0x7fffffffffffffffL

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    iput-wide v14, v3, Llw0;->r:J

    .line 597
    .line 598
    iput-object v3, v0, Lwf3;->P:Llw0;

    .line 599
    .line 600
    :cond_1f
    iput-wide v1, v3, Llw0;->r:J

    .line 601
    .line 602
    iput-object v3, v0, Lwf3;->S:Lht4;

    .line 603
    .line 604
    goto :goto_10

    .line 605
    :cond_20
    move-object v11, v2

    .line 606
    move-object/from16 v19, v10

    .line 607
    .line 608
    iput-boolean v1, v11, Lkw0;->t:Z

    .line 609
    .line 610
    iget-wide v2, v0, Lwf3;->M:J

    .line 611
    .line 612
    invoke-static {v4, v1}, Lse0;->C(Lzv2;Z)J

    .line 613
    .line 614
    .line 615
    move-result-wide v14

    .line 616
    invoke-static {v2, v3, v14, v15}, Lgo2;->e(JJ)J

    .line 617
    .line 618
    .line 619
    move-result-wide v1

    .line 620
    iput-wide v1, v0, Lwf3;->M:J

    .line 621
    .line 622
    goto :goto_10

    .line 623
    :cond_21
    move-object/from16 v19, v10

    .line 624
    .line 625
    const-string v1, "Touch slop detector not initialized."

    .line 626
    .line 627
    invoke-static {v1}, Lk21;->f(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_3

    .line 631
    .line 632
    :cond_22
    move-object v11, v2

    .line 633
    move-object/from16 v19, v10

    .line 634
    .line 635
    iget-object v1, v11, Lkw0;->r:Lzv2;

    .line 636
    .line 637
    if-eqz v1, :cond_24

    .line 638
    .line 639
    iget-wide v2, v11, Lkw0;->s:J

    .line 640
    .line 641
    iget-object v10, v0, Lwf3;->U:Llj1;

    .line 642
    .line 643
    if-eqz v10, :cond_23

    .line 644
    .line 645
    invoke-virtual {v0, v1, v2, v3, v10}, Lwf3;->O0(Lzv2;JLlj1;)V

    .line 646
    .line 647
    .line 648
    goto :goto_10

    .line 649
    :cond_23
    invoke-static {v5}, Lk21;->f(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_3

    .line 653
    .line 654
    :cond_24
    invoke-static {v7}, Lk21;->f(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_3

    .line 658
    .line 659
    :goto_10
    if-ne v9, v6, :cond_c

    .line 660
    .line 661
    iget-boolean v1, v11, Lkw0;->t:Z

    .line 662
    .line 663
    if-eqz v1, :cond_c

    .line 664
    .line 665
    invoke-virtual {v4}, Lzv2;->c()Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_27

    .line 670
    .line 671
    iget-object v1, v11, Lkw0;->r:Lzv2;

    .line 672
    .line 673
    if-eqz v1, :cond_26

    .line 674
    .line 675
    iget-wide v2, v11, Lkw0;->s:J

    .line 676
    .line 677
    iget-object v4, v0, Lwf3;->U:Llj1;

    .line 678
    .line 679
    if-eqz v4, :cond_25

    .line 680
    .line 681
    invoke-virtual {v0, v1, v2, v3, v4}, Lwf3;->O0(Lzv2;JLlj1;)V

    .line 682
    .line 683
    .line 684
    goto/16 :goto_3

    .line 685
    .line 686
    :cond_25
    invoke-static {v5}, Lk21;->f(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_3

    .line 690
    .line 691
    :cond_26
    invoke-static {v7}, Lk21;->f(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_3

    .line 695
    .line 696
    :cond_27
    const/4 v3, 0x0

    .line 697
    iput-boolean v3, v11, Lkw0;->t:Z

    .line 698
    .line 699
    move v11, v3

    .line 700
    goto/16 :goto_1b

    .line 701
    .line 702
    :cond_28
    move-object/from16 v19, v10

    .line 703
    .line 704
    instance-of v1, v2, Ljw0;

    .line 705
    .line 706
    if-eqz v1, :cond_30

    .line 707
    .line 708
    check-cast v2, Ljw0;

    .line 709
    .line 710
    if-eq v9, v6, :cond_29

    .line 711
    .line 712
    goto/16 :goto_3

    .line 713
    .line 714
    :cond_29
    iget-object v1, v8, Lvv2;->a:Ljava/util/List;

    .line 715
    .line 716
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 717
    .line 718
    .line 719
    move-result v3

    .line 720
    const/4 v4, 0x0

    .line 721
    :goto_11
    if-ge v4, v3, :cond_2b

    .line 722
    .line 723
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    check-cast v5, Lzv2;

    .line 728
    .line 729
    invoke-virtual {v5}, Lzv2;->c()Z

    .line 730
    .line 731
    .line 732
    move-result v5

    .line 733
    if-eqz v5, :cond_2a

    .line 734
    .line 735
    const/16 v18, 0x0

    .line 736
    .line 737
    goto :goto_12

    .line 738
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    .line 739
    .line 740
    goto :goto_11

    .line 741
    :cond_2b
    const/16 v18, 0x1

    .line 742
    .line 743
    :goto_12
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 744
    .line 745
    .line 746
    move-result v3

    .line 747
    const/4 v4, 0x0

    .line 748
    :goto_13
    if-ge v4, v3, :cond_2f

    .line 749
    .line 750
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    check-cast v5, Lzv2;

    .line 755
    .line 756
    iget-boolean v5, v5, Lzv2;->d:Z

    .line 757
    .line 758
    if-eqz v5, :cond_2e

    .line 759
    .line 760
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    if-eqz v3, :cond_2c

    .line 765
    .line 766
    goto :goto_14

    .line 767
    :cond_2c
    if-eqz v18, :cond_c

    .line 768
    .line 769
    invoke-static {v1}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    check-cast v1, Lzv2;

    .line 774
    .line 775
    iget-wide v3, v1, Lzv2;->c:J

    .line 776
    .line 777
    iget-object v1, v2, Ljw0;->r:Lzv2;

    .line 778
    .line 779
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    .line 781
    .line 782
    iget-wide v5, v1, Lzv2;->c:J

    .line 783
    .line 784
    invoke-static {v3, v4, v5, v6}, Lgo2;->d(JJ)J

    .line 785
    .line 786
    .line 787
    move-result-wide v4

    .line 788
    iget-object v1, v2, Ljw0;->r:Lzv2;

    .line 789
    .line 790
    if-eqz v1, :cond_2d

    .line 791
    .line 792
    iget-wide v2, v2, Ljw0;->s:J

    .line 793
    .line 794
    const/16 v6, 0x8

    .line 795
    .line 796
    invoke-static/range {v0 .. v6}, Lwf3;->P0(Lwf3;Lzv2;JJI)V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_3

    .line 800
    .line 801
    :cond_2d
    const-string v1, "AwaitGesturePickup.initialDown was not initialized."

    .line 802
    .line 803
    invoke-static {v1}, Lk21;->f(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    goto/16 :goto_3

    .line 807
    .line 808
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    .line 809
    .line 810
    goto :goto_13

    .line 811
    :cond_2f
    :goto_14
    invoke-virtual {v0}, Lwf3;->N0()V

    .line 812
    .line 813
    .line 814
    goto/16 :goto_3

    .line 815
    .line 816
    :cond_30
    instance-of v1, v2, Llw0;

    .line 817
    .line 818
    if-eqz v1, :cond_3c

    .line 819
    .line 820
    check-cast v2, Llw0;

    .line 821
    .line 822
    if-eq v9, v12, :cond_31

    .line 823
    .line 824
    goto/16 :goto_3

    .line 825
    .line 826
    :cond_31
    iget-wide v3, v2, Llw0;->r:J

    .line 827
    .line 828
    iget-object v1, v8, Lvv2;->a:Ljava/util/List;

    .line 829
    .line 830
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 831
    .line 832
    .line 833
    move-result v5

    .line 834
    const/4 v6, 0x0

    .line 835
    :goto_15
    if-ge v6, v5, :cond_33

    .line 836
    .line 837
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v7

    .line 841
    move-object v10, v7

    .line 842
    check-cast v10, Lzv2;

    .line 843
    .line 844
    iget-wide v10, v10, Lzv2;->a:J

    .line 845
    .line 846
    invoke-static {v10, v11, v3, v4}, Lqj0;->G(JJ)Z

    .line 847
    .line 848
    .line 849
    move-result v10

    .line 850
    if-eqz v10, :cond_32

    .line 851
    .line 852
    goto :goto_16

    .line 853
    :cond_32
    add-int/lit8 v6, v6, 0x1

    .line 854
    .line 855
    goto :goto_15

    .line 856
    :cond_33
    const/4 v7, 0x0

    .line 857
    :goto_16
    check-cast v7, Lzv2;

    .line 858
    .line 859
    if-nez v7, :cond_34

    .line 860
    .line 861
    goto/16 :goto_3

    .line 862
    .line 863
    :cond_34
    invoke-static {v7}, Lse0;->f(Lzv2;)Z

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    sget-object v3, Lmw0;->a:Lmw0;

    .line 868
    .line 869
    if-eqz v1, :cond_39

    .line 870
    .line 871
    iget-object v1, v8, Lvv2;->a:Ljava/util/List;

    .line 872
    .line 873
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 874
    .line 875
    .line 876
    move-result v4

    .line 877
    const/4 v5, 0x0

    .line 878
    :goto_17
    if-ge v5, v4, :cond_36

    .line 879
    .line 880
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v6

    .line 884
    move-object v10, v6

    .line 885
    check-cast v10, Lzv2;

    .line 886
    .line 887
    iget-boolean v10, v10, Lzv2;->d:Z

    .line 888
    .line 889
    if-eqz v10, :cond_35

    .line 890
    .line 891
    goto :goto_18

    .line 892
    :cond_35
    add-int/lit8 v5, v5, 0x1

    .line 893
    .line 894
    goto :goto_17

    .line 895
    :cond_36
    const/4 v6, 0x0

    .line 896
    :goto_18
    check-cast v6, Lzv2;

    .line 897
    .line 898
    if-nez v6, :cond_38

    .line 899
    .line 900
    invoke-virtual {v7}, Lzv2;->c()Z

    .line 901
    .line 902
    .line 903
    move-result v1

    .line 904
    if-nez v1, :cond_37

    .line 905
    .line 906
    invoke-static {v7}, Lse0;->f(Lzv2;)Z

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    if-eqz v1, :cond_37

    .line 911
    .line 912
    invoke-virtual {v0}, Lwf3;->U0()Lra3;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    invoke-static {v1, v7}, Ln44;->L(Lra3;Lzv2;)V

    .line 917
    .line 918
    .line 919
    sget-object v1, Lkc0;->t:Lis3;

    .line 920
    .line 921
    invoke-static {v0, v1}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    check-cast v1, Lnb4;

    .line 926
    .line 927
    invoke-interface {v1}, Lnb4;->a()F

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    invoke-virtual {v0}, Lwf3;->U0()Lra3;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-static {v1, v1}, Lis0;->g(FF)J

    .line 936
    .line 937
    .line 938
    move-result-wide v3

    .line 939
    invoke-virtual {v2, v3, v4}, Lra3;->a(J)J

    .line 940
    .line 941
    .line 942
    move-result-wide v1

    .line 943
    invoke-virtual {v0}, Lwf3;->U0()Lra3;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    iget-object v3, v3, Lra3;->o:Ljava/lang/Object;

    .line 948
    .line 949
    check-cast v3, Lt82;

    .line 950
    .line 951
    iget-object v4, v3, Lt82;->b:Ljava/lang/Object;

    .line 952
    .line 953
    check-cast v4, Lta4;

    .line 954
    .line 955
    iget-object v5, v4, Lta4;->d:[Ljm0;

    .line 956
    .line 957
    const/4 v6, 0x0

    .line 958
    invoke-static {v5, v6}, Lji;->W([Ljava/lang/Object;Lsg0;)V

    .line 959
    .line 960
    .line 961
    const/4 v11, 0x0

    .line 962
    iput v11, v4, Lta4;->e:I

    .line 963
    .line 964
    iget-object v4, v3, Lt82;->c:Ljava/lang/Object;

    .line 965
    .line 966
    check-cast v4, Lta4;

    .line 967
    .line 968
    iget-object v5, v4, Lta4;->d:[Ljm0;

    .line 969
    .line 970
    invoke-static {v5, v6}, Lji;->W([Ljava/lang/Object;Lsg0;)V

    .line 971
    .line 972
    .line 973
    iput v11, v4, Lta4;->e:I

    .line 974
    .line 975
    iput-wide v14, v3, Lt82;->a:J

    .line 976
    .line 977
    invoke-virtual {v0}, Lwf3;->T0()Ln30;

    .line 978
    .line 979
    .line 980
    move-result-object v3

    .line 981
    new-instance v4, Lpw0;

    .line 982
    .line 983
    invoke-static {v1, v2}, Ldx0;->a(J)J

    .line 984
    .line 985
    .line 986
    move-result-wide v1

    .line 987
    invoke-direct {v4, v11, v1, v2}, Lpw0;-><init>(ZJ)V

    .line 988
    .line 989
    .line 990
    invoke-interface {v3, v4}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    iput-boolean v11, v0, Lwf3;->K:Z

    .line 994
    .line 995
    goto :goto_19

    .line 996
    :cond_37
    invoke-virtual {v0}, Lwf3;->T0()Ln30;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    invoke-interface {v1, v3}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    :goto_19
    invoke-virtual {v0}, Lwf3;->N0()V

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_3

    .line 1007
    .line 1008
    :cond_38
    iget-wide v3, v6, Lzv2;->a:J

    .line 1009
    .line 1010
    iput-wide v3, v2, Llw0;->r:J

    .line 1011
    .line 1012
    goto/16 :goto_3

    .line 1013
    .line 1014
    :cond_39
    invoke-virtual {v7}, Lzv2;->c()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v1

    .line 1018
    if-eqz v1, :cond_3a

    .line 1019
    .line 1020
    invoke-virtual {v0}, Lwf3;->T0()Ln30;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    invoke-interface {v1, v3}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_3

    .line 1028
    .line 1029
    :cond_3a
    const/4 v1, 0x1

    .line 1030
    invoke-static {v7, v1}, Lse0;->C(Lzv2;Z)J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v1

    .line 1034
    invoke-static {v1, v2}, Lgo2;->c(J)F

    .line 1035
    .line 1036
    .line 1037
    move-result v1

    .line 1038
    const/4 v2, 0x0

    .line 1039
    cmpg-float v1, v1, v2

    .line 1040
    .line 1041
    if-nez v1, :cond_3b

    .line 1042
    .line 1043
    goto/16 :goto_3

    .line 1044
    .line 1045
    :cond_3b
    const/4 v11, 0x0

    .line 1046
    invoke-static {v7, v11}, Lse0;->C(Lzv2;Z)J

    .line 1047
    .line 1048
    .line 1049
    move-result-wide v1

    .line 1050
    invoke-virtual {v0, v7, v1, v2}, Lwf3;->V0(Lzv2;J)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v7}, Lzv2;->a()V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_1b

    .line 1057
    :cond_3c
    const/4 v11, 0x0

    .line 1058
    invoke-static {}, Lp61;->x()V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_1b

    .line 1062
    :cond_3d
    move-object/from16 v19, v10

    .line 1063
    .line 1064
    const-string v1, "currentDragState should not be null"

    .line 1065
    .line 1066
    invoke-static {v1}, Lk21;->f(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_1b

    .line 1070
    :cond_3e
    move-object/from16 v19, v10

    .line 1071
    .line 1072
    add-int/lit8 v2, v2, 0x1

    .line 1073
    .line 1074
    goto/16 :goto_0

    .line 1075
    .line 1076
    :cond_3f
    :goto_1a
    move-object/from16 v19, v10

    .line 1077
    .line 1078
    :goto_1b
    iget-boolean v1, v0, Lwf3;->F:Z

    .line 1079
    .line 1080
    if-eqz v1, :cond_51

    .line 1081
    .line 1082
    iget-object v1, v0, Lwf3;->N:Lxg1;

    .line 1083
    .line 1084
    if-nez v1, :cond_40

    .line 1085
    .line 1086
    new-instance v1, Lxg1;

    .line 1087
    .line 1088
    invoke-direct {v1, v0}, Lxg1;-><init>(Lwg1;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v0, v1}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 1092
    .line 1093
    .line 1094
    iput-object v1, v0, Lwf3;->N:Lxg1;

    .line 1095
    .line 1096
    :cond_40
    const/4 v10, 0x3

    .line 1097
    iget-object v14, v0, Lwf3;->a0:Ldg3;

    .line 1098
    .line 1099
    const/4 v15, 0x6

    .line 1100
    if-ne v9, v13, :cond_42

    .line 1101
    .line 1102
    iget v1, v8, Lvv2;->c:I

    .line 1103
    .line 1104
    if-ne v1, v15, :cond_42

    .line 1105
    .line 1106
    iget-object v1, v0, Lwf3;->g0:Lme2;

    .line 1107
    .line 1108
    if-nez v1, :cond_41

    .line 1109
    .line 1110
    new-instance v1, Lme2;

    .line 1111
    .line 1112
    new-instance v2, Lwu4;

    .line 1113
    .line 1114
    invoke-static {v0}, Lca;->F(Ljr0;)Landroid/view/View;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v3

    .line 1118
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v3

    .line 1122
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v3

    .line 1126
    const/4 v4, 0x7

    .line 1127
    invoke-direct {v2, v4, v3}, Lwu4;-><init>(ILjava/lang/Object;)V

    .line 1128
    .line 1129
    .line 1130
    new-instance v0, Lja0;

    .line 1131
    .line 1132
    const/4 v6, 0x4

    .line 1133
    const/4 v7, 0x1

    .line 1134
    move-object v3, v1

    .line 1135
    const/4 v1, 0x2

    .line 1136
    move-object v4, v3

    .line 1137
    const-class v3, Lwf3;

    .line 1138
    .line 1139
    move-object v5, v4

    .line 1140
    const-string v4, "onWheelScrollStopped"

    .line 1141
    .line 1142
    move-object/from16 v16, v5

    .line 1143
    .line 1144
    const-string v5, "onWheelScrollStopped-TH1AsA0(J)V"

    .line 1145
    .line 1146
    move-object v15, v2

    .line 1147
    move-object/from16 v11, v16

    .line 1148
    .line 1149
    move-object/from16 v2, p0

    .line 1150
    .line 1151
    invoke-direct/range {v0 .. v7}, Lja0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1152
    .line 1153
    .line 1154
    move-object v1, v0

    .line 1155
    move-object v0, v2

    .line 1156
    invoke-static {v0}, Lw80;->R(Ljr0;)Lxy1;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    iget-object v2, v2, Lxy1;->L:Las0;

    .line 1161
    .line 1162
    invoke-direct {v11, v14, v15, v1, v2}, Lme2;-><init>(Ldg3;Lwu4;Lja0;Las0;)V

    .line 1163
    .line 1164
    .line 1165
    iput-object v11, v0, Lwf3;->g0:Lme2;

    .line 1166
    .line 1167
    :cond_41
    iget-object v1, v0, Lwf3;->g0:Lme2;

    .line 1168
    .line 1169
    if-eqz v1, :cond_42

    .line 1170
    .line 1171
    invoke-virtual {v0}, Lmd2;->u0()Lqi0;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v2

    .line 1175
    iget-object v3, v1, Lme2;->h:Lir3;

    .line 1176
    .line 1177
    if-nez v3, :cond_42

    .line 1178
    .line 1179
    new-instance v3, Ln;

    .line 1180
    .line 1181
    const/16 v4, 0x17

    .line 1182
    .line 1183
    const/4 v6, 0x0

    .line 1184
    invoke-direct {v3, v1, v6, v4}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 1185
    .line 1186
    .line 1187
    invoke-static {v2, v6, v6, v3, v10}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    iput-object v2, v1, Lme2;->h:Lir3;

    .line 1192
    .line 1193
    :cond_42
    iget-object v1, v0, Lwf3;->g0:Lme2;

    .line 1194
    .line 1195
    if-eqz v1, :cond_46

    .line 1196
    .line 1197
    iget v2, v8, Lvv2;->c:I

    .line 1198
    .line 1199
    const/4 v3, 0x6

    .line 1200
    if-ne v2, v3, :cond_46

    .line 1201
    .line 1202
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    .line 1203
    .line 1204
    .line 1205
    move-result v2

    .line 1206
    const/4 v3, 0x0

    .line 1207
    :goto_1c
    if-ge v3, v2, :cond_44

    .line 1208
    .line 1209
    move-object/from16 v11, v19

    .line 1210
    .line 1211
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v4

    .line 1215
    check-cast v4, Lzv2;

    .line 1216
    .line 1217
    invoke-virtual {v4}, Lzv2;->c()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v4

    .line 1221
    if-eqz v4, :cond_43

    .line 1222
    .line 1223
    goto :goto_1d

    .line 1224
    :cond_43
    add-int/lit8 v3, v3, 0x1

    .line 1225
    .line 1226
    move-object/from16 v19, v11

    .line 1227
    .line 1228
    goto :goto_1c

    .line 1229
    :cond_44
    move-object/from16 v11, v19

    .line 1230
    .line 1231
    if-ne v9, v13, :cond_45

    .line 1232
    .line 1233
    iget-boolean v2, v1, Lwm2;->d:Z

    .line 1234
    .line 1235
    if-eqz v2, :cond_45

    .line 1236
    .line 1237
    invoke-virtual {v1, v8}, Lme2;->f(Lvv2;)Z

    .line 1238
    .line 1239
    .line 1240
    invoke-static {v8}, Lwm2;->a(Lvv2;)V

    .line 1241
    .line 1242
    .line 1243
    :cond_45
    if-ne v9, v12, :cond_47

    .line 1244
    .line 1245
    iget-boolean v2, v1, Lwm2;->d:Z

    .line 1246
    .line 1247
    if-nez v2, :cond_47

    .line 1248
    .line 1249
    invoke-virtual {v1, v8}, Lme2;->f(Lvv2;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v1

    .line 1253
    if-eqz v1, :cond_47

    .line 1254
    .line 1255
    invoke-static {v8}, Lwm2;->a(Lvv2;)V

    .line 1256
    .line 1257
    .line 1258
    goto :goto_1d

    .line 1259
    :cond_46
    move-object/from16 v11, v19

    .line 1260
    .line 1261
    :cond_47
    :goto_1d
    const/16 v15, 0xc

    .line 1262
    .line 1263
    const/16 v1, 0xb

    .line 1264
    .line 1265
    const/16 v2, 0xa

    .line 1266
    .line 1267
    if-ne v9, v13, :cond_4b

    .line 1268
    .line 1269
    iget v3, v8, Lvv2;->c:I

    .line 1270
    .line 1271
    if-ne v3, v2, :cond_48

    .line 1272
    .line 1273
    goto :goto_1e

    .line 1274
    :cond_48
    if-ne v3, v1, :cond_49

    .line 1275
    .line 1276
    goto :goto_1e

    .line 1277
    :cond_49
    if-ne v3, v15, :cond_4b

    .line 1278
    .line 1279
    :goto_1e
    iget-object v3, v0, Lwf3;->h0:Lz04;

    .line 1280
    .line 1281
    if-nez v3, :cond_4a

    .line 1282
    .line 1283
    new-instance v3, Lz04;

    .line 1284
    .line 1285
    new-instance v0, Lja0;

    .line 1286
    .line 1287
    const/4 v6, 0x4

    .line 1288
    const/4 v7, 0x2

    .line 1289
    move v4, v1

    .line 1290
    const/4 v1, 0x2

    .line 1291
    move-object v5, v3

    .line 1292
    const-class v3, Lwf3;

    .line 1293
    .line 1294
    move/from16 v16, v4

    .line 1295
    .line 1296
    const-string v4, "onTrackpadScrollStopped"

    .line 1297
    .line 1298
    move-object/from16 v17, v5

    .line 1299
    .line 1300
    const-string v5, "onTrackpadScrollStopped-TH1AsA0(J)V"

    .line 1301
    .line 1302
    move-object/from16 v2, p0

    .line 1303
    .line 1304
    move-object/from16 v15, v17

    .line 1305
    .line 1306
    invoke-direct/range {v0 .. v7}, Lja0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1307
    .line 1308
    .line 1309
    move-object v1, v0

    .line 1310
    move-object v0, v2

    .line 1311
    invoke-static {v0}, Lw80;->R(Ljr0;)Lxy1;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v2

    .line 1315
    iget-object v2, v2, Lxy1;->L:Las0;

    .line 1316
    .line 1317
    invoke-direct {v15, v14, v1, v2}, Lz04;-><init>(Ldg3;Lja0;Las0;)V

    .line 1318
    .line 1319
    .line 1320
    iput-object v15, v0, Lwf3;->h0:Lz04;

    .line 1321
    .line 1322
    :cond_4a
    iget-object v1, v0, Lwf3;->h0:Lz04;

    .line 1323
    .line 1324
    if-eqz v1, :cond_4b

    .line 1325
    .line 1326
    invoke-virtual {v0}, Lmd2;->u0()Lqi0;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v2

    .line 1330
    iget-object v3, v1, Lz04;->g:Lir3;

    .line 1331
    .line 1332
    if-nez v3, :cond_4b

    .line 1333
    .line 1334
    new-instance v3, Lqd;

    .line 1335
    .line 1336
    const/4 v6, 0x0

    .line 1337
    invoke-direct {v3, v1, v6}, Lqd;-><init>(Lz04;Ldh0;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-static {v2, v6, v6, v3, v10}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    iput-object v2, v1, Lz04;->g:Lir3;

    .line 1345
    .line 1346
    :cond_4b
    iget-object v0, v0, Lwf3;->h0:Lz04;

    .line 1347
    .line 1348
    if-eqz v0, :cond_51

    .line 1349
    .line 1350
    iget v1, v8, Lvv2;->c:I

    .line 1351
    .line 1352
    const/16 v2, 0xa

    .line 1353
    .line 1354
    if-ne v1, v2, :cond_4c

    .line 1355
    .line 1356
    goto :goto_1f

    .line 1357
    :cond_4c
    const/16 v4, 0xb

    .line 1358
    .line 1359
    if-ne v1, v4, :cond_4d

    .line 1360
    .line 1361
    goto :goto_1f

    .line 1362
    :cond_4d
    const/16 v2, 0xc

    .line 1363
    .line 1364
    if-ne v1, v2, :cond_51

    .line 1365
    .line 1366
    :goto_1f
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 1367
    .line 1368
    .line 1369
    move-result v1

    .line 1370
    const/4 v2, 0x0

    .line 1371
    :goto_20
    if-ge v2, v1, :cond_4f

    .line 1372
    .line 1373
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v3

    .line 1377
    check-cast v3, Lzv2;

    .line 1378
    .line 1379
    invoke-virtual {v3}, Lzv2;->c()Z

    .line 1380
    .line 1381
    .line 1382
    move-result v3

    .line 1383
    if-eqz v3, :cond_4e

    .line 1384
    .line 1385
    goto :goto_21

    .line 1386
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    .line 1387
    .line 1388
    goto :goto_20

    .line 1389
    :cond_4f
    if-ne v9, v13, :cond_50

    .line 1390
    .line 1391
    iget-boolean v1, v0, Lwm2;->d:Z

    .line 1392
    .line 1393
    if-eqz v1, :cond_50

    .line 1394
    .line 1395
    invoke-virtual {v0, v8}, Lz04;->d(Lvv2;)Z

    .line 1396
    .line 1397
    .line 1398
    invoke-static {v8}, Lwm2;->a(Lvv2;)V

    .line 1399
    .line 1400
    .line 1401
    :cond_50
    if-ne v9, v12, :cond_51

    .line 1402
    .line 1403
    iget-boolean v1, v0, Lwm2;->d:Z

    .line 1404
    .line 1405
    if-nez v1, :cond_51

    .line 1406
    .line 1407
    invoke-virtual {v0, v8}, Lz04;->d(Lvv2;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v0

    .line 1411
    if-eqz v0, :cond_51

    .line 1412
    .line 1413
    invoke-static {v8}, Lwm2;->a(Lvv2;)V

    .line 1414
    .line 1415
    .line 1416
    :cond_51
    :goto_21
    return-void
.end method

.method public final M0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwf3;->I:Lzw0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lwf3;->G:Lvf2;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lyw0;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lyw0;-><init>(Lzw0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lvf2;->c(Lws1;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lwf3;->I:Lzw0;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final N0()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lwf3;->M:J

    .line 4
    .line 5
    iget-object v0, p0, Lwf3;->L:Liw0;

    .line 6
    .line 7
    sget-object v1, Lhw0;->p:Lhw0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Liw0;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Liw0;->r:Lhw0;

    .line 18
    .line 19
    iput-boolean v2, v0, Liw0;->s:Z

    .line 20
    .line 21
    iput-boolean v2, v0, Liw0;->t:Z

    .line 22
    .line 23
    iput-object v0, p0, Lwf3;->L:Liw0;

    .line 24
    .line 25
    :cond_0
    iput-object v1, v0, Liw0;->r:Lhw0;

    .line 26
    .line 27
    iput-boolean v2, v0, Liw0;->s:Z

    .line 28
    .line 29
    iput-boolean v2, v0, Liw0;->t:Z

    .line 30
    .line 31
    iput-object v0, p0, Lwf3;->S:Lht4;

    .line 32
    .line 33
    return-void
.end method

.method public final O0(Lzv2;JLlj1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwf3;->R:Ljw0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljw0;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Ljw0;->r:Lzv2;

    .line 12
    .line 13
    const-wide v1, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, v0, Ljw0;->s:J

    .line 19
    .line 20
    iput-object v0, p0, Lwf3;->R:Ljw0;

    .line 21
    .line 22
    :cond_0
    iput-object p1, v0, Ljw0;->r:Lzv2;

    .line 23
    .line 24
    iput-wide p2, v0, Ljw0;->s:J

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    iput-wide p1, p4, Llj1;->n:J

    .line 29
    .line 30
    iput-object v0, p0, Lwf3;->S:Lht4;

    .line 31
    .line 32
    return-void
.end method

.method public final Q0(Lqw0;)V
    .locals 1

    .line 1
    instance-of v0, p1, Low0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lwf3;->J:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lwf3;->J:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lwf3;->Y0()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lwf3;->T0()Ln30;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0, p1}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final R(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lwf3;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lk30;->c(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    sget-wide v4, Lnx1;->n:J

    .line 15
    .line 16
    invoke-static {v2, v3, v4, v5}, Lnx1;->a(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Lk30;->c(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    sget-wide v4, Lnx1;->m:J

    .line 31
    .line 32
    invoke-static {v2, v3, v4, v5}, Lnx1;->a(JJ)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    :cond_0
    invoke-static {p1}, Ltv4;->z(Landroid/view/KeyEvent;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne v0, v2, :cond_5

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Lwf3;->a0:Ldg3;

    .line 52
    .line 53
    iget-object v0, v0, Ldg3;->d:Lhr2;

    .line 54
    .line 55
    sget-object v2, Lhr2;->n:Lhr2;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    if-ne v0, v2, :cond_1

    .line 59
    .line 60
    move v1, v3

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    const/16 v2, 0x20

    .line 63
    .line 64
    const-wide v4, 0xffffffffL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lwf3;->d0:Lfg0;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v6}, Lfg0;->H0()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    and-long/2addr v6, v4

    .line 78
    long-to-int v1, v6

    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {p1}, Lk30;->c(I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    sget-wide v8, Lnx1;->m:J

    .line 88
    .line 89
    invoke-static {v6, v7, v8, v9}, Lnx1;->a(JJ)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    int-to-float p1, v1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    int-to-float p1, v1

    .line 98
    neg-float p1, p1

    .line 99
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    int-to-long v0, v0

    .line 104
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    int-to-long v6, p1

    .line 109
    shl-long/2addr v0, v2

    .line 110
    and-long/2addr v4, v6

    .line 111
    or-long/2addr v0, v4

    .line 112
    :goto_1
    move-wide v6, v0

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {v6}, Lfg0;->H0()J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    shr-long/2addr v6, v2

    .line 119
    long-to-int v1, v6

    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p1}, Lk30;->c(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v6

    .line 128
    sget-wide v8, Lnx1;->m:J

    .line 129
    .line 130
    invoke-static {v6, v7, v8, v9}, Lnx1;->a(JJ)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_4

    .line 135
    .line 136
    int-to-float p1, v1

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    int-to-float p1, v1

    .line 139
    neg-float p1, p1

    .line 140
    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    int-to-long v6, p1

    .line 145
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    int-to-long v0, p1

    .line 150
    shl-long/2addr v6, v2

    .line 151
    and-long/2addr v0, v4

    .line 152
    or-long/2addr v0, v6

    .line 153
    goto :goto_1

    .line 154
    :goto_3
    invoke-virtual {p0}, Lmd2;->u0()Lqi0;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    new-instance v4, Luf3;

    .line 159
    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v8, 0x0

    .line 162
    move-object v5, p0

    .line 163
    invoke-direct/range {v4 .. v9}, Luf3;-><init>(Ljava/lang/Object;JLdh0;I)V

    .line 164
    .line 165
    .line 166
    const/4 p0, 0x3

    .line 167
    invoke-static {p1, v8, v8, v4, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 168
    .line 169
    .line 170
    return v3

    .line 171
    :cond_5
    return v1
.end method

.method public final R0(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final S0(Lpw0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwf3;->Y:Ltk2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltk2;->c()Lqi0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ld93;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, p1, p0, v3, v2}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x3

    .line 15
    invoke-static {v0, v3, v3, v1, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final T0()Ln30;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf3;->H:Lzy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Events channel not initialized."

    .line 7
    .line 8
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final U0()Lra3;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf3;->T:Lra3;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Velocity Tracker not initialized."

    .line 7
    .line 8
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final V0(Lzv2;J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lwf3;->M:J

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p3}, Lgo2;->e(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lwf3;->M:J

    .line 8
    .line 9
    invoke-virtual {p0}, Lwf3;->U0()Lra3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Ln44;->L(Lra3;Lzv2;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lwf3;->T0()Ln30;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Lnw0;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {p1, v0, p2, p3}, Lnw0;-><init>(ZJ)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, p1}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final W0(Lzv2;Lzv2;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwf3;->T:Lra3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lra3;

    .line 6
    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lra3;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lwf3;->T:Lra3;

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lwf3;->U0()Lra3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0, p1}, Ln44;->L(Lra3;Lzv2;)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p2, Lzv2;->c:J

    .line 22
    .line 23
    invoke-static {v0, v1, p3, p4}, Lgo2;->d(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    iget-object p4, p0, Lwf3;->E:Lpe1;

    .line 28
    .line 29
    iget p1, p1, Lzv2;->i:I

    .line 30
    .line 31
    new-instance v0, Lhw2;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lhw2;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p4, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-boolean p1, p0, Lwf3;->J:Z

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lwf3;->H:Lzy;

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    const p1, 0x7fffffff

    .line 57
    .line 58
    .line 59
    const/4 p4, 0x6

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-static {p1, p4, v0}, Lix;->c(IILvy;)Lzy;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lwf3;->H:Lzy;

    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Lwf3;->Y0()V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Lwf3;->T0()Ln30;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance p1, Low0;

    .line 75
    .line 76
    invoke-direct {p1, p2, p3}, Low0;-><init>(J)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, p1}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public final X0()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lwf3;->a0:Ldg3;

    .line 2
    .line 3
    iget-object v0, p0, Ldg3;->a:Lxf3;

    .line 4
    .line 5
    invoke-interface {v0}, Lxf3;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object p0, p0, Ldg3;->b:Lwa;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lwa;->e()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v0

    .line 22
    :goto_0
    if-eqz p0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    return v0

    .line 26
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final Y0()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lwf3;->J:Z

    .line 3
    .line 4
    iget-object v0, p0, Lwf3;->H:Lzy;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7fffffff

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-static {v0, v2, v1}, Lix;->c(IILvy;)Lzy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lwf3;->H:Lzy;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lmd2;->u0()Lqi0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Lxw0;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lxw0;-><init>(Lwf3;Ldh0;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x3

    .line 29
    invoke-static {v0, v1, v1, v2, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final Z0(Lwa;Lto0;Lvf2;Lhr2;Lxf3;ZZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lwf3;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, p6, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lwf3;->b0:Lsb0;

    .line 8
    .line 9
    iput-boolean p6, v0, Lsb0;->n:Z

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-nez p2, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Lwf3;->Z:Lto0;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    iget-object v4, p0, Lwf3;->a0:Ldg3;

    .line 21
    .line 22
    iget-object v5, v4, Ldg3;->a:Lxf3;

    .line 23
    .line 24
    invoke-static {v5, p5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    iput-object p5, v4, Ldg3;->a:Lxf3;

    .line 31
    .line 32
    move p5, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move p5, v2

    .line 35
    :goto_2
    iput-object p1, v4, Ldg3;->b:Lwa;

    .line 36
    .line 37
    iget-object v5, v4, Ldg3;->d:Lhr2;

    .line 38
    .line 39
    if-eq v5, p4, :cond_3

    .line 40
    .line 41
    iput-object p4, v4, Ldg3;->d:Lhr2;

    .line 42
    .line 43
    move p5, v1

    .line 44
    :cond_3
    iget-boolean v5, v4, Ldg3;->e:Z

    .line 45
    .line 46
    if-eq v5, p7, :cond_4

    .line 47
    .line 48
    iput-boolean p7, v4, Ldg3;->e:Z

    .line 49
    .line 50
    move p5, v1

    .line 51
    :cond_4
    iput-object v3, v4, Ldg3;->c:Lto0;

    .line 52
    .line 53
    iget-object v3, p0, Lwf3;->Y:Ltk2;

    .line 54
    .line 55
    iput-object v3, v4, Ldg3;->f:Ltk2;

    .line 56
    .line 57
    iget-object v3, p0, Lwf3;->d0:Lfg0;

    .line 58
    .line 59
    iput-object p4, v3, Lfg0;->B:Lhr2;

    .line 60
    .line 61
    iput-boolean p7, v3, Lfg0;->D:Z

    .line 62
    .line 63
    iput-object p1, p0, Lwf3;->W:Lwa;

    .line 64
    .line 65
    iput-object p2, p0, Lwf3;->X:Lto0;

    .line 66
    .line 67
    sget-object p1, Lrf3;->a:Ljd3;

    .line 68
    .line 69
    iget-object p2, v4, Ldg3;->d:Lhr2;

    .line 70
    .line 71
    sget-object p4, Lhr2;->n:Lhr2;

    .line 72
    .line 73
    if-ne p2, p4, :cond_5

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    sget-object p4, Lhr2;->o:Lhr2;

    .line 77
    .line 78
    :goto_3
    iput-object p1, p0, Lwf3;->E:Lpe1;

    .line 79
    .line 80
    iget-boolean p1, p0, Lwf3;->F:Z

    .line 81
    .line 82
    const/4 p2, 0x0

    .line 83
    if-eq p1, p6, :cond_9

    .line 84
    .line 85
    iput-boolean p6, p0, Lwf3;->F:Z

    .line 86
    .line 87
    if-nez p6, :cond_8

    .line 88
    .line 89
    iget-object p1, p0, Lwf3;->O:Lxg1;

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lkr0;->H0(Ljr0;)V

    .line 94
    .line 95
    .line 96
    :cond_6
    iget-object p1, p0, Lwf3;->N:Lxg1;

    .line 97
    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lkr0;->H0(Ljr0;)V

    .line 101
    .line 102
    .line 103
    :cond_7
    iput-object p2, p0, Lwf3;->O:Lxg1;

    .line 104
    .line 105
    iput-object p2, p0, Lwf3;->N:Lxg1;

    .line 106
    .line 107
    invoke-virtual {p0}, Lwf3;->M0()V

    .line 108
    .line 109
    .line 110
    iput-object p2, p0, Lwf3;->V:Liq1;

    .line 111
    .line 112
    :cond_8
    move p5, v1

    .line 113
    :cond_9
    iget-object p1, p0, Lwf3;->G:Lvf2;

    .line 114
    .line 115
    invoke-static {p1, p3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_a

    .line 120
    .line 121
    invoke-virtual {p0}, Lwf3;->M0()V

    .line 122
    .line 123
    .line 124
    iput-object p3, p0, Lwf3;->G:Lvf2;

    .line 125
    .line 126
    :cond_a
    iget-object p1, p0, Lwf3;->D:Lhr2;

    .line 127
    .line 128
    if-eq p1, p4, :cond_b

    .line 129
    .line 130
    iput-object p4, p0, Lwf3;->D:Lhr2;

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_b
    move v1, p5

    .line 134
    :goto_4
    if-eqz v1, :cond_f

    .line 135
    .line 136
    iget-boolean p1, p0, Lwf3;->K:Z

    .line 137
    .line 138
    sget-object p3, Lmw0;->a:Lmw0;

    .line 139
    .line 140
    if-eqz p1, :cond_d

    .line 141
    .line 142
    invoke-virtual {p0}, Lwf3;->N0()V

    .line 143
    .line 144
    .line 145
    iget-boolean p1, p0, Lwf3;->J:Z

    .line 146
    .line 147
    if-eqz p1, :cond_c

    .line 148
    .line 149
    invoke-virtual {p0}, Lwf3;->T0()Ln30;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1, p3}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_c
    iput-object p2, p0, Lwf3;->T:Lra3;

    .line 157
    .line 158
    :cond_d
    iget-object p1, p0, Lwf3;->V:Liq1;

    .line 159
    .line 160
    if-eqz p1, :cond_f

    .line 161
    .line 162
    invoke-virtual {p1}, Liq1;->a()V

    .line 163
    .line 164
    .line 165
    iget-object p4, p1, Liq1;->n:Lwf3;

    .line 166
    .line 167
    iget-boolean p5, p4, Lwf3;->J:Z

    .line 168
    .line 169
    if-eqz p5, :cond_e

    .line 170
    .line 171
    invoke-virtual {p4, p3}, Lwf3;->Q0(Lqw0;)V

    .line 172
    .line 173
    .line 174
    :cond_e
    iput-object p2, p1, Liq1;->t:Lra3;

    .line 175
    .line 176
    iget-object p1, p1, Liq1;->w:Ld90;

    .line 177
    .line 178
    iput v2, p1, Ld90;->o:I

    .line 179
    .line 180
    iget-object p1, p1, Ld90;->p:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p1, Lxf2;

    .line 183
    .line 184
    iput v2, p1, Lxf2;->b:I

    .line 185
    .line 186
    :cond_f
    if-eqz v0, :cond_10

    .line 187
    .line 188
    iput-object p2, p0, Lwf3;->e0:Lsp0;

    .line 189
    .line 190
    iput-object p2, p0, Lwf3;->f0:Luf3;

    .line 191
    .line 192
    invoke-static {p0}, Lw80;->A(Leh3;)V

    .line 193
    .line 194
    .line 195
    :cond_10
    return-void
.end method

.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lwf3;->c0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lxy1;->L:Las0;

    .line 14
    .line 15
    iget-object v1, p0, Lwf3;->Z:Lto0;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Ldd1;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ldd1;-><init>(Las0;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lsn0;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Lsn0;-><init>(Ldd1;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, v1, Lto0;->a:Lsn0;

    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lwf3;->g0:Lme2;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Lxy1;->L:Las0;

    .line 41
    .line 42
    iput-object v1, v0, Lwm2;->c:Las0;

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lwf3;->h0:Lz04;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p0, p0, Lxy1;->L:Las0;

    .line 53
    .line 54
    iput-object p0, v0, Lwm2;->c:Las0;

    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final a0(Lph3;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lwf3;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lwf3;->e0:Lsp0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lwf3;->f0:Luf3;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lsp0;

    .line 15
    .line 16
    const/16 v2, 0x11

    .line 17
    .line 18
    invoke-direct {v0, v2, p0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lwf3;->e0:Lsp0;

    .line 22
    .line 23
    new-instance v0, Luf3;

    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Luf3;-><init>(Lwf3;Ldh0;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lwf3;->f0:Luf3;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lwf3;->e0:Lsp0;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget-object v2, Lnh3;->a:[Lkx1;

    .line 35
    .line 36
    sget-object v2, Lah3;->d:Loh3;

    .line 37
    .line 38
    new-instance v3, Lo2;

    .line 39
    .line 40
    invoke-direct {v3, v1, v0}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v2, v3}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p0, p0, Lwf3;->f0:Luf3;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    sget-object v0, Lnh3;->a:[Lkx1;

    .line 51
    .line 52
    sget-object v0, Lah3;->e:Loh3;

    .line 53
    .line 54
    invoke-interface {p1, v0, p0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method public final c0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lwf3;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lwf3;->N0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lwf3;->J:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lwf3;->T0()Ln30;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lmw0;->a:Lmw0;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lwf3;->T:Lra3;

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lwf3;->K:Z

    .line 26
    .line 27
    return-void
.end method

.method public final i()Lhr2;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf3;->D:Lhr2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final o0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwf3;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object p0, p0, Lwf3;->S:Lht4;

    .line 6
    .line 7
    instance-of v0, p0, Liw0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Liw0;

    .line 12
    .line 13
    iget-boolean p0, p0, Liw0;->t:Z

    .line 14
    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p0, Lkw0;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p0, Ljw0;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :goto_0
    const-string p0, "waiting"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    instance-of p0, p0, Llw0;

    .line 31
    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    const-string p0, "recognized"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    const-string p0, "idle"

    .line 38
    .line 39
    return-object p0
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object p0, p0, Lwf3;->V:Liq1;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Liq1;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Liq1;->n:Lwf3;

    .line 9
    .line 10
    iget-boolean v1, v0, Lwf3;->J:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lmw0;->a:Lmw0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lwf3;->Q0(Lqw0;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Liq1;->t:Lra3;

    .line 21
    .line 22
    iget-object p0, p0, Liq1;->w:Ld90;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Ld90;->o:I

    .line 26
    .line 27
    iget-object p0, p0, Ld90;->p:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lxf2;

    .line 30
    .line 31
    iput v0, p0, Lxf2;->b:I

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final y0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lxy1;->L:Las0;

    .line 11
    .line 12
    iget-object v1, p0, Lwf3;->Z:Lto0;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v2, Ldd1;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ldd1;-><init>(Las0;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lsn0;

    .line 23
    .line 24
    invoke-direct {v0, v2}, Lsn0;-><init>(Ldd1;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, v1, Lto0;->a:Lsn0;

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lwf3;->g0:Lme2;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Lxy1;->L:Las0;

    .line 38
    .line 39
    iput-object v1, v0, Lwm2;->c:Las0;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lwf3;->h0:Lz04;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object p0, p0, Lxy1;->L:Las0;

    .line 50
    .line 51
    iput-object p0, v0, Lwm2;->c:Las0;

    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final z0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lwf3;->J:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lwf3;->M0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lwf3;->O:Lxg1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lkr0;->H0(Ljr0;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lwf3;->N:Lxg1;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lkr0;->H0(Ljr0;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lwf3;->O:Lxg1;

    .line 23
    .line 24
    iput-object v0, p0, Lwf3;->N:Lxg1;

    .line 25
    .line 26
    return-void
.end method
