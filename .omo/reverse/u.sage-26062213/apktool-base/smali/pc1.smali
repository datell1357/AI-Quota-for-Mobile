.class public final Lpc1;
.super Lvc1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyo2;
.implements Lkp2;
.implements Lfp2;
.implements Lgp2;
.implements Lcc4;
.implements Lvo2;
.implements Lt6;
.implements Lyc3;
.implements Lmd1;
.implements Lvb2;


# instance fields
.field public final synthetic r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lvc1;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Llc1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lqc1;->onAttachFragment(Llc1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addMenuProvider(Ljc2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->addMenuProvider(Ljc2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addOnConfigurationChangedListener(Lxf0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->addOnConfigurationChangedListener(Lxf0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(Lxf0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->addOnMultiWindowModeChangedListener(Lxf0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(Lxf0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->addOnPictureInPictureModeChangedListener(Lxf0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addOnTrimMemoryListener(Lxf0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->addOnTrimMemoryListener(Lxf0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final getActivityResultRegistry()Lp6;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lu90;->getActivityResultRegistry()Lp6;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLifecycle()Lh22;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    iget-object p0, p0, Lqc1;->mFragmentLifecycleRegistry:Lr22;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Luo2;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lu90;->getOnBackPressedDispatcher()Luo2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSavedStateRegistry()Luc3;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lu90;->getSavedStateRegistry()Luc3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getViewModelStore()Lbc4;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lu90;->getViewModelStore()Lbc4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final removeMenuProvider(Ljc2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->removeMenuProvider(Ljc2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeOnConfigurationChangedListener(Lxf0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->removeOnConfigurationChangedListener(Lxf0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(Lxf0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->removeOnMultiWindowModeChangedListener(Lxf0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(Lxf0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->removeOnPictureInPictureModeChangedListener(Lxf0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeOnTrimMemoryListener(Lxf0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpc1;->r:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu90;->removeOnTrimMemoryListener(Lxf0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
