.class public final Ljg0;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Ljo1;

.field public final c:Lo23;

.field public final d:Lsi;

.field public final e:Lpe1;

.field public final f:Lcw;

.field public final g:Lmg0;

.field public final h:Lcj;


# direct methods
.method public constructor <init>(Ljo1;Lo23;Lsi;Lpe1;Lcw;Lmg0;Lcj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljg0;->b:Ljo1;

    .line 5
    .line 6
    iput-object p2, p0, Ljg0;->c:Lo23;

    .line 7
    .line 8
    iput-object p3, p0, Ljg0;->d:Lsi;

    .line 9
    .line 10
    iput-object p4, p0, Ljg0;->e:Lpe1;

    .line 11
    .line 12
    iput-object p5, p0, Ljg0;->f:Lcw;

    .line 13
    .line 14
    iput-object p6, p0, Ljg0;->g:Lmg0;

    .line 15
    .line 16
    iput-object p7, p0, Ljg0;->h:Lcj;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 5

    .line 1
    new-instance v0, Lti;

    .line 2
    .line 3
    iget-object v1, p0, Ljg0;->d:Lsi;

    .line 4
    .line 5
    iget-object v2, p0, Ljg0;->c:Lo23;

    .line 6
    .line 7
    iget-object v3, p0, Ljg0;->b:Ljo1;

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v1}, Lti;-><init>(Lo23;Ljo1;Lsi;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lzi;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lzi;-><init>(Lti;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Ljg0;->e:Lpe1;

    .line 18
    .line 19
    iput-object v2, v1, Lzi;->z:Lpe1;

    .line 20
    .line 21
    iget-object v2, p0, Ljg0;->g:Lmg0;

    .line 22
    .line 23
    iput-object v2, v1, Lzi;->A:Lmg0;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    iput v4, v1, Lzi;->B:I

    .line 27
    .line 28
    iget-object v4, p0, Ljg0;->h:Lcj;

    .line 29
    .line 30
    iput-object v4, v1, Lzi;->C:Lcj;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lzi;->n(Lti;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v3, Ljo1;->o:Lqn3;

    .line 36
    .line 37
    instance-of v3, v0, Lpf0;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    check-cast v0, Lpf0;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    new-instance v3, Lkg0;

    .line 46
    .line 47
    iget-object p0, p0, Ljg0;->f:Lcw;

    .line 48
    .line 49
    invoke-direct {v3, v1, p0, v2, v0}, Lkg0;-><init>(Lzi;Lcw;Lmg0;Lpf0;)V

    .line 50
    .line 51
    .line 52
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Ljg0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Ljg0;

    .line 11
    .line 12
    iget-object v0, p0, Ljg0;->b:Ljo1;

    .line 13
    .line 14
    iget-object v2, p1, Ljg0;->b:Ljo1;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljo1;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Ljg0;->c:Lo23;

    .line 24
    .line 25
    iget-object v2, p1, Ljg0;->c:Lo23;

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    return v1

    .line 30
    :cond_3
    iget-object v0, p0, Ljg0;->d:Lsi;

    .line 31
    .line 32
    iget-object v2, p1, Ljg0;->d:Lsi;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-object v0, p0, Ljg0;->e:Lpe1;

    .line 42
    .line 43
    iget-object v2, p1, Ljg0;->e:Lpe1;

    .line 44
    .line 45
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    iget-object v0, p0, Ljg0;->f:Lcw;

    .line 53
    .line 54
    iget-object v2, p1, Ljg0;->f:Lcw;

    .line 55
    .line 56
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    iget-object v0, p0, Ljg0;->g:Lmg0;

    .line 64
    .line 65
    iget-object v2, p1, Ljg0;->g:Lmg0;

    .line 66
    .line 67
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    .line 76
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_8
    iget-object p0, p0, Ljg0;->h:Lcj;

    .line 84
    .line 85
    iget-object p1, p1, Ljg0;->h:Lcj;

    .line 86
    .line 87
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_9

    .line 92
    .line 93
    :goto_0
    return v1

    .line 94
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 95
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 9

    .line 1
    check-cast p1, Lkg0;

    .line 2
    .line 3
    iget-object v0, p1, Lkg0;->H:Lzi;

    .line 4
    .line 5
    invoke-virtual {v0}, Lzi;->h()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p1, Lkg0;->G:Lpf0;

    .line 10
    .line 11
    new-instance v3, Lti;

    .line 12
    .line 13
    iget-object v4, p0, Ljg0;->d:Lsi;

    .line 14
    .line 15
    iget-object v5, p0, Ljg0;->c:Lo23;

    .line 16
    .line 17
    iget-object v6, p0, Ljg0;->b:Ljo1;

    .line 18
    .line 19
    invoke-direct {v3, v5, v6, v4}, Lti;-><init>(Lo23;Ljo1;Lsi;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p1, Lkg0;->H:Lzi;

    .line 23
    .line 24
    iget-object v5, p0, Ljg0;->e:Lpe1;

    .line 25
    .line 26
    iput-object v5, v4, Lzi;->z:Lpe1;

    .line 27
    .line 28
    iget-object v5, p0, Ljg0;->g:Lmg0;

    .line 29
    .line 30
    iput-object v5, v4, Lzi;->A:Lmg0;

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    iput v7, v4, Lzi;->B:I

    .line 34
    .line 35
    iget-object v8, p0, Ljg0;->h:Lcj;

    .line 36
    .line 37
    iput-object v8, v4, Lzi;->C:Lcj;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Lzi;->n(Lti;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lzi;->h()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    invoke-static {v0, v1, v3, v4}, Lmn3;->a(JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object p0, p0, Ljg0;->f:Lcw;

    .line 51
    .line 52
    iput-object p0, p1, Lkg0;->B:Lcw;

    .line 53
    .line 54
    iget-object p0, v6, Ljo1;->o:Lqn3;

    .line 55
    .line 56
    instance-of v1, p0, Lpf0;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    check-cast p0, Lpf0;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    iput-object p0, p1, Lkg0;->G:Lpf0;

    .line 65
    .line 66
    iput-object v5, p1, Lkg0;->C:Lmg0;

    .line 67
    .line 68
    const/high16 p0, 0x3f800000    # 1.0f

    .line 69
    .line 70
    iput p0, p1, Lkg0;->D:F

    .line 71
    .line 72
    iput-boolean v7, p1, Lkg0;->E:Z

    .line 73
    .line 74
    iget-object p0, p1, Lkg0;->F:Ljava/lang/String;

    .line 75
    .line 76
    const-string v1, "Profile picture"

    .line 77
    .line 78
    invoke-static {p0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_1

    .line 83
    .line 84
    iput-object v1, p1, Lkg0;->F:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p1}, Lw80;->A(Leh3;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object p0, p1, Lkg0;->G:Lpf0;

    .line 90
    .line 91
    invoke-static {v2, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    if-nez p0, :cond_3

    .line 98
    .line 99
    :cond_2
    invoke-static {p1}, Lca;->u(Loy1;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-static {p1}, Lkt4;->Q(Ljx0;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Ljg0;->b:Ljo1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljo1;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Ljg0;->c:Lo23;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-object v0, p0, Ljg0;->d:Lsi;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v2

    .line 25
    mul-int/2addr v0, v1

    .line 26
    iget-object v2, p0, Ljg0;->e:Lpe1;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, v0

    .line 33
    const/16 v0, 0x3c1

    .line 34
    .line 35
    mul-int/2addr v2, v0

    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-static {v3, v2, v1}, Lxw1;->j(III)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v4, p0, Ljg0;->f:Lcw;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    add-int/2addr v4, v2

    .line 48
    mul-int/2addr v4, v1

    .line 49
    iget-object v2, p0, Ljg0;->g:Lmg0;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/2addr v2, v4

    .line 56
    mul-int/2addr v2, v1

    .line 57
    const/high16 v4, 0x3f800000    # 1.0f

    .line 58
    .line 59
    invoke-static {v4, v2, v0}, Ldi0;->l(FII)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v0, v3, v1}, Lxw1;->n(IZI)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object p0, p0, Ljg0;->h:Lcj;

    .line 68
    .line 69
    if-nez p0, :cond_0

    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    :goto_0
    add-int/2addr v0, p0

    .line 78
    mul-int/2addr v0, v1

    .line 79
    const p0, -0x61947e99

    .line 80
    .line 81
    .line 82
    add-int/2addr v0, p0

    .line 83
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ContentPainterElement(request="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ljg0;->b:Ljo1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", imageLoader="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ljg0;->c:Lo23;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", modelEqualityDelegate="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ljg0;->d:Lsi;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", transform="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ljg0;->e:Lpe1;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", onState=null, filterQuality="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, "Low"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", alignment="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Ljg0;->f:Lcw;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", contentScale="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Ljg0;->g:Lmg0;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", alpha=1.0, colorFilter=null, clipToBounds=true, previewHandler="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Ljg0;->h:Lcj;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p0, ", contentDescription=Profile picture)"

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
