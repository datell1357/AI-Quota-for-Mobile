.class public final Lxm3;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Loy1;
.implements Leh3;


# instance fields
.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:F

.field public G:J

.field public H:Ljl3;

.field public I:Z

.field public J:J

.field public K:J

.field public L:I

.field public M:Lby1;

.field public N:Lc8;


# virtual methods
.method public final a0(Lph3;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxm3;->I:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lxm3;->H:Ljl3;

    .line 7
    .line 8
    invoke-static {p1, p0}, Lnh3;->d(Lph3;Ljl3;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final h0(Lgb2;Lya2;J)Leb2;
    .locals 2

    .line 1
    invoke-interface {p2, p3, p4}, Lya2;->e(J)Ldv2;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget p3, p2, Ldv2;->n:I

    .line 6
    .line 7
    iget p4, p2, Ldv2;->o:I

    .line 8
    .line 9
    new-instance v0, Loc;

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    invoke-direct {v0, v1, p2, p0}, Loc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lh01;->n:Lh01;

    .line 16
    .line 17
    invoke-interface {p1, p3, p4, p0, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget v0, p0, Lxm3;->B:F

    .line 2
    .line 3
    iget v1, p0, Lxm3;->C:F

    .line 4
    .line 5
    iget v2, p0, Lxm3;->D:F

    .line 6
    .line 7
    iget v3, p0, Lxm3;->E:F

    .line 8
    .line 9
    iget v4, p0, Lxm3;->F:F

    .line 10
    .line 11
    iget-wide v5, p0, Lxm3;->G:J

    .line 12
    .line 13
    invoke-static {v5, v6}, Lf14;->b(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v6, p0, Lxm3;->H:Ljl3;

    .line 18
    .line 19
    iget-boolean v7, p0, Lxm3;->I:Z

    .line 20
    .line 21
    iget-wide v8, p0, Lxm3;->J:J

    .line 22
    .line 23
    invoke-static {v8, v9}, Lt70;->i(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    iget-wide v9, p0, Lxm3;->K:J

    .line 28
    .line 29
    invoke-static {v9, v10}, Lt70;->i(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    iget v10, p0, Lxm3;->L:I

    .line 34
    .line 35
    invoke-static {v10}, Lk30;->I(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    iget-object p0, p0, Lxm3;->M:Lby1;

    .line 40
    .line 41
    const-string v11, ", scaleY="

    .line 42
    .line 43
    const-string v12, ", alpha = "

    .line 44
    .line 45
    const-string v13, "SimpleGraphicsLayerModifier(scaleX="

    .line 46
    .line 47
    invoke-static {v13, v0, v11, v1, v12}, Ldi0;->z(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", translationX=0.0, translationY=0.0, shadowElevation="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", rotationX=0.0, rotationY=0.0, rotationZ=0.0, cameraDistance="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", transformOrigin="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", shape="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", clip="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", renderEffect=null, ambientShadowColor="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, ", spotShadowColor="

    .line 100
    .line 101
    const-string v2, ", compositingStrategy=CompositingStrategy(value=0), blendMode="

    .line 102
    .line 103
    invoke-static {v0, v8, v1, v9, v2}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ", colorFilter=nulloutsets="

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p0, ")"

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
