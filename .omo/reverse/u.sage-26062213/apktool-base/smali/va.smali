.class public final Lva;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Lwa;


# direct methods
.method public constructor <init>(Lwa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lva;->a:Lwa;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ldw2;Ldh0;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lua;

    .line 2
    .line 3
    iget-object p0, p0, Lva;->a:Lwa;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Lua;-><init>(Lwa;Ldh0;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p2}, Lht4;->f(Ldw2;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Lri0;->n:Lri0;

    .line 14
    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 19
    .line 20
    return-object p0
.end method
