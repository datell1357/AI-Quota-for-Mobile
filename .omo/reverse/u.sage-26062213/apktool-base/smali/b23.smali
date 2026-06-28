.class public final Lb23;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lur3;
.implements La81;
.implements Lqf1;


# instance fields
.field public final synthetic n:Lwr3;


# direct methods
.method public constructor <init>(Lwr3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb23;->n:Lwr3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lhi0;ILvy;)La81;
    .locals 1

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, -0x2

    .line 8
    if-ne p2, v0, :cond_1

    .line 9
    .line 10
    :goto_0
    sget-object v0, Lvy;->o:Lvy;

    .line 11
    .line 12
    if-ne p3, v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lxl3;->c(Ltl3;Lhi0;ILvy;)La81;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_1
    return-object p0
.end method

.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb23;->n:Lwr3;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwr3;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lri0;->n:Lri0;

    .line 7
    .line 8
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb23;->n:Lwr3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
