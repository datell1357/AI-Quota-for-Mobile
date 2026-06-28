.class public final Lvs;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements La81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:La81;

.field public final synthetic p:Lpt;


# direct methods
.method public synthetic constructor <init>(La81;Lpt;I)V
    .locals 0

    .line 1
    iput p3, p0, Lvs;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lvs;->o:La81;

    .line 4
    .line 5
    iput-object p2, p0, Lvs;->p:Lpt;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lvs;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    sget-object v2, Lri0;->n:Lri0;

    .line 6
    .line 7
    iget-object v3, p0, Lvs;->p:Lpt;

    .line 8
    .line 9
    iget-object p0, p0, Lvs;->o:La81;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v0, Lus;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v0, p1, v3, v4}, Lus;-><init>(Lb81;Lpt;I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0, p2}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-ne p0, v2, :cond_0

    .line 25
    .line 26
    move-object v1, p0

    .line 27
    :cond_0
    return-object v1

    .line 28
    :pswitch_0
    new-instance v0, Lus;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v0, p1, v3, v4}, Lus;-><init>(Lb81;Lpt;I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0, p2}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-ne p0, v2, :cond_1

    .line 39
    .line 40
    move-object v1, p0

    .line 41
    :cond_1
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
