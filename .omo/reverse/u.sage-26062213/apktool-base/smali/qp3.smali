.class public final Lqp3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzj3;
.implements Lty;


# static fields
.field public static final x:[B


# instance fields
.field public n:Ljava/io/OutputStream;

.field public o:Luz;

.field public p:Ljava/nio/charset/Charset;

.field public q:Z

.field public r:I

.field public s:Lqz0;

.field public t:Ljava/nio/charset/CodingErrorAction;

.field public u:Ljava/nio/charset/CodingErrorAction;

.field public v:Ljava/nio/charset/CharsetEncoder;

.field public w:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lqp3;->x:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Lqp3;->q:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v2}, Lqp3;->write(I)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lqp3;->f(Ljava/nio/CharBuffer;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    sget-object p1, Lqp3;->x:[B

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-virtual {p0, p1, v1, v0}, Lqp3;->write([BII)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final b()Lqz0;
    .locals 0

    .line 1
    iget-object p0, p0, Lqp3;->s:Lqz0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lqp3;->o:Luz;

    .line 2
    .line 3
    iget v1, v0, Luz;->o:I

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lqp3;->n:Ljava/io/OutputStream;

    .line 8
    .line 9
    iget-object v0, v0, Luz;->n:[B

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lqp3;->o:Luz;

    .line 16
    .line 17
    iput v3, v0, Luz;->o:I

    .line 18
    .line 19
    iget-object p0, p0, Lqp3;->s:Lqz0;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final d(Ljava/nio/charset/CoderResult;)V
    .locals 1

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
    iget-object p1, p0, Lqp3;->w:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object p1, p0, Lqp3;->w:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lqp3;->w:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Lqp3;->write(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final e(Lb40;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lqp3;->q:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget v0, p1, Lb40;->o:I

    .line 10
    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-lez v0, :cond_4

    .line 13
    .line 14
    iget-object v3, p0, Lqp3;->o:Luz;

    .line 15
    .line 16
    iget-object v4, v3, Luz;->n:[B

    .line 17
    .line 18
    array-length v4, v4

    .line 19
    iget v3, v3, Luz;->o:I

    .line 20
    .line 21
    sub-int/2addr v4, v3

    .line 22
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lez v3, :cond_1

    .line 27
    .line 28
    iget-object v4, p0, Lqp3;->o:Luz;

    .line 29
    .line 30
    invoke-virtual {v4, p1, v2, v3}, Luz;->a(Lb40;II)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v4, p0, Lqp3;->o:Luz;

    .line 34
    .line 35
    iget v5, v4, Luz;->o:I

    .line 36
    .line 37
    iget-object v4, v4, Luz;->n:[B

    .line 38
    .line 39
    array-length v4, v4

    .line 40
    if-ne v5, v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lqp3;->c()V

    .line 43
    .line 44
    .line 45
    :cond_2
    add-int/2addr v2, v3

    .line 46
    sub-int/2addr v0, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p1, Lb40;->n:[C

    .line 49
    .line 50
    iget p1, p1, Lb40;->o:I

    .line 51
    .line 52
    invoke-static {v0, v1, p1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lqp3;->f(Ljava/nio/CharBuffer;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    sget-object p1, Lqp3;->x:[B

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    invoke-virtual {p0, p1, v1, v0}, Lqp3;->write([BII)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final f(Ljava/nio/CharBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lqp3;->v:Ljava/nio/charset/CharsetEncoder;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lqp3;->p:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lqp3;->v:Ljava/nio/charset/CharsetEncoder;

    .line 19
    .line 20
    iget-object v1, p0, Lqp3;->t:Ljava/nio/charset/CodingErrorAction;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lqp3;->v:Ljava/nio/charset/CharsetEncoder;

    .line 26
    .line 27
    iget-object v1, p0, Lqp3;->u:Ljava/nio/charset/CodingErrorAction;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lqp3;->w:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x400

    .line 37
    .line 38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lqp3;->w:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lqp3;->v:Ljava/nio/charset/CharsetEncoder;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v1, p0, Lqp3;->v:Ljava/nio/charset/CharsetEncoder;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lqp3;->w:Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, p1, v0, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lqp3;->d(Ljava/nio/charset/CoderResult;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object p1, p0, Lqp3;->w:Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lqp3;->d(Ljava/nio/charset/CoderResult;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lqp3;->w:Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lqp3;->c()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lqp3;->n:Ljava/io/OutputStream;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final length()I
    .locals 0

    .line 1
    iget-object p0, p0, Lqp3;->o:Luz;

    .line 2
    .line 3
    iget p0, p0, Luz;->o:I

    .line 4
    .line 5
    return p0
.end method

.method public final write(I)V
    .locals 3

    .line 45
    iget-object v0, p0, Lqp3;->o:Luz;

    .line 46
    iget v1, v0, Luz;->o:I

    iget-object v0, v0, Luz;->n:[B

    array-length v0, v0

    if-ne v1, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lqp3;->c()V

    .line 48
    :cond_0
    iget-object p0, p0, Lqp3;->o:Luz;

    .line 49
    iget v0, p0, Luz;->o:I

    add-int/lit8 v0, v0, 0x1

    .line 50
    iget-object v1, p0, Luz;->n:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Luz;->c(I)V

    .line 52
    :cond_1
    iget-object v1, p0, Luz;->n:[B

    iget v2, p0, Luz;->o:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 53
    iput v0, p0, Luz;->o:I

    return-void
.end method

.method public final write([BII)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lqp3;->r:I

    .line 5
    .line 6
    if-gt p3, v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lqp3;->o:Luz;

    .line 9
    .line 10
    iget-object v1, v0, Luz;->n:[B

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-le p3, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    array-length v1, v1

    .line 17
    iget v0, v0, Luz;->o:I

    .line 18
    .line 19
    sub-int/2addr v1, v0

    .line 20
    if-le p3, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lqp3;->c()V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object p0, p0, Lqp3;->o:Luz;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Luz;->b([BII)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lqp3;->c()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lqp3;->n:Ljava/io/OutputStream;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lqp3;->s:Lqz0;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    return-void
.end method
