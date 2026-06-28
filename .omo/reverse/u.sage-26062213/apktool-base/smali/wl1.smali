.class public final Lwl1;
.super Lpm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic n:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwl1;->n:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lj0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lpm1;->setURI(Ljava/net/URI;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0}, Lj0;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lpm1;->setURI(Ljava/net/URI;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    invoke-direct {p0}, Lj0;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lpm1;->setURI(Ljava/net/URI;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    invoke-direct {p0}, Lj0;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lpm1;->setURI(Ljava/net/URI;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_3
    invoke-direct {p0}, Lj0;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lpm1;->setURI(Ljava/net/URI;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/net/URI;I)V
    .locals 0

    iput p2, p0, Lwl1;->n:I

    packed-switch p2, :pswitch_data_0

    .line 61
    invoke-direct {p0}, Lj0;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lpm1;->setURI(Ljava/net/URI;)V

    return-void

    .line 63
    :pswitch_0
    invoke-direct {p0}, Lj0;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lpm1;->setURI(Ljava/net/URI;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lwl1;->n:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "TRACE"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "OPTIONS"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "HEAD"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "GET"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "DELETE"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
