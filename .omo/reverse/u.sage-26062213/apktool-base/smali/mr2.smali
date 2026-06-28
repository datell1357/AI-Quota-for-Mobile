.class public final Lmr2;
.super Lfl4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final x:Lka3;

.field public final y:Lsb;


# direct methods
.method public constructor <init>(Lka3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmr2;->x:Lka3;

    .line 5
    .line 6
    invoke-static {p1}, Lk30;->z(Lka3;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lub;->a()Lsb;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1}, Lsb;->b(Lsb;Lka3;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput-object v0, p0, Lmr2;->y:Lsb;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lmr2;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lmr2;

    .line 10
    .line 11
    iget-object p1, p1, Lmr2;->x:Lka3;

    .line 12
    .line 13
    iget-object p0, p0, Lmr2;->x:Lka3;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lka3;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmr2;->x:Lka3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lka3;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final o()Ll33;
    .locals 4

    .line 1
    new-instance v0, Ll33;

    .line 2
    .line 3
    iget-object p0, p0, Lmr2;->x:Lka3;

    .line 4
    .line 5
    iget v1, p0, Lka3;->a:F

    .line 6
    .line 7
    iget v2, p0, Lka3;->b:F

    .line 8
    .line 9
    iget v3, p0, Lka3;->c:F

    .line 10
    .line 11
    iget p0, p0, Lka3;->d:F

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p0}, Ll33;-><init>(FFFF)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
