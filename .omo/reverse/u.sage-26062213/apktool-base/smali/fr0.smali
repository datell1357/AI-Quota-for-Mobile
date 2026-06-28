.class public final Lfr0;
.super Ljava/io/InputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lel0;Lcn4;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lfr0;->n:I

    .line 83
    iput-object p2, p0, Lfr0;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Closeable;I)V
    .locals 0

    .line 84
    iput p2, p0, Lfr0;->n:I

    iput-object p1, p0, Lfr0;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lfr0;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/io/PushbackInputStream;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p1, v2, :cond_1

    .line 23
    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 30
    .line 31
    .line 32
    and-int/lit16 v2, p1, 0xff

    .line 33
    .line 34
    and-int/lit8 p1, p1, 0xf

    .line 35
    .line 36
    shr-int/lit8 v3, v2, 0x4

    .line 37
    .line 38
    and-int/lit8 v3, v3, 0xf

    .line 39
    .line 40
    and-int/lit16 v1, v1, 0xff

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/16 v5, 0x8

    .line 44
    .line 45
    if-ne p1, v5, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x7

    .line 48
    if-gt v3, p1, :cond_0

    .line 49
    .line 50
    shl-int/lit8 p1, v2, 0x8

    .line 51
    .line 52
    or-int/2addr p1, v1

    .line 53
    rem-int/lit8 p1, p1, 0x1f

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    move p1, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x1

    .line 60
    :goto_0
    new-instance v1, Ler0;

    .line 61
    .line 62
    new-instance v2, Ljava/util/zip/Inflater;

    .line 63
    .line 64
    invoke-direct {v2, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 68
    .line 69
    .line 70
    iput-boolean v4, v1, Ler0;->n:Z

    .line 71
    .line 72
    iput-object v1, p0, Lfr0;->o:Ljava/lang/Object;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    .line 76
    .line 77
    const-string p1, "Unexpected end of stream"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    iget v0, p0, Lfr0;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lfr0;->o:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    check-cast v1, Ld23;

    .line 14
    .line 15
    iget-boolean p0, v1, Ld23;->p:Z

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    iget-object p0, v1, Ld23;->o:Lsy;

    .line 20
    .line 21
    iget-wide v0, p0, Lsy;->o:J

    .line 22
    .line 23
    const-wide/32 v2, 0x7fffffff

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    long-to-int p0, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "closed"

    .line 33
    .line 34
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0

    .line 39
    :pswitch_1
    check-cast v1, Ler0;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 2

    .line 1
    iget v0, p0, Lfr0;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lfr0;->o:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast v1, Ld23;

    .line 13
    .line 14
    invoke-virtual {v1}, Ld23;->close()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast v1, Ler0;

    .line 19
    .line 20
    invoke-virtual {v1}, Ler0;->close()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mark(I)V
    .locals 1

    .line 1
    iget v0, p0, Lfr0;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lfr0;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ler0;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget v0, p0, Lfr0;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lfr0;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ler0;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

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

.method public final read()I
    .locals 7

    iget v0, p0, Lfr0;->n:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lfr0;->o:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    .line 173
    check-cast v4, Lcn4;

    new-array p0, v1, [B

    invoke-virtual {v4, p0, v3, v1}, Lcn4;->f([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v2, p0, v3

    :goto_0
    return v2

    .line 174
    :pswitch_0
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v3, v1}, Lfr0;->read([BII)I

    move-result p0

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v2, v0, v3

    :goto_1
    return v2

    .line 175
    :pswitch_1
    check-cast v4, Ld23;

    iget-object p0, v4, Ld23;->o:Lsy;

    iget-boolean v0, v4, Ld23;->p:Z

    if-nez v0, :cond_3

    .line 176
    iget-wide v0, p0, Lsy;->o:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    .line 177
    iget-object v0, v4, Ld23;->n:Lyp3;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v3, v4, p0}, Lyp3;->l(JLsy;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    goto :goto_2

    .line 178
    :cond_2
    invoke-virtual {p0}, Lsy;->readByte()B

    move-result p0

    and-int/lit16 v2, p0, 0xff

    goto :goto_2

    .line 179
    :cond_3
    const-string p0, "closed"

    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    move v2, v3

    :goto_2
    return v2

    .line 180
    :pswitch_2
    check-cast v4, Ler0;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read([B)I
    .locals 1

    iget v0, p0, Lfr0;->n:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0

    .line 181
    :pswitch_0
    iget-object p0, p0, Lfr0;->o:Ljava/lang/Object;

    check-cast p0, Ler0;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 9

    .line 1
    iget v0, p0, Lfr0;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    iget-object p0, p0, Lfr0;->o:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcn4;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcn4;->f([BII)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :pswitch_0
    check-cast p0, Lel0;

    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lel0;->o:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/zip/Inflater;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    move v1, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz p3, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lel0;->o:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ljava/util/zip/Inflater;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    move v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lel0;->o:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Ljava/util/zip/Inflater;

    .line 48
    .line 49
    new-instance p1, Ljava/io/IOException;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    add-int/lit8 p2, p2, 0x46

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/2addr p2, v0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const-string p2, "Read no bytes (requested up to "

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p2, ") but did not reach end of stream, had "

    .line 88
    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_2
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    move-object p0, v0

    .line 106
    new-instance p1, Ljava/io/IOException;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    check-cast p0, Ld23;

    .line 116
    .line 117
    iget-object v0, p0, Ld23;->o:Lsy;

    .line 118
    .line 119
    iget-boolean v3, p0, Ld23;->p:Z

    .line 120
    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    array-length v1, p1

    .line 124
    int-to-long v3, v1

    .line 125
    int-to-long v5, p2

    .line 126
    int-to-long v7, p3

    .line 127
    invoke-static/range {v3 .. v8}, Lis0;->q(JJJ)V

    .line 128
    .line 129
    .line 130
    iget-wide v3, v0, Lsy;->o:J

    .line 131
    .line 132
    const-wide/16 v5, 0x0

    .line 133
    .line 134
    cmp-long v1, v3, v5

    .line 135
    .line 136
    if-nez v1, :cond_3

    .line 137
    .line 138
    iget-object p0, p0, Ld23;->n:Lyp3;

    .line 139
    .line 140
    const-wide/16 v3, 0x2000

    .line 141
    .line 142
    invoke-interface {p0, v3, v4, v0}, Lyp3;->l(JLsy;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    const-wide/16 v5, -0x1

    .line 147
    .line 148
    cmp-long p0, v3, v5

    .line 149
    .line 150
    if-nez p0, :cond_3

    .line 151
    .line 152
    move v1, v2

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lsy;->read([BII)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    const-string p0, "closed"

    .line 160
    .line 161
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    return v1

    .line 165
    :pswitch_2
    check-cast p0, Ler0;

    .line 166
    .line 167
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    return p0

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, Lfr0;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/InputStream;->reset()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lfr0;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ler0;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public skip(J)J
    .locals 4

    .line 1
    iget v0, p0, Lfr0;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lfr0;->o:Ljava/lang/Object;

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    return-wide p0

    .line 13
    :sswitch_0
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long p0, p1, v2

    .line 16
    .line 17
    if-gtz p0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-wide/32 v2, 0x7fffffff

    .line 21
    .line 22
    .line 23
    cmp-long p0, p1, v2

    .line 24
    .line 25
    if-lez p0, :cond_1

    .line 26
    .line 27
    const p0, 0x7fffffff

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    long-to-int p0, p1

    .line 32
    :goto_0
    check-cast v1, Lcn4;

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Lcn4;->g(I)V

    .line 35
    .line 36
    .line 37
    int-to-long v2, p0

    .line 38
    :goto_1
    return-wide v2

    .line 39
    :sswitch_1
    check-cast v1, Ler0;

    .line 40
    .line 41
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    return-wide p0

    .line 46
    nop

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lfr0;->n:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lfr0;->o:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ld23;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ".inputStream()"

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

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public transferTo(Ljava/io/OutputStream;)J
    .locals 14

    .line 1
    iget v0, p0, Lfr0;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/io/InputStream;->transferTo(Ljava/io/OutputStream;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lfr0;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ld23;

    .line 17
    .line 18
    iget-object v0, p0, Ld23;->o:Lsy;

    .line 19
    .line 20
    iget-boolean v1, p0, Ld23;->p:Z

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    if-nez v1, :cond_4

    .line 25
    .line 26
    move-wide v4, v2

    .line 27
    :cond_0
    iget-wide v6, v0, Lsy;->o:J

    .line 28
    .line 29
    cmp-long v1, v6, v2

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Ld23;->n:Lyp3;

    .line 34
    .line 35
    const-wide/16 v6, 0x2000

    .line 36
    .line 37
    invoke-interface {v1, v6, v7, v0}, Lyp3;->l(JLsy;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    const-wide/16 v8, -0x1

    .line 42
    .line 43
    cmp-long v1, v6, v8

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-wide v2, v4

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :goto_0
    iget-wide v6, v0, Lsy;->o:J

    .line 51
    .line 52
    add-long/2addr v4, v6

    .line 53
    const-wide/16 v8, 0x0

    .line 54
    .line 55
    move-wide v10, v6

    .line 56
    invoke-static/range {v6 .. v11}, Lis0;->q(JJJ)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lsy;->n:Lqg3;

    .line 60
    .line 61
    :cond_3
    :goto_1
    cmp-long v8, v6, v2

    .line 62
    .line 63
    if-lez v8, :cond_0

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget v8, v1, Lqg3;->c:I

    .line 69
    .line 70
    iget v9, v1, Lqg3;->b:I

    .line 71
    .line 72
    sub-int/2addr v8, v9

    .line 73
    int-to-long v8, v8

    .line 74
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    long-to-int v8, v8

    .line 79
    iget-object v9, v1, Lqg3;->a:[B

    .line 80
    .line 81
    iget v10, v1, Lqg3;->b:I

    .line 82
    .line 83
    invoke-virtual {p1, v9, v10, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 84
    .line 85
    .line 86
    iget v9, v1, Lqg3;->b:I

    .line 87
    .line 88
    add-int/2addr v9, v8

    .line 89
    iput v9, v1, Lqg3;->b:I

    .line 90
    .line 91
    iget-wide v10, v0, Lsy;->o:J

    .line 92
    .line 93
    int-to-long v12, v8

    .line 94
    sub-long/2addr v10, v12

    .line 95
    iput-wide v10, v0, Lsy;->o:J

    .line 96
    .line 97
    sub-long/2addr v6, v12

    .line 98
    iget v8, v1, Lqg3;->c:I

    .line 99
    .line 100
    if-ne v9, v8, :cond_3

    .line 101
    .line 102
    invoke-virtual {v1}, Lqg3;->a()Lqg3;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    iput-object v8, v0, Lsy;->n:Lqg3;

    .line 107
    .line 108
    invoke-static {v1}, Lsg3;->a(Lqg3;)V

    .line 109
    .line 110
    .line 111
    move-object v1, v8

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const-string p0, "closed"

    .line 114
    .line 115
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    return-wide v2

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
