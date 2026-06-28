.class public final Ldr2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln03;


# static fields
.field public static final c:Lp61;

.field public static final d:Lea0;


# instance fields
.field public a:Lxq0;

.field public volatile b:Ln03;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp61;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lp61;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ldr2;->c:Lp61;

    .line 9
    .line 10
    new-instance v0, Lea0;

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    invoke-direct {v0, v1}, Lea0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ldr2;->d:Lea0;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lp61;Ln03;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldr2;->a:Lxq0;

    .line 5
    .line 6
    iput-object p2, p0, Ldr2;->b:Ln03;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lxq0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldr2;->b:Ln03;

    .line 2
    .line 3
    sget-object v1, Ldr2;->d:Lea0;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lxq0;->a(Ln03;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Ldr2;->b:Ln03;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Ldr2;->a:Lxq0;

    .line 19
    .line 20
    new-instance v2, Lrr;

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    invoke-direct {v2, v3, v1, p1}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Ldr2;->a:Lxq0;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lxq0;->a(Ln03;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ldr2;->b:Ln03;

    .line 2
    .line 3
    invoke-interface {p0}, Ln03;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
