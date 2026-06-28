.class public final Lif3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltr2;


# instance fields
.field public final n:I

.field public final o:Ljava/util/List;

.field public p:Ljava/lang/Float;

.field public q:Ljava/lang/Float;

.field public r:Lye3;

.field public s:Lye3;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lif3;->n:I

    .line 5
    .line 6
    iput-object p2, p0, Lif3;->o:Ljava/util/List;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lif3;->p:Ljava/lang/Float;

    .line 10
    .line 11
    iput-object p1, p0, Lif3;->q:Ljava/lang/Float;

    .line 12
    .line 13
    iput-object p1, p0, Lif3;->r:Lye3;

    .line 14
    .line 15
    iput-object p1, p0, Lif3;->s:Lye3;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lif3;->o:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
