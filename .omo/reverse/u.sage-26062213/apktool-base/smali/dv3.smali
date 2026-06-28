.class public abstract Ldv3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lvv2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lvv2;

    .line 2
    .line 3
    sget-object v1, Lg01;->n:Lg01;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lvv2;-><init>(Ljava/util/List;Lft1;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ldv3;->a:Lvv2;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Lnd2;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lnd2;
    .locals 3

    .line 1
    new-instance v0, Lcv3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    invoke-direct {v0, p1, v1, p2, v2}, Lcv3;-><init>(Ljava/lang/Object;Lk75;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
