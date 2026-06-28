.class public final synthetic Lq75;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Cloneable;


# direct methods
.method public synthetic constructor <init>(Lg25;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    const/4 p5, 0x0

    iput p5, p0, Lq75;->n:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq75;->p:Ljava/lang/Object;

    iput p2, p0, Lq75;->o:I

    iput-object p3, p0, Lq75;->q:Ljava/lang/Object;

    iput-object p4, p0, Lq75;->r:Ljava/lang/Cloneable;

    return-void
.end method

.method public synthetic constructor <init>(Lra3;ILa25;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lq75;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq75;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lq75;->o:I

    .line 10
    .line 11
    iput-object p3, p0, Lq75;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lq75;->r:Ljava/lang/Cloneable;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lq75;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lq75;->r:Ljava/lang/Cloneable;

    .line 4
    .line 5
    iget-object v2, p0, Lq75;->q:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Lq75;->o:I

    .line 8
    .line 9
    iget-object p0, p0, Lq75;->p:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lra3;

    .line 15
    .line 16
    check-cast v2, La25;

    .line 17
    .line 18
    check-cast v1, Landroid/content/Intent;

    .line 19
    .line 20
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/app/Service;

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    check-cast v0, Lu95;

    .line 26
    .line 27
    invoke-interface {v0, v3}, Lu95;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget-object v2, v2, La25;->n:Lx15;

    .line 34
    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    .line 40
    .line 41
    invoke-virtual {v2, v3, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {p0, v2, v2, v2}, Lr45;->r(Landroid/content/Context;Lix4;Ljava/lang/Long;Ljava/lang/Long;)Lr45;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object p0, p0, Lr45;->f:La25;

    .line 50
    .line 51
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, La25;->n:Lx15;

    .line 55
    .line 56
    const-string v2, "Completed wakeful intent."

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1}, Lu95;->b(Landroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void

    .line 65
    :pswitch_0
    check-cast p0, Lg25;

    .line 66
    .line 67
    check-cast v2, Ljava/lang/Exception;

    .line 68
    .line 69
    check-cast v1, [B

    .line 70
    .line 71
    iget-object p0, p0, Lg25;->s:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Lp75;

    .line 74
    .line 75
    invoke-interface {p0, v3, v2, v1}, Lp75;->b(ILjava/lang/Throwable;[B)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
