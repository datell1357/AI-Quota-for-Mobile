.class public final synthetic Lct0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lqi0;

.field public final synthetic p:Lus0;


# direct methods
.method public synthetic constructor <init>(Lqi0;Lus0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lct0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lct0;->o:Lqi0;

    .line 4
    .line 5
    iput-object p2, p0, Lct0;->p:Lus0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lct0;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lct0;->p:Lus0;

    .line 8
    .line 9
    iget-object p0, p0, Lct0;->o:Lqi0;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    sget-object v0, Lez3;->a:Lra3;

    .line 22
    .line 23
    new-array v5, v5, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v5}, Lra3;->c([Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ldt0;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-direct {v0, v4, p1, v3, v5}, Ldt0;-><init>(Lus0;ZLdh0;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v3, v3, v0, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_0
    sget-object v0, Lez3;->a:Lra3;

    .line 42
    .line 43
    new-array v6, v5, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Ldt0;

    .line 52
    .line 53
    invoke-direct {v0, v4, p1, v3, v5}, Ldt0;-><init>(Lus0;ZLdh0;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v3, v3, v0, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
