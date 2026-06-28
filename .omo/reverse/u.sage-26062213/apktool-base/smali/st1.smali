.class public final Lst1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leb2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lpe1;


# direct methods
.method public constructor <init>(IILjava/util/Map;Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lst1;->a:I

    .line 5
    .line 6
    iput p2, p0, Lst1;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lst1;->c:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p4, p0, Lst1;->d:Lpe1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lst1;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lst1;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lst1;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()Lpe1;
    .locals 0

    .line 1
    iget-object p0, p0, Lst1;->d:Lpe1;

    .line 2
    .line 3
    return-object p0
.end method
