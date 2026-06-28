.class public final Lff3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lef3;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x23

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ldf3;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ldf3;-><init>(Landroidx/core/widget/NestedScrollView;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lff3;->a:Lef3;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Lqz0;

    .line 19
    .line 20
    const/16 v0, 0x1c

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lqz0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lff3;->a:Lef3;

    .line 26
    .line 27
    return-void
.end method
