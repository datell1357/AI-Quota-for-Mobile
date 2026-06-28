.class public abstract Lmb2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/adservices/measurement/MeasurementManager;)V
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
    iput-object p1, p0, Lmb2;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 8
    .line 9
    return-void
.end method

.method public static b(Lmb2;Lwr0;Ldh0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb2;",
            "Lwr0;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Lo20;

    .line 2
    .line 3
    invoke-static {p2}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, v0, p2}, Lo20;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lo20;->x()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lmb2;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public static d(Lmb2;Ldh0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb2;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo20;

    .line 2
    .line 3
    invoke-static {p1}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p1}, Lo20;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lo20;->x()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lmb2;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    new-instance p1, Lmh;

    .line 17
    .line 18
    invoke-direct {p1, v1}, Lmh;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lgh0;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lgh0;-><init>(Lo20;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, v1}, Ld80;->m(Landroid/adservices/measurement/MeasurementManager;Lmh;Landroid/os/OutcomeReceiver;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lo20;->v()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static g(Lmb2;Lcq3;Ldh0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb2;",
            "Lcq3;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Lp4;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    invoke-direct {p1, p0, v0, v1}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Ldm0;->r(Ldf1;Ldh0;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Lri0;->n:Lri0;

    .line 14
    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 19
    .line 20
    return-object p0
.end method

.method public static h(Lmb2;Landroid/net/Uri;Landroid/view/InputEvent;Ldh0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb2;",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo20;

    .line 2
    .line 3
    invoke-static {p3}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p3}, Lo20;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lo20;->x()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lmb2;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    new-instance p3, Lmh;

    .line 17
    .line 18
    invoke-direct {p3, v1}, Lmh;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lgh0;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lgh0;-><init>(Lo20;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, p2, p3, v1}, Ld80;->o(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Lmh;Landroid/os/OutcomeReceiver;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lo20;->v()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Lri0;->n:Lri0;

    .line 34
    .line 35
    if-ne p0, p1, :cond_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 39
    .line 40
    return-object p0
.end method

.method public static j(Lmb2;Landroid/net/Uri;Ldh0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb2;",
            "Landroid/net/Uri;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo20;

    .line 2
    .line 3
    invoke-static {p2}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p2}, Lo20;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lo20;->x()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lmb2;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    new-instance p2, Lmh;

    .line 17
    .line 18
    invoke-direct {p2, v1}, Lmh;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lgh0;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lgh0;-><init>(Lo20;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, p2, v1}, Ld80;->n(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Lmh;Landroid/os/OutcomeReceiver;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lo20;->v()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Lri0;->n:Lri0;

    .line 34
    .line 35
    if-ne p0, p1, :cond_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 39
    .line 40
    return-object p0
.end method

.method public static l(Lmb2;Lyc4;Ldh0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb2;",
            "Lyc4;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Lo20;

    .line 2
    .line 3
    invoke-static {p2}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, v0, p2}, Lo20;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lo20;->x()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lmb2;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public static n(Lmb2;Lzc4;Ldh0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb2;",
            "Lzc4;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Lo20;

    .line 2
    .line 3
    invoke-static {p2}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, v0, p2}, Lo20;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lo20;->x()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lmb2;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public a(Lwr0;Ldh0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwr0;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmb2;->b(Lmb2;Lwr0;Ldh0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public c(Ldh0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lmb2;->d(Lmb2;Ldh0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public e(Lcq3;Ldh0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcq3;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmb2;->g(Lmb2;Lcq3;Ldh0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public f(Landroid/net/Uri;Landroid/view/InputEvent;Ldh0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmb2;->h(Lmb2;Landroid/net/Uri;Landroid/view/InputEvent;Ldh0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public i(Landroid/net/Uri;Ldh0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmb2;->j(Lmb2;Landroid/net/Uri;Ldh0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public k(Lyc4;Ldh0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyc4;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmb2;->l(Lmb2;Lyc4;Ldh0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public m(Lzc4;Ldh0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzc4;",
            "Ldh0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmb2;->n(Lmb2;Lzc4;Ldh0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
