.class public final Lw30;
.super Lr30;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final r:Lff1;


# direct methods
.method public constructor <init>(Lff1;La81;Lhi0;ILvy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lr30;-><init>(La81;Lhi0;ILvy;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw30;->r:Lff1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(Lhi0;ILvy;)Lp30;
    .locals 6

    .line 1
    new-instance v0, Lw30;

    .line 2
    .line 3
    iget-object v1, p0, Lw30;->r:Lff1;

    .line 4
    .line 5
    iget-object v2, p0, Lr30;->q:La81;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lw30;-><init>(Lff1;La81;Lhi0;ILvy;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final h(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lt30;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lt30;-><init>(Lw30;Lb81;Ldh0;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Ldm0;->r(Ldf1;Ldh0;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lri0;->n:Lri0;

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 17
    .line 18
    return-object p0
.end method
