.class public abstract Lcr;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lbf0;


# instance fields
.field public final a:Lcf0;


# direct methods
.method public constructor <init>(Lcf0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcr;->a:Lcf0;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Log4;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lbf0;->a(Log4;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcr;->a:Lcf0;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcf0;->c()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcr;->e(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final c(Llf0;)La20;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Ln;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {p1, p0, v0, v1}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 9
    .line 10
    .line 11
    new-instance p0, La20;

    .line 12
    .line 13
    const/4 v0, -0x2

    .line 14
    sget-object v1, Lvy;->n:Lvy;

    .line 15
    .line 16
    sget-object v2, Ld01;->n:Ld01;

    .line 17
    .line 18
    invoke-direct {p0, p1, v2, v0, v1}, La20;-><init>(Ldf1;Lhi0;ILvy;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public abstract d()I
.end method

.method public abstract e(Ljava/lang/Object;)Z
.end method
