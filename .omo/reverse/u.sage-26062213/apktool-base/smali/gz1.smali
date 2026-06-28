.class public final Lgz1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leb2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Leb2;

.field public final synthetic c:Llz1;

.field public final synthetic d:I

.field public final synthetic e:Leb2;


# direct methods
.method public synthetic constructor <init>(Leb2;Llz1;ILeb2;I)V
    .locals 0

    .line 1
    iput p5, p0, Lgz1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lgz1;->c:Llz1;

    .line 4
    .line 5
    iput p3, p0, Lgz1;->d:I

    .line 6
    .line 7
    iput-object p4, p0, Lgz1;->e:Leb2;

    .line 8
    .line 9
    iput-object p1, p0, Lgz1;->b:Leb2;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lgz1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 7
    .line 8
    invoke-interface {p0}, Leb2;->a()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 14
    .line 15
    invoke-interface {p0}, Leb2;->a()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lgz1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 7
    .line 8
    invoke-interface {p0}, Leb2;->b()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 14
    .line 15
    invoke-interface {p0}, Leb2;->b()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    .line 1
    iget v0, p0, Lgz1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 7
    .line 8
    invoke-interface {p0}, Leb2;->c()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 14
    .line 15
    invoke-interface {p0}, Leb2;->c()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lgz1;->a:I

    .line 4
    .line 5
    iget-object v2, v0, Lgz1;->e:Leb2;

    .line 6
    .line 7
    iget v3, v0, Lgz1;->d:I

    .line 8
    .line 9
    iget-object v0, v0, Lgz1;->c:Llz1;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iput v3, v0, Llz1;->q:I

    .line 15
    .line 16
    invoke-interface {v2}, Leb2;->d()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Llz1;->n:Lxy1;

    .line 20
    .line 21
    iget-object v1, v1, Lxy1;->u:Lxy1;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget v1, v0, Llz1;->q:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Llz1;->e(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    iput v3, v0, Llz1;->r:I

    .line 32
    .line 33
    invoke-interface {v2}, Leb2;->d()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Llz1;->z:Lug2;

    .line 37
    .line 38
    iget-object v2, v0, Llz1;->y:Lkg2;

    .line 39
    .line 40
    iget-object v3, v2, Lkg2;->a:[J

    .line 41
    .line 42
    array-length v4, v3

    .line 43
    add-int/lit8 v4, v4, -0x2

    .line 44
    .line 45
    if-ltz v4, :cond_7

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_0
    aget-wide v7, v3, v6

    .line 49
    .line 50
    not-long v9, v7

    .line 51
    const/4 v11, 0x7

    .line 52
    shl-long/2addr v9, v11

    .line 53
    and-long/2addr v9, v7

    .line 54
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v9, v11

    .line 60
    cmp-long v9, v9, v11

    .line 61
    .line 62
    if-eqz v9, :cond_6

    .line 63
    .line 64
    sub-int v9, v6, v4

    .line 65
    .line 66
    not-int v9, v9

    .line 67
    ushr-int/lit8 v9, v9, 0x1f

    .line 68
    .line 69
    const/16 v10, 0x8

    .line 70
    .line 71
    rsub-int/lit8 v9, v9, 0x8

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    :goto_1
    if-ge v11, v9, :cond_5

    .line 75
    .line 76
    const-wide/16 v12, 0xff

    .line 77
    .line 78
    and-long/2addr v12, v7

    .line 79
    const-wide/16 v14, 0x80

    .line 80
    .line 81
    cmp-long v12, v12, v14

    .line 82
    .line 83
    if-gez v12, :cond_4

    .line 84
    .line 85
    shl-int/lit8 v12, v6, 0x3

    .line 86
    .line 87
    add-int/2addr v12, v11

    .line 88
    iget-object v13, v2, Lkg2;->b:[Ljava/lang/Object;

    .line 89
    .line 90
    aget-object v13, v13, v12

    .line 91
    .line 92
    iget-object v14, v2, Lkg2;->c:[Ljava/lang/Object;

    .line 93
    .line 94
    aget-object v14, v14, v12

    .line 95
    .line 96
    check-cast v14, Lnt3;

    .line 97
    .line 98
    invoke-virtual {v1, v13}, Lug2;->j(Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-ltz v15, :cond_1

    .line 103
    .line 104
    iget v5, v0, Llz1;->r:I

    .line 105
    .line 106
    if-lt v15, v5, :cond_4

    .line 107
    .line 108
    :cond_1
    if-ltz v15, :cond_2

    .line 109
    .line 110
    iget-object v5, v1, Lug2;->n:[Ljava/lang/Object;

    .line 111
    .line 112
    aget-object v16, v5, v15

    .line 113
    .line 114
    sget-object v16, Lmt3;->b:Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v16, v5, v15

    .line 117
    .line 118
    :cond_2
    iget-object v5, v0, Llz1;->w:Lkg2;

    .line 119
    .line 120
    invoke-virtual {v5, v13}, Lkg2;->b(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    invoke-interface {v14}, Lnt3;->a()V

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-virtual {v2, v12}, Lkg2;->l(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_4
    shr-long/2addr v7, v10

    .line 133
    add-int/lit8 v11, v11, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    if-ne v9, v10, :cond_7

    .line 137
    .line 138
    :cond_6
    if-eq v6, v4, :cond_7

    .line 139
    .line 140
    add-int/lit8 v6, v6, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_7
    iget v1, v0, Llz1;->q:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Llz1;->e(I)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ldf1;
    .locals 1

    .line 1
    iget v0, p0, Lgz1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 7
    .line 8
    invoke-interface {p0}, Leb2;->e()Ldf1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 14
    .line 15
    invoke-interface {p0}, Leb2;->e()Ldf1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lpe1;
    .locals 1

    .line 1
    iget v0, p0, Lgz1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 7
    .line 8
    invoke-interface {p0}, Leb2;->f()Lpe1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 14
    .line 15
    invoke-interface {p0}, Leb2;->f()Lpe1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lpe1;
    .locals 1

    .line 1
    iget v0, p0, Lgz1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 7
    .line 8
    invoke-interface {p0}, Leb2;->g()Lpe1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lgz1;->b:Leb2;

    .line 14
    .line 15
    invoke-interface {p0}, Leb2;->g()Lpe1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
