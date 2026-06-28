.class public abstract Ly73;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final n:Lx73;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lg00;->q:Lg00;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lsy;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lsy;->j0(Lg00;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lg00;->n:[B

    .line 15
    .line 16
    array-length v0, v0

    .line 17
    int-to-long v2, v0

    .line 18
    new-instance v0, Lx73;

    .line 19
    .line 20
    invoke-direct {v0, v2, v3, v1}, Lx73;-><init>(JLsy;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ly73;->n:Lx73;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract a0()Lfz;
.end method

.method public abstract b()J
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly73;->a0()Lfz;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lfi4;->a(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract j()Lpb2;
.end method
