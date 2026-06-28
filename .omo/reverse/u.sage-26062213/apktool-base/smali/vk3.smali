.class public final synthetic Lvk3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:Lqi0;

.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Ltr3;

.field public final synthetic q:Laj3;

.field public final synthetic r:Lpg2;


# direct methods
.method public synthetic constructor <init>(Lqi0;Lpg2;Lpg2;Laj3;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvk3;->n:Lqi0;

    .line 5
    .line 6
    iput-object p5, p0, Lvk3;->o:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lvk3;->p:Ltr3;

    .line 9
    .line 10
    iput-object p4, p0, Lvk3;->q:Laj3;

    .line 11
    .line 12
    iput-object p3, p0, Lvk3;->r:Lpg2;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lvk3;->p:Ltr3;

    .line 2
    .line 3
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    new-instance v2, Lfl3;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    iget-object v4, p0, Lvk3;->q:Laj3;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-direct {v2, v4, v1, v5, v3}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    iget-object v3, p0, Lvk3;->n:Lqi0;

    .line 26
    .line 27
    invoke-static {v3, v5, v5, v2, v1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lvk3;->o:Landroid/content/Context;

    .line 31
    .line 32
    iget-object p0, p0, Lvk3;->r:Lpg2;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ly84;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v1, p0}, Lmt1;->S(Landroid/content/Context;Ly84;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lu/sage/a;->D:Lwr3;

    .line 52
    .line 53
    invoke-static {p0}, Lmt1;->G(Ly84;)Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v0, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "u.sage.ACTION_SHOW_NOTIFICATION"

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ly84;

    .line 76
    .line 77
    invoke-static {v1, p0}, Lmt1;->T(Landroid/content/Context;Ly84;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 81
    .line 82
    return-object p0
.end method
