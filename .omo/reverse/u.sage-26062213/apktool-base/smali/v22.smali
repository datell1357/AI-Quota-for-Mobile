.class public final Lv22;
.super Lvb4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final b:Ltf2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvb4;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lis1;->a:Ltf2;

    .line 5
    .line 6
    new-instance v0, Ltf2;

    .line 7
    .line 8
    invoke-direct {v0}, Ltf2;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lv22;->b:Ltf2;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 15

    .line 1
    iget-object p0, p0, Lv22;->b:Ltf2;

    .line 2
    .line 3
    iget-object v0, p0, Lhs1;->b:[I

    .line 4
    .line 5
    iget-object v1, p0, Lhs1;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lhs1;->a:[J

    .line 8
    .line 9
    array-length v2, p0

    .line 10
    add-int/lit8 v2, v2, -0x2

    .line 11
    .line 12
    if-ltz v2, :cond_4

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    aget-wide v5, p0, v4

    .line 17
    .line 18
    not-long v7, v5

    .line 19
    const/4 v9, 0x7

    .line 20
    shl-long/2addr v7, v9

    .line 21
    and-long/2addr v7, v5

    .line 22
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v7, v9

    .line 28
    cmp-long v7, v7, v9

    .line 29
    .line 30
    if-eqz v7, :cond_3

    .line 31
    .line 32
    sub-int v7, v4, v2

    .line 33
    .line 34
    not-int v7, v7

    .line 35
    ushr-int/lit8 v7, v7, 0x1f

    .line 36
    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    rsub-int/lit8 v7, v7, 0x8

    .line 40
    .line 41
    move v9, v3

    .line 42
    :goto_1
    if-ge v9, v7, :cond_2

    .line 43
    .line 44
    const-wide/16 v10, 0xff

    .line 45
    .line 46
    and-long/2addr v10, v5

    .line 47
    const-wide/16 v12, 0x80

    .line 48
    .line 49
    cmp-long v10, v10, v12

    .line 50
    .line 51
    if-gez v10, :cond_1

    .line 52
    .line 53
    shl-int/lit8 v10, v4, 0x3

    .line 54
    .line 55
    add-int/2addr v10, v9

    .line 56
    aget v11, v0, v10

    .line 57
    .line 58
    aget-object v10, v1, v10

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
    if-ge v12, v10, :cond_1

    .line 68
    .line 69
    aget-object v13, v11, v12

    .line 70
    .line 71
    check-cast v13, Lu22;

    .line 72
    .line 73
    iget-object v14, v13, Lu22;->d:Lq20;

    .line 74
    .line 75
    if-eqz v14, :cond_0

    .line 76
    .line 77
    invoke-interface {v14}, Lq20;->cancel()V

    .line 78
    .line 79
    .line 80
    :cond_0
    const/4 v14, 0x0

    .line 81
    iput-object v14, v13, Lu22;->d:Lq20;

    .line 82
    .line 83
    iget-object v13, v13, Lu22;->a:Ldd1;

    .line 84
    .line 85
    iget-object v13, v13, Ldd1;->o:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v13, Lx92;

    .line 88
    .line 89
    const/4 v14, 0x1

    .line 90
    iput-boolean v14, v13, Lx92;->o:Z

    .line 91
    .line 92
    iput-boolean v3, v13, Lx92;->n:Z

    .line 93
    .line 94
    invoke-virtual {v13}, Lx92;->a()V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v12, v12, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    shr-long/2addr v5, v8

    .line 101
    add-int/lit8 v9, v9, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    if-ne v7, v8, :cond_4

    .line 105
    .line 106
    :cond_3
    if-eq v4, v2, :cond_4

    .line 107
    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    return-void
.end method
