.class public Ll52;
.super Lvb4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final d:Lkd1;


# instance fields
.field public final b:Lmq3;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkd1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkd1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ll52;->d:Lkd1;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lvb4;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmq3;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lmq3;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll52;->b:Lmq3;

    .line 11
    .line 12
    iput-boolean v1, p0, Ll52;->c:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    .line 1
    iget-object p0, p0, Ll52;->b:Lmq3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lmq3;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lmq3;->g(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lk52;

    .line 16
    .line 17
    iget-object v4, v3, Lk52;->l:Lh52;

    .line 18
    .line 19
    invoke-virtual {v4}, Lh52;->cancelLoad()Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lh52;->abandon()V

    .line 23
    .line 24
    .line 25
    iget-object v5, v3, Lk52;->n:Lft1;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Lk52;->g(Lbo2;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v6, v5, Lft1;->o:Z

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    iget-object v6, v5, Lft1;->q:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v6, Li52;

    .line 39
    .line 40
    iget-object v7, v5, Lft1;->p:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v7, Lh52;

    .line 43
    .line 44
    invoke-interface {v6, v7}, Li52;->onLoaderReset(Lh52;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v4, v3}, Lh52;->unregisterListener(Lg52;)V

    .line 48
    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    iget-boolean v3, v5, Lft1;->o:Z

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v4}, Lh52;->reset()V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget v0, p0, Lmq3;->q:I

    .line 61
    .line 62
    iget-object v2, p0, Lmq3;->p:[Ljava/lang/Object;

    .line 63
    .line 64
    move v3, v1

    .line 65
    :goto_1
    if-ge v3, v0, :cond_3

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    aput-object v4, v2, v3

    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iput v1, p0, Lmq3;->q:I

    .line 74
    .line 75
    iput-boolean v1, p0, Lmq3;->n:Z

    .line 76
    .line 77
    return-void
.end method
