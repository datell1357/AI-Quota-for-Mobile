.class public final Lqg5;
.super Lsg5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic c:Lsg5;

.field public final synthetic d:Lsg5;


# direct methods
.method public constructor <init>(Lsg5;Lsg5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqg5;->c:Lsg5;

    .line 5
    .line 6
    iput-object p2, p0, Lqg5;->d:Lsg5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqg5;->d:Lsg5;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lqg5;->c:Lsg5;

    .line 4
    .line 5
    invoke-virtual {p0}, Lsg5;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lsg5;->a()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {v0}, Lsg5;->a()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method
