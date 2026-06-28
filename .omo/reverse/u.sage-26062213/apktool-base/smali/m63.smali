.class public final Lm63;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrm1;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm63;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "gzip,deflate"

    .line 8
    .line 9
    iput-object v0, p0, Lm63;->o:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm63;->n:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lm63;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lom1;Lul1;)V
    .locals 2

    .line 1
    iget v0, p0, Lm63;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lm63;->o:Ljava/lang/String;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p2, "User-Agent"

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v1, "http.useragent"

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object p0, v0

    .line 36
    :goto_1
    if-eqz p0, :cond_2

    .line 37
    .line 38
    invoke-interface {p1, p2, p0}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void

    .line 42
    :pswitch_0
    invoke-static {p2}, Lrl1;->c(Lul1;)Lrl1;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lrl1;->d()Lv63;

    .line 47
    .line 48
    .line 49
    const-string p2, "Accept-Encoding"

    .line 50
    .line 51
    invoke-interface {p1, p2}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-interface {p1, p2, p0}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
