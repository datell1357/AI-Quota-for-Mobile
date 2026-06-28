.class public final Lxp0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ly63;


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lg60;

.field public final c:Lzm1;

.field public final d:Lie0;

.field public final e:Lbe0;

.field public final f:Lqm1;

.field public final g:Lnm1;

.field public final h:Lsm1;

.field public final i:Lr33;

.field public final j:Lyj;

.field public final k:Lyj;

.field public final l:Ld94;

.field public final m:Lkm1;

.field public n:Lt92;

.field public final o:Ltj;

.field public final p:Ltj;

.field public final q:Lll1;

.field public r:I

.field public s:I

.field public final t:I

.field public u:Lem1;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lr33;Lyj;Lyj;Ld94;Lkm1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Log"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Request executor"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Client connection manager"

    .line 15
    .line 16
    invoke-static {p3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "Connection reuse strategy"

    .line 20
    .line 21
    invoke-static {p4, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "Connection keep alive strategy"

    .line 25
    .line 26
    invoke-static {p5, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "Route planner"

    .line 30
    .line 31
    invoke-static {p6, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "HTTP protocol processor"

    .line 35
    .line 36
    invoke-static {p7, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "HTTP request retry handler"

    .line 40
    .line 41
    invoke-static {p8, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "Redirect strategy"

    .line 45
    .line 46
    invoke-static {p9, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "Target authentication strategy"

    .line 50
    .line 51
    invoke-static {p10, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "Proxy authentication strategy"

    .line 55
    .line 56
    invoke-static {p11, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "User token handler"

    .line 60
    .line 61
    invoke-static {p12, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "HTTP parameters"

    .line 65
    .line 66
    invoke-static {p13, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 70
    .line 71
    new-instance v0, Lll1;

    .line 72
    .line 73
    invoke-direct {v0, p1}, Lml1;-><init>(Lorg/apache/commons/logging/Log;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lxp0;->q:Lll1;

    .line 77
    .line 78
    iput-object p2, p0, Lxp0;->f:Lqm1;

    .line 79
    .line 80
    iput-object p3, p0, Lxp0;->b:Lg60;

    .line 81
    .line 82
    iput-object p4, p0, Lxp0;->d:Lie0;

    .line 83
    .line 84
    iput-object p5, p0, Lxp0;->e:Lbe0;

    .line 85
    .line 86
    iput-object p6, p0, Lxp0;->c:Lzm1;

    .line 87
    .line 88
    iput-object p7, p0, Lxp0;->g:Lnm1;

    .line 89
    .line 90
    iput-object p8, p0, Lxp0;->h:Lsm1;

    .line 91
    .line 92
    iput-object p9, p0, Lxp0;->i:Lr33;

    .line 93
    .line 94
    iput-object p10, p0, Lxp0;->j:Lyj;

    .line 95
    .line 96
    iput-object p11, p0, Lxp0;->k:Lyj;

    .line 97
    .line 98
    iput-object p12, p0, Lxp0;->l:Ld94;

    .line 99
    .line 100
    iput-object p13, p0, Lxp0;->m:Lkm1;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lxp0;->n:Lt92;

    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lxp0;->r:I

    .line 107
    .line 108
    iput p1, p0, Lxp0;->s:I

    .line 109
    .line 110
    new-instance p1, Ltj;

    .line 111
    .line 112
    invoke-direct {p1}, Ltj;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lxp0;->o:Ltj;

    .line 116
    .line 117
    new-instance p1, Ltj;

    .line 118
    .line 119
    invoke-direct {p1}, Ltj;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lxp0;->p:Ltj;

    .line 123
    .line 124
    const/16 p1, 0x64

    .line 125
    .line 126
    check-cast p13, Lf1;

    .line 127
    .line 128
    const-string p2, "http.protocol.max-redirects"

    .line 129
    .line 130
    invoke-virtual {p13, p1, p2}, Lf1;->e(ILjava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, p0, Lxp0;->t:I

    .line 135
    .line 136
    return-void
.end method

.method public constructor <init>(Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lr33;Lxj;Lxj;Ld94;Lkm1;)V
    .locals 15

    .line 137
    const-class v0, Lxp0;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v11, Lzj;

    move-object/from16 v0, p9

    invoke-direct {v11, v0}, Lzj;-><init>(Lxj;)V

    new-instance v12, Lzj;

    move-object/from16 v0, p10

    invoke-direct {v12, v0}, Lzj;-><init>(Lxj;)V

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lxp0;-><init>(Lorg/apache/commons/logging/Log;Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lr33;Lyj;Lyj;Ld94;Lkm1;)V

    return-void
.end method

.method public static d(Lg73;Lym1;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lg73;->o:Ljava/net/URI;

    .line 2
    .line 3
    invoke-virtual {p1}, Lym1;->e()Lem1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lym1;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Lym1;->n:Lem1;

    .line 22
    .line 23
    sget-object v1, Lz54;->d:Ljava/util/EnumSet;

    .line 24
    .line 25
    invoke-static {v0, p1, v1}, Lz54;->e(Ljava/net/URI;Lem1;Ljava/util/EnumSet;)Ljava/net/URI;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {v0}, Lz54;->d(Ljava/net/URI;)Ljava/net/URI;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    sget-object p1, Lz54;->d:Ljava/util/EnumSet;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1, p1}, Lz54;->e(Ljava/net/URI;Lem1;Ljava/util/EnumSet;)Ljava/net/URI;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v0}, Lz54;->d(Ljava/net/URI;)Ljava/net/URI;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    iput-object p1, p0, Lg73;->o:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    return-void

    .line 58
    :goto_1
    new-instance v0, Le03;

    .line 59
    .line 60
    invoke-virtual {p0}, Lg73;->getRequestLine()Ld73;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lhv;

    .line 65
    .line 66
    iget-object p0, p0, Lhv;->p:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Invalid URI: "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {v0, p0, p1}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxp0;->n:Lt92;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lxp0;->n:Lt92;

    .line 7
    .line 8
    :try_start_0
    invoke-interface {v0}, Lhe0;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    iget-object v2, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 14
    .line 15
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lhe0;->r()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_1
    move-exception v0

    .line 35
    iget-object p0, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 36
    .line 37
    const-string v1, "Error releasing connection"

    .line 38
    .line 39
    invoke-interface {p0, v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_1
    return-void
.end method

.method public final b(Lym1;Lul1;)V
    .locals 9

    .line 1
    :goto_0
    iget-object v0, p0, Lxp0;->n:Lt92;

    .line 2
    .line 3
    invoke-interface {v0}, Lt92;->i()Lym1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lbx3;->r(Lym1;Lym1;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lxp0;->m:Lkm1;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string p0, "Unknown step indicator "

    .line 17
    .line 18
    const-string p1, " from RouteDirector."

    .line 19
    .line 20
    invoke-static {p0, v1, p1}, Lxw1;->q(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lxp0;->n:Lt92;

    .line 29
    .line 30
    invoke-interface {v0, p2, v2}, Lt92;->h0(Lul1;Lkm1;)V

    .line 31
    .line 32
    .line 33
    :pswitch_1
    move-object v8, p2

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :pswitch_2
    invoke-virtual {v0}, Lym1;->b()I

    .line 37
    .line 38
    .line 39
    new-instance p0, Lcm1;

    .line 40
    .line 41
    const-string p1, "Proxy chains are not supported."

    .line 42
    .line 43
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :pswitch_3
    invoke-virtual {p1}, Lym1;->e()Lem1;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v0, p1, Lym1;->n:Lem1;

    .line 56
    .line 57
    :goto_1
    iget-object v3, p0, Lxp0;->n:Lt92;

    .line 58
    .line 59
    invoke-interface {v3}, Lsl1;->isOpen()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_0

    .line 64
    .line 65
    iget-object v3, p0, Lxp0;->n:Lt92;

    .line 66
    .line 67
    invoke-interface {v3, p1, p2, v2}, Lt92;->w(Lym1;Lul1;Lkm1;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v3, v0, Lem1;->n:Ljava/lang/String;

    .line 71
    .line 72
    iget v5, v0, Lem1;->p:I

    .line 73
    .line 74
    if-gez v5, :cond_1

    .line 75
    .line 76
    iget-object v5, p0, Lxp0;->b:Lg60;

    .line 77
    .line 78
    invoke-interface {v5}, Lg60;->d()Lje3;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iget-object v6, v0, Lem1;->q:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Lje3;->a(Ljava/lang/String;)Lfe3;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget v5, v5, Lfe3;->c:I

    .line 89
    .line 90
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    add-int/lit8 v7, v7, 0x6

    .line 97
    .line 98
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const/16 v3, 0x3a

    .line 105
    .line 106
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v2}, Lis0;->D(Lkm1;)Lg03;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    new-instance v6, Lzu;

    .line 125
    .line 126
    invoke-direct {v6, v3, v5}, Lzu;-><init>(Ljava/lang/String;Lg03;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v6, v2}, Lim1;->setParams(Lkm1;)V

    .line 130
    .line 131
    .line 132
    const-string v3, "http.target_host"

    .line 133
    .line 134
    invoke-interface {p2, v0, v3}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v3, "http.route"

    .line 138
    .line 139
    invoke-interface {p2, p1, v3}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v3, "http.proxy_host"

    .line 143
    .line 144
    invoke-interface {p2, v4, v3}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v3, "http.connection"

    .line 148
    .line 149
    iget-object v5, p0, Lxp0;->n:Lt92;

    .line 150
    .line 151
    invoke-interface {p2, v5, v3}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v3, "http.request"

    .line 155
    .line 156
    invoke-interface {p2, v6, v3}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, p0, Lxp0;->f:Lqm1;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget-object v5, p0, Lxp0;->g:Lnm1;

    .line 165
    .line 166
    invoke-static {v6, v5, p2}, Lqm1;->f(Lom1;Lnm1;Lul1;)V

    .line 167
    .line 168
    .line 169
    iget-object v7, p0, Lxp0;->n:Lt92;

    .line 170
    .line 171
    invoke-virtual {v3, v6, v7, p2}, Lqm1;->d(Lom1;Lpl1;Lul1;)Lvm1;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-interface {v3, v2}, Lim1;->setParams(Lkm1;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v3, v5, p2}, Lqm1;->e(Lvm1;Lnm1;Lul1;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v3}, Lvm1;->b()Lkv;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iget v5, v5, Lkv;->o:I

    .line 186
    .line 187
    const/16 v6, 0xc8

    .line 188
    .line 189
    if-lt v5, v6, :cond_7

    .line 190
    .line 191
    const/4 v5, 0x1

    .line 192
    move-object v6, v2

    .line 193
    check-cast v6, Lf1;

    .line 194
    .line 195
    const-string v7, "http.protocol.handle-authentication"

    .line 196
    .line 197
    invoke-virtual {v6, v7, v5}, Lf1;->d(Ljava/lang/String;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_6

    .line 202
    .line 203
    iget-object v6, p0, Lxp0;->k:Lyj;

    .line 204
    .line 205
    iget-object v7, p0, Lxp0;->p:Ltj;

    .line 206
    .line 207
    move-object v5, v3

    .line 208
    iget-object v3, p0, Lxp0;->q:Lll1;

    .line 209
    .line 210
    move-object v8, p2

    .line 211
    invoke-virtual/range {v3 .. v8}, Lml1;->c(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_3

    .line 216
    .line 217
    iget-object v6, p0, Lxp0;->k:Lyj;

    .line 218
    .line 219
    iget-object v7, p0, Lxp0;->p:Ltj;

    .line 220
    .line 221
    iget-object v3, p0, Lxp0;->q:Lll1;

    .line 222
    .line 223
    invoke-virtual/range {v3 .. v8}, Lml1;->b(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    if-eqz p2, :cond_3

    .line 228
    .line 229
    iget-object p2, p0, Lxp0;->d:Lie0;

    .line 230
    .line 231
    invoke-interface {p2, v5, v8}, Lie0;->h(Lvm1;Lul1;)Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-eqz p2, :cond_2

    .line 236
    .line 237
    iget-object p2, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 238
    .line 239
    const-string v3, "Connection kept alive"

    .line 240
    .line 241
    invoke-interface {p2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v5}, Lvm1;->getEntity()Lxl1;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-static {p2}, Ln44;->f0(Lxl1;)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_2
    iget-object p2, p0, Lxp0;->n:Lt92;

    .line 253
    .line 254
    invoke-interface {p2}, Ljava/io/Closeable;->close()V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_3
    invoke-interface {v5}, Lvm1;->b()Lkv;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    iget p2, p2, Lkv;->o:I

    .line 263
    .line 264
    const/16 v0, 0x12b

    .line 265
    .line 266
    if-le p2, v0, :cond_5

    .line 267
    .line 268
    invoke-interface {v5}, Lvm1;->getEntity()Lxl1;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    if-eqz p1, :cond_4

    .line 273
    .line 274
    new-instance p2, Ldz;

    .line 275
    .line 276
    invoke-direct {p2, p1}, Ldz;-><init>(Lxl1;)V

    .line 277
    .line 278
    .line 279
    invoke-interface {v5, p2}, Lvm1;->setEntity(Lxl1;)V

    .line 280
    .line 281
    .line 282
    :cond_4
    iget-object p0, p0, Lxp0;->n:Lt92;

    .line 283
    .line 284
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 285
    .line 286
    .line 287
    new-instance p0, Lc34;

    .line 288
    .line 289
    invoke-interface {v5}, Lvm1;->b()Lkv;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    new-instance p2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v0, "CONNECT refused by proxy: "

    .line 296
    .line 297
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-direct {p0, p1, v5}, Lc34;-><init>(Ljava/lang/String;Lvm1;)V

    .line 308
    .line 309
    .line 310
    throw p0

    .line 311
    :cond_5
    iget-object p2, p0, Lxp0;->n:Lt92;

    .line 312
    .line 313
    invoke-interface {p2}, Lt92;->O()V

    .line 314
    .line 315
    .line 316
    iget-object p2, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 317
    .line 318
    const-string v0, "Tunnel to target created."

    .line 319
    .line 320
    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    iget-object p2, p0, Lxp0;->n:Lt92;

    .line 324
    .line 325
    invoke-interface {p2, v2}, Lt92;->D(Lkm1;)V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_6
    move-object v8, p2

    .line 330
    :goto_2
    move-object p2, v8

    .line 331
    goto/16 :goto_1

    .line 332
    .line 333
    :cond_7
    move-object v5, v3

    .line 334
    new-instance p0, Lcm1;

    .line 335
    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string p2, "Unexpected response to CONNECT request: "

    .line 339
    .line 340
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v5}, Lvm1;->b()Lkv;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw p0

    .line 362
    :pswitch_4
    move-object v8, p2

    .line 363
    iget-object p2, p0, Lxp0;->n:Lt92;

    .line 364
    .line 365
    invoke-interface {p2, p1, v8, v2}, Lt92;->w(Lym1;Lul1;Lkm1;)V

    .line 366
    .line 367
    .line 368
    :goto_3
    if-gtz v1, :cond_8

    .line 369
    .line 370
    return-void

    .line 371
    :cond_8
    move-object p2, v8

    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :pswitch_5
    new-instance p0, Lcm1;

    .line 375
    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v1, "Unable to establish route: planned = "

    .line 379
    .line 380
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string p1, "; current = "

    .line 387
    .line 388
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw p0

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lxh1;Lvm1;Lul1;)Lxh1;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v7, p3

    .line 6
    .line 7
    iget-object v2, v1, Lxh1;->o:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v8, v2

    .line 10
    check-cast v8, Lym1;

    .line 11
    .line 12
    iget-object v2, v1, Lxh1;->n:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v9, v2

    .line 15
    check-cast v9, Lg73;

    .line 16
    .line 17
    invoke-virtual {v9}, Le1;->getParams()Lkm1;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    const-string v2, "HTTP parameters"

    .line 22
    .line 23
    invoke-static {v10, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v11, v10

    .line 27
    check-cast v11, Lf1;

    .line 28
    .line 29
    const-string v2, "http.protocol.handle-authentication"

    .line 30
    .line 31
    const/4 v12, 0x1

    .line 32
    invoke-virtual {v11, v2, v12}, Lf1;->d(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    const-string v2, "http.target_host"

    .line 39
    .line 40
    invoke-interface {v7, v2}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lem1;

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-object v2, v8, Lym1;->n:Lem1;

    .line 49
    .line 50
    :cond_0
    iget v3, v2, Lem1;->p:I

    .line 51
    .line 52
    iget-object v4, v2, Lem1;->q:Ljava/lang/String;

    .line 53
    .line 54
    if-gez v3, :cond_1

    .line 55
    .line 56
    iget-object v3, v0, Lxp0;->b:Lg60;

    .line 57
    .line 58
    invoke-interface {v3}, Lg60;->d()Lje3;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Lje3;->a(Ljava/lang/String;)Lfe3;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v5, Lem1;

    .line 70
    .line 71
    iget-object v2, v2, Lem1;->n:Ljava/lang/String;

    .line 72
    .line 73
    iget v3, v3, Lfe3;->c:I

    .line 74
    .line 75
    invoke-direct {v5, v2, v3, v4}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v3, v5

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object v3, v2

    .line 81
    :goto_0
    iget-object v5, v0, Lxp0;->j:Lyj;

    .line 82
    .line 83
    iget-object v6, v0, Lxp0;->o:Ltj;

    .line 84
    .line 85
    iget-object v2, v0, Lxp0;->q:Lll1;

    .line 86
    .line 87
    move-object/from16 v4, p2

    .line 88
    .line 89
    invoke-virtual/range {v2 .. v7}, Lml1;->c(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    move-object v14, v3

    .line 94
    invoke-virtual {v8}, Lym1;->e()Lem1;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    iget-object v2, v8, Lym1;->n:Lem1;

    .line 101
    .line 102
    :cond_2
    move-object v3, v2

    .line 103
    iget-object v5, v0, Lxp0;->k:Lyj;

    .line 104
    .line 105
    iget-object v6, v0, Lxp0;->p:Ltj;

    .line 106
    .line 107
    iget-object v2, v0, Lxp0;->q:Lll1;

    .line 108
    .line 109
    move-object/from16 v4, p2

    .line 110
    .line 111
    move-object/from16 v7, p3

    .line 112
    .line 113
    invoke-virtual/range {v2 .. v7}, Lml1;->c(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    move-object/from16 v16, v3

    .line 118
    .line 119
    if-eqz v13, :cond_3

    .line 120
    .line 121
    iget-object v5, v0, Lxp0;->j:Lyj;

    .line 122
    .line 123
    iget-object v6, v0, Lxp0;->o:Ltj;

    .line 124
    .line 125
    iget-object v2, v0, Lxp0;->q:Lll1;

    .line 126
    .line 127
    move-object/from16 v4, p2

    .line 128
    .line 129
    move-object/from16 v7, p3

    .line 130
    .line 131
    move-object v3, v14

    .line 132
    invoke-virtual/range {v2 .. v7}, Lml1;->b(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    if-eqz v15, :cond_4

    .line 140
    .line 141
    iget-object v5, v0, Lxp0;->k:Lyj;

    .line 142
    .line 143
    iget-object v6, v0, Lxp0;->p:Ltj;

    .line 144
    .line 145
    iget-object v2, v0, Lxp0;->q:Lll1;

    .line 146
    .line 147
    move-object/from16 v4, p2

    .line 148
    .line 149
    move-object/from16 v7, p3

    .line 150
    .line 151
    move-object/from16 v3, v16

    .line 152
    .line 153
    invoke-virtual/range {v2 .. v7}, Lml1;->b(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_6

    .line 158
    .line 159
    :goto_1
    return-object v1

    .line 160
    :cond_4
    move-object/from16 v4, p2

    .line 161
    .line 162
    move-object/from16 v7, p3

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    move-object/from16 v4, p2

    .line 166
    .line 167
    :cond_6
    :goto_2
    const-string v1, "http.protocol.handle-redirects"

    .line 168
    .line 169
    invoke-virtual {v11, v1, v12}, Lf1;->d(Ljava/lang/String;Z)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const/4 v2, 0x0

    .line 174
    if-eqz v1, :cond_c

    .line 175
    .line 176
    iget-object v1, v0, Lxp0;->i:Lr33;

    .line 177
    .line 178
    invoke-interface {v1, v9, v4, v7}, Lr33;->h(Lom1;Lvm1;Lul1;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_c

    .line 183
    .line 184
    iget v3, v0, Lxp0;->s:I

    .line 185
    .line 186
    iget v5, v0, Lxp0;->t:I

    .line 187
    .line 188
    if-ge v3, v5, :cond_b

    .line 189
    .line 190
    add-int/2addr v3, v12

    .line 191
    iput v3, v0, Lxp0;->s:I

    .line 192
    .line 193
    iput-object v2, v0, Lxp0;->u:Lem1;

    .line 194
    .line 195
    invoke-interface {v1, v9, v4, v7}, Lr33;->a(Lom1;Lvm1;Lul1;)Lpm1;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iget-object v2, v9, Lg73;->n:Lom1;

    .line 200
    .line 201
    invoke-interface {v2}, Lim1;->getAllHeaders()[Lgj1;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-interface {v1, v2}, Lim1;->setHeaders([Lgj1;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v1}, Lan1;->getURI()Ljava/net/URI;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v2}, Lz54;->a(Ljava/net/URI;)Lem1;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    if-eqz v3, :cond_a

    .line 217
    .line 218
    iget-object v4, v8, Lym1;->n:Lem1;

    .line 219
    .line 220
    invoke-virtual {v4, v3}, Lem1;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-nez v4, :cond_7

    .line 225
    .line 226
    iget-object v4, v0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 227
    .line 228
    const-string v5, "Resetting target auth state"

    .line 229
    .line 230
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iget-object v4, v0, Lxp0;->o:Ltj;

    .line 234
    .line 235
    invoke-virtual {v4}, Ltj;->c()V

    .line 236
    .line 237
    .line 238
    iget-object v4, v0, Lxp0;->p:Ltj;

    .line 239
    .line 240
    iget-object v5, v4, Ltj;->b:Loj;

    .line 241
    .line 242
    if-eqz v5, :cond_7

    .line 243
    .line 244
    invoke-virtual {v5}, Loj;->f()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_7

    .line 249
    .line 250
    iget-object v5, v0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 251
    .line 252
    const-string v6, "Resetting proxy auth state"

    .line 253
    .line 254
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Ltj;->c()V

    .line 258
    .line 259
    .line 260
    :cond_7
    instance-of v4, v1, Lzl1;

    .line 261
    .line 262
    if-eqz v4, :cond_8

    .line 263
    .line 264
    new-instance v4, Lp11;

    .line 265
    .line 266
    check-cast v1, Lzl1;

    .line 267
    .line 268
    invoke-direct {v4, v1}, Lg73;-><init>(Lom1;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v1}, Lzl1;->getEntity()Lxl1;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v4, v1}, Lp11;->setEntity(Lxl1;)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_8
    new-instance v4, Lg73;

    .line 280
    .line 281
    invoke-direct {v4, v1}, Lg73;-><init>(Lom1;)V

    .line 282
    .line 283
    .line 284
    :goto_3
    invoke-virtual {v4, v10}, Le1;->setParams(Lkm1;)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lxp0;->c:Lzm1;

    .line 288
    .line 289
    invoke-interface {v1, v3, v4, v7}, Lzm1;->f(Lem1;Lom1;Lul1;)Lym1;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    new-instance v3, Lxh1;

    .line 294
    .line 295
    invoke-direct {v3, v4, v1}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    iget-object v4, v0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 299
    .line 300
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_9

    .line 305
    .line 306
    iget-object v0, v0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 307
    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v5, "Redirecting to \'"

    .line 311
    .line 312
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v2, "\' via "

    .line 319
    .line 320
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_9
    return-object v3

    .line 334
    :cond_a
    new-instance v0, Le03;

    .line 335
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v3, "Redirect URI does not specify a valid host name: "

    .line 339
    .line 340
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v0

    .line 358
    :cond_b
    new-instance v0, Lum2;

    .line 359
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v2, "Maximum redirects ("

    .line 363
    .line 364
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v2, ") exceeded"

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :cond_c
    return-object v2
.end method

.method public final e(Lxh1;Lul1;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lxh1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lym1;

    .line 4
    .line 5
    iget-object p1, p1, Lxh1;->n:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lg73;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    const-string v2, "http.request"

    .line 11
    .line 12
    invoke-interface {p2, p1, v2}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    :try_start_0
    iget-object v2, p0, Lxp0;->n:Lt92;

    .line 18
    .line 19
    invoke-interface {v2}, Lsl1;->isOpen()Z

    .line 20
    .line 21
    .line 22
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    iget-object v3, p0, Lxp0;->n:Lt92;

    .line 24
    .line 25
    iget-object v4, p0, Lxp0;->m:Lkm1;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    :try_start_1
    invoke-interface {v3, v0, p2, v4}, Lt92;->w(Lym1;Lul1;Lkm1;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v2

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-static {v4}, Lmt1;->H(Lkm1;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-interface {v3, v2}, Lsl1;->n(I)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0, v0, p2}, Lxp0;->b(Lym1;Lul1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :goto_2
    :try_start_2
    iget-object v3, p0, Lxp0;->n:Lt92;

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 49
    .line 50
    .line 51
    :catch_1
    iget-object v3, p0, Lxp0;->h:Lsm1;

    .line 52
    .line 53
    check-cast v3, Lcp0;

    .line 54
    .line 55
    invoke-virtual {v3, v2, v1, p2}, Lcp0;->a(Ljava/io/IOException;ILul1;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 62
    .line 63
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v5, "I/O exception ("

    .line 74
    .line 75
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v5, ") caught when connecting to "

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v5, ": "

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 117
    .line 118
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_2

    .line 123
    .line 124
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-object v2, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 134
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v4, "Retrying connect to "

    .line 138
    .line 139
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_3
    throw v2
.end method

.method public final execute(Lem1;Lom1;Lul1;)Lvm1;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    iget-object v4, v1, Lxp0;->g:Lnm1;

    .line 8
    .line 9
    iget-object v5, v1, Lxp0;->f:Lqm1;

    .line 10
    .line 11
    const-string v6, "http.user-token"

    .line 12
    .line 13
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    iget-object v8, v1, Lxp0;->o:Ltj;

    .line 16
    .line 17
    const-string v0, "http.auth.target-scope"

    .line 18
    .line 19
    invoke-interface {v3, v8, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v9, v1, Lxp0;->p:Ltj;

    .line 23
    .line 24
    const-string v0, "http.auth.proxy-scope"

    .line 25
    .line 26
    invoke-interface {v3, v9, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    instance-of v0, v2, Lzl1;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lp11;

    .line 34
    .line 35
    move-object v10, v2

    .line 36
    check-cast v10, Lzl1;

    .line 37
    .line 38
    invoke-direct {v0, v10}, Lg73;-><init>(Lom1;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v10}, Lzl1;->getEntity()Lxl1;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    invoke-virtual {v0, v10}, Lp11;->setEntity(Lxl1;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lg73;

    .line 50
    .line 51
    invoke-direct {v0, v2}, Lg73;-><init>(Lom1;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v10, v1, Lxp0;->m:Lkm1;

    .line 55
    .line 56
    invoke-virtual {v0, v10}, Le1;->setParams(Lkm1;)V

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    move-object/from16 v11, p1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v0}, Le1;->getParams()Lkm1;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    const-string v12, "http.default-host"

    .line 69
    .line 70
    invoke-interface {v11, v12}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    check-cast v11, Lem1;

    .line 75
    .line 76
    :goto_1
    iget-object v12, v1, Lxp0;->c:Lzm1;

    .line 77
    .line 78
    invoke-interface {v12, v11, v0, v3}, Lzm1;->f(Lem1;Lom1;Lul1;)Lym1;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-virtual {v0}, Le1;->getParams()Lkm1;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    const-string v13, "http.virtual-host"

    .line 87
    .line 88
    invoke-interface {v12, v13}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    check-cast v12, Lem1;

    .line 93
    .line 94
    iput-object v12, v1, Lxp0;->u:Lem1;

    .line 95
    .line 96
    if-eqz v12, :cond_3

    .line 97
    .line 98
    iget v13, v12, Lem1;->p:I

    .line 99
    .line 100
    const/4 v14, -0x1

    .line 101
    if-ne v13, v14, :cond_3

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    move-object/from16 v13, p1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    iget-object v13, v11, Lym1;->n:Lem1;

    .line 109
    .line 110
    :goto_2
    iget v13, v13, Lem1;->p:I

    .line 111
    .line 112
    if-eq v13, v14, :cond_3

    .line 113
    .line 114
    new-instance v14, Lem1;

    .line 115
    .line 116
    iget-object v15, v12, Lem1;->n:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v12, v12, Lem1;->q:Ljava/lang/String;

    .line 119
    .line 120
    invoke-direct {v14, v15, v13, v12}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iput-object v14, v1, Lxp0;->u:Lem1;

    .line 124
    .line 125
    :cond_3
    new-instance v12, Lxh1;

    .line 126
    .line 127
    invoke-direct {v12, v0, v11}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    move v13, v0

    .line 132
    move-object v14, v12

    .line 133
    const/4 v15, 0x0

    .line 134
    move-object/from16 v0, p1

    .line 135
    .line 136
    move v12, v13

    .line 137
    :goto_3
    iget-object v11, v14, Lxh1;->o:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v11, Lym1;

    .line 140
    .line 141
    move-object/from16 v16, v5

    .line 142
    .line 143
    const-string v5, "IOException releasing connection"

    .line 144
    .line 145
    if-nez v12, :cond_18

    .line 146
    .line 147
    :try_start_0
    iget-object v15, v14, Lxh1;->n:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v15, Lg73;

    .line 150
    .line 151
    move/from16 p1, v12

    .line 152
    .line 153
    invoke-interface {v3, v6}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    move-object/from16 v17, v0

    .line 158
    .line 159
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 160
    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    iget-object v0, v1, Lxp0;->b:Lg60;

    .line 164
    .line 165
    invoke-interface {v0, v11, v12}, Lg60;->g(Lym1;Ljava/lang/Object;)Li60;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object/from16 v18, v12

    .line 170
    .line 171
    instance-of v12, v2, Lj0;

    .line 172
    .line 173
    if-eqz v12, :cond_4

    .line 174
    .line 175
    move-object v12, v2

    .line 176
    check-cast v12, Lj0;

    .line 177
    .line 178
    invoke-virtual {v12, v0}, Lj0;->setConnectionRequest(Li60;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    move/from16 v19, v13

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :catch_0
    move-exception v0

    .line 185
    goto/16 :goto_15

    .line 186
    .line 187
    :catch_1
    move-exception v0

    .line 188
    goto/16 :goto_16

    .line 189
    .line 190
    :catch_2
    move-exception v0

    .line 191
    goto/16 :goto_17

    .line 192
    .line 193
    :goto_4
    invoke-static {v10}, Lqn0;->t(Lkm1;)J

    .line 194
    .line 195
    .line 196
    move-result-wide v12
    :try_end_0
    .catch Lje0; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcm1; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :try_start_1
    invoke-interface {v0, v12, v13}, Li60;->c(J)Lt92;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, v1, Lxp0;->n:Lt92;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lje0; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcm1; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    .line 203
    :try_start_2
    invoke-static {v10}, Lmt1;->M(Lkm1;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 210
    .line 211
    invoke-interface {v0}, Lsl1;->isOpen()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    iget-object v0, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 218
    .line 219
    const-string v12, "Stale connection check"

    .line 220
    .line 221
    invoke-interface {v0, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 225
    .line 226
    invoke-interface {v0}, Lsl1;->l0()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_6

    .line 231
    .line 232
    iget-object v0, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 233
    .line 234
    const-string v12, "Stale connection detected"

    .line 235
    .line 236
    invoke-interface {v0, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 240
    .line 241
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 250
    .line 251
    .line 252
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 255
    .line 256
    .line 257
    throw v0

    .line 258
    :cond_5
    move-object/from16 v18, v12

    .line 259
    .line 260
    move/from16 v19, v13

    .line 261
    .line 262
    :cond_6
    :goto_5
    instance-of v0, v2, Lj0;

    .line 263
    .line 264
    if-eqz v0, :cond_7

    .line 265
    .line 266
    move-object v0, v2

    .line 267
    check-cast v0, Lj0;

    .line 268
    .line 269
    iget-object v12, v1, Lxp0;->n:Lt92;

    .line 270
    .line 271
    invoke-virtual {v0, v12}, Lj0;->setReleaseTrigger(Lhe0;)V
    :try_end_2
    .catch Lje0; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcm1; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 272
    .line 273
    .line 274
    :cond_7
    :try_start_3
    invoke-virtual {v1, v14, v3}, Lxp0;->e(Lxh1;Lul1;)V
    :try_end_3
    .catch Lc34; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lje0; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcm1; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 275
    .line 276
    .line 277
    :try_start_4
    iget-object v0, v15, Lg73;->o:Ljava/net/URI;

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-eqz v0, :cond_8

    .line 284
    .line 285
    new-instance v12, Liv;

    .line 286
    .line 287
    invoke-direct {v12}, Liv;-><init>()V

    .line 288
    .line 289
    .line 290
    new-instance v13, Le94;

    .line 291
    .line 292
    invoke-direct {v13, v0}, Le94;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8, v12, v13}, Ltj;->e(Loj;Lyk0;)V

    .line 296
    .line 297
    .line 298
    :cond_8
    iget-object v0, v1, Lxp0;->u:Lem1;

    .line 299
    .line 300
    if-eqz v0, :cond_9

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_9
    iget-object v0, v15, Lg73;->o:Ljava/net/URI;

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    if-eqz v12, :cond_a

    .line 310
    .line 311
    invoke-static {v0}, Lz54;->a(Ljava/net/URI;)Lem1;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    goto :goto_6

    .line 316
    :cond_a
    move-object/from16 v0, v17

    .line 317
    .line 318
    :goto_6
    if-nez v0, :cond_b

    .line 319
    .line 320
    iget-object v0, v11, Lym1;->n:Lem1;

    .line 321
    .line 322
    :cond_b
    move-object v12, v0

    .line 323
    invoke-virtual {v15}, Lg73;->c()V

    .line 324
    .line 325
    .line 326
    invoke-static {v15, v11}, Lxp0;->d(Lg73;Lym1;)V

    .line 327
    .line 328
    .line 329
    const-string v0, "http.target_host"

    .line 330
    .line 331
    invoke-interface {v3, v12, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string v0, "http.route"

    .line 335
    .line 336
    invoke-interface {v3, v11, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string v0, "http.connection"

    .line 340
    .line 341
    iget-object v13, v1, Lxp0;->n:Lt92;

    .line 342
    .line 343
    invoke-interface {v3, v13, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-static {v15, v4, v3}, Lqm1;->f(Lom1;Lnm1;Lul1;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v14, v3}, Lxp0;->f(Lxh1;Lul1;)Lvm1;

    .line 353
    .line 354
    .line 355
    move-result-object v15

    .line 356
    if-nez v15, :cond_c

    .line 357
    .line 358
    move-object v0, v12

    .line 359
    move-object/from16 v5, v16

    .line 360
    .line 361
    move/from16 v13, v19

    .line 362
    .line 363
    move/from16 v12, p1

    .line 364
    .line 365
    goto/16 :goto_3

    .line 366
    .line 367
    :cond_c
    invoke-interface {v15, v10}, Lim1;->setParams(Lkm1;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v15, v4, v3}, Lqm1;->e(Lvm1;Lnm1;Lul1;)V

    .line 371
    .line 372
    .line 373
    iget-object v0, v1, Lxp0;->d:Lie0;

    .line 374
    .line 375
    invoke-interface {v0, v15, v3}, Lie0;->h(Lvm1;Lul1;)Z

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    if-eqz v13, :cond_f

    .line 380
    .line 381
    iget-object v0, v1, Lxp0;->e:Lbe0;

    .line 382
    .line 383
    check-cast v0, Lmj1;

    .line 384
    .line 385
    move-object/from16 v17, v12

    .line 386
    .line 387
    move/from16 v19, v13

    .line 388
    .line 389
    invoke-virtual {v0, v15}, Lmj1;->r(Lvm1;)J

    .line 390
    .line 391
    .line 392
    move-result-wide v12

    .line 393
    iget-object v0, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 394
    .line 395
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_e

    .line 400
    .line 401
    const-wide/16 v20, 0x0

    .line 402
    .line 403
    cmp-long v0, v12, v20

    .line 404
    .line 405
    if-lez v0, :cond_d

    .line 406
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v2, "for "

    .line 413
    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v2, " "

    .line 421
    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    goto :goto_7

    .line 433
    :cond_d
    const-string v0, "indefinitely"

    .line 434
    .line 435
    :goto_7
    iget-object v2, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 436
    .line 437
    move-object/from16 v20, v4

    .line 438
    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    move-object/from16 v21, v7

    .line 445
    .line 446
    const-string v7, "Connection can be kept alive "

    .line 447
    .line 448
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    goto :goto_8

    .line 462
    :cond_e
    move-object/from16 v20, v4

    .line 463
    .line 464
    move-object/from16 v21, v7

    .line 465
    .line 466
    :goto_8
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 467
    .line 468
    invoke-interface {v0, v12, v13}, Lt92;->T(J)V

    .line 469
    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_f
    move-object/from16 v20, v4

    .line 473
    .line 474
    move-object/from16 v21, v7

    .line 475
    .line 476
    move-object/from16 v17, v12

    .line 477
    .line 478
    move/from16 v19, v13

    .line 479
    .line 480
    :goto_9
    invoke-virtual {v1, v14, v15, v3}, Lxp0;->c(Lxh1;Lvm1;Lul1;)Lxh1;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    if-nez v2, :cond_10

    .line 485
    .line 486
    const/4 v0, 0x1

    .line 487
    move v12, v0

    .line 488
    goto :goto_d

    .line 489
    :cond_10
    if-eqz v19, :cond_11

    .line 490
    .line 491
    invoke-interface {v15}, Lvm1;->getEntity()Lxl1;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-static {v0}, Ln44;->f0(Lxl1;)V

    .line 496
    .line 497
    .line 498
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 499
    .line 500
    invoke-interface {v0}, Lt92;->O()V

    .line 501
    .line 502
    .line 503
    goto :goto_a

    .line 504
    :cond_11
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 505
    .line 506
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 507
    .line 508
    .line 509
    iget v0, v9, Ltj;->a:I

    .line 510
    .line 511
    const/4 v4, 0x2

    .line 512
    invoke-static {v0, v4}, Ldi0;->h(II)I

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-lez v0, :cond_12

    .line 517
    .line 518
    iget-object v0, v9, Ltj;->b:Loj;

    .line 519
    .line 520
    if-eqz v0, :cond_12

    .line 521
    .line 522
    invoke-virtual {v0}, Loj;->f()Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    if-eqz v0, :cond_12

    .line 527
    .line 528
    iget-object v0, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 529
    .line 530
    const-string v7, "Resetting proxy auth state"

    .line 531
    .line 532
    invoke-interface {v0, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v9}, Ltj;->c()V

    .line 536
    .line 537
    .line 538
    :cond_12
    iget v0, v8, Ltj;->a:I

    .line 539
    .line 540
    invoke-static {v0, v4}, Ldi0;->h(II)I

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-lez v0, :cond_13

    .line 545
    .line 546
    iget-object v0, v8, Ltj;->b:Loj;

    .line 547
    .line 548
    if-eqz v0, :cond_13

    .line 549
    .line 550
    invoke-virtual {v0}, Loj;->f()Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_13

    .line 555
    .line 556
    iget-object v0, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 557
    .line 558
    const-string v4, "Resetting target auth state"

    .line 559
    .line 560
    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v8}, Ltj;->c()V

    .line 564
    .line 565
    .line 566
    :cond_13
    :goto_a
    iget-object v0, v2, Lxh1;->o:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v0, Lym1;

    .line 569
    .line 570
    invoke-virtual {v0, v11}, Lym1;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v0
    :try_end_4
    .catch Lje0; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcm1; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 574
    if-nez v0, :cond_14

    .line 575
    .line 576
    :try_start_5
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 577
    .line 578
    invoke-interface {v0}, Lhe0;->r()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lje0; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcm1; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 579
    .line 580
    .line 581
    :goto_b
    const/4 v4, 0x0

    .line 582
    goto :goto_c

    .line 583
    :catch_4
    move-exception v0

    .line 584
    :try_start_6
    iget-object v4, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 585
    .line 586
    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 587
    .line 588
    .line 589
    goto :goto_b

    .line 590
    :goto_c
    iput-object v4, v1, Lxp0;->n:Lt92;

    .line 591
    .line 592
    :cond_14
    move/from16 v12, p1

    .line 593
    .line 594
    move-object v14, v2

    .line 595
    :goto_d
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 596
    .line 597
    if-eqz v0, :cond_16

    .line 598
    .line 599
    if-nez v18, :cond_15

    .line 600
    .line 601
    iget-object v0, v1, Lxp0;->l:Ld94;

    .line 602
    .line 603
    invoke-interface {v0, v3}, Ld94;->a(Lul1;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-interface {v3, v0, v6}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    goto :goto_e

    .line 611
    :cond_15
    move-object/from16 v0, v18

    .line 612
    .line 613
    :goto_e
    if-eqz v0, :cond_16

    .line 614
    .line 615
    iget-object v2, v1, Lxp0;->n:Lt92;

    .line 616
    .line 617
    invoke-interface {v2, v0}, Lt92;->m0(Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    :cond_16
    move-object/from16 v2, p2

    .line 621
    .line 622
    move-object/from16 v5, v16

    .line 623
    .line 624
    move-object/from16 v0, v17

    .line 625
    .line 626
    move/from16 v13, v19

    .line 627
    .line 628
    move-object/from16 v4, v20

    .line 629
    .line 630
    move-object/from16 v7, v21

    .line 631
    .line 632
    goto/16 :goto_3

    .line 633
    .line 634
    :catch_5
    move-exception v0

    .line 635
    iget-object v2, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 636
    .line 637
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    if-eqz v2, :cond_17

    .line 642
    .line 643
    iget-object v2, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 644
    .line 645
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    :cond_17
    iget-object v15, v0, Lc34;->n:Lvm1;

    .line 653
    .line 654
    goto :goto_f

    .line 655
    :cond_18
    move/from16 v19, v13

    .line 656
    .line 657
    :goto_f
    if-eqz v15, :cond_19

    .line 658
    .line 659
    invoke-interface {v15}, Lvm1;->getEntity()Lxl1;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    if-eqz v0, :cond_19

    .line 664
    .line 665
    invoke-interface {v15}, Lvm1;->getEntity()Lxl1;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-interface {v0}, Lxl1;->isStreaming()Z

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    if-nez v0, :cond_1a

    .line 674
    .line 675
    :cond_19
    move/from16 v4, v19

    .line 676
    .line 677
    goto :goto_10

    .line 678
    :cond_1a
    invoke-interface {v15}, Lvm1;->getEntity()Lxl1;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    new-instance v2, Ldv;

    .line 683
    .line 684
    iget-object v3, v1, Lxp0;->n:Lt92;

    .line 685
    .line 686
    move/from16 v4, v19

    .line 687
    .line 688
    invoke-direct {v2, v0, v3, v4}, Ldv;-><init>(Lxl1;Lt92;Z)V

    .line 689
    .line 690
    .line 691
    invoke-interface {v15, v2}, Lvm1;->setEntity(Lxl1;)V

    .line 692
    .line 693
    .line 694
    goto :goto_14

    .line 695
    :goto_10
    if-eqz v4, :cond_1b

    .line 696
    .line 697
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 698
    .line 699
    invoke-interface {v0}, Lt92;->O()V
    :try_end_6
    .catch Lje0; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcm1; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 700
    .line 701
    .line 702
    goto :goto_11

    .line 703
    :catch_6
    move-exception v0

    .line 704
    goto :goto_18

    .line 705
    :cond_1b
    :goto_11
    :try_start_7
    iget-object v0, v1, Lxp0;->n:Lt92;

    .line 706
    .line 707
    invoke-interface {v0}, Lhe0;->r()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lje0; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcm1; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 708
    .line 709
    .line 710
    :goto_12
    const/4 v4, 0x0

    .line 711
    goto :goto_13

    .line 712
    :catch_7
    move-exception v0

    .line 713
    :try_start_8
    iget-object v2, v1, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 714
    .line 715
    invoke-interface {v2, v5, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 716
    .line 717
    .line 718
    goto :goto_12

    .line 719
    :goto_13
    iput-object v4, v1, Lxp0;->n:Lt92;
    :try_end_8
    .catch Lje0; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcm1; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 720
    .line 721
    :goto_14
    return-object v15

    .line 722
    :goto_15
    invoke-virtual {v1}, Lxp0;->a()V

    .line 723
    .line 724
    .line 725
    throw v0

    .line 726
    :goto_16
    invoke-virtual {v1}, Lxp0;->a()V

    .line 727
    .line 728
    .line 729
    throw v0

    .line 730
    :goto_17
    invoke-virtual {v1}, Lxp0;->a()V

    .line 731
    .line 732
    .line 733
    throw v0

    .line 734
    :goto_18
    new-instance v1, Ljava/io/InterruptedIOException;

    .line 735
    .line 736
    const-string v2, "Connection has been shut down"

    .line 737
    .line 738
    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 742
    .line 743
    .line 744
    throw v1
.end method

.method public final f(Lxh1;Lul1;)Lvm1;
    .locals 6

    .line 1
    iget-object v0, p1, Lxh1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg73;

    .line 4
    .line 5
    iget-object p1, p1, Lxh1;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lym1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    :goto_0
    iget v3, p0, Lxp0;->r:I

    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    .line 15
    iput v3, p0, Lxp0;->r:I

    .line 16
    .line 17
    iget v3, v0, Lg73;->r:I

    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    iput v3, v0, Lg73;->r:I

    .line 22
    .line 23
    invoke-virtual {v0}, Lg73;->a()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 30
    .line 31
    const-string p1, "Cannot retry non-repeatable request"

    .line 32
    .line 33
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    new-instance p0, Lum2;

    .line 39
    .line 40
    const-string p1, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    .line 41
    .line 42
    invoke-direct {p0, p1, v2}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    new-instance p0, Lum2;

    .line 47
    .line 48
    const-string p1, "Cannot retry request with a non-repeatable request entity."

    .line 49
    .line 50
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    :try_start_0
    iget-object v2, p0, Lxp0;->n:Lt92;

    .line 59
    .line 60
    invoke-interface {v2}, Lsl1;->isOpen()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1}, Lym1;->c()Z

    .line 67
    .line 68
    .line 69
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 71
    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    :try_start_1
    const-string v2, "Reopening the direct connection."

    .line 75
    .line 76
    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lxp0;->n:Lt92;

    .line 80
    .line 81
    iget-object v3, p0, Lxp0;->m:Lkm1;

    .line 82
    .line 83
    invoke-interface {v2, p1, p2, v3}, Lt92;->w(Lym1;Lul1;Lkm1;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception v2

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    const-string v2, "Proxied connection. Need to start over."

    .line 90
    .line 91
    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    :goto_1
    iget-object v2, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 96
    .line 97
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    iget-object v2, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "Attempt "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v4, p0, Lxp0;->r:I

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, " to execute request"

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    iget-object v2, p0, Lxp0;->f:Lqm1;

    .line 133
    .line 134
    iget-object v3, p0, Lxp0;->n:Lt92;

    .line 135
    .line 136
    invoke-virtual {v2, v0, v3, p2}, Lqm1;->d(Lom1;Lpl1;Lul1;)Lvm1;

    .line 137
    .line 138
    .line 139
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :goto_2
    return-object v1

    .line 141
    :goto_3
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 142
    .line 143
    const-string v4, "Closing the connection."

    .line 144
    .line 145
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :try_start_2
    iget-object v3, p0, Lxp0;->n:Lt92;

    .line 149
    .line 150
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .line 152
    .line 153
    :catch_1
    iget v3, v0, Lg73;->r:I

    .line 154
    .line 155
    iget-object v4, p0, Lxp0;->h:Lsm1;

    .line 156
    .line 157
    check-cast v4, Lcp0;

    .line 158
    .line 159
    invoke-virtual {v4, v2, v3, p2}, Lcp0;->a(Ljava/io/IOException;ILul1;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_8

    .line 164
    .line 165
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 166
    .line 167
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_6

    .line 172
    .line 173
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 174
    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v5, "I/O exception ("

    .line 178
    .line 179
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v5, ") caught when processing request to "

    .line 194
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v5, ": "

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_6
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 221
    .line 222
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_7

    .line 227
    .line 228
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    :cond_7
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 238
    .line 239
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_0

    .line 244
    .line 245
    iget-object v3, p0, Lxp0;->a:Lorg/apache/commons/logging/Log;

    .line 246
    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v5, "Retrying request to "

    .line 250
    .line 251
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_8
    instance-of p0, v2, Lem2;

    .line 267
    .line 268
    if-eqz p0, :cond_9

    .line 269
    .line 270
    new-instance p0, Lem2;

    .line 271
    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    iget-object p1, p1, Lym1;->n:Lem1;

    .line 278
    .line 279
    invoke-virtual {p1}, Lem1;->a()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string p1, " failed to respond"

    .line 287
    .line 288
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 307
    .line 308
    .line 309
    throw p0

    .line 310
    :cond_9
    throw v2
.end method
