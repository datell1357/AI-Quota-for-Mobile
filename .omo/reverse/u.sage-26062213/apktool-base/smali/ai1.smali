.class final Lai1;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:J

.field public final g:Ljl3;

.field public final h:Z

.field public final i:J

.field public final j:J

.field public final k:Lby1;


# direct methods
.method public constructor <init>(FFFFJLjl3;ZJJLby1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lai1;->b:F

    .line 5
    .line 6
    iput p2, p0, Lai1;->c:F

    .line 7
    .line 8
    iput p3, p0, Lai1;->d:F

    .line 9
    .line 10
    iput p4, p0, Lai1;->e:F

    .line 11
    .line 12
    iput-wide p5, p0, Lai1;->f:J

    .line 13
    .line 14
    iput-object p7, p0, Lai1;->g:Ljl3;

    .line 15
    .line 16
    iput-boolean p8, p0, Lai1;->h:Z

    .line 17
    .line 18
    iput-wide p9, p0, Lai1;->i:J

    .line 19
    .line 20
    iput-wide p11, p0, Lai1;->j:J

    .line 21
    .line 22
    iput-object p13, p0, Lai1;->k:Lby1;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 3

    .line 1
    new-instance v0, Lxm3;

    .line 2
    .line 3
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lai1;->b:F

    .line 7
    .line 8
    iput v1, v0, Lxm3;->B:F

    .line 9
    .line 10
    iget v1, p0, Lai1;->c:F

    .line 11
    .line 12
    iput v1, v0, Lxm3;->C:F

    .line 13
    .line 14
    iget v1, p0, Lai1;->d:F

    .line 15
    .line 16
    iput v1, v0, Lxm3;->D:F

    .line 17
    .line 18
    iget v1, p0, Lai1;->e:F

    .line 19
    .line 20
    iput v1, v0, Lxm3;->E:F

    .line 21
    .line 22
    const/high16 v1, 0x41000000    # 8.0f

    .line 23
    .line 24
    iput v1, v0, Lxm3;->F:F

    .line 25
    .line 26
    iget-wide v1, p0, Lai1;->f:J

    .line 27
    .line 28
    iput-wide v1, v0, Lxm3;->G:J

    .line 29
    .line 30
    iget-object v1, p0, Lai1;->g:Ljl3;

    .line 31
    .line 32
    iput-object v1, v0, Lxm3;->H:Ljl3;

    .line 33
    .line 34
    iget-boolean v1, p0, Lai1;->h:Z

    .line 35
    .line 36
    iput-boolean v1, v0, Lxm3;->I:Z

    .line 37
    .line 38
    iget-wide v1, p0, Lai1;->i:J

    .line 39
    .line 40
    iput-wide v1, v0, Lxm3;->J:J

    .line 41
    .line 42
    iget-wide v1, p0, Lai1;->j:J

    .line 43
    .line 44
    iput-wide v1, v0, Lxm3;->K:J

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    iput v1, v0, Lxm3;->L:I

    .line 48
    .line 49
    iget-object p0, p0, Lai1;->k:Lby1;

    .line 50
    .line 51
    iput-object p0, v0, Lxm3;->M:Lby1;

    .line 52
    .line 53
    new-instance p0, Lc8;

    .line 54
    .line 55
    const/16 v1, 0x17

    .line 56
    .line 57
    invoke-direct {p0, v1, v0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object p0, v0, Lxm3;->N:Lc8;

    .line 61
    .line 62
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lai1;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lai1;

    .line 12
    .line 13
    iget v0, p0, Lai1;->b:F

    .line 14
    .line 15
    iget v1, p1, Lai1;->b:F

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    iget v0, p0, Lai1;->c:F

    .line 26
    .line 27
    iget v1, p1, Lai1;->c:F

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    iget v0, p0, Lai1;->d:F

    .line 38
    .line 39
    iget v1, p1, Lai1;->d:F

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    const/4 v0, 0x0

    .line 50
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_5
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_6
    iget v1, p0, Lai1;->e:F

    .line 67
    .line 68
    iget v2, p1, Lai1;->e:F

    .line 69
    .line 70
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_9

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_9
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_a

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_a
    const/high16 v0, 0x41000000    # 8.0f

    .line 99
    .line 100
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_b

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_b
    iget-wide v0, p0, Lai1;->f:J

    .line 108
    .line 109
    iget-wide v2, p1, Lai1;->f:J

    .line 110
    .line 111
    invoke-static {v0, v1, v2, v3}, Lf14;->a(JJ)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_c

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_c
    iget-object v0, p0, Lai1;->g:Ljl3;

    .line 119
    .line 120
    iget-object v1, p1, Lai1;->g:Ljl3;

    .line 121
    .line 122
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_d

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_d
    iget-boolean v0, p0, Lai1;->h:Z

    .line 130
    .line 131
    iget-boolean v1, p1, Lai1;->h:Z

    .line 132
    .line 133
    if-eq v0, v1, :cond_e

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_e
    iget-wide v0, p0, Lai1;->i:J

    .line 137
    .line 138
    iget-wide v2, p1, Lai1;->i:J

    .line 139
    .line 140
    invoke-static {v0, v1, v2, v3}, Lt70;->c(JJ)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_f

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_f
    iget-wide v0, p0, Lai1;->j:J

    .line 148
    .line 149
    iget-wide v2, p1, Lai1;->j:J

    .line 150
    .line 151
    invoke-static {v0, v1, v2, v3}, Lt70;->c(JJ)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_10

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_10
    iget-object p0, p0, Lai1;->k:Lby1;

    .line 159
    .line 160
    iget-object p1, p1, Lai1;->k:Lby1;

    .line 161
    .line 162
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-nez p0, :cond_11

    .line 167
    .line 168
    :goto_0
    const/4 p0, 0x0

    .line 169
    return p0

    .line 170
    :cond_11
    :goto_1
    const/4 p0, 0x1

    .line 171
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 2

    .line 1
    check-cast p1, Lxm3;

    .line 2
    .line 3
    iget v0, p0, Lai1;->b:F

    .line 4
    .line 5
    iput v0, p1, Lxm3;->B:F

    .line 6
    .line 7
    iget v0, p0, Lai1;->c:F

    .line 8
    .line 9
    iput v0, p1, Lxm3;->C:F

    .line 10
    .line 11
    iget v0, p0, Lai1;->d:F

    .line 12
    .line 13
    iput v0, p1, Lxm3;->D:F

    .line 14
    .line 15
    iget v0, p0, Lai1;->e:F

    .line 16
    .line 17
    iput v0, p1, Lxm3;->E:F

    .line 18
    .line 19
    const/high16 v0, 0x41000000    # 8.0f

    .line 20
    .line 21
    iput v0, p1, Lxm3;->F:F

    .line 22
    .line 23
    iget-wide v0, p0, Lai1;->f:J

    .line 24
    .line 25
    iput-wide v0, p1, Lxm3;->G:J

    .line 26
    .line 27
    iget-object v0, p0, Lai1;->g:Ljl3;

    .line 28
    .line 29
    iput-object v0, p1, Lxm3;->H:Ljl3;

    .line 30
    .line 31
    iget-boolean v0, p0, Lai1;->h:Z

    .line 32
    .line 33
    iput-boolean v0, p1, Lxm3;->I:Z

    .line 34
    .line 35
    iget-wide v0, p0, Lai1;->i:J

    .line 36
    .line 37
    iput-wide v0, p1, Lxm3;->J:J

    .line 38
    .line 39
    iget-wide v0, p0, Lai1;->j:J

    .line 40
    .line 41
    iput-wide v0, p1, Lxm3;->K:J

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    iput v0, p1, Lxm3;->L:I

    .line 45
    .line 46
    iget-object p0, p0, Lai1;->k:Lby1;

    .line 47
    .line 48
    iput-object p0, p1, Lxm3;->M:Lby1;

    .line 49
    .line 50
    iget-object p0, p1, Lxm3;->N:Lc8;

    .line 51
    .line 52
    iget-object v0, p1, Lmd2;->n:Lmd2;

    .line 53
    .line 54
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x2

    .line 60
    invoke-static {p1, v0}, Lw80;->P(Ljr0;I)Lmm2;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p1, p1, Lmm2;->G:Lmm2;

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, p0, v0}, Lmm2;->k1(Lpe1;Z)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lai1;->b:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

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
    iget v2, p0, Lai1;->c:F

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lai1;->d:F

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v3, p0, Lai1;->e:F

    .line 32
    .line 33
    invoke-static {v3, v0, v1}, Ldi0;->l(FII)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/high16 v2, 0x41000000    # 8.0f

    .line 50
    .line 51
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sget v2, Lf14;->c:I

    .line 56
    .line 57
    iget-wide v2, p0, Lai1;->f:J

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3}, Lxw1;->l(IIJ)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v2, p0, Lai1;->g:Ljl3;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/2addr v2, v0

    .line 70
    mul-int/2addr v2, v1

    .line 71
    iget-boolean v0, p0, Lai1;->h:Z

    .line 72
    .line 73
    const/16 v3, 0x3c1

    .line 74
    .line 75
    invoke-static {v2, v0, v3}, Lxw1;->n(IZI)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sget v2, Lt70;->g:I

    .line 80
    .line 81
    iget-wide v4, p0, Lai1;->i:J

    .line 82
    .line 83
    invoke-static {v0, v1, v4, v5}, Lxw1;->l(IIJ)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget-wide v4, p0, Lai1;->j:J

    .line 88
    .line 89
    invoke-static {v0, v1, v4, v5}, Lxw1;->l(IIJ)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-static {v2, v0, v1}, Lxw1;->j(III)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v1, 0x3

    .line 99
    invoke-static {v1, v0, v3}, Lxw1;->j(III)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object p0, p0, Lai1;->k:Lby1;

    .line 104
    .line 105
    invoke-virtual {p0}, Lby1;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    add-int/2addr p0, v0

    .line 110
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-wide v0, p0, Lai1;->f:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lf14;->b(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lai1;->i:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Lt70;->i(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lai1;->j:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Lt70;->i(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-static {v3}, Lk30;->I(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, ", scaleY="

    .line 25
    .line 26
    const-string v5, ", alpha="

    .line 27
    .line 28
    const-string v6, "GraphicsLayerElement(scaleX="

    .line 29
    .line 30
    iget v7, p0, Lai1;->b:F

    .line 31
    .line 32
    iget v8, p0, Lai1;->c:F

    .line 33
    .line 34
    invoke-static {v6, v7, v4, v8, v5}, Ldi0;->z(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget v5, p0, Lai1;->d:F

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ", translationX=0.0, translationY=0.0, shadowElevation="

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v5, p0, Lai1;->e:F

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v5, ", rotationX=0.0, rotationY=0.0, rotationZ=0.0, cameraDistance=8.0, transformOrigin="

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", shape="

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lai1;->g:Ljl3;

    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ", clip="

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean v0, p0, Lai1;->h:Z

    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ", renderEffect=null, ambientShadowColor="

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, ", spotShadowColor="

    .line 90
    .line 91
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ", compositingStrategy=CompositingStrategy(value=0), blendMode="

    .line 95
    .line 96
    const-string v1, ", colorFilter=null, outsets="

    .line 97
    .line 98
    invoke-static {v4, v2, v0, v3, v1}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lai1;->k:Lby1;

    .line 102
    .line 103
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p0, ")"

    .line 107
    .line 108
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method
