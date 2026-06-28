.class public final Lo83;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Las0;


# instance fields
.field public A:Las0;

.field public B:Lhy1;

.field public C:I

.field public D:Lfl4;

.field public n:I

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:J

.field public t:J

.field public u:F

.field public v:J

.field public w:Ljl3;

.field public x:Z

.field public y:J

.field public z:Lby1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lo83;->o:F

    .line 7
    .line 8
    iput v0, p0, Lo83;->p:F

    .line 9
    .line 10
    iput v0, p0, Lo83;->q:F

    .line 11
    .line 12
    sget-wide v0, Ldi1;->a:J

    .line 13
    .line 14
    iput-wide v0, p0, Lo83;->s:J

    .line 15
    .line 16
    iput-wide v0, p0, Lo83;->t:J

    .line 17
    .line 18
    const/high16 v0, 0x41000000    # 8.0f

    .line 19
    .line 20
    iput v0, p0, Lo83;->u:F

    .line 21
    .line 22
    sget-wide v0, Lf14;->b:J

    .line 23
    .line 24
    iput-wide v0, p0, Lo83;->v:J

    .line 25
    .line 26
    sget-object v0, Lk75;->d:Lfk1;

    .line 27
    .line 28
    iput-object v0, p0, Lo83;->w:Ljl3;

    .line 29
    .line 30
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide v0, p0, Lo83;->y:J

    .line 36
    .line 37
    sget-object v0, Lby1;->a:Lby1;

    .line 38
    .line 39
    iput-object v0, p0, Lo83;->z:Lby1;

    .line 40
    .line 41
    invoke-static {}, Lse0;->a()Lds0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lo83;->A:Las0;

    .line 46
    .line 47
    sget-object v0, Lhy1;->n:Lhy1;

    .line 48
    .line 49
    iput-object v0, p0, Lo83;->B:Lhy1;

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    iput v0, p0, Lo83;->C:I

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lo83;->e(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lo83;->g(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lo83;->c(F)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lo83;->r:F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    cmpg-float v0, v0, v1

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, p0, Lo83;->n:I

    .line 21
    .line 22
    or-int/lit8 v0, v0, 0x20

    .line 23
    .line 24
    iput v0, p0, Lo83;->n:I

    .line 25
    .line 26
    iput v1, p0, Lo83;->r:F

    .line 27
    .line 28
    :goto_0
    sget-wide v0, Ldi1;->a:J

    .line 29
    .line 30
    iget-wide v2, p0, Lo83;->s:J

    .line 31
    .line 32
    invoke-static {v2, v3, v0, v1}, Lt70;->c(JJ)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iget v2, p0, Lo83;->n:I

    .line 39
    .line 40
    or-int/lit8 v2, v2, 0x40

    .line 41
    .line 42
    iput v2, p0, Lo83;->n:I

    .line 43
    .line 44
    iput-wide v0, p0, Lo83;->s:J

    .line 45
    .line 46
    :cond_1
    iget-wide v2, p0, Lo83;->t:J

    .line 47
    .line 48
    invoke-static {v2, v3, v0, v1}, Lt70;->c(JJ)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    iget v2, p0, Lo83;->n:I

    .line 55
    .line 56
    or-int/lit16 v2, v2, 0x80

    .line 57
    .line 58
    iput v2, p0, Lo83;->n:I

    .line 59
    .line 60
    iput-wide v0, p0, Lo83;->t:J

    .line 61
    .line 62
    :cond_2
    iget v0, p0, Lo83;->u:F

    .line 63
    .line 64
    const/high16 v1, 0x41000000    # 8.0f

    .line 65
    .line 66
    cmpg-float v0, v0, v1

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget v0, p0, Lo83;->n:I

    .line 72
    .line 73
    or-int/lit16 v0, v0, 0x800

    .line 74
    .line 75
    iput v0, p0, Lo83;->n:I

    .line 76
    .line 77
    iput v1, p0, Lo83;->u:F

    .line 78
    .line 79
    :goto_1
    sget-wide v0, Lf14;->b:J

    .line 80
    .line 81
    invoke-virtual {p0, v0, v1}, Lo83;->h(J)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lk75;->d:Lfk1;

    .line 85
    .line 86
    iget-object v1, p0, Lo83;->w:Ljl3;

    .line 87
    .line 88
    invoke-static {v1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    iget v1, p0, Lo83;->n:I

    .line 95
    .line 96
    or-int/lit16 v1, v1, 0x2000

    .line 97
    .line 98
    iput v1, p0, Lo83;->n:I

    .line 99
    .line 100
    iput-object v0, p0, Lo83;->w:Ljl3;

    .line 101
    .line 102
    :cond_4
    iget-boolean v0, p0, Lo83;->x:Z

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    iget v0, p0, Lo83;->n:I

    .line 108
    .line 109
    or-int/lit16 v0, v0, 0x4000

    .line 110
    .line 111
    iput v0, p0, Lo83;->n:I

    .line 112
    .line 113
    iput-boolean v1, p0, Lo83;->x:Z

    .line 114
    .line 115
    :cond_5
    iget v0, p0, Lo83;->C:I

    .line 116
    .line 117
    const/4 v2, 0x3

    .line 118
    if-ne v0, v2, :cond_6

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    iget v0, p0, Lo83;->n:I

    .line 122
    .line 123
    const/high16 v3, 0x80000

    .line 124
    .line 125
    or-int/2addr v0, v3

    .line 126
    iput v0, p0, Lo83;->n:I

    .line 127
    .line 128
    iput v2, p0, Lo83;->C:I

    .line 129
    .line 130
    :goto_2
    sget-object v0, Lby1;->a:Lby1;

    .line 131
    .line 132
    iget-object v2, p0, Lo83;->z:Lby1;

    .line 133
    .line 134
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_7

    .line 139
    .line 140
    iget v2, p0, Lo83;->n:I

    .line 141
    .line 142
    const/high16 v3, 0x100000

    .line 143
    .line 144
    or-int/2addr v2, v3

    .line 145
    iput v2, p0, Lo83;->n:I

    .line 146
    .line 147
    iput-object v0, p0, Lo83;->z:Lby1;

    .line 148
    .line 149
    :cond_7
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    iput-wide v2, p0, Lo83;->y:J

    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lo83;->D:Lfl4;

    .line 158
    .line 159
    iput v1, p0, Lo83;->n:I

    .line 160
    .line 161
    return-void
.end method

.method public final b()F
    .locals 0

    .line 1
    iget-object p0, p0, Lo83;->A:Las0;

    .line 2
    .line 3
    invoke-interface {p0}, Las0;->b()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c(F)V
    .locals 1

    .line 1
    iget v0, p0, Lo83;->q:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lo83;->n:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    iput v0, p0, Lo83;->n:I

    .line 13
    .line 14
    iput p1, p0, Lo83;->q:F

    .line 15
    .line 16
    return-void
.end method

.method public final e(F)V
    .locals 1

    .line 1
    iget v0, p0, Lo83;->o:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lo83;->n:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Lo83;->n:I

    .line 13
    .line 14
    iput p1, p0, Lo83;->o:F

    .line 15
    .line 16
    return-void
.end method

.method public final g(F)V
    .locals 1

    .line 1
    iget v0, p0, Lo83;->p:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lo83;->n:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    iput v0, p0, Lo83;->n:I

    .line 13
    .line 14
    iput p1, p0, Lo83;->p:F

    .line 15
    .line 16
    return-void
.end method

.method public final h(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lo83;->v:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lf14;->a(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lo83;->n:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x1000

    .line 12
    .line 13
    iput v0, p0, Lo83;->n:I

    .line 14
    .line 15
    iput-wide p1, p0, Lo83;->v:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final k()F
    .locals 0

    .line 1
    iget-object p0, p0, Lo83;->A:Las0;

    .line 2
    .line 3
    invoke-interface {p0}, Las0;->k()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
