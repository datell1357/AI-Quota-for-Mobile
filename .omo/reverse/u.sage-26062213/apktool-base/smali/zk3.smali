.class public final synthetic Lzk3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:Lqi0;

.field public final synthetic o:Ln8;

.field public final synthetic p:Ly84;

.field public final synthetic q:Lwh1;

.field public final synthetic r:Ls92;

.field public final synthetic s:Lpg2;

.field public final synthetic t:Lm10;


# direct methods
.method public synthetic constructor <init>(Ln8;Lm10;Lqi0;Lwh1;Ls92;Lpg2;Ly84;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lzk3;->n:Lqi0;

    .line 5
    .line 6
    iput-object p1, p0, Lzk3;->o:Ln8;

    .line 7
    .line 8
    iput-object p7, p0, Lzk3;->p:Ly84;

    .line 9
    .line 10
    iput-object p4, p0, Lzk3;->q:Lwh1;

    .line 11
    .line 12
    iput-object p5, p0, Lzk3;->r:Ls92;

    .line 13
    .line 14
    iput-object p6, p0, Lzk3;->s:Lpg2;

    .line 15
    .line 16
    iput-object p2, p0, Lzk3;->t:Lm10;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lzk3;->s:Lpg2;

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
    iget-object v1, p0, Lzk3;->q:Lwh1;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcl3;

    .line 19
    .line 20
    iget-object v3, p0, Lzk3;->t:Lm10;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v0, v3, v1, v4, v2}, Lcl3;-><init>(Lm10;Lwh1;Ldh0;I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    iget-object v2, p0, Lzk3;->n:Lqi0;

    .line 28
    .line 29
    invoke-static {v2, v4, v4, v0, v1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 30
    .line 31
    .line 32
    const-string v0, "calendar_sync_enabled"

    .line 33
    .line 34
    const-string v1, "false"

    .line 35
    .line 36
    iget-object v2, p0, Lzk3;->o:Ln8;

    .line 37
    .line 38
    iget-object p0, p0, Lzk3;->p:Ly84;

    .line 39
    .line 40
    invoke-virtual {v2, p0, v0, v1}, Ln8;->i(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lez3;->a:Lra3;

    .line 45
    .line 46
    new-array v3, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lwh1;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    new-array v1, v2, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lzk3;->r:Ls92;

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ls92;->a(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-array p0, v2, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 88
    .line 89
    return-object p0
.end method
