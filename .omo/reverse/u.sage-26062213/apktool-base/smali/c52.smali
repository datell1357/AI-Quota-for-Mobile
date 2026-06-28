.class public abstract Lc52;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lac3;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z

.field public final j:Lo9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc52;->k:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc52;->a:Ljava/lang/Object;

    .line 43
    new-instance v0, Lac3;

    invoke-direct {v0}, Lac3;-><init>()V

    iput-object v0, p0, Lc52;->b:Lac3;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lc52;->c:I

    .line 45
    sget-object v0, Lc52;->k:Ljava/lang/Object;

    iput-object v0, p0, Lc52;->f:Ljava/lang/Object;

    .line 46
    new-instance v1, Lo9;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lc52;->j:Lo9;

    .line 47
    iput-object v0, p0, Lc52;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lc52;->g:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    sget-object p1, Lw13;->M:Ltq2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lc52;->a:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v0, Lac3;

    .line 14
    .line 15
    invoke-direct {v0}, Lac3;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lc52;->b:Lac3;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lc52;->c:I

    .line 22
    .line 23
    sget-object v1, Lc52;->k:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object v1, p0, Lc52;->f:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v1, Lo9;

    .line 28
    .line 29
    const/16 v2, 0x9

    .line 30
    .line 31
    invoke-direct {v1, v2, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lc52;->j:Lo9;

    .line 35
    .line 36
    iput-object p1, p0, Lc52;->e:Ljava/lang/Object;

    .line 37
    .line 38
    iput v0, p0, Lc52;->g:I

    .line 39
    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lnh;->T()Lnh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lnh;->P:Lrq0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string v0, "Cannot invoke "

    .line 26
    .line 27
    const-string v1, " on a background thread"

    .line 28
    .line 29
    invoke-static {v0, p0, v1}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final b(Lb52;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lb52;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lb52;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p1, p0}, Lb52;->a(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget v0, p1, Lb52;->p:I

    .line 18
    .line 19
    iget v1, p0, Lc52;->g:I

    .line 20
    .line 21
    if-lt v0, v1, :cond_2

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_2
    iput v1, p1, Lb52;->p:I

    .line 25
    .line 26
    iget-object p1, p1, Lb52;->n:Lbo2;

    .line 27
    .line 28
    iget-object p0, p0, Lc52;->e:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1, p0}, Lbo2;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c(Lb52;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc52;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lc52;->i:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean v1, p0, Lc52;->h:Z

    .line 10
    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lc52;->i:Z

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lc52;->b(Lb52;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object v1, p0, Lc52;->b:Lac3;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v2, Lyb3;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lyb3;-><init>(Lac3;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v1, Lac3;->p:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-virtual {v2}, Lyb3;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2}, Lyb3;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lb52;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lc52;->b(Lb52;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lc52;->i:Z

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lc52;->i:Z

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iput-boolean v0, p0, Lc52;->h:Z

    .line 68
    .line 69
    return-void
.end method

.method public final d(Lp22;Lbo2;)V
    .locals 2

    .line 1
    const-string v0, "observe"

    .line 2
    .line 3
    invoke-static {v0}, Lc52;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lp22;->getLifecycle()Lh22;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lr22;

    .line 11
    .line 12
    iget-object v0, v0, Lr22;->d:Lg22;

    .line 13
    .line 14
    sget-object v1, Lg22;->n:Lg22;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    new-instance v0, La52;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, La52;-><init>(Lc52;Lp22;Lbo2;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lc52;->b:Lac3;

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lac3;->a(Ljava/lang/Object;)Lxb3;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object p0, v1, Lxb3;->o:Ljava/lang/Object;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-instance v1, Lxb3;

    .line 36
    .line 37
    invoke-direct {v1, p2, v0}, Lxb3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget p2, p0, Lac3;->q:I

    .line 41
    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    iput p2, p0, Lac3;->q:I

    .line 45
    .line 46
    iget-object p2, p0, Lac3;->o:Lxb3;

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iput-object v1, p0, Lac3;->n:Lxb3;

    .line 51
    .line 52
    iput-object v1, p0, Lac3;->o:Lxb3;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput-object v1, p2, Lxb3;->p:Lxb3;

    .line 56
    .line 57
    iput-object p2, v1, Lxb3;->q:Lxb3;

    .line 58
    .line 59
    iput-object v1, p0, Lac3;->o:Lxb3;

    .line 60
    .line 61
    :goto_0
    const/4 p0, 0x0

    .line 62
    :goto_1
    check-cast p0, Lb52;

    .line 63
    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lb52;->c(Lp22;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const-string p0, "Cannot add the same observer with different lifecycles"

    .line 74
    .line 75
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    :goto_2
    if-eqz p0, :cond_5

    .line 80
    .line 81
    :goto_3
    return-void

    .line 82
    :cond_5
    invoke-interface {p1}, Lp22;->getLifecycle()Lh22;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Lh22;->a(Lo22;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Lbo2;)V
    .locals 1

    .line 1
    const-string v0, "removeObserver"

    .line 2
    .line 3
    invoke-static {v0}, Lc52;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lc52;->b:Lac3;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lac3;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lb52;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lb52;->b()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lb52;->a(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public abstract h(Ljava/lang/Object;)V
.end method
