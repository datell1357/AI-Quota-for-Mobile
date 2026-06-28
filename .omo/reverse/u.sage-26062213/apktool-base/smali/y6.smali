.class public final Ly6;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Log1;


# instance fields
.field public final n:Lu/sage/MainActivity;

.field public final o:Lu/sage/MainActivity;

.field public volatile p:Lsl0;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lu/sage/MainActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Ly6;->q:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Ly6;->n:Lu/sage/MainActivity;

    .line 12
    .line 13
    iput-object p1, p0, Ly6;->o:Lu/sage/MainActivity;

    .line 14
    .line 15
    return-void
.end method

.method public static b(Lu/sage/MainActivity;Lu/sage/MainActivity;)Lwu4;
    .locals 3

    .line 1
    new-instance v0, Lwu4;

    .line 2
    .line 3
    new-instance v1, Lu6;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1}, Lu6;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lcc4;->getViewModelStore()Lbc4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0}, Lej1;->getDefaultViewModelCreationExtras()Lvk0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p1, v1, p0}, Lwu4;-><init>(Lbc4;Lzb4;Lvk0;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ly6;->p:Lsl0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ly6;->q:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Ly6;->p:Lsl0;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Ly6;->n:Lu/sage/MainActivity;

    .line 13
    .line 14
    iget-object v2, p0, Ly6;->o:Lu/sage/MainActivity;

    .line 15
    .line 16
    invoke-static {v1, v2}, Ly6;->b(Lu/sage/MainActivity;Lu/sage/MainActivity;)Lwu4;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-class v2, Lw6;

    .line 21
    .line 22
    invoke-static {v2}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lwu4;->l(Li50;)Lvb4;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lw6;

    .line 31
    .line 32
    iget-object v1, v1, Lw6;->b:Lsl0;

    .line 33
    .line 34
    iput-object v1, p0, Ly6;->p:Lsl0;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit v0

    .line 40
    goto :goto_2

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_2
    iget-object p0, p0, Ly6;->p:Lsl0;

    .line 44
    .line 45
    return-object p0
.end method
