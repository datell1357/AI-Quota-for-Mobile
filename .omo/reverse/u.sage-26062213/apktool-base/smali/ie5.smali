.class public final synthetic Lie5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpi;
.implements Lw70;


# instance fields
.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lie5;->n:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object p0, p0, Lie5;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ln93;

    .line 4
    .line 5
    iget-wide v0, p0, Ln93;->c:J

    .line 6
    .line 7
    return-wide v0
.end method

.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object p0, p0, Lie5;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lbo;

    .line 4
    .line 5
    new-instance v0, Lge5;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-direct {v0, p0, v1}, Lge5;-><init>(Lbo;I)V

    .line 9
    .line 10
    .line 11
    sget v1, Lvf5;->a:I

    .line 12
    .line 13
    invoke-static {}, Lye5;->a()Lrf5;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lic5;

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-direct {v2, v3, v1, v0}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lbo;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lfi3;

    .line 26
    .line 27
    iget-object p0, p0, Lbo;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 30
    .line 31
    invoke-static {p0, v2, v0}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ltf1;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
