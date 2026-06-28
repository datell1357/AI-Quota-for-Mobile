.class public final Lq25;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lpb5;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Lpb5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq25;->a:Lpb5;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq25;->a:Lpb5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpb5;->l0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lj45;->v()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lj45;->v()V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lq25;->b:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, La25;->n:Lx15;

    .line 30
    .line 31
    const-string v2, "Unregistering connectivity change receiver"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lq25;->b:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Lq25;->c:Z

    .line 40
    .line 41
    iget-object v1, v0, Lpb5;->l:Lr45;

    .line 42
    .line 43
    iget-object v1, v1, Lr45;->a:Landroid/content/Context;

    .line 44
    .line 45
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, La25;->f:Lx15;

    .line 55
    .line 56
    const-string v1, "Failed to unregister the network broadcast receiver"

    .line 57
    .line 58
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lq25;->a:Lpb5;

    .line 2
    .line 3
    invoke-virtual {p1}, Lpb5;->l0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lpb5;->c()La25;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, La25;->n:Lx15;

    .line 15
    .line 16
    const-string v1, "NetworkBroadcastReceiver received action"

    .line 17
    .line 18
    invoke-virtual {v0, p2, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p2, p1, Lpb5;->b:Li25;

    .line 30
    .line 31
    invoke-static {p2}, Lpb5;->T(Lab5;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Li25;->z()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iget-boolean v0, p0, Lq25;->c:Z

    .line 39
    .line 40
    if-eq v0, p2, :cond_0

    .line 41
    .line 42
    iput-boolean p2, p0, Lq25;->c:Z

    .line 43
    .line 44
    invoke-virtual {p1}, Lpb5;->d()Lj45;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lo9;

    .line 49
    .line 50
    invoke-direct {v0, p0, p2}, Lo9;-><init>(Lq25;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lpb5;->c()La25;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object p0, p0, La25;->i:Lx15;

    .line 62
    .line 63
    const-string p1, "NetworkBroadcastReceiver received unknown action"

    .line 64
    .line 65
    invoke-virtual {p0, p2, p1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
