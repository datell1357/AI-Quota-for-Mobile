.class public final Lx92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ll83;


# instance fields
.field public n:Z

.field public o:Z

.field public p:Z

.field public final q:Lkg2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lx92;->n:Z

    .line 6
    .line 7
    new-instance v0, Lkg2;

    .line 8
    .line 9
    invoke-direct {v0}, Lkg2;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lx92;->q:Lkg2;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object p0, p0, Lx92;->q:Lkg2;

    .line 2
    .line 3
    iget-object v0, p0, Lkg2;->c:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lkg2;->a:[J

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    add-int/lit8 v2, v2, -0x2

    .line 9
    .line 10
    if-ltz v2, :cond_3

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    aget-wide v5, v1, v4

    .line 15
    .line 16
    not-long v7, v5

    .line 17
    const/4 v9, 0x7

    .line 18
    shl-long/2addr v7, v9

    .line 19
    and-long/2addr v7, v5

    .line 20
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v7, v9

    .line 26
    cmp-long v7, v7, v9

    .line 27
    .line 28
    if-eqz v7, :cond_2

    .line 29
    .line 30
    sub-int v7, v4, v2

    .line 31
    .line 32
    not-int v7, v7

    .line 33
    ushr-int/lit8 v7, v7, 0x1f

    .line 34
    .line 35
    const/16 v8, 0x8

    .line 36
    .line 37
    rsub-int/lit8 v7, v7, 0x8

    .line 38
    .line 39
    move v9, v3

    .line 40
    :goto_1
    if-ge v9, v7, :cond_1

    .line 41
    .line 42
    const-wide/16 v10, 0xff

    .line 43
    .line 44
    and-long/2addr v10, v5

    .line 45
    const-wide/16 v12, 0x80

    .line 46
    .line 47
    cmp-long v10, v10, v12

    .line 48
    .line 49
    if-gez v10, :cond_0

    .line 50
    .line 51
    shl-int/lit8 v10, v4, 0x3

    .line 52
    .line 53
    add-int/2addr v10, v9

    .line 54
    aget-object v10, v0, v10

    .line 55
    .line 56
    instance-of v11, v10, Ldg2;

    .line 57
    .line 58
    if-eqz v11, :cond_0

    .line 59
    .line 60
    check-cast v10, Ldg2;

    .line 61
    .line 62
    iget-object v11, v10, Ldg2;->a:[Ljava/lang/Object;

    .line 63
    .line 64
    iget v10, v10, Ldg2;->b:I

    .line 65
    .line 66
    move v12, v3

    .line 67
    :goto_2
    if-ge v12, v10, :cond_0

    .line 68
    .line 69
    aget-object v13, v11, v12

    .line 70
    .line 71
    add-int/lit8 v12, v12, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_0
    shr-long/2addr v5, v8

    .line 75
    add-int/lit8 v9, v9, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    if-ne v7, v8, :cond_3

    .line 79
    .line 80
    :cond_2
    if-eq v4, v2, :cond_3

    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0}, Lkg2;->a()V

    .line 86
    .line 87
    .line 88
    return-void
.end method
