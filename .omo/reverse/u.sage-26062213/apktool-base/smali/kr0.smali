.class public abstract Lkr0;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final B:I

.field public C:Lmd2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lnm2;->e(Lmd2;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lkr0;->B:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmd2;->B0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkr0;->C:Lmd2;

    .line 5
    .line 6
    :goto_0
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lmd2;->B0()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public final C0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr0;->C:Lmd2;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmd2;->C0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lmd2;->s:Lmd2;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0}, Lmd2;->C0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final D0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmd2;->D0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkr0;->C:Lmd2;

    .line 5
    .line 6
    :goto_0
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lmd2;->D0()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public final E0(Lmd2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmd2;->n:Lmd2;

    .line 2
    .line 3
    iget-object p0, p0, Lkr0;->C:Lmd2;

    .line 4
    .line 5
    :goto_0
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmd2;->E0(Lmd2;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public final F0(Lmm2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmd2;->u:Lmm2;

    .line 2
    .line 3
    iget-object p0, p0, Lkr0;->C:Lmd2;

    .line 4
    .line 5
    :goto_0
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmd2;->F0(Lmm2;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public final G0(Ljr0;)Ljr0;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmd2;

    .line 3
    .line 4
    iget-object v0, v0, Lmd2;->n:Lmd2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq v0, p1, :cond_3

    .line 8
    .line 9
    instance-of v2, p1, Lmd2;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Lmd2;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v2, Lmd2;->r:Lmd2;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v2, v1

    .line 24
    :goto_1
    iget-object v3, p0, Lmd2;->n:Lmd2;

    .line 25
    .line 26
    if-ne v0, v3, :cond_2

    .line 27
    .line 28
    invoke-static {v2, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_2
    const-string p0, "Cannot delegate to an already delegated node"

    .line 37
    .line 38
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_3
    iget-boolean v2, v0, Lmd2;->A:Z

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    const-string v2, "Cannot delegate to an already attached node"

    .line 47
    .line 48
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    iget-object v2, p0, Lmd2;->n:Lmd2;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lmd2;->E0(Lmd2;)V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lmd2;->p:I

    .line 57
    .line 58
    invoke-static {v0}, Lnm2;->f(Lmd2;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iput v3, v0, Lmd2;->p:I

    .line 63
    .line 64
    iget v4, p0, Lmd2;->p:I

    .line 65
    .line 66
    and-int/lit8 v5, v3, 0x2

    .line 67
    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    and-int/lit8 v4, v4, 0x2

    .line 71
    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    instance-of v4, p0, Loy1;

    .line 75
    .line 76
    if-nez v4, :cond_5

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v6, "Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: "

    .line 81
    .line 82
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, "\nDelegate Node: "

    .line 89
    .line 90
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v4}, Lar1;->b(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-object v4, p0, Lkr0;->C:Lmd2;

    .line 104
    .line 105
    iput-object v4, v0, Lmd2;->s:Lmd2;

    .line 106
    .line 107
    iput-object v0, p0, Lkr0;->C:Lmd2;

    .line 108
    .line 109
    iput-object p0, v0, Lmd2;->r:Lmd2;

    .line 110
    .line 111
    iget v4, p0, Lmd2;->p:I

    .line 112
    .line 113
    or-int/2addr v3, v4

    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p0, v3, v4}, Lkr0;->I0(IZ)V

    .line 116
    .line 117
    .line 118
    iget-boolean v3, p0, Lmd2;->A:Z

    .line 119
    .line 120
    if-eqz v3, :cond_9

    .line 121
    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    and-int/lit8 v2, v2, 0x2

    .line 125
    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v2, v2, Lxy1;->S:Lbo;

    .line 134
    .line 135
    iget-object p0, p0, Lmd2;->n:Lmd2;

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Lmd2;->F0(Lmm2;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Lbo;->i()V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    :goto_2
    iget-object v1, p0, Lmd2;->u:Lmm2;

    .line 145
    .line 146
    invoke-virtual {p0, v1}, Lkr0;->F0(Lmm2;)V

    .line 147
    .line 148
    .line 149
    :goto_3
    invoke-virtual {v0}, Lmd2;->w0()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lmd2;->C0()V

    .line 153
    .line 154
    .line 155
    iget-boolean p0, v0, Lmd2;->A:Z

    .line 156
    .line 157
    if-nez p0, :cond_8

    .line 158
    .line 159
    const-string p0, "autoInvalidateInsertedNode called on unattached node"

    .line 160
    .line 161
    invoke-static {p0}, Lar1;->b(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_8
    const/4 p0, -0x1

    .line 165
    const/4 v1, 0x1

    .line 166
    invoke-static {v0, p0, v1}, Lnm2;->a(Lmd2;II)V

    .line 167
    .line 168
    .line 169
    :cond_9
    :goto_4
    return-object p1
.end method

.method public final H0(Ljr0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lkr0;->C:Lmd2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v1

    .line 5
    :goto_0
    if-eqz v0, :cond_6

    .line 6
    .line 7
    if-ne v0, p1, :cond_5

    .line 8
    .line 9
    iget-boolean p1, v0, Lmd2;->A:Z

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget-object v4, Lnm2;->a:Lcg2;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, "autoInvalidateRemovedNode called on unattached node"

    .line 19
    .line 20
    invoke-static {p1}, Lar1;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, -0x1

    .line 24
    invoke-static {v0, p1, v3}, Lnm2;->a(Lmd2;II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lmd2;->D0()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lmd2;->x0()V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v0}, Lmd2;->E0(Lmd2;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput p1, v0, Lmd2;->q:I

    .line 38
    .line 39
    iget-object p1, v0, Lmd2;->s:Lmd2;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    iput-object p1, p0, Lkr0;->C:Lmd2;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iput-object p1, v2, Lmd2;->s:Lmd2;

    .line 47
    .line 48
    :goto_1
    iput-object v1, v0, Lmd2;->s:Lmd2;

    .line 49
    .line 50
    iput-object v1, v0, Lmd2;->r:Lmd2;

    .line 51
    .line 52
    iget p1, p0, Lmd2;->p:I

    .line 53
    .line 54
    invoke-static {p0}, Lnm2;->f(Lmd2;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {p0, v0, v2}, Lkr0;->I0(IZ)V

    .line 60
    .line 61
    .line 62
    iget-boolean v2, p0, Lmd2;->A:Z

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    and-int/2addr p1, v3

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    and-int/lit8 p1, v0, 0x2

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p1, p1, Lxy1;->S:Lbo;

    .line 79
    .line 80
    iget-object p0, p0, Lmd2;->n:Lmd2;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lmd2;->F0(Lmm2;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lbo;->i()V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_2
    return-void

    .line 89
    :cond_5
    iget-object v2, v0, Lmd2;->s:Lmd2;

    .line 90
    .line 91
    move-object v5, v2

    .line 92
    move-object v2, v0

    .line 93
    move-object v0, v5

    .line 94
    goto :goto_0

    .line 95
    :cond_6
    const-string p0, "Could not find delegate: "

    .line 96
    .line 97
    invoke-static {p1, p0}, Lmk0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final I0(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lmd2;->p:I

    .line 2
    .line 3
    iput p1, p0, Lmd2;->p:I

    .line 4
    .line 5
    if-eq v0, p1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lmd2;->n:Lmd2;

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lmd2;->q:I

    .line 12
    .line 13
    :cond_0
    iget-boolean v1, p0, Lmd2;->A:Z

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    :goto_0
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lmd2;->p:I

    .line 20
    .line 21
    or-int/2addr p1, v1

    .line 22
    iput p1, p0, Lmd2;->p:I

    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-eqz p2, :cond_2

    .line 30
    .line 31
    if-ne p0, v0, :cond_2

    .line 32
    .line 33
    invoke-static {v0}, Lnm2;->f(Lmd2;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, v0, Lmd2;->p:I

    .line 38
    .line 39
    :cond_2
    if-eqz p0, :cond_3

    .line 40
    .line 41
    iget-object p2, p0, Lmd2;->s:Lmd2;

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    iget p2, p2, Lmd2;->q:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/4 p2, 0x0

    .line 49
    :goto_1
    or-int/2addr p1, p2

    .line 50
    :goto_2
    if-eqz p0, :cond_4

    .line 51
    .line 52
    iget p2, p0, Lmd2;->p:I

    .line 53
    .line 54
    or-int/2addr p1, p2

    .line 55
    iput p1, p0, Lmd2;->q:I

    .line 56
    .line 57
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    return-void
.end method

.method public final w0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lmd2;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkr0;->C:Lmd2;

    .line 5
    .line 6
    :goto_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lmd2;->u:Lmm2;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lmd2;->F0(Lmm2;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, v0, Lmd2;->A:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lmd2;->w0()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, v0, Lmd2;->s:Lmd2;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

.method public final x0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr0;->C:Lmd2;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmd2;->x0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lmd2;->s:Lmd2;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0}, Lmd2;->x0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
