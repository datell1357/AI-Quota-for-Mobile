.class public final Luz;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public n:[B

.field public o:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Buffer capacity"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->J(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array p1, p1, [B

    .line 10
    .line 11
    iput-object p1, p0, Luz;->n:[B

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lb40;II)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lb40;->n:[C

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    if-ltz p2, :cond_9

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    if-gt p2, v0, :cond_9

    .line 13
    .line 14
    if-ltz p3, :cond_9

    .line 15
    .line 16
    add-int v0, p2, p3

    .line 17
    .line 18
    if-ltz v0, :cond_9

    .line 19
    .line 20
    array-length v1, p1

    .line 21
    if-gt v0, v1, :cond_9

    .line 22
    .line 23
    if-nez p3, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    iget v0, p0, Luz;->o:I

    .line 27
    .line 28
    add-int/2addr p3, v0

    .line 29
    iget-object v1, p0, Luz;->n:[B

    .line 30
    .line 31
    array-length v1, v1

    .line 32
    if-le p3, v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, p3}, Luz;->c(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_1
    if-ge v0, p3, :cond_8

    .line 38
    .line 39
    aget-char v1, p1, p2

    .line 40
    .line 41
    const/16 v2, 0x20

    .line 42
    .line 43
    if-lt v1, v2, :cond_4

    .line 44
    .line 45
    const/16 v2, 0x7e

    .line 46
    .line 47
    if-le v1, v2, :cond_6

    .line 48
    .line 49
    :cond_4
    const/16 v2, 0xa0

    .line 50
    .line 51
    if-lt v1, v2, :cond_5

    .line 52
    .line 53
    const/16 v2, 0xff

    .line 54
    .line 55
    if-le v1, v2, :cond_6

    .line 56
    .line 57
    :cond_5
    const/16 v2, 0x9

    .line 58
    .line 59
    if-ne v1, v2, :cond_7

    .line 60
    .line 61
    :cond_6
    iget-object v2, p0, Luz;->n:[B

    .line 62
    .line 63
    int-to-byte v1, v1

    .line 64
    aput-byte v1, v2, v0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_7
    iget-object v1, p0, Luz;->n:[B

    .line 68
    .line 69
    const/16 v2, 0x3f

    .line 70
    .line 71
    aput-byte v2, v1, v0

    .line 72
    .line 73
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_8
    iput p3, p0, Luz;->o:I

    .line 79
    .line 80
    return-void

    .line 81
    :cond_9
    const-string p0, " len: "

    .line 82
    .line 83
    const-string v0, " b.length: "

    .line 84
    .line 85
    const-string v1, "off: "

    .line 86
    .line 87
    invoke-static {v1, p2, p0, p3, v0}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    array-length p1, p1

    .line 92
    invoke-static {p0, p1}, Lk21;->k(Ljava/lang/StringBuilder;I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final b([BII)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-ltz p2, :cond_3

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-gt p2, v0, :cond_3

    .line 8
    .line 9
    if-ltz p3, :cond_3

    .line 10
    .line 11
    add-int v0, p2, p3

    .line 12
    .line 13
    if-ltz v0, :cond_3

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    if-gt v0, v1, :cond_3

    .line 17
    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    iget v0, p0, Luz;->o:I

    .line 22
    .line 23
    add-int/2addr v0, p3

    .line 24
    iget-object v1, p0, Luz;->n:[B

    .line 25
    .line 26
    array-length v1, v1

    .line 27
    if-le v0, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Luz;->c(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Luz;->n:[B

    .line 33
    .line 34
    iget v2, p0, Luz;->o:I

    .line 35
    .line 36
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    iput v0, p0, Luz;->o:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const-string p0, " len: "

    .line 43
    .line 44
    const-string v0, " b.length: "

    .line 45
    .line 46
    const-string v1, "off: "

    .line 47
    .line 48
    invoke-static {v1, p2, p0, p3, v0}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    array-length p1, p1

    .line 53
    invoke-static {p0, p1}, Lk21;->k(Ljava/lang/StringBuilder;I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Luz;->n:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    shl-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-array p1, p1, [B

    .line 11
    .line 12
    iget-object v0, p0, Luz;->n:[B

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iget v2, p0, Luz;->o:I

    .line 16
    .line 17
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Luz;->n:[B

    .line 21
    .line 22
    return-void
.end method
