.class public final Lxw2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lm20;


# instance fields
.field public final synthetic n:Lc0;

.field public final synthetic o:Lym1;

.field public final synthetic p:Lax2;


# direct methods
.method public constructor <init>(Lax2;Lc0;Lym1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxw2;->p:Lax2;

    .line 5
    .line 6
    iput-object p2, p0, Lxw2;->n:Lc0;

    .line 7
    .line 8
    iput-object p3, p0, Lxw2;->o:Lym1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(J)Ll00;
    .locals 2

    .line 1
    iget-object v0, p0, Lxw2;->n:Lc0;

    .line 2
    .line 3
    iget-object v1, p0, Lxw2;->p:Lax2;

    .line 4
    .line 5
    invoke-virtual {v1, v0, p1, p2}, Lax2;->z(Lc0;J)Ll00;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ll00;->isOpen()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lxw2;->o:Lym1;

    .line 16
    .line 17
    invoke-virtual {p0}, Lym1;->e()Lem1;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lym1;->e()Lem1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lym1;->n:Lem1;

    .line 29
    .line 30
    :goto_0
    iget-object p2, v1, Lax2;->o:Lzw2;

    .line 31
    .line 32
    iget-object p2, p2, Lzw2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lmp3;

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    invoke-virtual {p1, p0}, Ll00;->n(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-object p1
.end method

.method public final cancel()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lxw2;->n:Lc0;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lc0;->cancel(Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method
