.class public final Llw3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lre;


# instance fields
.field public final a:Lia4;

.field public final b:Le34;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lbf;

.field public f:Lbf;

.field public final g:Lbf;

.field public h:J

.field public i:Lbf;


# direct methods
.method public constructor <init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lve;->a(Le34;)Lia4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Llw3;->a:Lia4;

    .line 9
    .line 10
    iput-object p2, p0, Llw3;->b:Le34;

    .line 11
    .line 12
    iput-object p4, p0, Llw3;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p3, p0, Llw3;->d:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p1, p2, Le34;->a:Lpe1;

    .line 17
    .line 18
    invoke-interface {p1, p3}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lbf;

    .line 23
    .line 24
    iput-object p1, p0, Llw3;->e:Lbf;

    .line 25
    .line 26
    iget-object p1, p2, Le34;->a:Lpe1;

    .line 27
    .line 28
    invoke-interface {p1, p4}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lbf;

    .line 33
    .line 34
    iput-object p2, p0, Llw3;->f:Lbf;

    .line 35
    .line 36
    if-eqz p5, :cond_0

    .line 37
    .line 38
    invoke-static {p5}, Lc75;->t(Lbf;)Lbf;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1, p3}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lbf;

    .line 48
    .line 49
    invoke-virtual {p1}, Lbf;->c()Lbf;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    iput-object p1, p0, Llw3;->g:Lbf;

    .line 54
    .line 55
    const-wide/16 p1, -0x1

    .line 56
    .line 57
    iput-wide p1, p0, Llw3;->h:J

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Llw3;->a:Lia4;

    .line 2
    .line 3
    invoke-interface {p0}, Lia4;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b(J)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-interface {p0, p1, p2}, Lre;->g(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v4, p0, Llw3;->e:Lbf;

    .line 8
    .line 9
    iget-object v5, p0, Llw3;->f:Lbf;

    .line 10
    .line 11
    iget-object v6, p0, Llw3;->g:Lbf;

    .line 12
    .line 13
    iget-object v1, p0, Llw3;->a:Lia4;

    .line 14
    .line 15
    move-wide v2, p1

    .line 16
    invoke-interface/range {v1 .. v6}, Lia4;->p(JLbf;Lbf;Lbf;)Lbf;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lbf;->b()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-ge v0, p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lbf;->a(I)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v4, "AnimationVector cannot contain a NaN. "

    .line 40
    .line 41
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ". Animation: "

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, ", playTimeNanos: "

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lkx2;->b(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object p0, p0, Llw3;->b:Le34;

    .line 74
    .line 75
    iget-object p0, p0, Le34;->b:Lpe1;

    .line 76
    .line 77
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_2
    iget-object p0, p0, Llw3;->c:Ljava/lang/Object;

    .line 83
    .line 84
    return-object p0
.end method

.method public final c()J
    .locals 4

    .line 1
    iget-wide v0, p0, Llw3;->h:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Llw3;->e:Lbf;

    .line 10
    .line 11
    iget-object v1, p0, Llw3;->f:Lbf;

    .line 12
    .line 13
    iget-object v2, p0, Llw3;->g:Lbf;

    .line 14
    .line 15
    iget-object v3, p0, Llw3;->a:Lia4;

    .line 16
    .line 17
    invoke-interface {v3, v0, v1, v2}, Lia4;->c(Lbf;Lbf;Lbf;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Llw3;->h:J

    .line 22
    .line 23
    :cond_0
    iget-wide v0, p0, Llw3;->h:J

    .line 24
    .line 25
    return-wide v0
.end method

.method public final d()Le34;
    .locals 0

    .line 1
    iget-object p0, p0, Llw3;->b:Le34;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Llw3;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(J)Lbf;
    .locals 7

    .line 1
    invoke-interface {p0, p1, p2}, Lre;->g(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v4, p0, Llw3;->e:Lbf;

    .line 8
    .line 9
    iget-object v5, p0, Llw3;->f:Lbf;

    .line 10
    .line 11
    iget-object v6, p0, Llw3;->g:Lbf;

    .line 12
    .line 13
    iget-object v1, p0, Llw3;->a:Lia4;

    .line 14
    .line 15
    move-wide v2, p1

    .line 16
    invoke-interface/range {v1 .. v6}, Lia4;->m(JLbf;Lbf;Lbf;)Lbf;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object p1, p0, Llw3;->i:Lbf;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Llw3;->e:Lbf;

    .line 26
    .line 27
    iget-object p2, p0, Llw3;->f:Lbf;

    .line 28
    .line 29
    iget-object v0, p0, Llw3;->g:Lbf;

    .line 30
    .line 31
    iget-object v1, p0, Llw3;->a:Lia4;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2, v0}, Lia4;->q(Lbf;Lbf;Lbf;)Lbf;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Llw3;->i:Lbf;

    .line 38
    .line 39
    :cond_1
    return-object p1
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llw3;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Llw3;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, p0, Llw3;->b:Le34;

    .line 12
    .line 13
    iget-object v0, v0, Le34;->a:Lpe1;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lbf;

    .line 20
    .line 21
    iput-object p1, p0, Llw3;->e:Lbf;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Llw3;->i:Lbf;

    .line 25
    .line 26
    const-wide/16 v0, -0x1

    .line 27
    .line 28
    iput-wide v0, p0, Llw3;->h:J

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llw3;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Llw3;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, p0, Llw3;->b:Le34;

    .line 12
    .line 13
    iget-object v0, v0, Le34;->a:Lpe1;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lbf;

    .line 20
    .line 21
    iput-object p1, p0, Llw3;->f:Lbf;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Llw3;->i:Lbf;

    .line 25
    .line 26
    const-wide/16 v0, -0x1

    .line 27
    .line 28
    iput-wide v0, p0, Llw3;->h:J

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Llw3;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Llw3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {p0}, Lre;->c()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/32 v4, 0xf4240

    .line 10
    .line 11
    .line 12
    div-long/2addr v2, v4

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v5, "TargetBasedAnimation: "

    .line 16
    .line 17
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " -> "

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ",initial velocity: "

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Llw3;->g:Lbf;

    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ", duration: "

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " ms,animationSpec: "

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Llw3;->a:Lia4;

    .line 55
    .line 56
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
