.class public final synthetic Lxk3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Z

.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Lqi0;

.field public final synthetic q:Ln8;

.field public final synthetic r:Laj3;

.field public final synthetic s:Lpg2;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Lqi0;Ln8;Laj3;Lpg2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lxk3;->n:Z

    .line 5
    .line 6
    iput-object p2, p0, Lxk3;->o:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lxk3;->p:Lqi0;

    .line 9
    .line 10
    iput-object p4, p0, Lxk3;->q:Ln8;

    .line 11
    .line 12
    iput-object p5, p0, Lxk3;->r:Laj3;

    .line 13
    .line 14
    iput-object p6, p0, Lxk3;->s:Lpg2;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lxk3;->n:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const p1, 0x7f1003af

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lxk3;->o:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lfl3;

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    iget-object v2, p0, Lxk3;->r:Laj3;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v0, v2, p1, v3, v1}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    iget-object v2, p0, Lxk3;->p:Lqi0;

    .line 42
    .line 43
    invoke-static {v2, v3, v3, v0, v1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lxk3;->s:Lpg2;

    .line 47
    .line 48
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ly84;

    .line 53
    .line 54
    const-string v1, "nav_bar_visible"

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p0, p0, Lxk3;->q:Ln8;

    .line 61
    .line 62
    invoke-virtual {p0, v0, v1, p1}, Ln8;->i(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 66
    .line 67
    return-object p0
.end method
