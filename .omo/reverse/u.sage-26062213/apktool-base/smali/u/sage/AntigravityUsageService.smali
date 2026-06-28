.class public final Lu/sage/AntigravityUsageService;
.super Lu/sage/a;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Log1;


# static fields
.field public static final synthetic Y:I


# instance fields
.field public volatile H:Lti3;

.field public final I:Ljava/lang/Object;

.field public J:Z

.field public K:Lpf;

.field public L:Ln8;

.field public M:Lnf;

.field public N:Ljf;

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;

.field public final Q:I

.field public final R:Ljava/lang/String;

.field public final S:Ljava/lang/Class;

.field public final T:I

.field public final U:Ljava/lang/String;

.field public final V:Ljava/lang/String;

.field public final W:Ly84;

.field public final X:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu/sage/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->I:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lu/sage/AntigravityUsageService;->J:Z

    .line 13
    .line 14
    const-string v0, "antigravity_usage_channel"

    .line 15
    .line 16
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->O:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "Antigravity Usage Monitor"

    .line 19
    .line 20
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->P:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v0, 0x3eb

    .line 23
    .line 24
    iput v0, p0, Lu/sage/AntigravityUsageService;->Q:I

    .line 25
    .line 26
    const-string v0, "about:blank"

    .line 27
    .line 28
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->R:Ljava/lang/String;

    .line 29
    .line 30
    const-class v0, Lu/sage/AntigravityUsageService;

    .line 31
    .line 32
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->S:Ljava/lang/Class;

    .line 33
    .line 34
    const v0, 0x7f0800ca

    .line 35
    .line 36
    .line 37
    iput v0, p0, Lu/sage/AntigravityUsageService;->T:I

    .line 38
    .line 39
    const-string v0, "Antigravity"

    .line 40
    .line 41
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->U:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "ANTIGRAVITY"

    .line 44
    .line 45
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->V:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v0, Ly84;->t:Ly84;

    .line 48
    .line 49
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->W:Ly84;

    .line 50
    .line 51
    sget-object v0, Loe3;->c:Loe3;

    .line 52
    .line 53
    iget-object v0, v0, Lnq0;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->X:Ljava/lang/String;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/sage/AntigravityUsageService;->H:Lti3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lu/sage/AntigravityUsageService;->I:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lu/sage/AntigravityUsageService;->H:Lti3;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lti3;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lti3;-><init>(Landroid/app/Service;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lu/sage/AntigravityUsageService;->H:Lti3;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->H:Lti3;

    .line 27
    .line 28
    invoke-virtual {p0}, Lti3;->a()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lu/sage/a;->d()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string v0, "antigravity/2.0.0 android/unknown"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final f()Ln1;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->N:Ljf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "accountDataStore"

    .line 7
    .line 8
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final g()Ln8;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->L:Ln8;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "analyticsManager"

    .line 7
    .line 8
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->O:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->P:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->X:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l()I
    .locals 0

    .line 1
    iget p0, p0, Lu/sage/AntigravityUsageService;->T:I

    .line 2
    .line 3
    return p0
.end method

.method public final m()I
    .locals 0

    .line 1
    iget p0, p0, Lu/sage/AntigravityUsageService;->Q:I

    .line 2
    .line 3
    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->U:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o()Lpt;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->K:Lpf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "antigravityRepository"

    .line 7
    .line 8
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    new-instance v0, Lnf;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnf;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->M:Lnf;

    .line 7
    .line 8
    new-instance v0, Ljf;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->N:Ljf;

    .line 15
    .line 16
    invoke-virtual {p0}, Lu/sage/AntigravityUsageService;->z()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lez3;->a:Lra3;

    .line 20
    .line 21
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v2, ": onCreate finished. Stores initialized."

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    new-array p0, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lu/sage/a;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lez3;->a:Lra3;

    .line 5
    .line 6
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, ": onDestroy called."

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    new-array p0, p0, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final p()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->S:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q()Ly84;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->W:Ly84;

    .line 2
    .line 3
    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->V:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s()Lps;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->M:Lnf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "usageDataStore"

    .line 7
    .line 8
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final t()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/AntigravityUsageService;->R:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu/sage/AntigravityUsageService;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lu/sage/AntigravityUsageService;->J:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lu/sage/AntigravityUsageService;->a()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lqf;

    .line 13
    .line 14
    check-cast v0, Ltl0;

    .line 15
    .line 16
    iget-object v0, v0, Ltl0;->a:Lvl0;

    .line 17
    .line 18
    iget-object v1, v0, Lvl0;->l:Ll03;

    .line 19
    .line 20
    invoke-interface {v1}, Lm03;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lpf;

    .line 25
    .line 26
    iput-object v1, p0, Lu/sage/AntigravityUsageService;->K:Lpf;

    .line 27
    .line 28
    iget-object v0, v0, Lvl0;->c:Ll03;

    .line 29
    .line 30
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ln8;

    .line 35
    .line 36
    iput-object v0, p0, Lu/sage/AntigravityUsageService;->L:Ln8;

    .line 37
    .line 38
    :cond_0
    invoke-super {p0}, Lu/sage/a;->onCreate()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
