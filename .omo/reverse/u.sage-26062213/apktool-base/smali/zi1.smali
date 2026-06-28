.class public final synthetic Lzi1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lne1;


# direct methods
.method public synthetic constructor <init>(ILne1;)V
    .locals 0

    .line 1
    iput p1, p0, Lzi1;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lzi1;->o:Lne1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lzi1;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lzi1;->o:Lne1;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v1

    .line 16
    :pswitch_0
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object v1

    .line 22
    :pswitch_1
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_2
    :try_start_0
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    sget-object p0, Lg01;->n:Lg01;

    .line 34
    .line 35
    :goto_0
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
