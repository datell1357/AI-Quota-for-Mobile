.class public final Lb21;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llu3;
.implements Luk0;
.implements Lcj1;
.implements Lh51;
.implements Lkm2;
.implements Lov2;
.implements Lrv2;
.implements Liz2;
.implements Lom3;


# static fields
.field public static volatile o:Lb21;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb21;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final r(Lg00;[Lg00;I)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lr03;->b:Lg00;

    .line 6
    .line 7
    invoke-virtual {v0}, Lg00;->c()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ge v4, v2, :cond_b

    .line 13
    .line 14
    add-int v5, v4, v2

    .line 15
    .line 16
    div-int/lit8 v5, v5, 0x2

    .line 17
    .line 18
    :goto_1
    const/16 v6, 0xa

    .line 19
    .line 20
    const/4 v7, -0x1

    .line 21
    if-le v5, v7, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v5}, Lg00;->h(I)B

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    if-eq v8, v6, :cond_0

    .line 28
    .line 29
    add-int/lit8 v5, v5, -0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v8, v5, 0x1

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    move v10, v9

    .line 36
    :goto_2
    add-int v11, v8, v10

    .line 37
    .line 38
    invoke-virtual {v0, v11}, Lg00;->h(I)B

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    if-eq v12, v6, :cond_1

    .line 43
    .line 44
    add-int/lit8 v10, v10, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    sub-int v6, v11, v8

    .line 48
    .line 49
    move/from16 v12, p2

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v14, 0x0

    .line 54
    :goto_3
    if-eqz v10, :cond_2

    .line 55
    .line 56
    const/16 v10, 0x2e

    .line 57
    .line 58
    const/4 v15, 0x0

    .line 59
    goto :goto_4

    .line 60
    :cond_2
    aget-object v15, v1, v12

    .line 61
    .line 62
    invoke-virtual {v15, v13}, Lg00;->h(I)B

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    sget-object v16, Lfi4;->a:[B

    .line 67
    .line 68
    and-int/lit16 v15, v15, 0xff

    .line 69
    .line 70
    move/from16 v18, v15

    .line 71
    .line 72
    move v15, v10

    .line 73
    move/from16 v10, v18

    .line 74
    .line 75
    :goto_4
    add-int v3, v8, v14

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lg00;->h(I)B

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    sget-object v17, Lfi4;->a:[B

    .line 82
    .line 83
    and-int/lit16 v3, v3, 0xff

    .line 84
    .line 85
    sub-int/2addr v10, v3

    .line 86
    if-nez v10, :cond_5

    .line 87
    .line 88
    add-int/lit8 v14, v14, 0x1

    .line 89
    .line 90
    add-int/lit8 v13, v13, 0x1

    .line 91
    .line 92
    if-eq v14, v6, :cond_5

    .line 93
    .line 94
    aget-object v3, v1, v12

    .line 95
    .line 96
    invoke-virtual {v3}, Lg00;->c()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ne v3, v13, :cond_4

    .line 101
    .line 102
    array-length v3, v1

    .line 103
    sub-int/2addr v3, v9

    .line 104
    if-ne v12, v3, :cond_3

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 108
    .line 109
    move v13, v7

    .line 110
    move v10, v9

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move v10, v15

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    :goto_5
    if-gez v10, :cond_6

    .line 115
    .line 116
    :goto_6
    move v2, v5

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    if-lez v10, :cond_7

    .line 119
    .line 120
    :goto_7
    add-int/lit8 v4, v11, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_7
    sub-int v3, v6, v14

    .line 124
    .line 125
    aget-object v7, v1, v12

    .line 126
    .line 127
    invoke-virtual {v7}, Lg00;->c()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    sub-int/2addr v7, v13

    .line 132
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    array-length v9, v1

    .line 135
    :goto_8
    if-ge v12, v9, :cond_8

    .line 136
    .line 137
    aget-object v10, v1, v12

    .line 138
    .line 139
    invoke-virtual {v10}, Lg00;->c()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    add-int/2addr v7, v10

    .line 144
    add-int/lit8 v12, v12, 0x1

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_8
    if-ge v7, v3, :cond_9

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_9
    if-le v7, v3, :cond_a

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_a
    add-int/2addr v6, v8

    .line 154
    invoke-virtual {v0, v8, v6}, Lg00;->n(II)Lg00;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sget-object v1, Lk40;->a:Ljava/nio/charset/Charset;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lg00;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0

    .line 165
    :cond_b
    const/4 v0, 0x0

    .line 166
    return-object v0
.end method

.method public static final s(Ljava/io/FileOutputStream;Lfh0;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lve2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lve2;

    .line 7
    .line 8
    iget v1, v0, Lve2;->t:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lve2;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lve2;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lfh0;-><init>(Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lve2;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lve2;->t:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-wide v3, v0, Lve2;->r:J

    .line 35
    .line 36
    iget-object p0, v0, Lve2;->q:Ljava/io/FileOutputStream;

    .line 37
    .line 38
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object p1, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v3, 0xa

    .line 54
    .line 55
    move-object p1, v0

    .line 56
    :goto_1
    const-wide/32 v0, 0xea60

    .line 57
    .line 58
    .line 59
    cmp-long v0, v3, v0

    .line 60
    .line 61
    if-gtz v0, :cond_5

    .line 62
    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-wide v8, 0x7fffffffffffffffL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    const-wide/16 v6, 0x0

    .line 74
    .line 75
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    const-string v5, "Resource deadlock would occur"

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    invoke-static {v1, v5, v6}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-ne v1, v2, :cond_4

    .line 98
    .line 99
    iput-object p0, p1, Lve2;->q:Ljava/io/FileOutputStream;

    .line 100
    .line 101
    iput-wide v3, p1, Lve2;->r:J

    .line 102
    .line 103
    iput v2, p1, Lve2;->t:I

    .line 104
    .line 105
    invoke-static {v3, v4, p1}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v1, Lri0;->n:Lri0;

    .line 110
    .line 111
    if-ne v0, v1, :cond_3

    .line 112
    .line 113
    move-object v0, v1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    :goto_2
    const-wide/16 v0, 0x2

    .line 116
    .line 117
    mul-long/2addr v3, v0

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    throw v0

    .line 120
    :cond_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-wide v8, 0x7fffffffffffffffL

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    const/4 v10, 0x0

    .line 130
    const-wide/16 v6, 0x0

    .line 131
    .line 132
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    :goto_3
    return-object v0
.end method

.method public static t(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, v1

    .line 24
    check-cast v2, Ld03;

    .line 25
    .line 26
    sget-object v3, Ld03;->p:Ld03;

    .line 27
    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-static {v0, v1}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_1
    if-ge v2, v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    check-cast v3, Ld03;

    .line 59
    .line 60
    iget-object v3, v3, Ld03;->n:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-object p0
.end method

.method public static u(Ljava/util/List;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsy;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lb21;->t(Ljava/util/List;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v0, v4}, Lsy;->o0(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lsy;->u0(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-wide v1, v0, Lsy;->o:J

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lsy;->K(J)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static v(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;)Lyh2;
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lyh2;

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    move-object v4, p2

    .line 24
    move-object v5, p3

    .line 25
    move-object v6, p4

    .line 26
    invoke-direct/range {v1 .. v8}, Lyh2;-><init>(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public static w(Ljava/lang/String;Lpb1;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    sget-object v0, Lpb1;->p:Lpb1;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-static {p1, p2}, Lgg4;->B(Lpb1;I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_3
    :goto_0
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static x(Lb21;Ljava/util/List;II)Lpa3;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    int-to-long v3, v3

    .line 12
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-long v5, v2

    .line 17
    const/16 v2, 0x20

    .line 18
    .line 19
    shl-long/2addr v3, v2

    .line 20
    const-wide v7, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v5, v7

    .line 26
    or-long/2addr v3, v5

    .line 27
    and-int/lit8 v5, p3, 0x8

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v9, 0x0

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    move v5, v9

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v5, v6

    .line 36
    :goto_0
    const/high16 v12, 0x43b40000    # 360.0f

    .line 37
    .line 38
    if-eqz v5, :cond_9

    .line 39
    .line 40
    invoke-static {}, Ltv4;->p()La42;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v13, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 54
    .line 55
    .line 56
    move-result v14

    .line 57
    move v15, v9

    .line 58
    :goto_1
    if-ge v15, v14, :cond_1

    .line 59
    .line 60
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v16

    .line 64
    move/from16 p0, v2

    .line 65
    .line 66
    move-object/from16 v2, v16

    .line 67
    .line 68
    check-cast v2, Lsa2;

    .line 69
    .line 70
    sget-object v16, Lta2;->a:Lb21;

    .line 71
    .line 72
    move-wide/from16 v16, v7

    .line 73
    .line 74
    iget-wide v7, v2, Lsa2;->a:J

    .line 75
    .line 76
    invoke-static {v7, v8, v3, v4}, Lgo2;->d(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    const/high16 p3, 0x40000000    # 2.0f

    .line 81
    .line 82
    const v2, 0x40490fdb    # (float)Math.PI

    .line 83
    .line 84
    .line 85
    and-long v10, v7, v16

    .line 86
    .line 87
    long-to-int v10, v10

    .line 88
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    shr-long v7, v7, p0

    .line 93
    .line 94
    long-to-int v7, v7

    .line 95
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    float-to-double v10, v10

    .line 100
    float-to-double v7, v7

    .line 101
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    double-to-float v7, v7

    .line 106
    const/high16 v8, 0x43340000    # 180.0f

    .line 107
    .line 108
    mul-float/2addr v7, v8

    .line 109
    div-float/2addr v7, v2

    .line 110
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v15, v15, 0x1

    .line 118
    .line 119
    move/from16 v2, p0

    .line 120
    .line 121
    move-wide/from16 v7, v16

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    move/from16 p0, v2

    .line 125
    .line 126
    move-wide/from16 v16, v7

    .line 127
    .line 128
    const/high16 p3, 0x40000000    # 2.0f

    .line 129
    .line 130
    const v2, 0x40490fdb    # (float)Math.PI

    .line 131
    .line 132
    .line 133
    new-instance v7, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    move v10, v9

    .line 147
    :goto_2
    if-ge v10, v8, :cond_2

    .line 148
    .line 149
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    check-cast v11, Lsa2;

    .line 154
    .line 155
    iget-wide v14, v11, Lsa2;->a:J

    .line 156
    .line 157
    invoke-static {v14, v15, v3, v4}, Lgo2;->d(JJ)J

    .line 158
    .line 159
    .line 160
    move-result-wide v14

    .line 161
    invoke-static {v14, v15}, Lgo2;->c(J)F

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    add-int/lit8 v10, v10, 0x1

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_2
    mul-int/lit8 v1, v1, 0x2

    .line 176
    .line 177
    int-to-float v8, v1

    .line 178
    div-float v8, v12, v8

    .line 179
    .line 180
    move v10, v9

    .line 181
    :goto_3
    if-ge v10, v1, :cond_8

    .line 182
    .line 183
    new-instance v11, Lms1;

    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    sub-int/2addr v14, v6

    .line 190
    invoke-direct {v11, v9, v14, v6}, Lks1;-><init>(III)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11}, Lks1;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    :goto_4
    move-object v14, v11

    .line 198
    check-cast v14, Lls1;

    .line 199
    .line 200
    iget-boolean v14, v14, Lls1;->p:Z

    .line 201
    .line 202
    if-eqz v14, :cond_7

    .line 203
    .line 204
    move-object v14, v11

    .line 205
    check-cast v14, Les1;

    .line 206
    .line 207
    invoke-virtual {v14}, Les1;->nextInt()I

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    rem-int/lit8 v15, v10, 0x2

    .line 212
    .line 213
    if-nez v15, :cond_3

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v18

    .line 220
    add-int/lit8 v18, v18, -0x1

    .line 221
    .line 222
    sub-int v14, v18, v14

    .line 223
    .line 224
    :goto_5
    if-gtz v14, :cond_5

    .line 225
    .line 226
    if-nez v15, :cond_4

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_4
    move/from16 v18, v2

    .line 230
    .line 231
    move/from16 p2, v10

    .line 232
    .line 233
    move v15, v12

    .line 234
    move-object/from16 v19, v13

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_5
    :goto_6
    sget-object v18, Lta2;->a:Lb21;

    .line 238
    .line 239
    move/from16 v18, v2

    .line 240
    .line 241
    int-to-float v2, v10

    .line 242
    mul-float/2addr v2, v8

    .line 243
    if-nez v15, :cond_6

    .line 244
    .line 245
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v15

    .line 249
    check-cast v15, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    .line 252
    .line 253
    .line 254
    move-result v15

    .line 255
    goto :goto_7

    .line 256
    :cond_6
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v15

    .line 260
    check-cast v15, Ljava/lang/Number;

    .line 261
    .line 262
    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    .line 263
    .line 264
    .line 265
    move-result v15

    .line 266
    sub-float v15, v8, v15

    .line 267
    .line 268
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v19

    .line 272
    check-cast v19, Ljava/lang/Number;

    .line 273
    .line 274
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    .line 275
    .line 276
    .line 277
    move-result v19

    .line 278
    mul-float v19, v19, p3

    .line 279
    .line 280
    add-float v15, v19, v15

    .line 281
    .line 282
    :goto_7
    add-float/2addr v2, v15

    .line 283
    div-float/2addr v2, v12

    .line 284
    mul-float v2, v2, p3

    .line 285
    .line 286
    mul-float v2, v2, v18

    .line 287
    .line 288
    move v15, v12

    .line 289
    move-object/from16 v19, v13

    .line 290
    .line 291
    float-to-double v12, v2

    .line 292
    move/from16 p2, v10

    .line 293
    .line 294
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 295
    .line 296
    .line 297
    move-result-wide v9

    .line 298
    double-to-float v9, v9

    .line 299
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 300
    .line 301
    .line 302
    move-result-wide v12

    .line 303
    double-to-float v10, v12

    .line 304
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    int-to-long v12, v9

    .line 309
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    int-to-long v9, v9

    .line 314
    shl-long v12, v12, p0

    .line 315
    .line 316
    and-long v9, v9, v16

    .line 317
    .line 318
    or-long/2addr v9, v12

    .line 319
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    check-cast v12, Ljava/lang/Number;

    .line 324
    .line 325
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 326
    .line 327
    .line 328
    move-result v12

    .line 329
    invoke-static {v12, v9, v10}, Lgo2;->f(FJ)J

    .line 330
    .line 331
    .line 332
    move-result-wide v9

    .line 333
    invoke-static {v9, v10, v3, v4}, Lgo2;->e(JJ)J

    .line 334
    .line 335
    .line 336
    move-result-wide v9

    .line 337
    new-instance v12, Lsa2;

    .line 338
    .line 339
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v13

    .line 343
    check-cast v13, Lsa2;

    .line 344
    .line 345
    iget-object v13, v13, Lsa2;->b:Lbi0;

    .line 346
    .line 347
    invoke-direct {v12, v9, v10, v13}, Lsa2;-><init>(JLbi0;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5, v12}, La42;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    :goto_8
    move/from16 v10, p2

    .line 354
    .line 355
    move v12, v15

    .line 356
    move/from16 v2, v18

    .line 357
    .line 358
    move-object/from16 v13, v19

    .line 359
    .line 360
    const/4 v9, 0x0

    .line 361
    goto/16 :goto_4

    .line 362
    .line 363
    :cond_7
    move/from16 v18, v2

    .line 364
    .line 365
    move/from16 p2, v10

    .line 366
    .line 367
    move v15, v12

    .line 368
    move-object/from16 v19, v13

    .line 369
    .line 370
    add-int/lit8 v10, p2, 0x1

    .line 371
    .line 372
    const/4 v9, 0x0

    .line 373
    goto/16 :goto_3

    .line 374
    .line 375
    :cond_8
    invoke-static {v5}, Ltv4;->l(La42;)La42;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    :goto_9
    move-wide v4, v3

    .line 380
    goto/16 :goto_b

    .line 381
    .line 382
    :cond_9
    move/from16 p0, v2

    .line 383
    .line 384
    move-wide/from16 v16, v7

    .line 385
    .line 386
    move v15, v12

    .line 387
    const/high16 p3, 0x40000000    # 2.0f

    .line 388
    .line 389
    const v18, 0x40490fdb    # (float)Math.PI

    .line 390
    .line 391
    .line 392
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    mul-int v6, v5, v1

    .line 397
    .line 398
    const/4 v2, 0x0

    .line 399
    invoke-static {v2, v6}, Lix;->a0(II)Lms1;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    new-instance v7, Ljava/util/ArrayList;

    .line 404
    .line 405
    const/16 v8, 0xa

    .line 406
    .line 407
    invoke-static {v6, v8}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6}, Lks1;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    :goto_a
    move-object v8, v6

    .line 419
    check-cast v8, Lls1;

    .line 420
    .line 421
    iget-boolean v8, v8, Lls1;->p:Z

    .line 422
    .line 423
    if-eqz v8, :cond_a

    .line 424
    .line 425
    move-object v8, v6

    .line 426
    check-cast v8, Les1;

    .line 427
    .line 428
    invoke-virtual {v8}, Les1;->nextInt()I

    .line 429
    .line 430
    .line 431
    move-result v8

    .line 432
    sget-object v9, Lta2;->a:Lb21;

    .line 433
    .line 434
    rem-int v9, v8, v5

    .line 435
    .line 436
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v10

    .line 440
    check-cast v10, Lsa2;

    .line 441
    .line 442
    iget-wide v10, v10, Lsa2;->a:J

    .line 443
    .line 444
    div-int/2addr v8, v5

    .line 445
    int-to-float v8, v8

    .line 446
    mul-float/2addr v8, v15

    .line 447
    int-to-float v12, v1

    .line 448
    div-float/2addr v8, v12

    .line 449
    div-float/2addr v8, v15

    .line 450
    mul-float v8, v8, p3

    .line 451
    .line 452
    mul-float v8, v8, v18

    .line 453
    .line 454
    invoke-static {v10, v11, v3, v4}, Lgo2;->d(JJ)J

    .line 455
    .line 456
    .line 457
    move-result-wide v10

    .line 458
    shr-long v12, v10, p0

    .line 459
    .line 460
    long-to-int v12, v12

    .line 461
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 462
    .line 463
    .line 464
    move-result v13

    .line 465
    move-wide/from16 v19, v3

    .line 466
    .line 467
    float-to-double v2, v8

    .line 468
    move v8, v5

    .line 469
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 470
    .line 471
    .line 472
    move-result-wide v4

    .line 473
    double-to-float v4, v4

    .line 474
    mul-float/2addr v13, v4

    .line 475
    and-long v4, v10, v16

    .line 476
    .line 477
    long-to-int v4, v4

    .line 478
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 479
    .line 480
    .line 481
    move-result v5

    .line 482
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 483
    .line 484
    .line 485
    move-result-wide v10

    .line 486
    double-to-float v10, v10

    .line 487
    mul-float/2addr v5, v10

    .line 488
    sub-float/2addr v13, v5

    .line 489
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 494
    .line 495
    .line 496
    move-result-wide v10

    .line 497
    double-to-float v10, v10

    .line 498
    mul-float/2addr v5, v10

    .line 499
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 504
    .line 505
    .line 506
    move-result-wide v2

    .line 507
    double-to-float v2, v2

    .line 508
    mul-float/2addr v4, v2

    .line 509
    add-float/2addr v4, v5

    .line 510
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    int-to-long v2, v2

    .line 515
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    int-to-long v4, v4

    .line 520
    shl-long v2, v2, p0

    .line 521
    .line 522
    and-long v4, v4, v16

    .line 523
    .line 524
    or-long/2addr v2, v4

    .line 525
    move-wide/from16 v4, v19

    .line 526
    .line 527
    invoke-static {v2, v3, v4, v5}, Lgo2;->e(JJ)J

    .line 528
    .line 529
    .line 530
    move-result-wide v2

    .line 531
    new-instance v10, Lsa2;

    .line 532
    .line 533
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    check-cast v9, Lsa2;

    .line 538
    .line 539
    iget-object v9, v9, Lsa2;->b:Lbi0;

    .line 540
    .line 541
    invoke-direct {v10, v2, v3, v9}, Lsa2;-><init>(JLbi0;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-wide v3, v4

    .line 548
    move v5, v8

    .line 549
    const/4 v2, 0x0

    .line 550
    goto/16 :goto_a

    .line 551
    .line 552
    :cond_a
    move-object v0, v7

    .line 553
    goto/16 :goto_9

    .line 554
    .line 555
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    mul-int/lit8 v1, v1, 0x2

    .line 560
    .line 561
    new-array v2, v1, [F

    .line 562
    .line 563
    const/4 v9, 0x0

    .line 564
    :goto_c
    if-ge v9, v1, :cond_c

    .line 565
    .line 566
    div-int/lit8 v3, v9, 0x2

    .line 567
    .line 568
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    check-cast v3, Lsa2;

    .line 573
    .line 574
    iget-wide v6, v3, Lsa2;->a:J

    .line 575
    .line 576
    rem-int/lit8 v3, v9, 0x2

    .line 577
    .line 578
    if-nez v3, :cond_b

    .line 579
    .line 580
    shr-long v6, v6, p0

    .line 581
    .line 582
    :goto_d
    long-to-int v3, v6

    .line 583
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    goto :goto_e

    .line 588
    :cond_b
    and-long v6, v6, v16

    .line 589
    .line 590
    goto :goto_d

    .line 591
    :goto_e
    aput v3, v2, v9

    .line 592
    .line 593
    add-int/lit8 v9, v9, 0x1

    .line 594
    .line 595
    goto :goto_c

    .line 596
    :cond_c
    invoke-static {}, Ltv4;->p()La42;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    if-eqz v3, :cond_d

    .line 609
    .line 610
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    check-cast v3, Lsa2;

    .line 615
    .line 616
    iget-object v3, v3, Lsa2;->b:Lbi0;

    .line 617
    .line 618
    invoke-virtual {v1, v3}, La42;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    goto :goto_f

    .line 622
    :cond_d
    invoke-static {v1}, Ltv4;->l(La42;)La42;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    shr-long v6, v4, p0

    .line 627
    .line 628
    long-to-int v1, v6

    .line 629
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    and-long v3, v4, v16

    .line 634
    .line 635
    long-to-int v3, v3

    .line 636
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    sget-object v4, Lbi0;->b:Lbi0;

    .line 641
    .line 642
    invoke-static {v2, v4, v0, v1, v3}, Lc75;->f([FLbi0;Ljava/util/AbstractList;FF)Lpa3;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lmd2;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public c(Lpb1;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0, p1, p2}, Lb21;->w(Ljava/lang/String;Lpb1;I)Landroid/graphics/Typeface;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public d()I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public e(Lvt3;)La81;
    .locals 0

    .line 1
    new-instance p0, Le81;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public f(Lvg1;Lpb1;I)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    iget-object p0, p1, Lvg1;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p2, Lpb1;->n:I

    .line 4
    .line 5
    div-int/lit8 v0, v0, 0x64

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const-string v0, "-thin"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x4

    .line 20
    if-gt v1, v0, :cond_1

    .line 21
    .line 22
    if-ge v0, v2, :cond_1

    .line 23
    .line 24
    const-string v0, "-light"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, 0x5

    .line 35
    if-ne v0, v1, :cond_3

    .line 36
    .line 37
    const-string v0, "-medium"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const/4 v1, 0x6

    .line 45
    const/16 v2, 0x8

    .line 46
    .line 47
    if-gt v1, v0, :cond_4

    .line 48
    .line 49
    if-ge v0, v2, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    if-gt v2, v0, :cond_5

    .line 53
    .line 54
    const/16 v1, 0xb

    .line 55
    .line 56
    if-ge v0, v1, :cond_5

    .line 57
    .line 58
    const-string v0, "-black"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    if-nez v0, :cond_6

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    invoke-static {p0, p2, p3}, Lb21;->w(Ljava/lang/String;Lpb1;I)Landroid/graphics/Typeface;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 77
    .line 78
    invoke-static {p2, p3}, Lgg4;->B(Lpb1;I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p0, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_7

    .line 91
    .line 92
    invoke-static {v1, p2, p3}, Lb21;->w(Ljava/lang/String;Lpb1;I)Landroid/graphics/Typeface;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p0, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_7

    .line 101
    .line 102
    move-object v1, p0

    .line 103
    :cond_7
    :goto_1
    if-nez v1, :cond_8

    .line 104
    .line 105
    iget-object p0, p1, Lvg1;->e:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p0, p2, p3}, Lb21;->w(Ljava/lang/String;Lpb1;I)Landroid/graphics/Typeface;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_8
    return-object v1
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public h(Lmd2;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lw80;->R(Ljr0;)Lxy1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p0, p1}, Lca;->b(Lxy1;Z)Lgh3;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lse0;->x(Lgh3;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public i()Z
    .locals 6

    .line 1
    sget-object p0, Le51;->a:Le51;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget v0, Le51;->c:I

    .line 5
    .line 6
    add-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    sput v1, Le51;->c:I

    .line 9
    .line 10
    const/16 v1, 0x1e

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    sget-wide v2, Le51;->d:J

    .line 19
    .line 20
    const-wide/16 v4, 0x7530

    .line 21
    .line 22
    add-long/2addr v2, v4

    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-lez v0, :cond_3

    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    sput v0, Le51;->c:I

    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    sput-wide v1, Le51;->d:J

    .line 35
    .line 36
    sget-object v1, Le51;->b:Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    new-array v1, v0, [Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    array-length v1, v1

    .line 50
    const/16 v2, 0x320

    .line 51
    .line 52
    if-ge v1, v2, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    :cond_2
    sput-boolean v0, Le51;->e:Z

    .line 56
    .line 57
    :cond_3
    sget-boolean v0, Le51;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return v0

    .line 61
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v0
.end method

.method public j(Lxy1;JLzj1;IZ)V
    .locals 7

    .line 1
    iget-object p0, p1, Lxy1;->S:Lbo;

    .line 2
    .line 3
    iget-object p1, p0, Lbo;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lmm2;

    .line 6
    .line 7
    sget-object p5, Lmm2;->d0:Lo83;

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3}, Lmm2;->L0(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-object p0, p0, Lbo;->e:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    check-cast v0, Lmm2;

    .line 17
    .line 18
    sget-object v1, Lmm2;->g0:Lb21;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v4, p4

    .line 22
    move v6, p6

    .line 23
    invoke-virtual/range {v0 .. v6}, Lmm2;->T0(Lkm2;JLzj1;IZ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public k(Lln3;)Z
    .locals 2

    .line 1
    iget-object p0, p1, Lln3;->a:Lcu0;

    .line 2
    .line 3
    instance-of v0, p0, Lau0;

    .line 4
    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lau0;

    .line 11
    .line 12
    iget p0, p0, Lau0;->a:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p0, v1

    .line 16
    :goto_0
    const/16 v0, 0x64

    .line 17
    .line 18
    if-le p0, v0, :cond_2

    .line 19
    .line 20
    iget-object p0, p1, Lln3;->b:Lcu0;

    .line 21
    .line 22
    instance-of p1, p0, Lau0;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    check-cast p0, Lau0;

    .line 27
    .line 28
    iget v1, p0, Lau0;->a:I

    .line 29
    .line 30
    :cond_1
    if-le v1, v0, :cond_2

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public l()V
    .locals 1

    .line 1
    const-string p0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 2
    .line 3
    const-string v0, "ProfileInstaller"

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public m(Lzj1;Lxy1;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public n(ILjava/lang/Object;)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string p0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string p0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string p0, "RESULT_PARSE_EXCEPTION"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string p0, "RESULT_IO_EXCEPTION"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string p0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string p0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string p0, "RESULT_NOT_WRITABLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string p0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string p0, "RESULT_ALREADY_INSTALLED"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string p0, "RESULT_INSTALL_SUCCESS"

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x6

    .line 37
    const-string v1, "ProfileInstaller"

    .line 38
    .line 39
    if-eq p1, v0, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x7

    .line 42
    if-eq p1, v0, :cond_0

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    if-eq p1, v0, :cond_0

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public o(JLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Lpv1;)Lmu3;
    .locals 6

    .line 1
    new-instance v0, Lje1;

    .line 2
    .line 3
    iget-object p0, p1, Lpv1;->e:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    check-cast v1, Landroid/content/Context;

    .line 7
    .line 8
    iget-object v2, p1, Lpv1;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p0, p1, Lpv1;->f:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, p0

    .line 13
    check-cast v3, Ld90;

    .line 14
    .line 15
    iget-boolean v4, p1, Lpv1;->c:Z

    .line 16
    .line 17
    iget-boolean v5, p1, Lpv1;->d:Z

    .line 18
    .line 19
    invoke-direct/range {v0 .. v5}, Lje1;-><init>(Landroid/content/Context;Ljava/lang/String;Ld90;ZZ)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public q(Lxy1;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lxy1;->x()Lbh3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lbh3;->q:Z

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    move p1, v0

    .line 14
    :cond_0
    xor-int/lit8 p0, p1, 0x1

    .line 15
    .line 16
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb21;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "SharingStarted.Eagerly"

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method public y()Lpa3;
    .locals 11

    .line 1
    sget-object v0, Lta2;->m:Lpa3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lsa2;

    .line 6
    .line 7
    const v1, 0x3e45a1cb    # 0.193f

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-long v1, v1

    .line 15
    const v3, 0x3e8dd2f2    # 0.277f

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-long v3, v3

    .line 23
    const/16 v5, 0x20

    .line 24
    .line 25
    shl-long/2addr v1, v5

    .line 26
    const-wide v6, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v3, v6

    .line 32
    or-long/2addr v1, v3

    .line 33
    new-instance v3, Lbi0;

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const v8, 0x3d591687    # 0.053f

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4, v8}, Lbi0;-><init>(IF)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v2, v3}, Lsa2;-><init>(JLbi0;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lsa2;

    .line 46
    .line 47
    const v2, 0x3e343958    # 0.176f

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    int-to-long v2, v2

    .line 55
    const v9, 0x3d6147ae    # 0.055f

    .line 56
    .line 57
    .line 58
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    int-to-long v9, v9

    .line 63
    shl-long/2addr v2, v5

    .line 64
    and-long v5, v9, v6

    .line 65
    .line 66
    or-long/2addr v2, v5

    .line 67
    new-instance v5, Lbi0;

    .line 68
    .line 69
    invoke-direct {v5, v4, v8}, Lbi0;-><init>(IF)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2, v3, v5}, Lsa2;-><init>(JLbi0;)V

    .line 73
    .line 74
    .line 75
    filled-new-array {v0, v1}, [Lsa2;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/16 v1, 0xa

    .line 84
    .line 85
    const/16 v2, 0xc

    .line 86
    .line 87
    invoke-static {p0, v0, v1, v2}, Lb21;->x(Lb21;Ljava/util/List;II)Lpa3;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lpa3;->b()Lpa3;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sput-object p0, Lta2;->m:Lpa3;

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_0
    return-object v0
.end method
