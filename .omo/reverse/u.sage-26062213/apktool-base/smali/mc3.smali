.class public final Lmc3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Lrp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmc3;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    new-instance v0, Lrp;

    .line 12
    .line 13
    sget-object v1, Lh01;->n:Lh01;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lrp;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lmc3;->b:Lrp;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lca2;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmc3;->a:Ljava/util/LinkedHashMap;

    .line 23
    new-instance v0, Lrp;

    invoke-direct {v0, p1}, Lrp;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmc3;->b:Lrp;

    return-void
.end method
