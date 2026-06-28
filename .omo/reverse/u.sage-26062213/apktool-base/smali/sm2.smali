.class public final Lsm2;
.super Lh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltu1;


# static fields
.field public static final o:Lsm2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsm2;

    .line 2
    .line 3
    sget-object v1, Lmj1;->W:Lmj1;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lh0;-><init>(Lgi0;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lsm2;->o:Lsm2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final B(Lbv1;)Ln40;
    .locals 0

    .line 1
    sget-object p0, Ltm2;->n:Ltm2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final N()Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "This job is always active"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final V(Lpe1;)Ljv0;
    .locals 0

    .line 1
    sget-object p0, Ltm2;->n:Ltm2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final i0(Lfh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "This job is always active"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final isCancelled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final j(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j0(ZZLo;)Ljv0;
    .locals 0

    .line 1
    sget-object p0, Ltm2;->n:Ltm2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final start()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NonCancellable"

    .line 2
    .line 3
    return-object p0
.end method
