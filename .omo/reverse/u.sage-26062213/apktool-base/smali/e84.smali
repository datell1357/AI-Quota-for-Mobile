.class public final synthetic Le84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ln84;


# direct methods
.method public synthetic constructor <init>(Ln84;I)V
    .locals 0

    .line 1
    iput p2, p0, Le84;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Le84;->o:Ln84;

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
    .locals 1

    .line 1
    iget v0, p0, Le84;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Le84;->o:Ln84;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lus0;

    .line 9
    .line 10
    iget-object p0, p0, Ln84;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lus0;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    iget-object p0, p0, Ln84;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-class v0, Lfn3;

    .line 26
    .line 27
    invoke-static {p0, v0}, Lgg4;->w(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lfn3;

    .line 32
    .line 33
    check-cast p0, Lvl0;

    .line 34
    .line 35
    iget-object p0, p0, Lvl0;->c:Ll03;

    .line 36
    .line 37
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ln8;

    .line 42
    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
