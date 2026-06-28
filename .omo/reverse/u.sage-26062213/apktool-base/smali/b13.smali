.class public final Lb13;
.super Ljava/io/InputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public n:I

.field public o:I

.field public final synthetic p:Ld13;


# direct methods
.method public constructor <init>(Ld13;La13;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb13;->p:Ld13;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p2, La13;->b:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x4

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ld13;->R(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lb13;->n:I

    .line 15
    .line 16
    iget p1, p2, La13;->c:I

    .line 17
    .line 18
    iput p1, p0, Lb13;->o:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 4

    .line 55
    iget-object v0, p0, Lb13;->p:Ld13;

    iget-object v1, v0, Ld13;->n:Ljava/io/RandomAccessFile;

    iget v2, p0, Lb13;->o:I

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 56
    :cond_0
    iget v2, p0, Lb13;->n:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 58
    iget v2, p0, Lb13;->n:I

    add-int/lit8 v2, v2, 0x1

    .line 59
    invoke-virtual {v0, v2}, Ld13;->R(I)I

    move-result v0

    .line 60
    iput v0, p0, Lb13;->n:I

    .line 61
    iget v0, p0, Lb13;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb13;->o:I

    return v1
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    or-int v0, p2, p3

    .line 4
    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    sub-int/2addr v0, p2

    .line 9
    if-gt p3, v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Lb13;->o:I

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    if-le p3, v0, :cond_0

    .line 16
    .line 17
    move p3, v0

    .line 18
    :cond_0
    iget v0, p0, Lb13;->n:I

    .line 19
    .line 20
    iget-object v1, p0, Lb13;->p:Ld13;

    .line 21
    .line 22
    invoke-virtual {v1, p1, v0, p2, p3}, Ld13;->K([BIII)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Lb13;->n:I

    .line 26
    .line 27
    add-int/2addr p1, p3

    .line 28
    invoke-virtual {v1, p1}, Ld13;->R(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lb13;->n:I

    .line 33
    .line 34
    iget p1, p0, Lb13;->o:I

    .line 35
    .line 36
    sub-int/2addr p1, p3

    .line 37
    iput p1, p0, Lb13;->o:I

    .line 38
    .line 39
    return p3

    .line 40
    :cond_1
    const/4 p0, -0x1

    .line 41
    return p0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_3
    const-string p0, "buffer"

    .line 49
    .line 50
    invoke-static {p0}, Lq73;->r(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return p0
.end method
