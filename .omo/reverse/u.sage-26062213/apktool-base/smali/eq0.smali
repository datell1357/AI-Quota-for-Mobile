.class public final Leq0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# static fields
.field public static final b:Leq0;

.field public static final c:Leq0;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Leq0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Leq0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Leq0;->b:Leq0;

    .line 8
    .line 9
    new-instance v0, Leq0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Leq0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Leq0;->c:Leq0;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Leq0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ldw2;Ldh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Leq0;->a:I

    .line 2
    .line 3
    sget-object p1, Lt64;->a:Lt64;

    .line 4
    .line 5
    return-object p1
.end method
