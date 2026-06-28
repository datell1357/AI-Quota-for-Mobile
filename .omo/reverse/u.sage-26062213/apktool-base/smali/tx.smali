.class public final Ltx;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldb2;


# instance fields
.field public final a:Lcw;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcw;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltx;->a:Lcw;

    .line 5
    .line 6
    iput-boolean p2, p0, Ltx;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Ltx;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Ltx;

    .line 10
    .line 11
    iget-object v0, p0, Ltx;->a:Lcw;

    .line 12
    .line 13
    iget-object v1, p1, Ltx;->a:Lcw;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcw;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-boolean p0, p0, Ltx;->b:Z

    .line 23
    .line 24
    iget-boolean p1, p1, Ltx;->b:Z

    .line 25
    .line 26
    if-eq p0, p1, :cond_3

    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final f(Lgb2;Ljava/util/List;J)Leb2;
    .locals 13

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v8, Lh01;->n:Lh01;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static/range {p3 .. p4}, Lmf0;->j(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static/range {p3 .. p4}, Lmf0;->i(J)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-instance v2, Lt3;

    .line 18
    .line 19
    const/16 v4, 0xb

    .line 20
    .line 21
    invoke-direct {v2, v4}, Lt3;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0, v1, v8, v2}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    iget-boolean v0, p0, Ltx;->b:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move-wide/from16 v0, p3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide v0, -0x1fffffffdL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long v0, p3, v0

    .line 42
    .line 43
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x1

    .line 48
    const/4 v7, 0x0

    .line 49
    if-ne v4, v5, :cond_2

    .line 50
    .line 51
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lya2;

    .line 56
    .line 57
    invoke-interface {v2}, Lya2;->i()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v0, v1}, Lya2;->e(J)Ldv2;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static/range {p3 .. p4}, Lmf0;->j(J)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v4, v1, Ldv2;->n:I

    .line 69
    .line 70
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-static/range {p3 .. p4}, Lmf0;->i(J)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget v5, v1, Ldv2;->o:I

    .line 79
    .line 80
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    new-instance v0, Lrx;

    .line 85
    .line 86
    move-object v6, p0

    .line 87
    move-object v3, p1

    .line 88
    invoke-direct/range {v0 .. v6}, Lrx;-><init>(Ldv2;Lya2;Lgb2;IILtx;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v4, v5, v8, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    new-array v4, v4, [Ldv2;

    .line 101
    .line 102
    move-object v5, v4

    .line 103
    new-instance v4, Lu33;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static/range {p3 .. p4}, Lmf0;->j(J)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    iput v6, v4, Lu33;->n:I

    .line 113
    .line 114
    move-object v6, v5

    .line 115
    new-instance v5, Lu33;

    .line 116
    .line 117
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-static/range {p3 .. p4}, Lmf0;->i(J)I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    iput v9, v5, Lu33;->n:I

    .line 125
    .line 126
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    :goto_1
    if-ge v7, v9, :cond_3

    .line 131
    .line 132
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    check-cast v10, Lya2;

    .line 137
    .line 138
    invoke-interface {v10}, Lya2;->i()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-interface {v10, v0, v1}, Lya2;->e(J)Ldv2;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    aput-object v10, v6, v7

    .line 146
    .line 147
    iget v11, v4, Lu33;->n:I

    .line 148
    .line 149
    iget v12, v10, Ldv2;->n:I

    .line 150
    .line 151
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    iput v11, v4, Lu33;->n:I

    .line 156
    .line 157
    iget v11, v5, Lu33;->n:I

    .line 158
    .line 159
    iget v10, v10, Ldv2;->o:I

    .line 160
    .line 161
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    iput v10, v5, Lu33;->n:I

    .line 166
    .line 167
    add-int/lit8 v7, v7, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    iget v9, v4, Lu33;->n:I

    .line 171
    .line 172
    iget v10, v5, Lu33;->n:I

    .line 173
    .line 174
    new-instance v0, Lsx;

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    move-object v3, p1

    .line 178
    move-object v2, p2

    .line 179
    move-object v1, v6

    .line 180
    move-object v6, p0

    .line 181
    invoke-direct/range {v0 .. v7}, Lsx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p1, v9, v10, v8, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ltx;->a:Lcw;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcw;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean p0, p0, Ltx;->b:Z

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BoxMeasurePolicy(alignment="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltx;->a:Lcw;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", propagateMinConstraints="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Ltx;->b:Z

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
