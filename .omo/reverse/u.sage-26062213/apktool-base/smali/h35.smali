.class public final Lh35;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lk35;


# direct methods
.method public constructor <init>(Lk35;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh35;->b:Lk35;

    .line 5
    .line 6
    iput-object p2, p0, Lh35;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lh35;->b:Lk35;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    :try_start_0
    sget v0, Lqu4;->c:I

    .line 6
    .line 7
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 8
    .line 9
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Ltu4;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v1, Ltu4;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lou4;

    .line 21
    .line 22
    invoke-direct {v1, p2, v0}, Lgu4;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, p1, Lk35;->a:Lr45;

    .line 26
    .line 27
    iget-object v0, p2, Lr45;->f:La25;

    .line 28
    .line 29
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, La25;->n:Lx15;

    .line 33
    .line 34
    const-string v2, "Install Referrer Service connected"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p2, Lr45;->g:Lj45;

    .line 40
    .line 41
    invoke-static {p2}, Lr45;->l(Lq55;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lrf1;

    .line 45
    .line 46
    invoke-direct {v0, p0, v1, p0}, Lrf1;-><init>(Lh35;Ltu4;Lh35;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lj45;->E(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    move-exception p0

    .line 54
    iget-object p1, p1, Lk35;->a:Lr45;

    .line 55
    .line 56
    iget-object p1, p1, Lr45;->f:La25;

    .line 57
    .line 58
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, La25;->i:Lx15;

    .line 62
    .line 63
    const-string p2, "Exception occurred while calling Install Referrer API"

    .line 64
    .line 65
    invoke-virtual {p1, p0, p2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iget-object p0, p1, Lk35;->a:Lr45;

    .line 70
    .line 71
    iget-object p0, p0, Lr45;->f:La25;

    .line 72
    .line 73
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, La25;->i:Lx15;

    .line 77
    .line 78
    const-string p1, "Install Referrer connection returned with null binder"

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lh35;->b:Lk35;

    .line 2
    .line 3
    iget-object p0, p0, Lk35;->a:Lr45;

    .line 4
    .line 5
    iget-object p0, p0, Lr45;->f:La25;

    .line 6
    .line 7
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, La25;->n:Lx15;

    .line 11
    .line 12
    const-string p1, "Install Referrer Service disconnected"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
