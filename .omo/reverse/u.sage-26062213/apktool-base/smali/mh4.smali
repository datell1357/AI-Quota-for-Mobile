.class public final Lmh4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyb0;
.implements Ln22;


# instance fields
.field public final n:Lq9;

.field public final o:Lec0;

.field public p:Z

.field public q:Lh22;

.field public r:Ldf1;


# direct methods
.method public constructor <init>(Lq9;Lec0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmh4;->n:Lq9;

    .line 5
    .line 6
    iput-object p2, p0, Lmh4;->o:Lec0;

    .line 7
    .line 8
    sget-object p1, Lqa0;->a:Lka0;

    .line 9
    .line 10
    iput-object p1, p0, Lmh4;->r:Ldf1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final B(Lp22;Lf22;)V
    .locals 0

    .line 1
    sget-object p1, Lf22;->ON_DESTROY:Lf22;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmh4;->a()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object p1, Lf22;->ON_CREATE:Lf22;

    .line 10
    .line 11
    if-ne p2, p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lmh4;->p:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lmh4;->r:Ldf1;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lmh4;->b(Ldf1;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmh4;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmh4;->p:Z

    .line 7
    .line 8
    iget-object v0, p0, Lmh4;->n:Lq9;

    .line 9
    .line 10
    invoke-virtual {v0}, Lq9;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0900ff

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lmh4;->q:Lh22;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lh22;->b(Lo22;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput-object v2, p0, Lmh4;->q:Lh22;

    .line 29
    .line 30
    :cond_1
    iget-object p0, p0, Lmh4;->o:Lec0;

    .line 31
    .line 32
    invoke-virtual {p0}, Lec0;->m()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final b(Ldf1;)V
    .locals 2

    .line 1
    new-instance v0, Loc;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Loc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lmh4;->n:Lq9;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lq9;->setOnReadyForComposition(Lpe1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
