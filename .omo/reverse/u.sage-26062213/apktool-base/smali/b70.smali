.class public abstract Lb70;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public n:I

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lb70;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lb70;->n:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lb70;->n:I

    return-void
.end method

.method public constructor <init>(Lzg5;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-ltz p2, :cond_0

    .line 8
    .line 9
    iput p2, p0, Lb70;->n:I

    .line 10
    .line 11
    iput-object p1, p0, Lb70;->o:Ljava/lang/Object;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    add-int/lit8 p0, p0, 0xf

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const-string p0, "invalid index: "

    .line 30
    .line 31
    invoke-static {p2, p0, p1}, Ldi0;->r(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    const-string p0, "format options cannot be null"

    .line 40
    .line 41
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method


# virtual methods
.method public abstract A()J
.end method

.method public abstract B()I
.end method

.method public abstract C()J
.end method

.method public D(I)[B
    .locals 4

    .line 1
    iget-object p0, p0, Lb70;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [B

    .line 4
    .line 5
    sget-object v0, Lph2;->a:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    add-int/lit8 v1, p1, 0x2

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    aget-byte v0, p0, p1

    .line 16
    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    add-int/lit8 v1, p1, 0x1

    .line 20
    .line 21
    aget-byte v1, p0, v1

    .line 22
    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    shl-int/lit8 v1, v1, 0x8

    .line 26
    .line 27
    or-int/2addr v0, v1

    .line 28
    :goto_0
    add-int/lit8 p1, p1, 0x4

    .line 29
    .line 30
    invoke-static {p1, p0}, Lph2;->h(I[B)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    array-length v1, p0

    .line 35
    add-int v3, p1, v0

    .line 36
    .line 37
    if-ge v1, v3, :cond_1

    .line 38
    .line 39
    new-array p0, v0, [B

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    new-array v1, v0, [B

    .line 43
    .line 44
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public abstract E()Ljava/lang/String;
.end method

.method public abstract F()Ljava/lang/String;
.end method

.method public abstract G()I
.end method

.method public abstract H()I
.end method

.method public abstract I()J
.end method

.method public abstract J(I)Z
.end method

.method public K()V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lb70;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    iget v1, p0, Lb70;->n:I

    .line 9
    .line 10
    const/16 v2, 0x64

    .line 11
    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, p0, Lb70;->n:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lb70;->J(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lb70;->n:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    iput v1, p0, Lb70;->n:I

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_2
    new-instance p0, Lwt1;

    .line 32
    .line 33
    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public abstract L(Ltz0;Ljava/lang/Object;)V
.end method

.method public a(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb70;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, Lb70;->n:I

    .line 6
    .line 7
    aput-byte p1, v0, v1

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    iput v1, p0, Lb70;->n:I

    .line 12
    .line 13
    return-void
.end method

.method public b([B)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    aget-byte v2, p1, v1

    .line 9
    .line 10
    iget-object v3, p0, Lb70;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v3, [B

    .line 13
    .line 14
    iget v4, p0, Lb70;->n:I

    .line 15
    .line 16
    aput-byte v2, v3, v4

    .line 17
    .line 18
    add-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    iput v4, p0, Lb70;->n:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Lb70;->a(B)V

    .line 5
    .line 6
    .line 7
    shr-int/lit8 v0, p1, 0x8

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 10
    .line 11
    int-to-byte v0, v0

    .line 12
    invoke-virtual {p0, v0}, Lb70;->a(B)V

    .line 13
    .line 14
    .line 15
    shr-int/lit8 v0, p1, 0x10

    .line 16
    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    int-to-byte v0, v0

    .line 20
    invoke-virtual {p0, v0}, Lb70;->a(B)V

    .line 21
    .line 22
    .line 23
    shr-int/lit8 p1, p1, 0x18

    .line 24
    .line 25
    and-int/lit16 p1, p1, 0xff

    .line 26
    .line 27
    int-to-byte p1, p1

    .line 28
    invoke-virtual {p0, p1}, Lb70;->a(B)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Lb70;->a(B)V

    .line 5
    .line 6
    .line 7
    shr-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    and-int/lit16 p1, p1, 0xff

    .line 10
    .line 11
    int-to-byte p1, p1

    .line 12
    invoke-virtual {p0, p1}, Lb70;->a(B)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "Message builder not implemented for "

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public abstract f(I)V
.end method

.method public h()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lb70;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [B

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lb70;->e()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lb70;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, [B

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    iget v3, p0, Lb70;->n:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-le v2, v3, :cond_1

    .line 21
    .line 22
    new-array v2, v3, [B

    .line 23
    .line 24
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lb70;->o:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_1
    iget-object p0, p0, Lb70;->o:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, [B

    .line 32
    .line 33
    if-eqz p0, :cond_5

    .line 34
    .line 35
    array-length v1, p0

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance v1, Loq;

    .line 40
    .line 41
    sget-object v2, Lnr;->d:[B

    .line 42
    .line 43
    invoke-direct {v1, v4, v2}, Loq;-><init>(I[B)V

    .line 44
    .line 45
    .line 46
    array-length v2, p0

    .line 47
    add-int/lit8 v2, v2, 0x2

    .line 48
    .line 49
    div-int/lit8 v2, v2, 0x3

    .line 50
    .line 51
    int-to-long v2, v2

    .line 52
    const-wide/16 v4, 0x4

    .line 53
    .line 54
    mul-long/2addr v2, v4

    .line 55
    iget v4, v1, Lnr;->a:I

    .line 56
    .line 57
    if-lez v4, :cond_3

    .line 58
    .line 59
    int-to-long v4, v4

    .line 60
    add-long v6, v2, v4

    .line 61
    .line 62
    const-wide/16 v8, 0x1

    .line 63
    .line 64
    sub-long/2addr v6, v8

    .line 65
    div-long/2addr v6, v4

    .line 66
    iget v4, v1, Lnr;->b:I

    .line 67
    .line 68
    int-to-long v4, v4

    .line 69
    mul-long/2addr v6, v4

    .line 70
    add-long/2addr v2, v6

    .line 71
    :cond_3
    const-wide/32 v4, 0x7fffffff

    .line 72
    .line 73
    .line 74
    cmp-long v4, v2, v4

    .line 75
    .line 76
    if-gtz v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1, p0}, Lnr;->b([B)[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "Input array too big, the output array would be bigger ("

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ") than the specified maximum size of 2147483647"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_5
    :goto_0
    sget-object v1, Luf0;->b:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 111
    .line 112
    .line 113
    return-object v0
.end method

.method public abstract i()I
.end method

.method public abstract j()Z
.end method

.method public k(Lqd4;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l(Lqd4;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract m(Lke4;Ljava/util/List;)Lke4;
.end method

.method public abstract n(Lqd4;Lpc4;)Lpc4;
.end method

.method public abstract o(I)V
.end method

.method public abstract p(I)I
.end method

.method public abstract q()Z
.end method

.method public abstract r()Lf00;
.end method

.method public abstract s()D
.end method

.method public abstract t()I
.end method

.method public abstract u()I
.end method

.method public abstract v()J
.end method

.method public abstract w()F
.end method

.method public abstract x()I
.end method

.method public abstract y()J
.end method

.method public abstract z()I
.end method
