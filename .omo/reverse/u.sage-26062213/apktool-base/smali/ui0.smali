.class public final Lui0;
.super Lji0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final p:Lui0;

.field public static final q:Lzp0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lui0;

    .line 2
    .line 3
    invoke-direct {v0}, Lji0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lui0;->p:Lui0;

    .line 7
    .line 8
    sget-object v0, Lzu0;->a:Lzp0;

    .line 9
    .line 10
    sput-object v0, Lui0;->q:Lzp0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n0(Lhi0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object p0, Lui0;->q:Lzp0;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lzp0;->n0(Lhi0;Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final p0(Lhi0;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lui0;->q:Lzp0;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    return p0
.end method
