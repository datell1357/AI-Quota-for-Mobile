.class public abstract Lnr;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final d:[B


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


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
    sput-object v0, Lnr;->d:[B

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

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    if-lez p2, :cond_0

    .line 7
    .line 8
    div-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    mul-int/lit8 p1, p1, 0x4

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput p1, p0, Lnr;->a:I

    .line 15
    .line 16
    iput p2, p0, Lnr;->b:I

    .line 17
    .line 18
    const-string p1, "codecPolicy"

    .line 19
    .line 20
    const/4 p2, 0x2

    .line 21
    invoke-static {p2, p1}, Ldi0;->g(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput p2, p0, Lnr;->c:I

    .line 25
    .line 26
    return-void
.end method

.method public static c(ILmr;)[B
    .locals 4

    .line 1
    iget-object v0, p1, Lmr;->b:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x2000

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-array p0, p0, [B

    .line 12
    .line 13
    iput-object p0, p1, Lmr;->b:[B

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    iput p0, p1, Lmr;->c:I

    .line 17
    .line 18
    iput p0, p1, Lmr;->d:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v1, p1, Lmr;->c:I

    .line 22
    .line 23
    add-int/2addr v1, p0

    .line 24
    array-length p0, v0

    .line 25
    sub-int p0, v1, p0

    .line 26
    .line 27
    if-lez p0, :cond_4

    .line 28
    .line 29
    array-length p0, v0

    .line 30
    mul-int/lit8 p0, p0, 0x2

    .line 31
    .line 32
    const/high16 v0, -0x80000000

    .line 33
    .line 34
    xor-int v2, p0, v0

    .line 35
    .line 36
    xor-int v3, v1, v0

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-gez v2, :cond_1

    .line 43
    .line 44
    move p0, v1

    .line 45
    :cond_1
    xor-int/2addr v0, p0

    .line 46
    const/16 v2, -0x9

    .line 47
    .line 48
    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    if-ltz v1, :cond_2

    .line 55
    .line 56
    const p0, 0x7ffffff7

    .line 57
    .line 58
    .line 59
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 65
    .line 66
    int-to-long v0, v1

    .line 67
    const-wide v2, 0xffffffffL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    and-long/2addr v0, v2

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "Unable to allocate array size: "

    .line 76
    .line 77
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_3
    :goto_0
    iget-object v0, p1, Lmr;->b:[B

    .line 92
    .line 93
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iput-object p0, p1, Lmr;->b:[B

    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_4
    :goto_1
    iget-object p0, p1, Lmr;->b:[B

    .line 101
    .line 102
    return-object p0
.end method

.method public static d([BILmr;)V
    .locals 3

    .line 1
    iget v0, p2, Lmr;->c:I

    .line 2
    .line 3
    iget v1, p2, Lmr;->d:I

    .line 4
    .line 5
    if-le v0, v1, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p2, Lmr;->b:[B

    .line 18
    .line 19
    iget v1, p2, Lmr;->d:I

    .line 20
    .line 21
    invoke-static {v0, v1, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget p0, p2, Lmr;->d:I

    .line 25
    .line 26
    add-int/2addr p0, p1

    .line 27
    iput p0, p2, Lmr;->d:I

    .line 28
    .line 29
    iget p1, p2, Lmr;->c:I

    .line 30
    .line 31
    if-le p1, p0, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iput v2, p2, Lmr;->d:I

    .line 35
    .line 36
    iput v2, p2, Lmr;->c:I

    .line 37
    .line 38
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a([BILmr;)V
.end method

.method public final b([B)[B
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    array-length v1, p1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    new-instance v1, Lmr;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lnr;->a([BILmr;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p0, p1, v0, v1}, Lnr;->a([BILmr;)V

    .line 22
    .line 23
    .line 24
    iget p0, v1, Lmr;->c:I

    .line 25
    .line 26
    iget p1, v1, Lmr;->d:I

    .line 27
    .line 28
    sub-int/2addr p0, p1

    .line 29
    new-array p1, p0, [B

    .line 30
    .line 31
    invoke-static {p1, p0, v1}, Lnr;->d([BILmr;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-object p1
.end method
