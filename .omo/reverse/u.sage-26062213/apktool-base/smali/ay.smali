.class public final synthetic Lay;
.super Lof1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic u:Ldy;

.field public final synthetic v:Lmm2;

.field public final synthetic w:Lj9;


# direct methods
.method public constructor <init>(Ldy;Lmm2;Lj9;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lay;->u:Ldy;

    .line 2
    .line 3
    iput-object p2, p0, Lay;->v:Lmm2;

    .line 4
    .line 5
    iput-object p3, p0, Lay;->w:Lj9;

    .line 6
    .line 7
    const-string v4, "bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;"

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const-class v2, Lmt1;

    .line 12
    .line 13
    const-string v3, "localRect"

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lof1;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lay;->v:Lmm2;

    .line 2
    .line 3
    iget-object v1, p0, Lay;->w:Lj9;

    .line 4
    .line 5
    iget-object p0, p0, Lay;->u:Ldy;

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Ldy;->G0(Ldy;Lmm2;Lj9;)Ll33;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
