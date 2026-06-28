.class public final Lx64;
.super Lji0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final p:Lx64;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx64;

    .line 2
    .line 3
    invoke-direct {v0}, Lji0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx64;->p:Lx64;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n0(Lhi0;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object p0, Lzp0;->q:Lzp0;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iget-object p0, p0, Lzp0;->p:Lpi0;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p2, p1, v0}, Lpi0;->j(Ljava/lang/Runnable;ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final o0(Lhi0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p0, Lzp0;->q:Lzp0;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iget-object p0, p0, Lzp0;->p:Lpi0;

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1, p1}, Lpi0;->j(Ljava/lang/Runnable;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final q0(I)Lji0;
    .locals 1

    .line 1
    invoke-static {p1}, Lc75;->p(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Luw3;->d:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lji0;->q0(I)Lji0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Dispatchers.IO"

    .line 2
    .line 3
    return-object p0
.end method
