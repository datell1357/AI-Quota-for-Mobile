.class public final Lpd;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Le34;

.field public final b:Ljava/lang/Object;

.field public final c:Lwe;

.field public final d:Lws2;

.field public final e:Lws2;

.field public final f:Leh2;

.field public final g:Lbf;

.field public final h:Lbf;

.field public final i:Lbf;

.field public final j:Lbf;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Le34;Ljava/lang/Float;I)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 100
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lpd;-><init>(Ljava/lang/Object;Le34;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Le34;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lpd;->a:Le34;

    .line 5
    .line 6
    iput-object p3, p0, Lpd;->b:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lwe;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x3c

    .line 12
    .line 13
    invoke-direct {v0, p2, p1, v1, v2}, Lwe;-><init>(Le34;Ljava/lang/Object;Lbf;I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lpd;->c:Lwe;

    .line 17
    .line 18
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {p2}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lpd;->d:Lws2;

    .line 25
    .line 26
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lpd;->e:Lws2;

    .line 31
    .line 32
    new-instance p1, Leh2;

    .line 33
    .line 34
    invoke-direct {p1}, Leh2;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lpd;->f:Leh2;

    .line 38
    .line 39
    new-instance p1, Lyq3;

    .line 40
    .line 41
    const/4 p2, 0x3

    .line 42
    invoke-direct {p1, p2, p3}, Lyq3;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v0, Lwe;->p:Lbf;

    .line 46
    .line 47
    instance-of p2, p1, Lxe;

    .line 48
    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    sget-object p3, Ldm0;->f:Lxe;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    instance-of p3, p1, Lye;

    .line 55
    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    sget-object p3, Ldm0;->g:Lye;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    instance-of p3, p1, Lze;

    .line 62
    .line 63
    if-eqz p3, :cond_2

    .line 64
    .line 65
    sget-object p3, Ldm0;->h:Lze;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    sget-object p3, Ldm0;->i:Laf;

    .line 69
    .line 70
    :goto_0
    iput-object p3, p0, Lpd;->g:Lbf;

    .line 71
    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    sget-object p1, Ldm0;->b:Lxe;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    instance-of p2, p1, Lye;

    .line 78
    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    sget-object p1, Ldm0;->c:Lye;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    instance-of p1, p1, Lze;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    sget-object p1, Ldm0;->d:Lze;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    sget-object p1, Ldm0;->e:Laf;

    .line 92
    .line 93
    :goto_1
    iput-object p1, p0, Lpd;->h:Lbf;

    .line 94
    .line 95
    iput-object p3, p0, Lpd;->i:Lbf;

    .line 96
    .line 97
    iput-object p1, p0, Lpd;->j:Lbf;

    .line 98
    .line 99
    return-void
.end method

.method public static final a(Lpd;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lpd;->a:Le34;

    .line 2
    .line 3
    iget-object v1, p0, Lpd;->j:Lbf;

    .line 4
    .line 5
    iget-object v2, p0, Lpd;->i:Lbf;

    .line 6
    .line 7
    iget-object v3, p0, Lpd;->g:Lbf;

    .line 8
    .line 9
    invoke-static {v2, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lpd;->h:Lbf;

    .line 16
    .line 17
    invoke-static {v1, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object p0, v0, Le34;->a:Lpe1;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lbf;

    .line 31
    .line 32
    invoke-virtual {p0}, Lbf;->b()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    move v5, v4

    .line 38
    :goto_0
    if-ge v4, v3, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Lbf;->a(I)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {v2, v4}, Lbf;->a(I)F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    cmpg-float v6, v6, v7

    .line 49
    .line 50
    if-ltz v6, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v4}, Lbf;->a(I)F

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {v1, v4}, Lbf;->a(I)F

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    cmpl-float v6, v6, v7

    .line 61
    .line 62
    if-lez v6, :cond_2

    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0, v4}, Lbf;->a(I)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v2, v4}, Lbf;->a(I)F

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v1, v4}, Lbf;->a(I)F

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-static {v5, v6, v7}, Lix;->j(FFF)F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {p0, v4, v5}, Lbf;->e(IF)V

    .line 81
    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    if-eqz v5, :cond_4

    .line 88
    .line 89
    iget-object p1, v0, Le34;->b:Lpe1;

    .line 90
    .line 91
    invoke-interface {p1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_4
    :goto_1
    return-object p1
.end method

.method public static final b(Lpd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lpd;->c:Lwe;

    .line 2
    .line 3
    iget-object v1, v0, Lwe;->p:Lbf;

    .line 4
    .line 5
    invoke-virtual {v1}, Lbf;->d()V

    .line 6
    .line 7
    .line 8
    const-wide/high16 v1, -0x8000000000000000L

    .line 9
    .line 10
    iput-wide v1, v0, Lwe;->q:J

    .line 11
    .line 12
    iget-object p0, p0, Lpd;->d:Lws2;

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static c(Lpd;Ljava/lang/Object;Lve;Lbv3;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lpd;->a:Le34;

    .line 2
    .line 3
    iget-object v0, v0, Le34;->b:Lpe1;

    .line 4
    .line 5
    iget-object v1, p0, Lpd;->c:Lwe;

    .line 6
    .line 7
    iget-object v1, v1, Lwe;->p:Lbf;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {p0}, Lpd;->d()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    iget-object v7, p0, Lpd;->a:Le34;

    .line 18
    .line 19
    new-instance v5, Llw3;

    .line 20
    .line 21
    iget-object v0, v7, Le34;->a:Lpe1;

    .line 22
    .line 23
    invoke-interface {v0, v4}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v10, v0

    .line 28
    check-cast v10, Lbf;

    .line 29
    .line 30
    move-object v9, p1

    .line 31
    move-object v6, p2

    .line 32
    invoke-direct/range {v5 .. v10}, Llw3;-><init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lpd;->c:Lwe;

    .line 36
    .line 37
    iget-wide v6, p1, Lwe;->q:J

    .line 38
    .line 39
    iget-object p1, p0, Lpd;->f:Leh2;

    .line 40
    .line 41
    new-instance v2, Lnd;

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    move-object v3, p0

    .line 45
    invoke-direct/range {v2 .. v8}, Lnd;-><init>(Lpd;Ljava/lang/Object;Llw3;JLdh0;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v2, p3}, Leh2;->a(Leh2;Lpe1;Ldh0;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd;->c:Lwe;

    .line 2
    .line 3
    iget-object p0, p0, Lwe;->o:Lws2;

    .line 4
    .line 5
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lbv3;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lod;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lod;-><init>(Lpd;Ljava/lang/Object;Ldh0;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lpd;->f:Leh2;

    .line 8
    .line 9
    invoke-static {p0, v0, p2}, Leh2;->a(Leh2;Lpe1;Ldh0;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Lri0;->n:Lri0;

    .line 14
    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 19
    .line 20
    return-object p0
.end method
