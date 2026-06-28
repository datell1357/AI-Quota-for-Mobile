.class public final Lnq3;
.super Les1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public n:I

.field public final synthetic o:Lmq3;


# direct methods
.method public constructor <init>(Lmq3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnq3;->o:Lmq3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lnq3;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lnq3;->o:Lmq3;

    .line 4
    .line 5
    invoke-virtual {p0}, Lmq3;->f()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ge v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final nextInt()I
    .locals 2

    .line 1
    iget v0, p0, Lnq3;->n:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lnq3;->n:I

    .line 6
    .line 7
    iget-object p0, p0, Lnq3;->o:Lmq3;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lmq3;->d(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
