.class public final Ltu2;
.super Lc2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/util/Collection;
.implements Lfx1;


# static fields
.field public static final q:Ltu2;


# instance fields
.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;

.field public final p:Llu2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ltu2;

    .line 2
    .line 3
    sget-object v1, Lw13;->A:Lw13;

    .line 4
    .line 5
    sget-object v2, Llu2;->p:Llu2;

    .line 6
    .line 7
    invoke-direct {v0, v1, v1, v2}, Ltu2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Llu2;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ltu2;->q:Ltu2;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Llu2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltu2;->n:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Ltu2;->o:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Ltu2;->p:Llu2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Ltu2;->p:Llu2;

    .line 2
    .line 3
    iget p0, p0, Llu2;->o:I

    .line 4
    .line 5
    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ltu2;->p:Llu2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Llu2;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lug1;

    .line 2
    .line 3
    iget-object v1, p0, Ltu2;->n:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Ltu2;->p:Llu2;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lug1;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
