.class public final Lnd;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public r:Lwe;

.field public s:Ls33;

.field public t:I

.field public final synthetic u:Lpd;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Llw3;

.field public final synthetic x:J


# direct methods
.method public constructor <init>(Lpd;Ljava/lang/Object;Llw3;JLdh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnd;->u:Lpd;

    .line 2
    .line 3
    iput-object p2, p0, Lnd;->v:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lnd;->w:Llw3;

    .line 6
    .line 7
    iput-wide p4, p0, Lnd;->x:J

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1, p6}, Lbv3;-><init>(ILdh0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Ldh0;

    .line 3
    .line 4
    new-instance v0, Lnd;

    .line 5
    .line 6
    iget-object v3, p0, Lnd;->w:Llw3;

    .line 7
    .line 8
    iget-wide v4, p0, Lnd;->x:J

    .line 9
    .line 10
    iget-object v1, p0, Lnd;->u:Lpd;

    .line 11
    .line 12
    iget-object v2, p0, Lnd;->v:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lnd;-><init>(Lpd;Ljava/lang/Object;Llw3;JLdh0;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lt64;->a:Lt64;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lnd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget-object v1, v5, Lnd;->w:Llw3;

    .line 4
    .line 5
    iget v0, v5, Lnd;->t:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object v6, v5, Lnd;->u:Lpd;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, v5, Lnd;->s:Ls33;

    .line 15
    .line 16
    iget-object v1, v5, Lnd;->r:Lwe;

    .line 17
    .line 18
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :try_start_1
    iget-object v0, v6, Lpd;->c:Lwe;

    .line 36
    .line 37
    iget-object v3, v6, Lpd;->a:Le34;

    .line 38
    .line 39
    iget-object v3, v3, Le34;->a:Lpe1;

    .line 40
    .line 41
    iget-object v4, v5, Lnd;->v:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-interface {v3, v4}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lbf;

    .line 48
    .line 49
    iput-object v3, v0, Lwe;->p:Lbf;

    .line 50
    .line 51
    iget-object v0, v1, Llw3;->c:Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v3, v6, Lpd;->e:Lws2;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v6, Lpd;->d:Lws2;

    .line 59
    .line 60
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v6, Lpd;->c:Lwe;

    .line 66
    .line 67
    iget-object v3, v0, Lwe;->o:Lws2;

    .line 68
    .line 69
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    iget-object v3, v0, Lwe;->p:Lbf;

    .line 74
    .line 75
    invoke-static {v3}, Lc75;->t(Lbf;)Lbf;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    iget-wide v11, v0, Lwe;->q:J

    .line 80
    .line 81
    iget-boolean v15, v0, Lwe;->s:Z

    .line 82
    .line 83
    new-instance v7, Lwe;

    .line 84
    .line 85
    iget-object v8, v0, Lwe;->n:Le34;

    .line 86
    .line 87
    const-wide/high16 v13, -0x8000000000000000L

    .line 88
    .line 89
    invoke-direct/range {v7 .. v15}, Lwe;-><init>(Le34;Ljava/lang/Object;Lbf;JJZ)V

    .line 90
    .line 91
    .line 92
    move-object v0, v7

    .line 93
    new-instance v7, Ls33;

    .line 94
    .line 95
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-wide v3, v5, Lnd;->x:J

    .line 99
    .line 100
    move-wide v8, v3

    .line 101
    new-instance v4, Lmd;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-direct {v4, v6, v0, v7, v3}, Lmd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    iput-object v0, v5, Lnd;->r:Lwe;

    .line 108
    .line 109
    iput-object v7, v5, Lnd;->s:Ls33;

    .line 110
    .line 111
    iput v2, v5, Lnd;->t:I

    .line 112
    .line 113
    move-wide v2, v8

    .line 114
    invoke-static/range {v0 .. v5}, Lk75;->f(Lwe;Lre;JLpe1;Lfh0;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    sget-object v2, Lri0;->n:Lri0;

    .line 119
    .line 120
    if-ne v1, v2, :cond_2

    .line 121
    .line 122
    return-object v2

    .line 123
    :cond_2
    move-object v1, v0

    .line 124
    move-object v0, v7

    .line 125
    :goto_0
    :try_start_2
    iget-boolean v0, v0, Ls33;->n:Z

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    sget-object v0, Lse;->n:Lse;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    sget-object v0, Lse;->o:Lse;

    .line 133
    .line 134
    :goto_1
    invoke-static {v6}, Lpd;->b(Lpd;)V

    .line 135
    .line 136
    .line 137
    new-instance v2, Lte;

    .line 138
    .line 139
    invoke-direct {v2, v1, v0}, Lte;-><init>(Lwe;Lse;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .line 141
    .line 142
    return-object v2

    .line 143
    :goto_2
    invoke-static {v6}, Lpd;->b(Lpd;)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method
