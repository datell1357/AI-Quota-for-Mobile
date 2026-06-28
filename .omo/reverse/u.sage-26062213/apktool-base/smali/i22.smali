.class public final Li22;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln22;
.implements Lqi0;


# instance fields
.field public final n:Lh22;

.field public final o:Lhi0;


# direct methods
.method public constructor <init>(Lh22;Lhi0;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Li22;->n:Lh22;

    .line 8
    .line 9
    iput-object p2, p0, Li22;->o:Lhi0;

    .line 10
    .line 11
    check-cast p1, Lr22;

    .line 12
    .line 13
    iget-object p0, p1, Lr22;->d:Lg22;

    .line 14
    .line 15
    sget-object p1, Lg22;->n:Lg22;

    .line 16
    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-static {p2, p0}, Ln44;->S(Lhi0;Ljava/util/concurrent/CancellationException;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final B(Lp22;Lf22;)V
    .locals 1

    .line 1
    iget-object p1, p0, Li22;->n:Lh22;

    .line 2
    .line 3
    move-object p2, p1

    .line 4
    check-cast p2, Lr22;

    .line 5
    .line 6
    iget-object p2, p2, Lr22;->d:Lg22;

    .line 7
    .line 8
    sget-object v0, Lg22;->n:Lg22;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-gtz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lh22;->b(Lo22;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Li22;->o:Lhi0;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p0, p1}, Ln44;->S(Lhi0;Ljava/util/concurrent/CancellationException;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final d()Lhi0;
    .locals 0

    .line 1
    iget-object p0, p0, Li22;->o:Lhi0;

    .line 2
    .line 3
    return-object p0
.end method
