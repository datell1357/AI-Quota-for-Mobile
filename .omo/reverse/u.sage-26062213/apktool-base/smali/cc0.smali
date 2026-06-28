.class public final Lcc0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lar2;
.implements Lfi0;


# static fields
.field public static final o:Lqv3;


# instance fields
.field public final n:Lag1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqv3;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lqv3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcc0;->o:Lqv3;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lag1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcc0;->n:Lag1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge F(Lhi0;)Lhi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge K(Lgi0;)Lfi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->r(Lfi0;Lgi0;)Lfi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final R(Ldf1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge Y(Lgi0;)Lhi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->z(Lfi0;Lgi0;)Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final c(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc0;->n:Lag1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lag1;->D()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcc0;->n:Lag1;

    .line 2
    .line 3
    iget-boolean p0, p0, Lag1;->C:Z

    .line 4
    .line 5
    return p0
.end method

.method public final getKey()Lgi0;
    .locals 0

    .line 1
    sget-object p0, Lcc0;->o:Lqv3;

    .line 2
    .line 3
    return-object p0
.end method
