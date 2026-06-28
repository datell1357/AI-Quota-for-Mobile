.class public final Lo30;
.super Lp30;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic consumed$volatile:I

.field public final q:Ln30;

.field public final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lo30;

    .line 2
    .line 3
    const-string v1, "consumed$volatile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lo30;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ln30;Z)V
    .locals 6

    .line 1
    const/4 v4, -0x3

    .line 2
    sget-object v5, Lvy;->n:Lvy;

    .line 3
    .line 4
    sget-object v3, Ld01;->n:Ld01;

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lo30;-><init>(Ln30;ZLhi0;ILvy;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ln30;ZLhi0;ILvy;)V
    .locals 0

    .line 13
    invoke-direct {p0, p3, p4, p5}, Lp30;-><init>(Lhi0;ILvy;)V

    .line 14
    iput-object p1, p0, Lo30;->q:Ln30;

    .line 15
    iput-boolean p2, p0, Lo30;->r:Z

    return-void
.end method


# virtual methods
.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lp30;->o:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    sget-object v2, Lri0;->n:Lri0;

    .line 5
    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lo30;->r:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v1, Lo30;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eq v1, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "ReceiveChannel.consumeAsFlow can be collected just once"

    .line 23
    .line 24
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    iget-object p0, p0, Lo30;->q:Ln30;

    .line 30
    .line 31
    invoke-static {p1, p0, v0, p2}, Ldm0;->u(Lb81;Ln30;ZLdh0;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-ne p0, v2, :cond_3

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    invoke-super {p0, p1, p2}, Lp30;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-ne p0, v2, :cond_3

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    sget-object p0, Lt64;->a:Lt64;

    .line 46
    .line 47
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "channel="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lo30;->q:Ln30;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final d(Lhz2;Ldh0;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lzh3;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lzh3;-><init>(Lhz2;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lo30;->q:Ln30;

    .line 7
    .line 8
    iget-boolean p0, p0, Lo30;->r:Z

    .line 9
    .line 10
    invoke-static {v0, p1, p0, p2}, Ldm0;->u(Lb81;Ln30;ZLdh0;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object p1, Lri0;->n:Lri0;

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 20
    .line 21
    return-object p0
.end method

.method public final e(Lhi0;ILvy;)Lp30;
    .locals 6

    .line 1
    new-instance v0, Lo30;

    .line 2
    .line 3
    iget-object v1, p0, Lo30;->q:Ln30;

    .line 4
    .line 5
    iget-boolean v2, p0, Lo30;->r:Z

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lo30;-><init>(Ln30;ZLhi0;ILvy;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final f()La81;
    .locals 2

    .line 1
    new-instance v0, Lo30;

    .line 2
    .line 3
    iget-object v1, p0, Lo30;->q:Ln30;

    .line 4
    .line 5
    iget-boolean p0, p0, Lo30;->r:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lo30;-><init>(Ln30;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final g(Lqi0;)Ln30;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo30;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lo30;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "ReceiveChannel.consumeAsFlow can be collected just once"

    .line 16
    .line 17
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_1
    :goto_0
    iget v0, p0, Lp30;->o:I

    .line 23
    .line 24
    const/4 v1, -0x3

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lo30;->q:Ln30;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    invoke-super {p0, p1}, Lp30;->g(Lqi0;)Ln30;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
