.class public final Lak3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzj3;
.implements Lty;


# static fields
.field public static final r:[B


# instance fields
.field public final n:Lqz0;

.field public final o:Luz;

.field public final p:I

.field public q:Ljava/io/OutputStream;


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
    sput-object v0, Lak3;->r:[B

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

.method public constructor <init>(Lqz0;)V
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
    iput-object p1, p0, Lak3;->n:Lqz0;

    .line 12
    .line 13
    new-instance p1, Luz;

    .line 14
    .line 15
    invoke-direct {p1, v1}, Luz;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lak3;->o:Luz;

    .line 19
    .line 20
    iput v1, p0, Lak3;->p:I

    .line 21
    .line 22
    return-void
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
    if-lez v0, :cond_1

    .line 10
    .line 11
    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v2}, Lak3;->write(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object p1, Lak3;->r:[B

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-virtual {p0, p1, v1, v0}, Lak3;->write([BII)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final b()Lqz0;
    .locals 0

    .line 1
    iget-object p0, p0, Lak3;->n:Lqz0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lak3;->o:Luz;

    .line 2
    .line 3
    iget v1, v0, Luz;->o:I

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Luz;->n:[B

    .line 8
    .line 9
    iget-object v3, p0, Lak3;->q:Ljava/io/OutputStream;

    .line 10
    .line 11
    const-string v4, "Output stream"

    .line 12
    .line 13
    invoke-static {v3, v4}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lak3;->q:Ljava/io/OutputStream;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 20
    .line 21
    .line 22
    iput v4, v0, Luz;->o:I

    .line 23
    .line 24
    iget-object p0, p0, Lak3;->n:Lqz0;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :cond_0
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
    iget v0, p1, Lb40;->o:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-lez v0, :cond_3

    .line 9
    .line 10
    iget-object v3, p0, Lak3;->o:Luz;

    .line 11
    .line 12
    iget-object v4, v3, Luz;->n:[B

    .line 13
    .line 14
    array-length v4, v4

    .line 15
    iget v5, v3, Luz;->o:I

    .line 16
    .line 17
    sub-int/2addr v4, v5

    .line 18
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-lez v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3, p1, v2, v4}, Luz;->a(Lb40;II)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v5, v3, Luz;->o:I

    .line 28
    .line 29
    iget-object v3, v3, Luz;->n:[B

    .line 30
    .line 31
    array-length v3, v3

    .line 32
    if-ne v5, v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lak3;->c()V

    .line 35
    .line 36
    .line 37
    :cond_2
    add-int/2addr v2, v4

    .line 38
    sub-int/2addr v0, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget-object p1, Lak3;->r:[B

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p0, p1, v1, v0}, Lak3;->write([BII)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lak3;->c()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lak3;->q:Ljava/io/OutputStream;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final length()I
    .locals 0

    .line 1
    iget-object p0, p0, Lak3;->o:Luz;

    .line 2
    .line 3
    iget p0, p0, Luz;->o:I

    .line 4
    .line 5
    return p0
.end method

.method public final write(I)V
    .locals 3

    .line 50
    iget v0, p0, Lak3;->p:I

    if-lez v0, :cond_2

    .line 51
    iget-object v0, p0, Lak3;->o:Luz;

    iget v1, v0, Luz;->o:I

    .line 52
    iget-object v2, v0, Luz;->n:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lak3;->c()V

    .line 54
    :cond_0
    iget p0, v0, Luz;->o:I

    add-int/lit8 p0, p0, 0x1

    .line 55
    iget-object v1, v0, Luz;->n:[B

    array-length v1, v1

    if-le p0, v1, :cond_1

    .line 56
    invoke-virtual {v0, p0}, Luz;->c(I)V

    .line 57
    :cond_1
    iget-object v1, v0, Luz;->n:[B

    iget v2, v0, Luz;->o:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 58
    iput p0, v0, Luz;->o:I

    return-void

    .line 59
    :cond_2
    invoke-virtual {p0}, Lak3;->c()V

    .line 60
    iget-object p0, p0, Lak3;->q:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

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
    iget v0, p0, Lak3;->p:I

    .line 5
    .line 6
    if-gt p3, v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lak3;->o:Luz;

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
    iget v2, v0, Luz;->o:I

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    if-le p3, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lak3;->c()V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Luz;->b([BII)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lak3;->c()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lak3;->q:Ljava/io/OutputStream;

    .line 33
    .line 34
    const-string v1, "Output stream"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lak3;->q:Ljava/io/OutputStream;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lak3;->n:Lqz0;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-void
.end method
