.class public final Lpb4;
.super Lbd;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final N:Landroid/view/View;

.field public final O:Ltk2;

.field public P:Lhc3;

.field public Q:Lpe1;

.field public R:Lpe1;

.field public S:Lpe1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpe1;Lyf1;Lic3;ILsr2;)V
    .locals 7

    .line 1
    invoke-interface {p2, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    move-object v5, p2

    .line 6
    check-cast v5, Landroid/view/View;

    .line 7
    .line 8
    new-instance v4, Ltk2;

    .line 9
    .line 10
    invoke-direct {v4}, Ltk2;-><init>()V

    .line 11
    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p3

    .line 16
    move v3, p5

    .line 17
    move-object v6, p6

    .line 18
    invoke-direct/range {v0 .. v6}, Lbd;-><init>(Landroid/content/Context;Lyf1;ILtk2;Landroid/view/View;Lsr2;)V

    .line 19
    .line 20
    .line 21
    iput-object v5, v0, Lpb4;->N:Landroid/view/View;

    .line 22
    .line 23
    iput-object v4, v0, Lpb4;->O:Ltk2;

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 p1, 0x0

    .line 34
    if-eqz p4, :cond_0

    .line 35
    .line 36
    invoke-interface {p4, p0}, Lic3;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p2, p1

    .line 42
    :goto_0
    instance-of p3, p2, Landroid/util/SparseArray;

    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    move-object p1, p2

    .line 47
    check-cast p1, Landroid/util/SparseArray;

    .line 48
    .line 49
    :cond_1
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v5, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    if-eqz p4, :cond_3

    .line 55
    .line 56
    new-instance p1, Lad;

    .line 57
    .line 58
    const/4 p2, 0x2

    .line 59
    invoke-direct {p1, v0, p2}, Lad;-><init>(Lpb4;I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p4, p0, p1}, Lic3;->a(Ljava/lang/String;Lne1;)Lhc3;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v0, p0}, Lpb4;->setSavableRegistryEntry(Lhc3;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    sget-object p0, Ll9;->x:Ll9;

    .line 70
    .line 71
    iput-object p0, v0, Lpb4;->Q:Lpe1;

    .line 72
    .line 73
    iput-object p0, v0, Lpb4;->R:Lpe1;

    .line 74
    .line 75
    iput-object p0, v0, Lpb4;->S:Lpe1;

    .line 76
    .line 77
    return-void
.end method

.method public static final n(Lpb4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lpb4;->setSavableRegistryEntry(Lhc3;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final setSavableRegistryEntry(Lhc3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpb4;->P:Lhc3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Leh;

    .line 6
    .line 7
    invoke-virtual {v0}, Leh;->L()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lpb4;->P:Lhc3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getDispatcher()Ltk2;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb4;->O:Ltk2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReleaseBlock()Lpe1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpe1;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lpb4;->S:Lpe1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResetBlock()Lpe1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpe1;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lpb4;->R:Lpe1;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getSubCompositionView()La0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getUpdateBlock()Lpe1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpe1;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lpb4;->Q:Lpe1;

    .line 2
    .line 3
    return-object p0
.end method

.method public getViewRoot()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final setReleaseBlock(Lpe1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lpb4;->S:Lpe1;

    .line 2
    .line 3
    new-instance p1, Lad;

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-direct {p1, p0, v0}, Lad;-><init>(Lpb4;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lbd;->setRelease(Lne1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setResetBlock(Lpe1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lpb4;->R:Lpe1;

    .line 2
    .line 3
    new-instance p1, Lad;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-direct {p1, p0, v0}, Lad;-><init>(Lpb4;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lbd;->setReset(Lne1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setUpdateBlock(Lpe1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lpb4;->Q:Lpe1;

    .line 2
    .line 3
    new-instance p1, Lad;

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-direct {p1, p0, v0}, Lad;-><init>(Lpb4;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lbd;->setUpdate(Lne1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
