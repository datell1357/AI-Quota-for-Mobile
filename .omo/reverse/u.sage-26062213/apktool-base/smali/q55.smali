.class public abstract Lq55;
.super Lib0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lr45;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lib0;-><init>(Lr45;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lr45;

    .line 7
    .line 8
    iget p1, p0, Lr45;->A:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Lr45;->A:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract w()Z
.end method

.method public final x()V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lq55;->b:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "Not initialized"

    .line 7
    .line 8
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq55;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lq55;->w()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lr45;

    .line 14
    .line 15
    iget-object v0, v0, Lr45;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lq55;->b:Z

    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    const-string p0, "Can\'t initialize twice"

    .line 25
    .line 26
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
