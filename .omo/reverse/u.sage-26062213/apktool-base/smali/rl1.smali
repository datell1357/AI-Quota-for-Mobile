.class public final Lrl1;
.super Lvl1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public static c(Lul1;)Lrl1;
    .locals 1

    .line 1
    instance-of v0, p0, Lrl1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lrl1;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lrl1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lvl1;-><init>(Lul1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public final d()Lv63;
    .locals 2

    .line 1
    const-string v0, "http.request-config"

    .line 2
    .line 3
    const-class v1, Lv63;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lv63;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lv63;->D:Lv63;

    .line 15
    .line 16
    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "http.user-token"

    .line 2
    .line 3
    iget-object p0, p0, Lvl1;->n:Lul1;

    .line 4
    .line 5
    invoke-interface {p0, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
