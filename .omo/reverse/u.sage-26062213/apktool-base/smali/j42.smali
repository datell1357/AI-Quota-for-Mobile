.class public final Lj42;
.super Landroid/database/DataSetObserver;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Lm42;


# direct methods
.method public constructor <init>(Lm42;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj42;->a:Lm42;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lj42;->a:Lm42;

    .line 2
    .line 3
    iget-object v0, p0, Lm42;->I:Lmg;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lm42;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lj42;->a:Lm42;

    .line 2
    .line 3
    invoke-virtual {p0}, Lm42;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
