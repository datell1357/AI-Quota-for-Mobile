.class public final Lak1;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Law;


# direct methods
.method public constructor <init>(Law;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lak1;->b:Law;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 1

    .line 1
    new-instance v0, Lbk1;

    .line 2
    .line 3
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lak1;->b:Law;

    .line 7
    .line 8
    iput-object p0, v0, Lbk1;->B:Law;

    .line 9
    .line 10
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lak1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lak1;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_2
    iget-object p0, p0, Lak1;->b:Law;

    .line 18
    .line 19
    iget-object p1, p1, Lak1;->b:Law;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Law;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 0

    .line 1
    check-cast p1, Lbk1;

    .line 2
    .line 3
    iget-object p0, p0, Lak1;->b:Law;

    .line 4
    .line 5
    iput-object p0, p1, Lbk1;->B:Law;

    .line 6
    .line 7
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lak1;->b:Law;

    .line 2
    .line 3
    iget p0, p0, Law;->a:F

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
