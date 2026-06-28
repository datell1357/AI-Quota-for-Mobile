.class public final Ls23;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lt82;

.field public final b:Ld90;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lt82;Ld90;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls23;->a:Lt82;

    .line 5
    .line 6
    iput-object p2, p0, Ls23;->b:Ld90;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ls23;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls23;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Ls23;->a:Lt82;

    .line 5
    .line 6
    iget-object p0, p0, Lt82;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lx23;

    .line 9
    .line 10
    iput-wide p1, p0, Lx23;->n:J

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lx23;->h(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method
