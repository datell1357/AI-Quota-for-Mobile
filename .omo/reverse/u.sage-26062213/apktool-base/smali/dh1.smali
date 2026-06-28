.class public Ldh1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lhc2;
.implements Lug;
.implements Lwt3;
.implements Lk8;
.implements Lzm1;
.implements Lr33;
.implements Lg60;
.implements Lfd4;


# static fields
.field public static volatile o:Ldh1;

.field public static final p:Lpg1;

.field public static final q:Lpr3;


# instance fields
.field public n:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpg1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lpg1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ldh1;->p:Lpg1;

    .line 8
    .line 9
    new-instance v0, Lpr3;

    .line 10
    .line 11
    const/16 v1, 0x11

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lpr3;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ldh1;->q:Lpr3;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 5

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    sparse-switch p1, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ldh1;->n:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p1, Le82;

    .line 22
    .line 23
    invoke-direct {p1}, Le82;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Ldh1;->n:Ljava/lang/Object;

    .line 27
    .line 28
    return-void

    .line 29
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Ldh1;->n:Ljava/lang/Object;

    .line 39
    .line 40
    return-void

    .line 41
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 p2, 0x14

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Ldh1;->n:Ljava/lang/Object;

    .line 52
    .line 53
    return-void

    .line 54
    :sswitch_3
    new-instance p1, Lra3;

    .line 55
    .line 56
    sget v2, Lum4;->a:I

    .line 57
    .line 58
    new-array v0, v0, [Lro4;

    .line 59
    .line 60
    sget-object v2, Lqv3;->s:Lqv3;

    .line 61
    .line 62
    aput-object v2, v0, v1

    .line 63
    .line 64
    sget-object v1, Ldh1;->q:Lpr3;

    .line 65
    .line 66
    aput-object v1, v0, p2

    .line 67
    .line 68
    const/16 p2, 0xe

    .line 69
    .line 70
    invoke-direct {p1, p2, v0}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Ldh1;->n:Ljava/lang/Object;

    .line 77
    .line 78
    return-void

    .line 79
    :sswitch_4
    new-instance p1, Ly92;

    .line 80
    .line 81
    sget-object v2, Lzz2;->c:Lzz2;

    .line 82
    .line 83
    :try_start_0
    const-string v2, "androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory"

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "getInstance"

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lpc2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    sget-object v2, Ldh1;->p:Lpg1;

    .line 104
    .line 105
    :goto_0
    new-array v0, v0, [Lpc2;

    .line 106
    .line 107
    sget-object v3, Lpg1;->b:Lpg1;

    .line 108
    .line 109
    aput-object v3, v0, v1

    .line 110
    .line 111
    aput-object v2, v0, p2

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p1, Ly92;->a:[Lpc2;

    .line 117
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    sget-object p2, Ldt1;->a:Ljava/nio/charset/Charset;

    .line 122
    .line 123
    iput-object p1, p0, Ldh1;->n:Ljava/lang/Object;

    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x13 -> :sswitch_2
        0x17 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 127
    iput-object p1, p0, Ldh1;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I[F[[F)V
    .locals 22

    move-object/from16 v0, p2

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [[Llh;

    const/4 v4, 0x0

    move v6, v2

    move v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_5

    .line 130
    aget v8, p1, v5

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v8, :cond_0

    if-eq v8, v2, :cond_3

    if-eq v8, v10, :cond_2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    move v12, v7

    goto :goto_3

    :cond_0
    move v12, v9

    goto :goto_3

    :cond_1
    if-ne v6, v2, :cond_3

    goto :goto_2

    :goto_1
    move v12, v6

    goto :goto_3

    :cond_2
    :goto_2
    move v6, v10

    goto :goto_1

    :cond_3
    move v6, v2

    goto :goto_1

    .line 131
    :goto_3
    aget-object v7, p3, v5

    add-int/lit8 v8, v5, 0x1

    .line 132
    aget-object v9, p3, v8

    .line 133
    aget v13, v0, v5

    .line 134
    aget v14, v0, v8

    .line 135
    array-length v11, v7

    div-int/2addr v11, v10

    array-length v15, v7

    rem-int/2addr v15, v10

    add-int v10, v15, v11

    .line 136
    new-array v11, v10, [Llh;

    move v15, v4

    :goto_4
    if-ge v15, v10, :cond_4

    mul-int/lit8 v16, v15, 0x2

    move-object/from16 v17, v11

    .line 137
    new-instance v11, Llh;

    move/from16 v18, v15

    .line 138
    aget v15, v7, v16

    add-int/lit8 v19, v16, 0x1

    move/from16 v20, v16

    .line 139
    aget v16, v7, v19

    .line 140
    aget v20, v9, v20

    .line 141
    aget v19, v9, v19

    move/from16 v21, v19

    move-object/from16 v19, v17

    move/from16 v17, v20

    move/from16 v20, v18

    move/from16 v18, v21

    .line 142
    invoke-direct/range {v11 .. v18}, Llh;-><init>(IFFFFFF)V

    aput-object v11, v19, v20

    add-int/lit8 v15, v20, 0x1

    move-object/from16 v11, v19

    goto :goto_4

    :cond_4
    move-object/from16 v19, v11

    .line 143
    aput-object v19, v3, v5

    move v5, v8

    move v7, v12

    goto :goto_0

    :cond_5
    move-object/from16 v5, p0

    .line 144
    iput-object v3, v5, Ldh1;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lom1;Lvm1;Lul1;)Lpm1;
    .locals 0

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lp33;

    .line 4
    .line 5
    check-cast p0, Lvp0;

    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Lvp0;->a(Lvm1;Lul1;)Ljava/net/URI;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lhv;

    .line 16
    .line 17
    iget-object p1, p1, Lhv;->o:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "HEAD"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Lwl1;

    .line 28
    .line 29
    const/4 p2, 0x2

    .line 30
    invoke-direct {p1, p0, p2}, Lwl1;-><init>(Ljava/net/URI;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    new-instance p1, Lwl1;

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-direct {p1, p0, p2}, Lwl1;-><init>(Ljava/net/URI;I)V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public b(Lub2;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lkt3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lkt3;

    .line 7
    .line 8
    iget-object v0, v0, Lkt3;->v:Lub2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lub2;->j()Lub2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lub2;->c(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lu5;

    .line 21
    .line 22
    iget-object p0, p0, Lu5;->r:Lhc2;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Lhc2;->b(Lub2;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public c(Lt92;J)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public d()Lje3;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public e(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Lem1;Lom1;Lul1;)Lym1;
    .locals 3

    .line 1
    invoke-interface {p2}, Lim1;->getParams()Lkm1;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    sget-object v0, Ltd0;->a:Lem1;

    .line 6
    .line 7
    const-string v0, "Parameters"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "http.route.forced-route"

    .line 13
    .line 14
    invoke-interface {p3, v1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Lym1;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    sget-object v2, Ltd0;->b:Lym1;

    .line 24
    .line 25
    invoke-virtual {v2, p3}, Lym1;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    move-object p3, v1

    .line 32
    :cond_0
    if-eqz p3, :cond_1

    .line 33
    .line 34
    return-object p3

    .line 35
    :cond_1
    const-string p3, "Target host"

    .line 36
    .line 37
    invoke-static {p1, p3}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2}, Lim1;->getParams()Lkm1;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-static {p3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "http.route.local-address"

    .line 48
    .line 49
    invoke-interface {p3, v2}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Ljava/net/InetAddress;

    .line 54
    .line 55
    invoke-interface {p2}, Lim1;->getParams()Lkm1;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "http.route.default-proxy"

    .line 63
    .line 64
    invoke-interface {p2, v0}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lem1;

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    sget-object v0, Ltd0;->a:Lem1;

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Lem1;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move-object v1, p2

    .line 82
    :goto_0
    :try_start_0
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lje3;

    .line 85
    .line 86
    iget-object p2, p1, Lem1;->q:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p0, p2}, Lje3;->a(Ljava/lang/String;)Lfe3;

    .line 89
    .line 90
    .line 91
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iget-boolean p0, p0, Lfe3;->d:Z

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    new-instance p2, Lym1;

    .line 97
    .line 98
    invoke-direct {p2, p1, p3, p0}, Lym1;-><init>(Lem1;Ljava/net/InetAddress;Z)V

    .line 99
    .line 100
    .line 101
    return-object p2

    .line 102
    :cond_3
    new-instance p2, Lym1;

    .line 103
    .line 104
    invoke-direct {p2, p1, p3, v1, p0}, Lym1;-><init>(Lem1;Ljava/net/InetAddress;Lem1;Z)V

    .line 105
    .line 106
    .line 107
    return-object p2

    .line 108
    :catch_0
    move-exception p0

    .line 109
    new-instance p1, Lcm1;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {p1, p0}, Lcm1;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public g(Lym1;Ljava/lang/Object;)Li60;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public h(Lom1;Lvm1;Lul1;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lp33;

    .line 4
    .line 5
    check-cast p0, Lvp0;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "HTTP response"

    .line 11
    .line 12
    invoke-static {p2, p0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Lvm1;->b()Lkv;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Lkv;->o:I

    .line 20
    .line 21
    const/16 p1, 0x133

    .line 22
    .line 23
    if-eq p0, p1, :cond_0

    .line 24
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :pswitch_0
    const-string p0, "http.request"

    .line 30
    .line 31
    invoke-interface {p3, p0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lom1;

    .line 36
    .line 37
    invoke-interface {p0}, Lom1;->getRequestLine()Ld73;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lhv;

    .line 42
    .line 43
    iget-object p0, p0, Lhv;->o:Ljava/lang/String;

    .line 44
    .line 45
    const-string p1, "GET"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    const-string p1, "HEAD"

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_2
    :goto_1
    :pswitch_1
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public i(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lg8;

    .line 4
    .line 5
    const-string v0, "clx"

    .line 6
    .line 7
    check-cast p0, Lh8;

    .line 8
    .line 9
    const-string v1, "_ae"

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, p1}, Lh8;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public k(IF)V
    .locals 0

    .line 1
    return-void
.end method

.method public l(Lub2;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lu5;

    .line 4
    .line 5
    iget-object v0, p0, Lu5;->p:Lub2;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, p1

    .line 11
    check-cast v0, Lkt3;

    .line 12
    .line 13
    iget-object v0, v0, Lkt3;->w:Lzb2;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lu5;->r:Lhc2;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lhc2;->l(Lub2;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public m()Lkj1;
    .locals 2

    .line 1
    new-instance v0, Lkj1;

    .line 2
    .line 3
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lkj1;-><init>([Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public n(Lv30;Lfh0;)V
    .locals 4

    .line 1
    instance-of v0, p2, Lao2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lao2;

    .line 7
    .line 8
    iget v1, v0, Lao2;->s:I

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
    iput v1, v0, Lao2;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lao2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lao2;-><init>(Ldh1;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lao2;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lao2;->s:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lp61;->q()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lwr3;

    .line 53
    .line 54
    iput v2, v0, Lao2;->s:I

    .line 55
    .line 56
    invoke-virtual {p0, p1, v0}, Lwr3;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public o(FFFF)V
    .locals 8

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Leh;

    .line 4
    .line 5
    invoke-virtual {p0}, Leh;->u()Lv20;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Leh;->z()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const/16 v3, 0x20

    .line 14
    .line 15
    shr-long/2addr v1, v3

    .line 16
    long-to-int v1, v1

    .line 17
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-float/2addr p3, p1

    .line 22
    sub-float/2addr v1, p3

    .line 23
    invoke-virtual {p0}, Leh;->z()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide v6, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr v4, v6

    .line 33
    long-to-int p3, v4

    .line 34
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    add-float/2addr p4, p2

    .line 39
    sub-float/2addr p3, p4

    .line 40
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    int-to-long v1, p4

    .line 45
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    int-to-long p3, p3

    .line 50
    shl-long/2addr v1, v3

    .line 51
    and-long/2addr p3, v6

    .line 52
    or-long/2addr p3, v1

    .line 53
    shr-long v1, p3, v3

    .line 54
    .line 55
    long-to-int v1, v1

    .line 56
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x0

    .line 61
    cmpl-float v1, v1, v2

    .line 62
    .line 63
    if-ltz v1, :cond_0

    .line 64
    .line 65
    and-long v3, p3, v6

    .line 66
    .line 67
    long-to-int v1, v3

    .line 68
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    cmpl-float v1, v1, v2

    .line 73
    .line 74
    if-ltz v1, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const-string v1, "Width and height must be greater than or equal to zero"

    .line 78
    .line 79
    invoke-static {v1}, Lzq1;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0, p3, p4}, Leh;->K(J)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, p1, p2}, Lv20;->f(FF)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public p(Lxh1;Lq9;)Lft1;
    .locals 41

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v1, v1, Ldh1;->n:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Le82;

    .line 8
    .line 9
    new-instance v2, Le82;

    .line 10
    .line 11
    iget-object v3, v0, Lxh1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-direct {v2, v4}, Le82;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_0
    if-ge v6, v4, :cond_2

    .line 28
    .line 29
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Lbw2;

    .line 34
    .line 35
    iget-wide v8, v7, Lbw2;->a:J

    .line 36
    .line 37
    invoke-virtual {v1, v8, v9}, Le82;->a(J)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    check-cast v10, Law2;

    .line 42
    .line 43
    if-nez v10, :cond_0

    .line 44
    .line 45
    iget-wide v10, v7, Lbw2;->b:J

    .line 46
    .line 47
    iget-wide v12, v7, Lbw2;->d:J

    .line 48
    .line 49
    move-wide/from16 v25, v10

    .line 50
    .line 51
    move-wide/from16 v27, v12

    .line 52
    .line 53
    const/16 v29, 0x0

    .line 54
    .line 55
    move-object/from16 v10, p2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget-wide v11, v10, Law2;->a:J

    .line 59
    .line 60
    iget-boolean v13, v10, Law2;->c:Z

    .line 61
    .line 62
    iget-wide v14, v10, Law2;->b:J

    .line 63
    .line 64
    move-object/from16 v10, p2

    .line 65
    .line 66
    invoke-virtual {v10, v14, v15}, Lq9;->J(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v14

    .line 70
    move-wide/from16 v25, v11

    .line 71
    .line 72
    move/from16 v29, v13

    .line 73
    .line 74
    move-wide/from16 v27, v14

    .line 75
    .line 76
    :goto_1
    iget-wide v11, v7, Lbw2;->a:J

    .line 77
    .line 78
    new-instance v16, Lzv2;

    .line 79
    .line 80
    iget-wide v13, v7, Lbw2;->b:J

    .line 81
    .line 82
    move v15, v6

    .line 83
    iget-wide v5, v7, Lbw2;->d:J

    .line 84
    .line 85
    move-object/from16 v39, v3

    .line 86
    .line 87
    iget-boolean v3, v7, Lbw2;->e:Z

    .line 88
    .line 89
    move/from16 v23, v3

    .line 90
    .line 91
    iget v3, v7, Lbw2;->f:F

    .line 92
    .line 93
    move/from16 v24, v3

    .line 94
    .line 95
    iget v3, v7, Lbw2;->g:I

    .line 96
    .line 97
    move/from16 v30, v3

    .line 98
    .line 99
    iget-object v3, v7, Lbw2;->i:Ljava/util/ArrayList;

    .line 100
    .line 101
    move-object/from16 v31, v3

    .line 102
    .line 103
    move/from16 v40, v4

    .line 104
    .line 105
    iget-wide v3, v7, Lbw2;->j:J

    .line 106
    .line 107
    move-wide/from16 v32, v3

    .line 108
    .line 109
    iget v3, v7, Lbw2;->k:F

    .line 110
    .line 111
    move/from16 v34, v3

    .line 112
    .line 113
    iget-wide v3, v7, Lbw2;->l:J

    .line 114
    .line 115
    move-wide/from16 v35, v3

    .line 116
    .line 117
    iget-wide v3, v7, Lbw2;->m:J

    .line 118
    .line 119
    move-wide/from16 v37, v3

    .line 120
    .line 121
    move-wide/from16 v21, v5

    .line 122
    .line 123
    move-wide/from16 v17, v11

    .line 124
    .line 125
    move-wide/from16 v19, v13

    .line 126
    .line 127
    invoke-direct/range {v16 .. v38}, Lzv2;-><init>(JJJZFJJZILjava/util/ArrayList;JFJJ)V

    .line 128
    .line 129
    .line 130
    move-object/from16 v5, v16

    .line 131
    .line 132
    move-wide/from16 v3, v17

    .line 133
    .line 134
    invoke-virtual {v2, v3, v4, v5}, Le82;->c(JLjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-boolean v3, v7, Lbw2;->e:Z

    .line 138
    .line 139
    if-eqz v3, :cond_1

    .line 140
    .line 141
    new-instance v16, Law2;

    .line 142
    .line 143
    iget-wide v4, v7, Lbw2;->b:J

    .line 144
    .line 145
    iget-wide v6, v7, Lbw2;->c:J

    .line 146
    .line 147
    move/from16 v21, v3

    .line 148
    .line 149
    move-wide/from16 v17, v4

    .line 150
    .line 151
    move-wide/from16 v19, v6

    .line 152
    .line 153
    invoke-direct/range {v16 .. v21}, Law2;-><init>(JJZ)V

    .line 154
    .line 155
    .line 156
    move-object/from16 v3, v16

    .line 157
    .line 158
    invoke-virtual {v1, v8, v9, v3}, Le82;->c(JLjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_1
    invoke-virtual {v1, v8, v9}, Le82;->d(J)V

    .line 163
    .line 164
    .line 165
    :goto_2
    add-int/lit8 v6, v15, 0x1

    .line 166
    .line 167
    move-object/from16 v3, v39

    .line 168
    .line 169
    move/from16 v4, v40

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_2
    new-instance v1, Lft1;

    .line 174
    .line 175
    invoke-direct {v1, v2, v0}, Lft1;-><init>(Le82;Lxh1;)V

    .line 176
    .line 177
    .line 178
    return-object v1
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x2

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public r(FJ)V
    .locals 4

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Leh;

    .line 4
    .line 5
    invoke-virtual {p0}, Leh;->u()Lv20;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    shr-long v0, p2, v0

    .line 12
    .line 13
    long-to-int v0, v0

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-wide v2, 0xffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr p2, v2

    .line 24
    long-to-int p2, p2

    .line 25
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-interface {p0, v1, p3}, Lv20;->f(FF)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, p1}, Lv20;->b(F)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    neg-float p1, p1

    .line 40
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    neg-float p2, p2

    .line 45
    invoke-interface {p0, p1, p2}, Lv20;->f(FF)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public s(FFJ)V
    .locals 4

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Leh;

    .line 4
    .line 5
    invoke-virtual {p0}, Leh;->u()Lv20;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    shr-long v0, p3, v0

    .line 12
    .line 13
    long-to-int v0, v0

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-wide v2, 0xffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr p3, v2

    .line 24
    long-to-int p3, p3

    .line 25
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    invoke-interface {p0, v1, p4}, Lv20;->f(FF)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, p1, p2}, Lv20;->a(FF)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    neg-float p1, p1

    .line 40
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    neg-float p2, p2

    .line 45
    invoke-interface {p0, p1, p2}, Lv20;->f(FF)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Let1;

    .line 4
    .line 5
    iget-object p0, p0, Let1;->p:Lql1;

    .line 6
    .line 7
    check-cast p0, Lax2;

    .line 8
    .line 9
    invoke-virtual {p0}, Lax2;->shutdown()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public t(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Leh;

    .line 4
    .line 5
    invoke-virtual {p0}, Leh;->u()Lv20;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2}, Lv20;->f(FF)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public then(Ljava/lang/Object;)Low3;
    .locals 2

    .line 1
    check-cast p1, Lmk3;

    .line 2
    .line 3
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lbj0;

    .line 6
    .line 7
    iget-object p0, p0, Lbj0;->e:Ldj0;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p0, "Received null app settings, cannot send reports at crash time."

    .line 13
    .line 14
    const-string p1, "FirebaseCrashlytics"

    .line 15
    .line 16
    invoke-static {p1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-static {p0}, Ldj0;->a(Ldj0;)Lef5;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v1, p0, Ldj0;->m:Lga0;

    .line 29
    .line 30
    iget-object p0, p0, Ldj0;->e:Leh;

    .line 31
    .line 32
    iget-object p0, p0, Leh;->o:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lqk0;

    .line 35
    .line 36
    invoke-virtual {v1, v0, p0}, Lga0;->r(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lef5;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Low3;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    aput-object p1, v0, v1

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    aput-object p0, v0, p1

    .line 48
    .line 49
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lmt1;->Y(Ljava/util/List;)Lef5;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public u(ILjava/lang/Object;Lbe3;)V
    .locals 1

    .line 1
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ld70;

    .line 4
    .line 5
    check-cast p2, Ll1;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, p1, v0}, Ld70;->B(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ld70;->a:Ldh1;

    .line 12
    .line 13
    invoke-interface {p3, p2, v0}, Lbe3;->h(Ljava/lang/Object;Ldh1;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-virtual {p0, p1, p2}, Ld70;->B(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
