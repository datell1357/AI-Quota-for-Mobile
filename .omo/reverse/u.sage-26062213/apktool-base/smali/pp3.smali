.class public final Lpp3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lx11;
.implements Lxj3;
.implements Lty;


# instance fields
.field public A:Ljava/nio/CharBuffer;

.field public final B:Ljava/net/Socket;

.field public C:Z

.field public final n:Ljava/io/InputStream;

.field public final o:[B

.field public final p:Luz;

.field public final q:Ljava/nio/charset/Charset;

.field public final r:Z

.field public final s:I

.field public final t:I

.field public final u:Lqz0;

.field public final v:Ljava/nio/charset/CodingErrorAction;

.field public final w:Ljava/nio/charset/CodingErrorAction;

.field public x:I

.field public y:I

.field public z:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILkm1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Socket"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lpp3;->B:Ljava/net/Socket;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lpp3;->C:Z

    .line 13
    .line 14
    if-gez p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :cond_0
    const/16 v1, 0x400

    .line 21
    .line 22
    if-ge p2, v1, :cond_1

    .line 23
    .line 24
    move p2, v1

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "Input stream"

    .line 30
    .line 31
    invoke-static {p1, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "Buffer size"

    .line 35
    .line 36
    invoke-static {p2, v1}, Lw80;->J(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "HTTP parameters"

    .line 40
    .line 41
    invoke-static {p3, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lpp3;->n:Ljava/io/InputStream;

    .line 45
    .line 46
    new-array p1, p2, [B

    .line 47
    .line 48
    iput-object p1, p0, Lpp3;->o:[B

    .line 49
    .line 50
    iput v0, p0, Lpp3;->x:I

    .line 51
    .line 52
    iput v0, p0, Lpp3;->y:I

    .line 53
    .line 54
    new-instance p1, Luz;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Luz;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lpp3;->p:Luz;

    .line 60
    .line 61
    const-string p1, "http.protocol.element-charset"

    .line 62
    .line 63
    invoke-interface {p3, p1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object p1, Luf0;->b:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    :goto_0
    iput-object p1, p0, Lpp3;->q:Ljava/nio/charset/Charset;

    .line 79
    .line 80
    sget-object p2, Luf0;->b:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput-boolean p1, p0, Lpp3;->r:Z

    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lpp3;->z:Ljava/nio/charset/CharsetDecoder;

    .line 90
    .line 91
    move-object p1, p3

    .line 92
    check-cast p1, Lf1;

    .line 93
    .line 94
    const/4 p2, -0x1

    .line 95
    const-string v0, "http.connection.max-line-length"

    .line 96
    .line 97
    invoke-virtual {p1, p2, v0}, Lf1;->e(ILjava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    iput p2, p0, Lpp3;->s:I

    .line 102
    .line 103
    const-string p2, "http.connection.min-chunk-limit"

    .line 104
    .line 105
    const/16 v0, 0x200

    .line 106
    .line 107
    invoke-virtual {p1, v0, p2}, Lf1;->e(ILjava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput p1, p0, Lpp3;->t:I

    .line 112
    .line 113
    new-instance p1, Lqz0;

    .line 114
    .line 115
    const/4 p2, 0x7

    .line 116
    invoke-direct {p1, p2}, Lqz0;-><init>(I)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lpp3;->u:Lqz0;

    .line 120
    .line 121
    const-string p1, "http.malformed.input.action"

    .line 122
    .line 123
    invoke-interface {p3, p1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljava/nio/charset/CodingErrorAction;

    .line 128
    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 133
    .line 134
    :goto_1
    iput-object p1, p0, Lpp3;->v:Ljava/nio/charset/CodingErrorAction;

    .line 135
    .line 136
    const-string p1, "http.unmappable.input.action"

    .line 137
    .line 138
    invoke-interface {p3, p1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Ljava/nio/charset/CodingErrorAction;

    .line 143
    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 148
    .line 149
    :goto_2
    iput-object p1, p0, Lpp3;->w:Ljava/nio/charset/CodingErrorAction;

    .line 150
    .line 151
    return-void
.end method


# virtual methods
.method public final a(Lb40;Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lpp3;->z:Ljava/nio/charset/CharsetDecoder;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lpp3;->q:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lpp3;->z:Ljava/nio/charset/CharsetDecoder;

    .line 20
    .line 21
    iget-object v2, p0, Lpp3;->v:Ljava/nio/charset/CodingErrorAction;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lpp3;->z:Ljava/nio/charset/CharsetDecoder;

    .line 27
    .line 28
    iget-object v2, p0, Lpp3;->w:Ljava/nio/charset/CodingErrorAction;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lpp3;->A:Ljava/nio/CharBuffer;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x400

    .line 38
    .line 39
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lpp3;->A:Ljava/nio/CharBuffer;

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lpp3;->z:Ljava/nio/charset/CharsetDecoder;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v2, p0, Lpp3;->z:Ljava/nio/charset/CharsetDecoder;

    .line 55
    .line 56
    iget-object v3, p0, Lpp3;->A:Ljava/nio/CharBuffer;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {v2, p2, v3, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, v0, p1}, Lpp3;->f(Ljava/nio/charset/CoderResult;Lb40;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v1, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p0, p2, p1}, Lpp3;->f(Ljava/nio/charset/CoderResult;Lb40;)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    add-int/2addr p1, v1

    .line 80
    iget-object p0, p0, Lpp3;->A:Ljava/nio/CharBuffer;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 83
    .line 84
    .line 85
    return p1
.end method

.method public final b()Lqz0;
    .locals 0

    .line 1
    iget-object p0, p0, Lpp3;->u:Lqz0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()I
    .locals 5

    .line 1
    iget v0, p0, Lpp3;->x:I

    .line 2
    .line 3
    iget-object v1, p0, Lpp3;->o:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget v3, p0, Lpp3;->y:I

    .line 9
    .line 10
    sub-int/2addr v3, v0

    .line 11
    if-lez v3, :cond_0

    .line 12
    .line 13
    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput v2, p0, Lpp3;->x:I

    .line 17
    .line 18
    iput v3, p0, Lpp3;->y:I

    .line 19
    .line 20
    :cond_1
    iget v0, p0, Lpp3;->y:I

    .line 21
    .line 22
    array-length v3, v1

    .line 23
    sub-int/2addr v3, v0

    .line 24
    iget-object v4, p0, Lpp3;->n:Ljava/io/InputStream;

    .line 25
    .line 26
    invoke-virtual {v4, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v3, -0x1

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    add-int/2addr v0, v1

    .line 36
    iput v0, p0, Lpp3;->y:I

    .line 37
    .line 38
    iget-object v0, p0, Lpp3;->u:Lqz0;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    :goto_0
    if-ne v1, v3, :cond_3

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    :cond_3
    iput-boolean v2, p0, Lpp3;->C:Z

    .line 47
    .line 48
    return v1
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
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    move v3, v0

    .line 9
    move v2, v1

    .line 10
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lpp3;->r:Z

    .line 11
    .line 12
    iget-object v5, p0, Lpp3;->p:Luz;

    .line 13
    .line 14
    const/16 v6, 0xd

    .line 15
    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    const/4 v8, -0x1

    .line 19
    if-eqz v2, :cond_b

    .line 20
    .line 21
    iget v9, p0, Lpp3;->x:I

    .line 22
    .line 23
    :goto_1
    iget v10, p0, Lpp3;->y:I

    .line 24
    .line 25
    iget-object v11, p0, Lpp3;->o:[B

    .line 26
    .line 27
    if-ge v9, v10, :cond_2

    .line 28
    .line 29
    aget-byte v10, v11, v9

    .line 30
    .line 31
    if-ne v10, v7, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v9, v8

    .line 38
    :goto_2
    if-eq v9, v8, :cond_7

    .line 39
    .line 40
    iget v2, v5, Luz;->o:I

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    move v2, v0

    .line 47
    :goto_3
    iget v7, p0, Lpp3;->x:I

    .line 48
    .line 49
    if-eqz v2, :cond_6

    .line 50
    .line 51
    add-int/lit8 v0, v9, 0x1

    .line 52
    .line 53
    iput v0, p0, Lpp3;->x:I

    .line 54
    .line 55
    if-le v9, v7, :cond_4

    .line 56
    .line 57
    add-int/lit8 v0, v9, -0x1

    .line 58
    .line 59
    aget-byte v0, v11, v0

    .line 60
    .line 61
    if-ne v0, v6, :cond_4

    .line 62
    .line 63
    add-int/lit8 v9, v9, -0x1

    .line 64
    .line 65
    :cond_4
    sub-int/2addr v9, v7

    .line 66
    if-eqz v4, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1, v11, v7, v9}, Lb40;->c([BII)V

    .line 69
    .line 70
    .line 71
    return v9

    .line 72
    :cond_5
    invoke-static {v11, v7, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, p1, v0}, Lpp3;->a(Lb40;Ljava/nio/ByteBuffer;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 82
    .line 83
    sub-int v2, v9, v7

    .line 84
    .line 85
    invoke-virtual {v5, v11, v7, v2}, Luz;->b([BII)V

    .line 86
    .line 87
    .line 88
    iput v9, p0, Lpp3;->x:I

    .line 89
    .line 90
    :goto_4
    move v2, v0

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    invoke-virtual {p0}, Lpp3;->g()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    iget v3, p0, Lpp3;->y:I

    .line 99
    .line 100
    iget v4, p0, Lpp3;->x:I

    .line 101
    .line 102
    sub-int/2addr v3, v4

    .line 103
    invoke-virtual {v5, v11, v4, v3}, Luz;->b([BII)V

    .line 104
    .line 105
    .line 106
    iget v3, p0, Lpp3;->y:I

    .line 107
    .line 108
    iput v3, p0, Lpp3;->x:I

    .line 109
    .line 110
    :cond_8
    invoke-virtual {p0}, Lpp3;->c()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-ne v3, v8, :cond_9

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_9
    :goto_5
    iget v4, p0, Lpp3;->s:I

    .line 118
    .line 119
    if-lez v4, :cond_0

    .line 120
    .line 121
    iget v5, v5, Luz;->o:I

    .line 122
    .line 123
    if-ge v5, v4, :cond_a

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_a
    const-string p0, "Maximum line length limit exceeded"

    .line 127
    .line 128
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return v0

    .line 132
    :cond_b
    if-ne v3, v8, :cond_c

    .line 133
    .line 134
    iget v1, v5, Luz;->o:I

    .line 135
    .line 136
    if-nez v1, :cond_c

    .line 137
    .line 138
    return v8

    .line 139
    :cond_c
    iget v1, v5, Luz;->o:I

    .line 140
    .line 141
    if-lez v1, :cond_e

    .line 142
    .line 143
    add-int/lit8 v2, v1, -0x1

    .line 144
    .line 145
    iget-object v3, v5, Luz;->n:[B

    .line 146
    .line 147
    aget-byte v2, v3, v2

    .line 148
    .line 149
    if-ne v2, v7, :cond_d

    .line 150
    .line 151
    add-int/lit8 v1, v1, -0x1

    .line 152
    .line 153
    :cond_d
    if-lez v1, :cond_e

    .line 154
    .line 155
    add-int/lit8 v2, v1, -0x1

    .line 156
    .line 157
    aget-byte v2, v3, v2

    .line 158
    .line 159
    if-ne v2, v6, :cond_e

    .line 160
    .line 161
    add-int/lit8 v1, v1, -0x1

    .line 162
    .line 163
    :cond_e
    iget-object v2, v5, Luz;->n:[B

    .line 164
    .line 165
    if-eqz v4, :cond_f

    .line 166
    .line 167
    invoke-virtual {p1, v2, v0, v1}, Lb40;->c([BII)V

    .line 168
    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_f
    invoke-static {v2, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p0, p1, v1}, Lpp3;->a(Lb40;Ljava/nio/ByteBuffer;)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    :goto_6
    iput v0, v5, Luz;->o:I

    .line 180
    .line 181
    return v1
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lpp3;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method public final f(Ljava/nio/charset/CoderResult;Lb40;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lpp3;->A:Ljava/nio/CharBuffer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lpp3;->A:Ljava/nio/CharBuffer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :goto_0
    iget-object v0, p0, Lpp3;->A:Ljava/nio/CharBuffer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lpp3;->A:Ljava/nio/CharBuffer;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Lb40;->a(C)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 40
    .line 41
    .line 42
    return p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget v0, p0, Lpp3;->x:I

    .line 2
    .line 3
    iget p0, p0, Lpp3;->y:I

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

.method public final h(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpp3;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lpp3;->B:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lpp3;->c()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lpp3;->g()Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    return v0
.end method

.method public final length()I
    .locals 1

    .line 1
    iget v0, p0, Lpp3;->y:I

    .line 2
    .line 3
    iget p0, p0, Lpp3;->x:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final read()I
    .locals 2

    .line 85
    :cond_0
    invoke-virtual {p0}, Lpp3;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lpp3;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 87
    :cond_1
    iget v0, p0, Lpp3;->x:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lpp3;->x:I

    iget-object p0, p0, Lpp3;->o:[B

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
    invoke-virtual {p0}, Lpp3;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lpp3;->o:[B

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lpp3;->y:I

    .line 14
    .line 15
    iget v2, p0, Lpp3;->x:I

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
    iget v0, p0, Lpp3;->x:I

    .line 23
    .line 24
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Lpp3;->x:I

    .line 28
    .line 29
    add-int/2addr p1, p3

    .line 30
    iput p1, p0, Lpp3;->x:I

    .line 31
    .line 32
    return p3

    .line 33
    :cond_1
    iget v0, p0, Lpp3;->t:I

    .line 34
    .line 35
    if-le p3, v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lpp3;->n:Ljava/io/InputStream;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-lez p1, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lpp3;->u:Lqz0;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :cond_2
    return p1

    .line 51
    :cond_3
    invoke-virtual {p0}, Lpp3;->g()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lpp3;->c()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, -0x1

    .line 62
    if-ne v0, v2, :cond_3

    .line 63
    .line 64
    return v2

    .line 65
    :cond_4
    iget v0, p0, Lpp3;->y:I

    .line 66
    .line 67
    iget v2, p0, Lpp3;->x:I

    .line 68
    .line 69
    sub-int/2addr v0, v2

    .line 70
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    iget v0, p0, Lpp3;->x:I

    .line 75
    .line 76
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Lpp3;->x:I

    .line 80
    .line 81
    add-int/2addr p1, p3

    .line 82
    iput p1, p0, Lpp3;->x:I

    .line 83
    .line 84
    return p3
.end method
