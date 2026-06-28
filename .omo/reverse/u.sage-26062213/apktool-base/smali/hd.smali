.class public final Lhd;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Lpe1;

.field public final synthetic q:Lyf1;

.field public final synthetic r:Lic3;

.field public final synthetic s:I

.field public final synthetic t:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpe1;Lyf1;Lic3;ILandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhd;->o:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lhd;->p:Lpe1;

    .line 4
    .line 5
    iput-object p3, p0, Lhd;->q:Lyf1;

    .line 6
    .line 7
    iput-object p4, p0, Lhd;->r:Lic3;

    .line 8
    .line 9
    iput p5, p0, Lhd;->s:I

    .line 10
    .line 11
    iput-object p6, p0, Lhd;->t:Landroid/view/View;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lpb4;

    .line 2
    .line 3
    iget-object v1, p0, Lhd;->t:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object v6, v1

    .line 9
    check-cast v6, Lsr2;

    .line 10
    .line 11
    iget-object v1, p0, Lhd;->o:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v2, p0, Lhd;->p:Lpe1;

    .line 14
    .line 15
    iget-object v3, p0, Lhd;->q:Lyf1;

    .line 16
    .line 17
    iget-object v4, p0, Lhd;->r:Lic3;

    .line 18
    .line 19
    iget v5, p0, Lhd;->s:I

    .line 20
    .line 21
    invoke-direct/range {v0 .. v6}, Lpb4;-><init>(Landroid/content/Context;Lpe1;Lyf1;Lic3;ILsr2;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lbd;->getLayoutNode()Lxy1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
