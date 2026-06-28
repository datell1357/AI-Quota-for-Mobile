.class public final synthetic Lx74;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lmv3;


# instance fields
.field public final synthetic n:Led0;

.field public final synthetic o:Lhp;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Led0;Lhp;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx74;->n:Led0;

    .line 5
    .line 6
    iput-object p2, p0, Lx74;->o:Lhp;

    .line 7
    .line 8
    iput p3, p0, Lx74;->p:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lx74;->n:Led0;

    .line 2
    .line 3
    iget-object v0, v0, Led0;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Leh;

    .line 6
    .line 7
    iget v1, p0, Lx74;->p:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object p0, p0, Lx74;->o:Lhp;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v2}, Leh;->F(Lhp;IZ)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method
