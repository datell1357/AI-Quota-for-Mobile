.class public final Lga4;
.super Lgs2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final s:Lws2;

.field public final t:Lws2;

.field public final u:Laa4;

.field public final v:Lws2;

.field public w:F

.field public x:Low;


# direct methods
.method public constructor <init>(Lli1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lgs2;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmn3;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lmn3;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lga4;->s:Lws2;

    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lga4;->t:Lws2;

    .line 24
    .line 25
    new-instance v0, Laa4;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Laa4;-><init>(Lli1;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lje;

    .line 31
    .line 32
    const/16 v1, 0xe

    .line 33
    .line 34
    invoke-direct {p1, v1, p0}, Lje;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v0, Laa4;->f:Lne1;

    .line 38
    .line 39
    iput-object v0, p0, Lga4;->u:Laa4;

    .line 40
    .line 41
    sget-object p1, Lw13;->J:Lw13;

    .line 42
    .line 43
    new-instance v0, Lws2;

    .line 44
    .line 45
    sget-object v1, Lt64;->a:Lt64;

    .line 46
    .line 47
    invoke-direct {v0, v1, p1}, Lws2;-><init>(Ljava/lang/Object;Lw13;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lga4;->v:Lws2;

    .line 51
    .line 52
    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    .line 54
    iput p1, p0, Lga4;->w:F

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final b(F)Z
    .locals 0

    .line 1
    iput p1, p0, Lga4;->w:F

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final d(Low;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lga4;->x:Low;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-object p0, p0, Lga4;->s:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmn3;

    .line 8
    .line 9
    iget-wide v0, p0, Lmn3;->a:J

    .line 10
    .line 11
    return-wide v0
.end method

.method public final i(Lzy1;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lzy1;->n:Lx20;

    .line 2
    .line 3
    iget-object v1, p0, Lga4;->x:Low;

    .line 4
    .line 5
    iget-object v2, p0, Lga4;->u:Laa4;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v2, Laa4;->g:Lws2;

    .line 10
    .line 11
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Low;

    .line 16
    .line 17
    :cond_0
    iget-object v3, p0, Lga4;->t:Lws2;

    .line 18
    .line 19
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lzy1;->getLayoutDirection()Lhy1;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget-object v4, Lhy1;->o:Lhy1;

    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Lkx0;->U()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iget-object v0, v0, Lx20;->o:Leh;

    .line 44
    .line 45
    invoke-virtual {v0}, Leh;->z()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-virtual {v0}, Leh;->u()Lv20;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {v7}, Lv20;->j()V

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-object v7, v0, Leh;->o:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v7, Ldh1;

    .line 59
    .line 60
    const/high16 v8, -0x40800000    # -1.0f

    .line 61
    .line 62
    const/high16 v9, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-virtual {v7, v8, v9, v3, v4}, Ldh1;->s(FFJ)V

    .line 65
    .line 66
    .line 67
    iget v3, p0, Lga4;->w:F

    .line 68
    .line 69
    invoke-virtual {v2, p1, v3, v1}, Laa4;->e(Lkx0;FLow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Leh;->u()Lv20;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Lv20;->h()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v5, v6}, Leh;->K(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    invoke-virtual {v0}, Leh;->u()Lv20;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p1}, Lv20;->h()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v5, v6}, Leh;->K(J)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_1
    iget v0, p0, Lga4;->w:F

    .line 96
    .line 97
    invoke-virtual {v2, p1, v0, v1}, Laa4;->e(Lkx0;FLow;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    iget-object p0, p0, Lga4;->v:Lws2;

    .line 101
    .line 102
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-void
.end method
