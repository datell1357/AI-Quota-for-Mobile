.class public final Ldd1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lf6;
.implements Ll83;
.implements Liz2;
.implements Lyi0;
.implements Lz21;
.implements Luv2;
.implements Lkb3;
.implements Lxo2;
.implements Lx5;
.implements Lcf;
.implements Lla4;
.implements Ljp2;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    const/16 v0, 0x18

    iput v0, p0, Ldd1;->n:I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ly71;

    const v1, 0x3c23d70a    # 0.01f

    .line 145
    invoke-direct {v0, p1, p2, v1}, Ly71;-><init>(FFF)V

    .line 146
    iput-object v0, p0, Ldd1;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(FFLbf;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Ldd1;->n:I

    .line 138
    sget-object v0, Lja4;->a:[I

    if-eqz p3, :cond_0

    .line 139
    new-instance v0, Lra3;

    invoke-direct {v0, p1, p2, p3}, Lra3;-><init>(FFLbf;)V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ldd1;

    invoke-direct {v0, p1, p2}, Ldd1;-><init>(FF)V

    .line 141
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance p1, Lqd1;

    const/16 p2, 0x10

    invoke-direct {p1, p2, v0}, Lqd1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Ldd1;->n:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    .line 11
    .line 12
    return-void

    .line 13
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/util/EnumMap;

    .line 17
    .line 18
    const-class v0, Lx55;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    return-void

    .line 38
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    .line 47
    .line 48
    return-void

    .line 49
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const/16 v0, 0x1c

    .line 55
    .line 56
    const/16 v1, 0x13

    .line 57
    .line 58
    if-lt p1, v0, :cond_0

    .line 59
    .line 60
    new-instance p1, Lqz0;

    .line 61
    .line 62
    invoke-direct {p1, v1}, Lqz0;-><init>(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Lb21;

    .line 67
    .line 68
    invoke-direct {p1, v1}, Lb21;-><init>(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    .line 72
    .line 73
    return-void

    .line 74
    :sswitch_4
    new-instance p1, Lx92;

    .line 75
    .line 76
    invoke-direct {p1}, Lx92;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    .line 83
    .line 84
    iget-boolean p0, p1, Lx92;->o:Z

    .line 85
    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    iget-boolean p0, p1, Lx92;->p:Z

    .line 90
    .line 91
    if-eqz p0, :cond_2

    .line 92
    .line 93
    const-string p0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 94
    .line 95
    invoke-static {p0}, Ljx2;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p1}, Lx92;->a()V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x1

    .line 102
    iput-boolean p0, p1, Lx92;->p:Z

    .line 103
    .line 104
    :goto_1
    return-void

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x9 -> :sswitch_3
        0xc -> :sswitch_2
        0xe -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 137
    iput p1, p0, Ldd1;->n:I

    iput-object p2, p0, Ldd1;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 105
    iput p1, p0, Ldd1;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Las0;)V
    .locals 2

    const/16 v0, 0x12

    iput v0, p0, Ldd1;->n:I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lld;

    .line 113
    sget v1, Luq3;->a:F

    .line 114
    invoke-direct {v0, v1, p1}, Lld;-><init>(FLas0;)V

    iput-object v0, p0, Ldd1;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgt4;Lra3;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Ldd1;->n:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldd1;->o:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 2

    const/16 v0, 0x1d

    iput v0, p0, Ldd1;->n:I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lx55;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 109
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljn4;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Ldd1;->n:I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    iput-object p0, p1, Ljn4;->a:Ldd1;

    return-void
.end method

.method public constructor <init>(Lmu3;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Ldd1;->n:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo23;Lgw4;)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, Ldd1;->n:I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Ldd1;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([J)V
    .locals 5

    const/16 v0, 0x11

    iput v0, p0, Ldd1;->n:I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 118
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 119
    new-instance v0, Lxf2;

    array-length v1, p1

    invoke-direct {v0, v1}, Lxf2;-><init>(I)V

    .line 120
    iget v1, v0, Lxf2;->b:I

    if-ltz v1, :cond_3

    .line 121
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    .line 123
    iget-object v3, v0, Lxf2;->a:[J

    .line 124
    array-length v4, v3

    if-ge v4, v2, :cond_1

    .line 125
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 126
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, v0, Lxf2;->a:[J

    .line 127
    :cond_1
    iget-object v2, v0, Lxf2;->a:[J

    .line 128
    iget v3, v0, Lxf2;->b:I

    if-eq v1, v3, :cond_2

    .line 129
    array-length v4, p1

    add-int/2addr v4, v1

    .line 130
    invoke-static {v2, v2, v4, v1, v3}, Lji;->P([J[JIII)V

    .line 131
    :cond_2
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v2, v1, v4, v3}, Lji;->P([J[JIII)V

    .line 132
    iget v1, v0, Lxf2;->b:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Lxf2;->b:I

    goto :goto_0

    .line 133
    :cond_3
    const-string p0, ""

    .line 134
    invoke-static {p0}, Lmk0;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 135
    :cond_4
    new-instance v0, Lxf2;

    invoke-direct {v0}, Lxf2;-><init>()V

    .line 136
    :goto_0
    iput-object v0, p0, Ldd1;->o:Ljava/lang/Object;

    return-void
.end method

.method public static u(Ldd1;I)Lm02;
    .locals 8

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ln12;

    .line 4
    .line 5
    invoke-static {}, Lk75;->x()Lpo3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lpo3;->e()Lpe1;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lk75;->E(Lpo3;)Lpo3;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :try_start_0
    iget-object v3, p0, Ln12;->f:Lws2;

    .line 22
    .line 23
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lf12;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ln12;->q:Ln02;

    .line 33
    .line 34
    iget-wide v1, v3, Lf12;->j:J

    .line 35
    .line 36
    iget-boolean p0, p0, Ln12;->d:Z

    .line 37
    .line 38
    new-instance v4, Lt3;

    .line 39
    .line 40
    invoke-direct {v4, p1, v3}, Lt3;-><init>(ILf12;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Ln02;->c:Lmu0;

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    iget-object v0, v0, Ln02;->b:Leh;

    .line 48
    .line 49
    new-instance v5, Lcy2;

    .line 50
    .line 51
    iget-object v6, v3, Lmu0;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v6, Ldy2;

    .line 54
    .line 55
    instance-of v7, v6, Lac;

    .line 56
    .line 57
    invoke-direct {v5, v3, p1, v0, v4}, Lcy2;-><init>(Lmu0;ILeh;Lt3;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lmf0;

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Lmf0;-><init>(J)V

    .line 63
    .line 64
    .line 65
    iput-object v0, v5, Lcy2;->q:Lmf0;

    .line 66
    .line 67
    if-eqz v7, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    if-eqz p0, :cond_1

    .line 71
    .line 72
    check-cast v6, Lac;

    .line 73
    .line 74
    iget-object p0, v6, Lac;->o:Ljava/util/PriorityQueue;

    .line 75
    .line 76
    new-instance v1, Lty2;

    .line 77
    .line 78
    invoke-direct {v1, v0, v5}, Lty2;-><init>(ILcy2;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-boolean p0, v6, Lac;->p:Z

    .line 85
    .line 86
    if-nez p0, :cond_3

    .line 87
    .line 88
    iput-boolean v0, v6, Lac;->p:Z

    .line 89
    .line 90
    iget-object p0, v6, Lac;->n:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    check-cast v6, Lac;

    .line 97
    .line 98
    iget-object p0, v6, Lac;->o:Ljava/util/PriorityQueue;

    .line 99
    .line 100
    new-instance v1, Lty2;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-direct {v1, v2, v5}, Lty2;-><init>(ILcy2;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    iget-boolean p0, v6, Lac;->p:Z

    .line 110
    .line 111
    if-nez p0, :cond_3

    .line 112
    .line 113
    iput-boolean v0, v6, Lac;->p:Z

    .line 114
    .line 115
    iget-object p0, v6, Lac;->n:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {v6, v5}, Ldy2;->a(Lcy2;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    const-string p0, "compose:lazy:schedule_prefetch:index"

    .line 125
    .line 126
    int-to-long v0, p1

    .line 127
    invoke-static {v0, v1, p0}, Lkt4;->h0(JLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object v5

    .line 131
    :cond_4
    sget-object p0, Lw13;->y:Lw13;

    .line 132
    .line 133
    return-object p0

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    invoke-static {v0, v2, v1}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 136
    .line 137
    .line 138
    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lqd1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public b(Lxi0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lpe1;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public c(Lbf;Lbf;Lbf;)J
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lqd1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lqd1;->c(Lbf;Lbf;Lbf;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public d(Ljava/lang/String;)Ljb3;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lju3;

    .line 5
    .line 6
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lmu3;

    .line 9
    .line 10
    invoke-interface {p0}, Lmu3;->f0()Lee1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {p1, p0}, Lju3;-><init>(Lee1;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public e()Li23;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Ldd1;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Lu23;

    .line 6
    .line 7
    iget-object v2, v2, Lu23;->k:Lh23;

    .line 8
    .line 9
    iget-boolean v2, v2, Lh23;->C:Z

    .line 10
    .line 11
    if-nez v2, :cond_6

    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Ldd1;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lu23;

    .line 16
    .line 17
    invoke-virtual {v2}, Lu23;->b()Lwa3;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Lwa3;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_3

    .line 26
    .line 27
    invoke-interface {v2}, Lwa3;->e()Lva3;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, v3, Lva3;->b:Lwa3;

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    iget-object v4, v3, Lva3;->c:Ljava/lang/Throwable;

    .line 36
    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    :goto_1
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-interface {v2}, Lwa3;->b()Lva3;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception v2

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    :goto_2
    iget-object v4, v3, Lva3;->b:Lwa3;

    .line 52
    .line 53
    iget-object v3, v3, Lva3;->c:Ljava/lang/Throwable;

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Ldd1;->o:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lu23;

    .line 62
    .line 63
    iget-object v2, v2, Lu23;->p:Lvh;

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    throw v3

    .line 70
    :cond_3
    invoke-interface {v2}, Lwa3;->c()Li23;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object p0

    .line 75
    :goto_3
    if-nez v1, :cond_4

    .line 76
    .line 77
    move-object v1, v2

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    invoke-static {v1, v2}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_4
    iget-object v2, p0, Ldd1;->o:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lu23;

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Lu23;->a(Li23;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    throw v1

    .line 94
    :cond_6
    const-string p0, "Canceled"

    .line 95
    .line 96
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le6;

    .line 2
    .line 3
    iget-object v0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lhd1;

    .line 6
    .line 7
    iget-object v1, v0, Lhd1;->C:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Led1;

    .line 14
    .line 15
    const-string v2, "FragmentManager"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "No Activities were started for result for "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p0, v1, Led1;->n:Ljava/lang/String;

    .line 38
    .line 39
    iget v1, v1, Led1;->o:I

    .line 40
    .line 41
    iget-object v0, v0, Lhd1;->c:Lqd1;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lqd1;->u(Ljava/lang/String;)Llc1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "Activity result delivered for unknown Fragment "

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget p0, p1, Le6;->n:I

    .line 68
    .line 69
    iget-object p1, p1, Le6;->o:Landroid/content/Intent;

    .line 70
    .line 71
    invoke-virtual {v0, v1, p0, p1}, Llc1;->onActivityResult(IILandroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public g()Lu23;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lu23;

    .line 4
    .line 5
    return-object p0
.end method

.method public get(I)Ls71;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ly71;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lra3;

    .line 6
    .line 7
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lpw3;

    .line 10
    .line 11
    iget-object p0, p0, Lpw3;->a:Lef5;

    .line 12
    .line 13
    invoke-virtual {p0}, Lef5;->q()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v1, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lax1;

    .line 7
    .line 8
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltv1;

    .line 11
    .line 12
    iget-object v2, p0, Ltv1;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    iget-object v3, p0, Ltv1;->b:Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object v4, p0, Ltv1;->c:Lqv1;

    .line 17
    .line 18
    iget-boolean v5, p0, Ltv1;->d:Z

    .line 19
    .line 20
    invoke-direct/range {v0 .. v5}, Lax1;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lqv1;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lax1;->h(Ljava/lang/Object;)Lax1;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lax1;->j()V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lax1;->b:Landroid/util/JsonWriter;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public j(FF)J
    .locals 5

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [F

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-long p1, p1

    .line 15
    const/16 v2, 0x20

    .line 16
    .line 17
    shl-long/2addr v0, v2

    .line 18
    const-wide v3, 0xffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr p1, v3

    .line 24
    or-long/2addr p1, v0

    .line 25
    invoke-static {p0, p1, p2}, Lxa2;->b([FJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    shr-long v0, p0, v2

    .line 30
    .line 31
    long-to-int p2, v0

    .line 32
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    and-long/2addr p0, v3

    .line 37
    long-to-int p0, p0

    .line 38
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {p2, p0}, Lv71;->a(FF)J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    return-wide p0
.end method

.method public l()V
    .locals 1

    .line 1
    const-string p0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 2
    .line 3
    const-string v0, "ProfileInstaller"

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public m(JLbf;Lbf;Lbf;)Lbf;
    .locals 6

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lqd1;

    .line 5
    .line 6
    move-wide v1, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lqd1;->m(JLbf;Lbf;Lbf;)Lbf;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public n(ILjava/lang/Object;)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x6

    .line 37
    const-string v2, "ProfileInstaller"

    .line 38
    .line 39
    if-eq p1, v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    if-eq p1, v1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onComplete(Low3;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lef5;

    .line 9
    .line 10
    iget-boolean v0, v0, Lef5;->d:Z

    .line 11
    .line 12
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lo20;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lo20;->l(Ljava/lang/Throwable;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Low3;->g()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lo20;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lo20;

    .line 34
    .line 35
    new-instance p1, Lf83;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lo20;->g(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public p(JLbf;Lbf;Lbf;)Lbf;
    .locals 6

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lqd1;

    .line 5
    .line 6
    move-wide v1, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lqd1;->p(JLbf;Lbf;Lbf;)Lbf;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public q(Lbf;Lbf;Lbf;)Lbf;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lqd1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lqd1;->q(Lbf;Lbf;Lbf;)Lbf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public r(Ljo1;Lqb2;Lln3;Lrd3;)Lrb2;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Ljo1;->i:Ly00;

    .line 8
    .line 9
    iget-object v4, v0, Ljo1;->q:Lcx2;

    .line 10
    .line 11
    iget-boolean v3, v3, Ly00;->n:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_17

    .line 17
    .line 18
    :cond_0
    move-object/from16 v3, p0

    .line 19
    .line 20
    iget-object v3, v3, Ldd1;->o:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Lo23;

    .line 23
    .line 24
    invoke-virtual {v3}, Lo23;->c()Ls23;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v3, :cond_b

    .line 30
    .line 31
    iget-object v8, v3, Ls23;->c:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v8

    .line 34
    :try_start_0
    iget-object v9, v3, Ls23;->a:Lt82;

    .line 35
    .line 36
    iget-object v9, v9, Lt82;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v9, Lx23;

    .line 39
    .line 40
    iget-object v9, v9, Lx23;->p:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v9, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    check-cast v9, Lw23;

    .line 49
    .line 50
    if-eqz v9, :cond_1

    .line 51
    .line 52
    new-instance v10, Lrb2;

    .line 53
    .line 54
    iget-object v11, v9, Lw23;->a:Lao1;

    .line 55
    .line 56
    iget-object v9, v9, Lw23;->b:Ljava/util/Map;

    .line 57
    .line 58
    invoke-direct {v10, v11, v9}, Lrb2;-><init>(Lao1;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v10, v5

    .line 63
    :goto_0
    if-nez v10, :cond_6

    .line 64
    .line 65
    iget-object v9, v3, Ls23;->b:Ld90;

    .line 66
    .line 67
    iget-object v10, v9, Ld90;->p:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v10, Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    check-cast v10, Ljava/util/ArrayList;

    .line 76
    .line 77
    if-nez v10, :cond_2

    .line 78
    .line 79
    move-object v10, v5

    .line 80
    goto :goto_4

    .line 81
    :cond_2
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    move v12, v6

    .line 86
    :goto_1
    if-ge v12, v11, :cond_5

    .line 87
    .line 88
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    check-cast v13, Lz23;

    .line 93
    .line 94
    iget-object v14, v13, Lz23;->a:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    check-cast v14, Lao1;

    .line 101
    .line 102
    if-eqz v14, :cond_3

    .line 103
    .line 104
    new-instance v15, Lrb2;

    .line 105
    .line 106
    iget-object v13, v13, Lz23;->b:Ljava/util/Map;

    .line 107
    .line 108
    invoke-direct {v15, v14, v13}, Lrb2;-><init>(Lao1;Ljava/util/Map;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move-object v15, v5

    .line 113
    :goto_2
    if-eqz v15, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    move-object v15, v5

    .line 120
    :goto_3
    invoke-virtual {v9}, Ld90;->c()V

    .line 121
    .line 122
    .line 123
    move-object v10, v15

    .line 124
    goto :goto_4

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto :goto_8

    .line 127
    :cond_6
    :goto_4
    if-eqz v10, :cond_a

    .line 128
    .line 129
    iget-object v9, v10, Lrb2;->a:Lao1;

    .line 130
    .line 131
    invoke-interface {v9}, Lao1;->c()Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-nez v9, :cond_a

    .line 136
    .line 137
    iget-object v9, v3, Ls23;->c:Ljava/lang/Object;

    .line 138
    .line 139
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    iget-object v11, v3, Ls23;->a:Lt82;

    .line 141
    .line 142
    iget-object v11, v11, Lt82;->c:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v11, Lx23;

    .line 145
    .line 146
    iget-object v12, v11, Lx23;->p:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v12, Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    invoke-interface {v12, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    if-eqz v12, :cond_7

    .line 155
    .line 156
    invoke-virtual {v11}, Lx23;->d()J

    .line 157
    .line 158
    .line 159
    move-result-wide v13

    .line 160
    invoke-virtual {v11, v1, v12}, Lx23;->g(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v15

    .line 164
    sub-long/2addr v13, v15

    .line 165
    iput-wide v13, v11, Lx23;->o:J

    .line 166
    .line 167
    invoke-virtual {v11, v1, v12, v5}, Lx23;->b(Ljava/lang/Object;Ljava/lang/Object;Lw23;)V

    .line 168
    .line 169
    .line 170
    :cond_7
    if-eqz v12, :cond_8

    .line 171
    .line 172
    const/4 v11, 0x1

    .line 173
    goto :goto_5

    .line 174
    :cond_8
    move v11, v6

    .line 175
    :goto_5
    iget-object v3, v3, Ls23;->b:Ld90;

    .line 176
    .line 177
    iget-object v3, v3, Ld90;->p:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 180
    .line 181
    invoke-virtual {v3, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    if-eqz v3, :cond_9

    .line 186
    .line 187
    const/4 v3, 0x1

    .line 188
    goto :goto_6

    .line 189
    :cond_9
    move v3, v6

    .line 190
    :goto_6
    :try_start_2
    monitor-exit v9

    .line 191
    goto :goto_7

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    monitor-exit v9

    .line 194
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :cond_a
    :goto_7
    monitor-exit v8

    .line 196
    goto :goto_9

    .line 197
    :goto_8
    monitor-exit v8

    .line 198
    throw v0

    .line 199
    :cond_b
    move-object v10, v5

    .line 200
    :goto_9
    if-eqz v10, :cond_23

    .line 201
    .line 202
    iget-object v3, v10, Lrb2;->a:Lao1;

    .line 203
    .line 204
    instance-of v8, v3, Lkw;

    .line 205
    .line 206
    if-eqz v8, :cond_c

    .line 207
    .line 208
    move-object v8, v3

    .line 209
    check-cast v8, Lkw;

    .line 210
    .line 211
    goto :goto_a

    .line 212
    :cond_c
    move-object v8, v5

    .line 213
    :goto_a
    if-nez v8, :cond_d

    .line 214
    .line 215
    goto :goto_b

    .line 216
    :cond_d
    iget-object v8, v8, Lkw;->a:Landroid/graphics/Bitmap;

    .line 217
    .line 218
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    if-nez v8, :cond_e

    .line 223
    .line 224
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 225
    .line 226
    :cond_e
    invoke-static {v8}, Ltv4;->D(Landroid/graphics/Bitmap$Config;)Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v8, :cond_f

    .line 231
    .line 232
    goto :goto_b

    .line 233
    :cond_f
    sget-object v8, Lno1;->f:Li3;

    .line 234
    .line 235
    invoke-static {v0, v8}, Lk30;->w(Ljo1;Li3;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    check-cast v8, Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-nez v8, :cond_10

    .line 246
    .line 247
    return-object v5

    .line 248
    :cond_10
    :goto_b
    iget-object v1, v1, Lqb2;->b:Ljava/util/Map;

    .line 249
    .line 250
    const-string v8, "coil#size"

    .line 251
    .line 252
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v1, :cond_11

    .line 259
    .line 260
    invoke-virtual {v2}, Lln3;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_23

    .line 269
    .line 270
    goto/16 :goto_16

    .line 271
    .line 272
    :cond_11
    iget-object v1, v10, Lrb2;->b:Ljava/util/Map;

    .line 273
    .line 274
    const-string v8, "coil#is_sampled"

    .line 275
    .line 276
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    instance-of v8, v1, Ljava/lang/Boolean;

    .line 281
    .line 282
    if-eqz v8, :cond_12

    .line 283
    .line 284
    check-cast v1, Ljava/lang/Boolean;

    .line 285
    .line 286
    goto :goto_c

    .line 287
    :cond_12
    move-object v1, v5

    .line 288
    :goto_c
    if-eqz v1, :cond_13

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    :cond_13
    if-nez v6, :cond_14

    .line 295
    .line 296
    sget-object v1, Lln3;->c:Lln3;

    .line 297
    .line 298
    invoke-static {v2, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-nez v1, :cond_22

    .line 303
    .line 304
    sget-object v1, Lcx2;->o:Lcx2;

    .line 305
    .line 306
    if-ne v4, v1, :cond_14

    .line 307
    .line 308
    goto/16 :goto_16

    .line 309
    .line 310
    :cond_14
    invoke-interface {v3}, Lao1;->b()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-interface {v3}, Lao1;->a()I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    instance-of v3, v3, Lkw;

    .line 319
    .line 320
    if-eqz v3, :cond_15

    .line 321
    .line 322
    sget-object v3, Llo1;->b:Li3;

    .line 323
    .line 324
    invoke-static {v0, v3}, Lk30;->w(Ljo1;Li3;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Lln3;

    .line 329
    .line 330
    goto :goto_d

    .line 331
    :cond_15
    sget-object v0, Lln3;->c:Lln3;

    .line 332
    .line 333
    :goto_d
    iget-object v3, v2, Lln3;->a:Lcu0;

    .line 334
    .line 335
    instance-of v8, v3, Lau0;

    .line 336
    .line 337
    const v9, 0x7fffffff

    .line 338
    .line 339
    .line 340
    if-eqz v8, :cond_16

    .line 341
    .line 342
    check-cast v3, Lau0;

    .line 343
    .line 344
    iget v3, v3, Lau0;->a:I

    .line 345
    .line 346
    goto :goto_e

    .line 347
    :cond_16
    move v3, v9

    .line 348
    :goto_e
    iget-object v8, v0, Lln3;->a:Lcu0;

    .line 349
    .line 350
    instance-of v11, v8, Lau0;

    .line 351
    .line 352
    if-eqz v11, :cond_17

    .line 353
    .line 354
    check-cast v8, Lau0;

    .line 355
    .line 356
    iget v8, v8, Lau0;->a:I

    .line 357
    .line 358
    goto :goto_f

    .line 359
    :cond_17
    move v8, v9

    .line 360
    :goto_f
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    iget-object v2, v2, Lln3;->b:Lcu0;

    .line 365
    .line 366
    instance-of v8, v2, Lau0;

    .line 367
    .line 368
    if-eqz v8, :cond_18

    .line 369
    .line 370
    check-cast v2, Lau0;

    .line 371
    .line 372
    iget v2, v2, Lau0;->a:I

    .line 373
    .line 374
    goto :goto_10

    .line 375
    :cond_18
    move v2, v9

    .line 376
    :goto_10
    iget-object v0, v0, Lln3;->b:Lcu0;

    .line 377
    .line 378
    instance-of v8, v0, Lau0;

    .line 379
    .line 380
    if-eqz v8, :cond_19

    .line 381
    .line 382
    check-cast v0, Lau0;

    .line 383
    .line 384
    iget v0, v0, Lau0;->a:I

    .line 385
    .line 386
    goto :goto_11

    .line 387
    :cond_19
    move v0, v9

    .line 388
    :goto_11
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    int-to-double v11, v3

    .line 393
    int-to-double v13, v1

    .line 394
    div-double/2addr v11, v13

    .line 395
    int-to-double v13, v0

    .line 396
    int-to-double v7, v6

    .line 397
    div-double/2addr v13, v7

    .line 398
    if-eq v3, v9, :cond_1a

    .line 399
    .line 400
    if-eq v0, v9, :cond_1a

    .line 401
    .line 402
    move-object/from16 v2, p4

    .line 403
    .line 404
    goto :goto_12

    .line 405
    :cond_1a
    sget-object v2, Lrd3;->o:Lrd3;

    .line 406
    .line 407
    :goto_12
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-eqz v2, :cond_1d

    .line 412
    .line 413
    const/4 v7, 0x1

    .line 414
    if-ne v2, v7, :cond_1c

    .line 415
    .line 416
    cmpg-double v2, v11, v13

    .line 417
    .line 418
    if-gez v2, :cond_1b

    .line 419
    .line 420
    sub-int/2addr v3, v1

    .line 421
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    :goto_13
    const/4 v7, 0x1

    .line 426
    goto :goto_15

    .line 427
    :cond_1b
    sub-int/2addr v0, v6

    .line 428
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    :goto_14
    move-wide v11, v13

    .line 433
    goto :goto_13

    .line 434
    :cond_1c
    invoke-static {}, Lp61;->x()V

    .line 435
    .line 436
    .line 437
    return-object v5

    .line 438
    :cond_1d
    cmpl-double v2, v11, v13

    .line 439
    .line 440
    if-lez v2, :cond_1e

    .line 441
    .line 442
    sub-int/2addr v3, v1

    .line 443
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    goto :goto_13

    .line 448
    :cond_1e
    sub-int/2addr v0, v6

    .line 449
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    goto :goto_14

    .line 454
    :goto_15
    if-gt v0, v7, :cond_1f

    .line 455
    .line 456
    goto :goto_16

    .line 457
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 462
    .line 463
    if-eqz v0, :cond_21

    .line 464
    .line 465
    if-ne v0, v7, :cond_20

    .line 466
    .line 467
    cmpg-double v0, v11, v1

    .line 468
    .line 469
    if-gtz v0, :cond_23

    .line 470
    .line 471
    goto :goto_16

    .line 472
    :cond_20
    invoke-static {}, Lp61;->x()V

    .line 473
    .line 474
    .line 475
    return-object v5

    .line 476
    :cond_21
    cmpg-double v0, v11, v1

    .line 477
    .line 478
    if-nez v0, :cond_23

    .line 479
    .line 480
    :cond_22
    :goto_16
    return-object v10

    .line 481
    :cond_23
    :goto_17
    return-object v5
.end method

.method public s(Ljo1;Ljava/lang/Object;Ler2;Lj21;)Lqb2;
    .locals 7

    .line 1
    iget-object p4, p1, Ljo1;->i:Ly00;

    .line 2
    .line 3
    iget-object v0, p1, Ljo1;->d:Ljava/util/Map;

    .line 4
    .line 5
    sget-object v1, Ly00;->q:Ly00;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p4, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lo23;

    .line 15
    .line 16
    iget-object p0, p0, Lo23;->c:Lda0;

    .line 17
    .line 18
    iget-object p0, p0, Lda0;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-ge v1, p4, :cond_5

    .line 26
    .line 27
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljs2;

    .line 32
    .line 33
    iget-object v4, v3, Ljs2;->n:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v4, Lbc;

    .line 36
    .line 37
    iget-object v3, v3, Ljs2;->o:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Li50;

    .line 40
    .line 41
    invoke-virtual {v3, p2}, Li50;->d(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget v3, v4, Lbc;->a:I

    .line 51
    .line 52
    packed-switch v3, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    move-object v3, p2

    .line 56
    check-cast v3, La84;

    .line 57
    .line 58
    iget-object v3, v3, La84;->a:Ljava/lang/String;

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :pswitch_0
    move-object v3, p2

    .line 63
    check-cast v3, La84;

    .line 64
    .line 65
    iget-object v4, v3, La84;->c:Ljava/lang/String;

    .line 66
    .line 67
    const-string v5, "file"

    .line 68
    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    :cond_1
    iget-object v4, v3, La84;->e:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    sget-object v4, Lo94;->a:[Landroid/graphics/Bitmap$Config;

    .line 82
    .line 83
    iget-object v4, v3, La84;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v4, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    invoke-static {v3}, Lkt4;->M(La84;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v4}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v5, "android_asset"

    .line 100
    .line 101
    invoke-static {v4, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    sget-object v4, Llo1;->c:Li3;

    .line 109
    .line 110
    invoke-static {p3, v4}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    invoke-static {v3}, Lkt4;->I(La84;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_3

    .line 127
    .line 128
    iget-object v5, p3, Ler2;->f:Lr51;

    .line 129
    .line 130
    sget-object v6, Lbt2;->o:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v4}, Lqz0;->k(Ljava/lang/String;)Lbt2;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v5, v4}, Lr51;->K(Lbt2;)Li51;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    iget-object v4, v4, Li51;->f:Ljava/lang/Long;

    .line 141
    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, "-"

    .line 151
    .line 152
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    :goto_1
    move-object v3, v2

    .line 164
    goto :goto_2

    .line 165
    :pswitch_1
    move-object v3, p2

    .line 166
    check-cast v3, La84;

    .line 167
    .line 168
    iget-object v4, v3, La84;->c:Ljava/lang/String;

    .line 169
    .line 170
    const-string v5, "android.resource"

    .line 171
    .line 172
    invoke-static {v4, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_3

    .line 177
    .line 178
    iget-object v4, p3, Ler2;->a:Landroid/content/Context;

    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    sget-object v5, Lo94;->a:[Landroid/graphics/Bitmap$Config;

    .line 189
    .line 190
    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 191
    .line 192
    and-int/lit8 v4, v4, 0x30

    .line 193
    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v3, ":"

    .line 203
    .line 204
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    :goto_2
    if-eqz v3, :cond_4

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_5
    move-object v3, v2

    .line 222
    :goto_3
    if-nez v3, :cond_6

    .line 223
    .line 224
    :goto_4
    return-object v2

    .line 225
    :cond_6
    sget-object p0, Llo1;->a:Li3;

    .line 226
    .line 227
    invoke-static {p1, p0}, Lk30;->w(Ljo1;Li3;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    check-cast p0, Ljava/util/List;

    .line 232
    .line 233
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-nez p0, :cond_7

    .line 238
    .line 239
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p3, Ler2;->b:Lln3;

    .line 245
    .line 246
    invoke-virtual {p1}, Lln3;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    const-string p2, "coil#size"

    .line 251
    .line 252
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    new-instance p1, Lqb2;

    .line 256
    .line 257
    invoke-direct {p1, v3, p0}, Lqb2;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    .line 259
    .line 260
    return-object p1

    .line 261
    :cond_7
    new-instance p0, Lqb2;

    .line 262
    .line 263
    invoke-direct {p0, v3, v0}, Lqb2;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    .line 265
    .line 266
    return-object p0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "ID"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 9
    .line 10
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Ldd1;->n:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "1"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lx55;->values()[Lx55;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_1

    .line 25
    .line 26
    aget-object v4, v1, v3

    .line 27
    .line 28
    iget-object v5, p0, Ldd1;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Ljava/util/EnumMap;

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lgs4;

    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    sget-object v4, Lgs4;->o:Lgs4;

    .line 41
    .line 42
    :cond_0
    iget-char v4, v4, Lgs4;->n:C

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :sswitch_1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    nop

    .line 65
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public v(Lx55;I)V
    .locals 1

    .line 1
    const/16 v0, -0x1e

    .line 2
    .line 3
    if-eq p2, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, -0x14

    .line 6
    .line 7
    if-eq p2, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, -0xa

    .line 10
    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x1e

    .line 16
    .line 17
    if-eq p2, v0, :cond_0

    .line 18
    .line 19
    sget-object p2, Lgs4;->o:Lgs4;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p2, Lgs4;->s:Lgs4;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object p2, Lgs4;->r:Lgs4;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object p2, Lgs4;->t:Lgs4;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    sget-object p2, Lgs4;->u:Lgs4;

    .line 32
    .line 33
    :goto_0
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Ljava/util/EnumMap;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public w(Lx55;Lgs4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/EnumMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(ILjava/lang/Object;Lcp4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljn4;

    .line 4
    .line 5
    check-cast p2, Lsm4;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, p1, v1}, Ljn4;->d(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Lsm4;->c(Lcp4;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Ljn4;->r(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p3, p2, p0}, Lcp4;->i(Ljava/lang/Object;Ldd1;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
