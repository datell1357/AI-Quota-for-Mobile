.class public final Lju;
.super Lku;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public w:[I

.field public x:Z


# virtual methods
.method public final a()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lju;->w:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Ljava/util/Date;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lju;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0, p1}, Lku;->b(Ljava/util/Date;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lku;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lju;

    .line 6
    .line 7
    iget-object p0, p0, Lju;->w:[I

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, [I

    .line 16
    .line 17
    iput-object p0, v0, Lju;->w:[I

    .line 18
    .line 19
    :cond_0
    return-object v0
.end method
