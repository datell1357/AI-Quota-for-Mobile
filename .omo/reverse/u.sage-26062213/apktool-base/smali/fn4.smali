.class public final Lfn4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfn4;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    iget v1, p0, Lfn4;->b:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    if-ltz v2, :cond_5

    .line 12
    .line 13
    if-gt v2, v0, :cond_0

    .line 14
    .line 15
    move v3, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    shr-int/lit8 v3, v0, 0x1

    .line 18
    .line 19
    add-int/2addr v3, v0

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    if-ge v3, v2, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int v3, v1, v1

    .line 29
    .line 30
    :cond_1
    if-gez v3, :cond_2

    .line 31
    .line 32
    const v3, 0x7fffffff

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    if-gt v3, v0, :cond_3

    .line 36
    .line 37
    iget-boolean v0, p0, Lfn4;->c:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lfn4;->a:[Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lfn4;->a:[Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lfn4;->c:Z

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lfn4;->a:[Ljava/lang/Object;

    .line 53
    .line 54
    iget v1, p0, Lfn4;->b:I

    .line 55
    .line 56
    add-int/lit8 v2, v1, 0x1

    .line 57
    .line 58
    iput v2, p0, Lfn4;->b:I

    .line 59
    .line 60
    aput-object p1, v0, v1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    const-string p0, "cannot store more than Integer.MAX_VALUE elements"

    .line 64
    .line 65
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
