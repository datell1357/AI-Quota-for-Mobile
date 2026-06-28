.class public final Lj82;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leb2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lc8;

.field public final synthetic e:Lz;

.field public final synthetic f:Le9;

.field public final synthetic g:Lk82;


# direct methods
.method public constructor <init>(IILjava/util/Map;Lc8;Lz;Le9;Lk82;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lj82;->a:I

    .line 5
    .line 6
    iput p2, p0, Lj82;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lj82;->c:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p4, p0, Lj82;->d:Lc8;

    .line 11
    .line 12
    iput-object p5, p0, Lj82;->e:Lz;

    .line 13
    .line 14
    iput-object p6, p0, Lj82;->f:Le9;

    .line 15
    .line 16
    iput-object p7, p0, Lj82;->g:Lk82;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lj82;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lj82;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lj82;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj82;->g:Lk82;

    .line 2
    .line 3
    iget-object v0, v0, Lk82;->C:Ll82;

    .line 4
    .line 5
    iget-object p0, p0, Lj82;->f:Le9;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Le9;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final e()Ldf1;
    .locals 0

    .line 1
    iget-object p0, p0, Lj82;->e:Lz;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()Lpe1;
    .locals 0

    .line 1
    iget-object p0, p0, Lj82;->d:Lc8;

    .line 2
    .line 3
    return-object p0
.end method
