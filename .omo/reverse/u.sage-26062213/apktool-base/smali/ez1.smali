.class public final Lez1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leb2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lpe1;

.field public final synthetic e:Lfz1;

.field public final synthetic f:Llz1;

.field public final synthetic g:Lpe1;


# direct methods
.method public constructor <init>(IILjava/util/Map;Lpe1;Lfz1;Llz1;Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lez1;->a:I

    .line 5
    .line 6
    iput p2, p0, Lez1;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lez1;->c:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p4, p0, Lez1;->d:Lpe1;

    .line 11
    .line 12
    iput-object p5, p0, Lez1;->e:Lfz1;

    .line 13
    .line 14
    iput-object p6, p0, Lez1;->f:Llz1;

    .line 15
    .line 16
    iput-object p7, p0, Lez1;->g:Lpe1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lez1;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lez1;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lez1;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lez1;->f:Llz1;

    .line 2
    .line 3
    iget-object v0, v0, Llz1;->n:Lxy1;

    .line 4
    .line 5
    iget-object v1, p0, Lez1;->e:Lfz1;

    .line 6
    .line 7
    invoke-virtual {v1}, Lfz1;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object p0, p0, Lez1;->g:Lpe1;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lxy1;->S:Lbo;

    .line 16
    .line 17
    iget-object v1, v1, Lbo;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lgr1;

    .line 20
    .line 21
    iget-object v1, v1, Lgr1;->i0:Lfr1;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v0, v1, Lk82;->C:Ll82;

    .line 26
    .line 27
    invoke-interface {p0, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, v0, Lxy1;->S:Lbo;

    .line 32
    .line 33
    iget-object v0, v0, Lbo;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lgr1;

    .line 36
    .line 37
    iget-object v0, v0, Lk82;->C:Ll82;

    .line 38
    .line 39
    invoke-interface {p0, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final f()Lpe1;
    .locals 0

    .line 1
    iget-object p0, p0, Lez1;->d:Lpe1;

    .line 2
    .line 3
    return-object p0
.end method
