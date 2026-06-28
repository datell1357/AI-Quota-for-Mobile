.class public final Lyj3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxj3;
.implements Lty;


# instance fields
.field public final n:Lqz0;

.field public final o:[B

.field public final p:Luz;

.field public final q:I

.field public final r:Lnc2;

.field public s:Ljava/io/InputStream;

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(Lqz0;Lnc2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Buffer size"

    .line 5
    .line 6
    const/16 v1, 0x2000

    .line 7
    .line 8
    invoke-static {v1, v0}, Lw80;->N(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lyj3;->n:Lqz0;

    .line 12
    .line 13
    new-array p1, v1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lyj3;->o:[B

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lyj3;->t:I

    .line 19
    .line 20
    iput p1, p0, Lyj3;->u:I

    .line 21
    .line 22
    const/16 p1, 0x200

    .line 23
    .line 24
    iput p1, p0, Lyj3;->q:I

    .line 25
    .line 26
    iput-object p2, p0, Lyj3;->r:Lnc2;

    .line 27
    .line 28
    new-instance p1, Luz;

    .line 29
    .line 30
    invoke-direct {p1, v1}, Luz;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lyj3;->p:Luz;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 1
    iget v0, p0, Lyj3;->t:I

    .line 2
    .line 3
    iget-object v1, p0, Lyj3;->o:[B

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lyj3;->u:I

    .line 8
    .line 9
    sub-int/2addr v2, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput v3, p0, Lyj3;->t:I

    .line 17
    .line 18
    iput v2, p0, Lyj3;->u:I

    .line 19
    .line 20
    :cond_1
    iget v0, p0, Lyj3;->u:I

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    sub-int/2addr v2, v0

    .line 24
    iget-object v3, p0, Lyj3;->s:Ljava/io/InputStream;

    .line 25
    .line 26
    const-string v4, "Input stream"

    .line 27
    .line 28
    invoke-static {v3, v4}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lyj3;->s:Ljava/io/InputStream;

    .line 32
    .line 33
    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, -0x1

    .line 38
    if-ne v1, v2, :cond_2

    .line 39
    .line 40
    return v2

    .line 41
    :cond_2
    add-int/2addr v0, v1

    .line 42
    iput v0, p0, Lyj3;->u:I

    .line 43
    .line 44
    iget-object p0, p0, Lyj3;->n:Lqz0;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return v1
.end method

.method public final b()Lqz0;
    .locals 0

    .line 1
    iget-object p0, p0, Lyj3;->n:Lqz0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget v0, p0, Lyj3;->t:I

    .line 2
    .line 3
    iget p0, p0, Lyj3;->u:I

    .line 4
    .line 5
    if-ge v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final d(Lb40;)I
    .locals 12

    .line 1
    const-string v0, "Char array buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyj3;->r:Lnc2;

    .line 7
    .line 8
    iget v0, v0, Lnc2;->n:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    move v3, v1

    .line 13
    :cond_0
    :goto_0
    const/16 v4, 0xd

    .line 14
    .line 15
    const/16 v5, 0xa

    .line 16
    .line 17
    iget-object v6, p0, Lyj3;->p:Luz;

    .line 18
    .line 19
    const/4 v7, -0x1

    .line 20
    if-eqz v2, :cond_a

    .line 21
    .line 22
    iget v8, p0, Lyj3;->t:I

    .line 23
    .line 24
    :goto_1
    iget v9, p0, Lyj3;->u:I

    .line 25
    .line 26
    iget-object v10, p0, Lyj3;->o:[B

    .line 27
    .line 28
    if-ge v8, v9, :cond_2

    .line 29
    .line 30
    aget-byte v11, v10, v8

    .line 31
    .line 32
    if-ne v11, v5, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v8, v7

    .line 39
    :goto_2
    if-lez v0, :cond_5

    .line 40
    .line 41
    iget v5, v6, Luz;->o:I

    .line 42
    .line 43
    if-ltz v8, :cond_3

    .line 44
    .line 45
    move v9, v8

    .line 46
    :cond_3
    add-int/2addr v5, v9

    .line 47
    iget v9, p0, Lyj3;->t:I

    .line 48
    .line 49
    sub-int/2addr v5, v9

    .line 50
    if-ge v5, v0, :cond_4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    new-instance p0, Lmc2;

    .line 54
    .line 55
    const-string p1, "Maximum line length limit exceeded"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lmc2;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_5
    :goto_3
    if-eq v8, v7, :cond_8

    .line 62
    .line 63
    iget v2, v6, Luz;->o:I

    .line 64
    .line 65
    iget v5, p0, Lyj3;->t:I

    .line 66
    .line 67
    if-nez v2, :cond_7

    .line 68
    .line 69
    add-int/lit8 v0, v8, 0x1

    .line 70
    .line 71
    iput v0, p0, Lyj3;->t:I

    .line 72
    .line 73
    if-le v8, v5, :cond_6

    .line 74
    .line 75
    add-int/lit8 p0, v8, -0x1

    .line 76
    .line 77
    aget-byte p0, v10, p0

    .line 78
    .line 79
    if-ne p0, v4, :cond_6

    .line 80
    .line 81
    add-int/lit8 v8, v8, -0x1

    .line 82
    .line 83
    :cond_6
    sub-int/2addr v8, v5

    .line 84
    invoke-virtual {p1, v10, v5, v8}, Lb40;->c([BII)V

    .line 85
    .line 86
    .line 87
    return v8

    .line 88
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    sub-int v2, v8, v5

    .line 91
    .line 92
    invoke-virtual {v6, v10, v5, v2}, Luz;->b([BII)V

    .line 93
    .line 94
    .line 95
    iput v8, p0, Lyj3;->t:I

    .line 96
    .line 97
    :goto_4
    move v2, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_8
    invoke-virtual {p0}, Lyj3;->c()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    iget v3, p0, Lyj3;->u:I

    .line 106
    .line 107
    iget v4, p0, Lyj3;->t:I

    .line 108
    .line 109
    sub-int/2addr v3, v4

    .line 110
    invoke-virtual {v6, v10, v4, v3}, Luz;->b([BII)V

    .line 111
    .line 112
    .line 113
    iget v3, p0, Lyj3;->u:I

    .line 114
    .line 115
    iput v3, p0, Lyj3;->t:I

    .line 116
    .line 117
    :cond_9
    invoke-virtual {p0}, Lyj3;->a()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-ne v3, v7, :cond_0

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_a
    if-ne v3, v7, :cond_b

    .line 125
    .line 126
    iget p0, v6, Luz;->o:I

    .line 127
    .line 128
    if-nez p0, :cond_b

    .line 129
    .line 130
    return v7

    .line 131
    :cond_b
    iget p0, v6, Luz;->o:I

    .line 132
    .line 133
    if-lez p0, :cond_d

    .line 134
    .line 135
    add-int/lit8 v0, p0, -0x1

    .line 136
    .line 137
    iget-object v2, v6, Luz;->n:[B

    .line 138
    .line 139
    aget-byte v0, v2, v0

    .line 140
    .line 141
    if-ne v0, v5, :cond_c

    .line 142
    .line 143
    add-int/lit8 p0, p0, -0x1

    .line 144
    .line 145
    :cond_c
    if-lez p0, :cond_d

    .line 146
    .line 147
    add-int/lit8 v0, p0, -0x1

    .line 148
    .line 149
    aget-byte v0, v2, v0

    .line 150
    .line 151
    if-ne v0, v4, :cond_d

    .line 152
    .line 153
    add-int/lit8 p0, p0, -0x1

    .line 154
    .line 155
    :cond_d
    iget-object v0, v6, Luz;->n:[B

    .line 156
    .line 157
    invoke-virtual {p1, v0, v1, p0}, Lb40;->c([BII)V

    .line 158
    .line 159
    .line 160
    iput v1, v6, Luz;->o:I

    .line 161
    .line 162
    return p0
.end method

.method public final h(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lyj3;->c()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final length()I
    .locals 1

    .line 1
    iget v0, p0, Lyj3;->u:I

    .line 2
    .line 3
    iget p0, p0, Lyj3;->t:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final read()I
    .locals 2

    .line 92
    :cond_0
    invoke-virtual {p0}, Lyj3;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lyj3;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 94
    :cond_1
    iget v0, p0, Lyj3;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lyj3;->t:I

    iget-object p0, p0, Lyj3;->o:[B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lyj3;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lyj3;->o:[B

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lyj3;->u:I

    .line 14
    .line 15
    iget v2, p0, Lyj3;->t:I

    .line 16
    .line 17
    sub-int/2addr v0, v2

    .line 18
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    iget v0, p0, Lyj3;->t:I

    .line 23
    .line 24
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Lyj3;->t:I

    .line 28
    .line 29
    add-int/2addr p1, p3

    .line 30
    iput p1, p0, Lyj3;->t:I

    .line 31
    .line 32
    return p3

    .line 33
    :cond_1
    iget v0, p0, Lyj3;->q:I

    .line 34
    .line 35
    if-le p3, v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lyj3;->s:Ljava/io/InputStream;

    .line 38
    .line 39
    const-string v1, "Input stream"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lyj3;->s:Ljava/io/InputStream;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-lez p1, :cond_2

    .line 51
    .line 52
    iget-object p0, p0, Lyj3;->n:Lqz0;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :cond_2
    return p1

    .line 58
    :cond_3
    invoke-virtual {p0}, Lyj3;->c()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Lyj3;->a()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v2, -0x1

    .line 69
    if-ne v0, v2, :cond_3

    .line 70
    .line 71
    return v2

    .line 72
    :cond_4
    iget v0, p0, Lyj3;->u:I

    .line 73
    .line 74
    iget v2, p0, Lyj3;->t:I

    .line 75
    .line 76
    sub-int/2addr v0, v2

    .line 77
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    iget v0, p0, Lyj3;->t:I

    .line 82
    .line 83
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    iget p1, p0, Lyj3;->t:I

    .line 87
    .line 88
    add-int/2addr p1, p3

    .line 89
    iput p1, p0, Lyj3;->t:I

    .line 90
    .line 91
    return p3
.end method
