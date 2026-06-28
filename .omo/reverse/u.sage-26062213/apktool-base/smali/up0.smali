.class public final Lup0;
.super Lh;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lup0;->c:I

    .line 2
    .line 3
    invoke-direct {p0}, Lh;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lvm1;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget p0, p0, Lup0;->c:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "WWW-Authenticate"

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lim1;->getHeaders(Ljava/lang/String;)[Lgj1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lh;->d([Lgj1;)Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    const-string p0, "Proxy-Authenticate"

    .line 18
    .line 19
    invoke-interface {p1, p0}, Lim1;->getHeaders(Ljava/lang/String;)[Lgj1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lh;->d([Lgj1;)Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lvm1;)Z
    .locals 2

    .line 1
    iget p0, p0, Lup0;->c:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lvm1;->b()Lkv;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Lkv;->o:I

    .line 13
    .line 14
    const/16 p1, 0x191

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    :cond_0
    return v0

    .line 20
    :pswitch_0
    invoke-interface {p1}, Lvm1;->b()Lkv;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Lkv;->o:I

    .line 25
    .line 26
    const/16 p1, 0x197

    .line 27
    .line 28
    if-ne p0, p1, :cond_1

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_1
    return v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lvm1;)Ljava/util/List;
    .locals 1

    .line 1
    iget p0, p0, Lup0;->c:I

    .line 2
    .line 3
    sget-object v0, Lh;->b:Ljava/util/List;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p1, "http.auth.target-scheme-pref"

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/List;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    :cond_0
    return-object v0

    .line 24
    :pswitch_0
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "http.auth.proxy-scheme-pref"

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/util/List;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    move-object v0, p0

    .line 39
    :cond_1
    return-object v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
