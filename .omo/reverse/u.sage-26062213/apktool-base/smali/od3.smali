.class public final synthetic Lod3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic A:Ljava/lang/Integer;

.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:Ljava/util/ArrayList;

.field public final synthetic p:Ljava/util/ArrayList;

.field public final synthetic q:Ljava/util/ArrayList;

.field public final synthetic r:La13;

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:Lhd4;

.field public final synthetic v:Lqt3;

.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:Ljava/lang/Integer;

.field public final synthetic z:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;La13;IILhd4;Lqt3;IILjava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lod3;->n:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lod3;->o:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lod3;->p:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Lod3;->q:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p5, p0, Lod3;->r:La13;

    .line 13
    .line 14
    iput p6, p0, Lod3;->s:I

    .line 15
    .line 16
    iput p7, p0, Lod3;->t:I

    .line 17
    .line 18
    iput-object p8, p0, Lod3;->u:Lhd4;

    .line 19
    .line 20
    iput-object p9, p0, Lod3;->v:Lqt3;

    .line 21
    .line 22
    iput p10, p0, Lod3;->w:I

    .line 23
    .line 24
    iput p11, p0, Lod3;->x:I

    .line 25
    .line 26
    iput-object p12, p0, Lod3;->y:Ljava/lang/Integer;

    .line 27
    .line 28
    iput-object p13, p0, Lod3;->z:Ljava/util/ArrayList;

    .line 29
    .line 30
    iput-object p14, p0, Lod3;->A:Ljava/lang/Integer;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lcv2;

    .line 2
    .line 3
    iget-object v0, p0, Lod3;->n:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Ldv2;

    .line 18
    .line 19
    invoke-static {p1, v4, v2, v2}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lod3;->o:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    move v3, v2

    .line 32
    :goto_1
    if-ge v3, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ldv2;

    .line 39
    .line 40
    invoke-static {p1, v4, v2, v2}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p0, Lod3;->p:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    move v3, v2

    .line 53
    :goto_2
    iget v4, p0, Lod3;->w:I

    .line 54
    .line 55
    if-ge v3, v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Ldv2;

    .line 62
    .line 63
    iget v6, p0, Lod3;->s:I

    .line 64
    .line 65
    iget v7, p0, Lod3;->t:I

    .line 66
    .line 67
    sub-int/2addr v6, v7

    .line 68
    iget-object v7, p0, Lod3;->v:Lqt3;

    .line 69
    .line 70
    invoke-interface {v7}, Ljt1;->getLayoutDirection()Lhy1;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    iget-object v9, p0, Lod3;->u:Lhd4;

    .line 75
    .line 76
    invoke-interface {v9, v7, v8}, Lhd4;->d(Las0;Lhy1;)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    add-int/2addr v8, v6

    .line 81
    invoke-interface {v7}, Ljt1;->getLayoutDirection()Lhy1;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-interface {v9, v7, v6}, Lhd4;->c(Las0;Lhy1;)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    sub-int/2addr v8, v6

    .line 90
    div-int/lit8 v8, v8, 0x2

    .line 91
    .line 92
    iget v6, p0, Lod3;->x:I

    .line 93
    .line 94
    sub-int/2addr v4, v6

    .line 95
    invoke-static {p1, v5, v8, v4}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Lod3;->q:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    move v3, v2

    .line 108
    :goto_3
    if-ge v3, v1, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Ldv2;

    .line 115
    .line 116
    iget-object v6, p0, Lod3;->y:Ljava/lang/Integer;

    .line 117
    .line 118
    if-eqz v6, :cond_3

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    move v6, v2

    .line 126
    :goto_4
    sub-int v6, v4, v6

    .line 127
    .line 128
    invoke-static {p1, v5, v2, v6}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    iget-object v0, p0, Lod3;->r:La13;

    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-object v1, p0, Lod3;->z:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    :goto_5
    if-ge v2, v3, :cond_5

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Ldv2;

    .line 151
    .line 152
    iget v6, v0, La13;->b:I

    .line 153
    .line 154
    iget-object v7, p0, Lod3;->A:Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    sub-int v7, v4, v7

    .line 164
    .line 165
    invoke-static {p1, v5, v6, v7}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_5
    sget-object p0, Lt64;->a:Lt64;

    .line 172
    .line 173
    return-object p0
.end method
