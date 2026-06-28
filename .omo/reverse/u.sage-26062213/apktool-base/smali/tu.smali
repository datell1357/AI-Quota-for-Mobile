.class public final Ltu;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljj1;


# instance fields
.field public final n:[Lgj1;

.field public o:I


# direct methods
.method public constructor <init>([Lgj1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    check-cast p1, [Lgj1;

    .line 5
    .line 6
    iput-object p1, p0, Ltu;->n:[Lgj1;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Ltu;->b(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Ltu;->o:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lgj1;
    .locals 2

    .line 1
    iget v0, p0, Ltu;->o:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ltu;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Ltu;->o:I

    .line 10
    .line 11
    iget-object p0, p0, Ltu;->n:[Lgj1;

    .line 12
    .line 13
    aget-object p0, p0, v0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "Iteration already finished."

    .line 17
    .line 18
    invoke-static {p0}, Lq73;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final b(I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    iget-object p0, p0, Ltu;->n:[Lgj1;

    .line 6
    .line 7
    array-length p0, p0

    .line 8
    const/4 v1, 0x1

    .line 9
    sub-int/2addr p0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-nez v2, :cond_1

    .line 12
    .line 13
    if-ge p1, p0, :cond_1

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eqz v2, :cond_2

    .line 20
    .line 21
    return p1

    .line 22
    :cond_2
    :goto_1
    return v0
.end method

.method public final hasNext()Z
    .locals 0

    .line 1
    iget p0, p0, Ltu;->o:I

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ltu;->a()Lgj1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Removing headers is not supported."

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
