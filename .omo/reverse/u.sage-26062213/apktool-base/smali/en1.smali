.class public final Len1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lkh;
.implements Lka4;


# instance fields
.field public final n:I

.field public o:I

.field public final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 22
    new-array v0, v0, [Len1;

    iput-object v0, p0, Len1;->p:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Len1;->n:I

    .line 24
    iput v0, p0, Len1;->o:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Len1;->p:Ljava/lang/Object;

    .line 27
    iput p1, p0, Len1;->n:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 28
    :cond_0
    iput p1, p0, Len1;->o:I

    return-void
.end method

.method public constructor <init>(IILmy0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Len1;->n:I

    .line 5
    .line 6
    iput p2, p0, Len1;->o:I

    .line 7
    .line 8
    new-instance v0, Lqd1;

    .line 9
    .line 10
    new-instance v1, Lz71;

    .line 11
    .line 12
    invoke-direct {v1, p1, p2, p3}, Lz71;-><init>(IILmy0;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lqd1;-><init>(Ls71;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Len1;->p:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lkh;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Len1;->p:Ljava/lang/Object;

    iput p2, p0, Len1;->n:I

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Len1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkh;

    .line 4
    .line 5
    iget v1, p0, Len1;->o:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Len1;->n:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, p0

    .line 14
    invoke-interface {v0, p1, p2}, Lkh;->b(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Len1;->o:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Len1;->o:I

    .line 6
    .line 7
    iget-object p0, p0, Len1;->p:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lkh;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lkh;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    iget-object p0, p0, Len1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkh;

    .line 4
    .line 5
    invoke-interface {p0}, Lkh;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Len1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkh;

    .line 4
    .line 5
    iget v1, p0, Len1;->o:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Len1;->n:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, p0

    .line 14
    invoke-interface {v0, p1, p2}, Lkh;->f(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h(III)V
    .locals 1

    .line 1
    iget v0, p0, Len1;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Len1;->n:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object p0, p0, Len1;->p:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lkh;

    .line 12
    .line 13
    add-int/2addr p1, v0

    .line 14
    add-int/2addr p2, v0

    .line 15
    invoke-interface {p0, p1, p2, p3}, Lkh;->h(III)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public i()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Len1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkh;

    .line 4
    .line 5
    invoke-interface {p0}, Lkh;->i()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public j(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Len1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkh;

    .line 4
    .line 5
    iget v1, p0, Len1;->o:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Len1;->n:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, p0

    .line 14
    invoke-interface {v0, p1, p2}, Lkh;->j(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public k()I
    .locals 0

    .line 1
    iget p0, p0, Len1;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public l(Ldf1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Len1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkh;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lkh;->l(Ldf1;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public m(JLbf;Lbf;Lbf;)Lbf;
    .locals 6

    .line 1
    iget-object p0, p0, Len1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lqd1;

    .line 5
    .line 6
    move-wide v1, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lqd1;->m(JLbf;Lbf;Lbf;)Lbf;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public n()V
    .locals 1

    .line 1
    iget v0, p0, Len1;->o:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "OffsetApplier up called with no corresponding down"

    .line 7
    .line 8
    invoke-static {v0}, Lwb0;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget v0, p0, Len1;->o:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    iput v0, p0, Len1;->o:I

    .line 16
    .line 17
    iget-object p0, p0, Len1;->p:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lkh;

    .line 20
    .line 21
    invoke-interface {p0}, Lkh;->n()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public o()I
    .locals 0

    .line 1
    iget p0, p0, Len1;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public p(JLbf;Lbf;Lbf;)Lbf;
    .locals 6

    .line 1
    iget-object p0, p0, Len1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lqd1;

    .line 5
    .line 6
    move-wide v1, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lqd1;->p(JLbf;Lbf;Lbf;)Lbf;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
