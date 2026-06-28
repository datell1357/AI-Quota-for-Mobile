.class public final Lao4;
.super Ljava/util/AbstractList;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lyn4;

.field public final o:Lzn4;


# direct methods
.method public constructor <init>(Lyn4;Lzn4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lao4;->n:Lyn4;

    .line 5
    .line 6
    iput-object p2, p0, Lao4;->o:Lzn4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lao4;->n:Lyn4;

    .line 2
    .line 3
    check-cast v0, Lsn4;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lsn4;->d(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lao4;->o:Lzn4;

    .line 10
    .line 11
    check-cast p0, Lky4;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lnm4;->a(I)Lnm4;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lnm4;->o:Lnm4;

    .line 23
    .line 24
    :cond_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lao4;->n:Lyn4;

    .line 2
    .line 3
    check-cast p0, Lsn4;

    .line 4
    .line 5
    iget p0, p0, Lsn4;->p:I

    .line 6
    .line 7
    return p0
.end method
