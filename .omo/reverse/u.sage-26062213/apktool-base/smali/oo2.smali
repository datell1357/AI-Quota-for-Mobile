.class public final Loo2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lmo2;


# direct methods
.method public constructor <init>(Lmo2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loo2;->a:Lmo2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 5

    .line 1
    iget-object p0, p0, Loo2;->a:Lmo2;

    .line 2
    .line 3
    iget-object v0, p0, Lgk2;->a:Lck2;

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v1, p0, Lgk2;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p0, v2}, Lck2;->e(Lgk2;Lbk2;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lck2;->d()V

    .line 16
    .line 17
    .line 18
    iget-boolean v1, v0, Lck2;->b:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, v0, Lck2;->c:Lhk2;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lhk2;->h:Lgk2;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    iget v1, v0, Lhk2;->g:I

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    if-eq v4, v1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v1, v0, Lhk2;->f:Lek2;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Lhk2;->c(I)Lek2;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_3
    iput-object v2, v0, Lhk2;->f:Lek2;

    .line 52
    .line 53
    iput v3, v0, Lhk2;->g:I

    .line 54
    .line 55
    iput-object v2, v0, Lhk2;->h:Lgk2;

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1}, Lek2;->b()V

    .line 60
    .line 61
    .line 62
    :cond_4
    iget-object v0, v0, Lhk2;->a:Lwr3;

    .line 63
    .line 64
    sget-object v1, Lik2;->z:Lik2;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_5
    :goto_0
    iput-boolean v3, p0, Lgk2;->b:Z

    .line 73
    .line 74
    return-void

    .line 75
    :cond_6
    const-string p0, "This input is not added to any dispatcher."

    .line 76
    .line 77
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    .line 1
    iget-object p0, p0, Loo2;->a:Lmo2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgk2;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lht4;->G(Landroid/window/BackEvent;)Lbk2;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Loo2;->a:Lmo2;

    .line 9
    .line 10
    iget-object v0, p0, Lgk2;->a:Lck2;

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-boolean v1, p0, Lgk2;->b:Z

    .line 15
    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0}, Lck2;->d()V

    .line 19
    .line 20
    .line 21
    iget-boolean v1, v0, Lck2;->b:Z

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Lck2;->c:Lhk2;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lhk2;->h:Lgk2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_4

    .line 38
    .line 39
    iget p0, v0, Lhk2;->g:I

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    if-eq v1, p0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, v0, Lhk2;->f:Lek2;

    .line 46
    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lhk2;->c(I)Lek2;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_2
    if-eqz p0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lek2;->d(Lbk2;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p0, v0, Lhk2;->a:Lwr3;

    .line 59
    .line 60
    new-instance v0, Ljk2;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Ljk2;-><init>(Lbk2;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_0
    return-void

    .line 73
    :cond_5
    const-string p0, "This input is not added to any dispatcher."

    .line 74
    .line 75
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lht4;->G(Landroid/window/BackEvent;)Lbk2;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Loo2;->a:Lmo2;

    .line 9
    .line 10
    iget-object v0, p0, Lgk2;->a:Lck2;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Lgk2;->b:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lck2;->e(Lgk2;Lbk2;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lgk2;->b:Z

    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    .line 26
    .line 27
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
