.class public final Ltn3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lun3;

.field public final b:[I

.field public final c:I

.field public d:[Ljava/lang/Object;

.field public final e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lss1;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>(Lun3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltn3;->a:Lun3;

    .line 5
    .line 6
    iget-object v0, p1, Lun3;->n:[I

    .line 7
    .line 8
    iput-object v0, p0, Ltn3;->b:[I

    .line 9
    .line 10
    iget v0, p1, Lun3;->o:I

    .line 11
    .line 12
    iput v0, p0, Ltn3;->c:I

    .line 13
    .line 14
    iget-object v1, p1, Lun3;->p:[Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v1, p0, Ltn3;->d:[Ljava/lang/Object;

    .line 17
    .line 18
    iget p1, p1, Lun3;->q:I

    .line 19
    .line 20
    iput p1, p0, Ltn3;->e:I

    .line 21
    .line 22
    iput v0, p0, Ltn3;->h:I

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Ltn3;->i:I

    .line 26
    .line 27
    new-instance p1, Lss1;

    .line 28
    .line 29
    invoke-direct {p1}, Lss1;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Ltn3;->j:Lss1;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(I)Lvf1;
    .locals 2

    .line 1
    iget-object v0, p0, Ltn3;->a:Lun3;

    .line 2
    .line 3
    iget-object v0, v0, Lun3;->v:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget p0, p0, Ltn3;->c:I

    .line 6
    .line 7
    invoke-static {v0, p1, p0}, Lwn3;->e(Ljava/util/ArrayList;II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-gez p0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lvf1;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lvf1;-><init>(I)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    neg-int p0, p0

    .line 21
    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lvf1;

    .line 30
    .line 31
    return-object p0
.end method

.method public final b([II)Ljava/lang/Object;
    .locals 2

    .line 1
    mul-int/lit8 p2, p2, 0x5

    .line 2
    .line 3
    add-int/lit8 v0, p2, 0x1

    .line 4
    .line 5
    aget v0, p1, v0

    .line 6
    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    and-int/2addr v1, v0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Ltn3;->d:[Ljava/lang/Object;

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    if-lt p2, v1, :cond_0

    .line 16
    .line 17
    array-length p1, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 p2, p2, 0x4

    .line 20
    .line 21
    aget p1, p1, p2

    .line 22
    .line 23
    shr-int/lit8 p2, v0, 0x1d

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    add-int/2addr p1, p2

    .line 30
    :goto_0
    aget-object p0, p0, p1

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    sget-object p0, Lrb0;->a:Lbx3;

    .line 34
    .line 35
    return-object p0
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltn3;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Ltn3;->a:Lun3;

    .line 5
    .line 6
    iget v1, v0, Lun3;->r:I

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "Unexpected reader close()"

    .line 12
    .line 13
    invoke-static {v1}, Lwb0;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget v1, v0, Lun3;->r:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, v0, Lun3;->r:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    iput-object v0, p0, Ltn3;->d:[Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method public final d(I)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    iget-object p0, p0, Ltn3;->b:[I

    .line 6
    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/high16 p1, 0x4000000

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final e()V
    .locals 4

    .line 1
    iget v0, p0, Ltn3;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget v0, p0, Ltn3;->g:I

    .line 6
    .line 7
    iget v1, p0, Ltn3;->h:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "endGroup() not called at the end of a group"

    .line 13
    .line 14
    invoke-static {v0}, Lwb0;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget v0, p0, Ltn3;->i:I

    .line 18
    .line 19
    mul-int/lit8 v0, v0, 0x5

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    iget-object v1, p0, Ltn3;->b:[I

    .line 24
    .line 25
    aget v0, v1, v0

    .line 26
    .line 27
    iput v0, p0, Ltn3;->i:I

    .line 28
    .line 29
    iget v2, p0, Ltn3;->c:I

    .line 30
    .line 31
    if-gez v0, :cond_1

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    mul-int/lit8 v3, v0, 0x5

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x3

    .line 38
    .line 39
    aget v3, v1, v3

    .line 40
    .line 41
    add-int/2addr v3, v0

    .line 42
    :goto_1
    iput v3, p0, Ltn3;->h:I

    .line 43
    .line 44
    iget-object v3, p0, Ltn3;->j:Lss1;

    .line 45
    .line 46
    invoke-virtual {v3}, Lss1;->b()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-gez v3, :cond_2

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput v0, p0, Ltn3;->l:I

    .line 54
    .line 55
    iput v0, p0, Ltn3;->m:I

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iput v3, p0, Ltn3;->l:I

    .line 59
    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    if-lt v0, v2, :cond_3

    .line 63
    .line 64
    iget v0, p0, Ltn3;->e:I

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    mul-int/lit8 v0, v0, 0x5

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x4

    .line 72
    .line 73
    aget v0, v1, v0

    .line 74
    .line 75
    :goto_2
    iput v0, p0, Ltn3;->m:I

    .line 76
    .line 77
    :cond_4
    return-void
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ltn3;->g:I

    .line 2
    .line 3
    iget v1, p0, Ltn3;->h:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Ltn3;->b:[I

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Ltn3;->b([II)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final g()I
    .locals 2

    .line 1
    iget v0, p0, Ltn3;->g:I

    .line 2
    .line 3
    iget v1, p0, Ltn3;->h:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x5

    .line 8
    .line 9
    iget-object p0, p0, Ltn3;->b:[I

    .line 10
    .line 11
    aget p0, p0, v0

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final h(II)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ltn3;->b:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Lwn3;->b([II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iget v2, p0, Ltn3;->c:I

    .line 10
    .line 11
    if-ge p1, v2, :cond_0

    .line 12
    .line 13
    mul-int/lit8 p1, p1, 0x5

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x4

    .line 16
    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Ltn3;->e:I

    .line 21
    .line 22
    :goto_0
    add-int/2addr v1, p2

    .line 23
    if-ge v1, p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Ltn3;->d:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object p0, p0, v1

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lrb0;->a:Lbx3;

    .line 31
    .line 32
    return-object p0
.end method

.method public final i(I)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    iget-object p0, p0, Ltn3;->b:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final j(I)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    iget-object p0, p0, Ltn3;->b:[I

    .line 6
    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/high16 p1, 0x8000000

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final k(I)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    iget-object p0, p0, Ltn3;->b:[I

    .line 6
    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/high16 p1, 0x20000000

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final l(I)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    iget-object p0, p0, Ltn3;->b:[I

    .line 6
    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/high16 p1, 0x40000000    # 2.0f

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final m()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ltn3;->k:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Ltn3;->l:I

    .line 6
    .line 7
    iget v1, p0, Ltn3;->m:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Ltn3;->n:Z

    .line 14
    .line 15
    iget-object v1, p0, Ltn3;->d:[Ljava/lang/Object;

    .line 16
    .line 17
    add-int/lit8 v2, v0, 0x1

    .line 18
    .line 19
    iput v2, p0, Ltn3;->l:I

    .line 20
    .line 21
    aget-object p0, v1, v0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Ltn3;->n:Z

    .line 26
    .line 27
    sget-object p0, Lrb0;->a:Lbx3;

    .line 28
    .line 29
    return-object p0
.end method

.method public final n(I)Ljava/lang/Object;
    .locals 3

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Ltn3;->b:[I

    .line 6
    .line 7
    aget v0, v1, v0

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    and-int/2addr v0, v2

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Ltn3;->d:[Ljava/lang/Object;

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x4

    .line 19
    .line 20
    aget p1, v1, p1

    .line 21
    .line 22
    aget-object p0, p0, p1

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lrb0;->a:Lbx3;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final o(I)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object p0, p0, Ltn3;->b:[I

    .line 6
    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const p1, 0x3ffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p0, p1

    .line 13
    return p0
.end method

.method public final p([II)Ljava/lang/Object;
    .locals 2

    .line 1
    mul-int/lit8 p2, p2, 0x5

    .line 2
    .line 3
    add-int/lit8 v0, p2, 0x1

    .line 4
    .line 5
    aget v0, p1, v0

    .line 6
    .line 7
    const/high16 v1, 0x20000000

    .line 8
    .line 9
    and-int/2addr v1, v0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Ltn3;->d:[Ljava/lang/Object;

    .line 13
    .line 14
    add-int/lit8 p2, p2, 0x4

    .line 15
    .line 16
    aget p1, p1, p2

    .line 17
    .line 18
    shr-int/lit8 p2, v0, 0x1e

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    add-int/2addr p2, p1

    .line 25
    aget-object p0, p0, p2

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final q(I)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Ltn3;->b:[I

    .line 6
    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    return p0
.end method

.method public final r(I)V
    .locals 3

    .line 1
    iget v0, p0, Ltn3;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "Cannot reposition while in an empty region"

    .line 7
    .line 8
    invoke-static {v0}, Lwb0;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iput p1, p0, Ltn3;->g:I

    .line 12
    .line 13
    iget-object v0, p0, Ltn3;->b:[I

    .line 14
    .line 15
    iget v1, p0, Ltn3;->c:I

    .line 16
    .line 17
    if-ge p1, v1, :cond_1

    .line 18
    .line 19
    mul-int/lit8 p1, p1, 0x5

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x2

    .line 22
    .line 23
    aget p1, v0, p1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, -0x1

    .line 27
    :goto_1
    iget v2, p0, Ltn3;->i:I

    .line 28
    .line 29
    if-eq p1, v2, :cond_3

    .line 30
    .line 31
    iput p1, p0, Ltn3;->i:I

    .line 32
    .line 33
    if-gez p1, :cond_2

    .line 34
    .line 35
    iput v1, p0, Ltn3;->h:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    mul-int/lit8 v1, p1, 0x5

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x3

    .line 41
    .line 42
    aget v0, v0, v1

    .line 43
    .line 44
    add-int/2addr v0, p1

    .line 45
    iput v0, p0, Ltn3;->h:I

    .line 46
    .line 47
    :goto_2
    const/4 p1, 0x0

    .line 48
    iput p1, p0, Ltn3;->l:I

    .line 49
    .line 50
    iput p1, p0, Ltn3;->m:I

    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public final s()I
    .locals 5

    .line 1
    iget v0, p0, Ltn3;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "Cannot skip while in an empty region"

    .line 7
    .line 8
    invoke-static {v0}, Lwb0;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget v0, p0, Ltn3;->g:I

    .line 12
    .line 13
    mul-int/lit8 v1, v0, 0x5

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iget-object v3, p0, Ltn3;->b:[I

    .line 18
    .line 19
    aget v2, v3, v2

    .line 20
    .line 21
    const/high16 v4, 0x40000000    # 2.0f

    .line 22
    .line 23
    and-int/2addr v4, v2

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const v4, 0x3ffffff

    .line 29
    .line 30
    .line 31
    and-int/2addr v2, v4

    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 33
    .line 34
    aget v1, v3, v1

    .line 35
    .line 36
    add-int/2addr v1, v0

    .line 37
    iput v1, p0, Ltn3;->g:I

    .line 38
    .line 39
    return v2
.end method

.method public final t()V
    .locals 2

    .line 1
    iget v0, p0, Ltn3;->k:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "Cannot skip the enclosing group while in an empty region"

    .line 12
    .line 13
    invoke-static {v0}, Lwb0;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget v0, p0, Ltn3;->h:I

    .line 17
    .line 18
    iput v0, p0, Ltn3;->g:I

    .line 19
    .line 20
    iput v1, p0, Ltn3;->l:I

    .line 21
    .line 22
    iput v1, p0, Ltn3;->m:I

    .line 23
    .line 24
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Ltn3;->g:I

    .line 2
    .line 3
    invoke-virtual {p0}, Ltn3;->g()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Ltn3;->i:I

    .line 8
    .line 9
    iget p0, p0, Ltn3;->h:I

    .line 10
    .line 11
    const-string v3, ", key="

    .line 12
    .line 13
    const-string v4, ", parent="

    .line 14
    .line 15
    const-string v5, "SlotReader(current="

    .line 16
    .line 17
    invoke-static {v5, v0, v3, v1, v4}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", end="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ")"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final u()V
    .locals 6

    .line 1
    iget v0, p0, Ltn3;->k:I

    .line 2
    .line 3
    if-gtz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Ltn3;->i:I

    .line 6
    .line 7
    iget v1, p0, Ltn3;->g:I

    .line 8
    .line 9
    mul-int/lit8 v2, v1, 0x5

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x2

    .line 12
    .line 13
    iget-object v4, p0, Ltn3;->b:[I

    .line 14
    .line 15
    aget v3, v4, v3

    .line 16
    .line 17
    if-ne v3, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "Invalid slot table detected"

    .line 21
    .line 22
    invoke-static {v0}, Lix2;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget v0, p0, Ltn3;->l:I

    .line 26
    .line 27
    iget v3, p0, Ltn3;->m:I

    .line 28
    .line 29
    iget-object v5, p0, Ltn3;->j:Lss1;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    invoke-virtual {v5, v0}, Lss1;->c(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v5, v0}, Lss1;->c(I)V

    .line 41
    .line 42
    .line 43
    :goto_1
    iput v1, p0, Ltn3;->i:I

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x3

    .line 46
    .line 47
    aget v0, v4, v2

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    iput v0, p0, Ltn3;->h:I

    .line 51
    .line 52
    add-int/lit8 v0, v1, 0x1

    .line 53
    .line 54
    iput v0, p0, Ltn3;->g:I

    .line 55
    .line 56
    invoke-static {v4, v1}, Lwn3;->b([II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iput v2, p0, Ltn3;->l:I

    .line 61
    .line 62
    iget v2, p0, Ltn3;->c:I

    .line 63
    .line 64
    add-int/lit8 v2, v2, -0x1

    .line 65
    .line 66
    if-lt v1, v2, :cond_2

    .line 67
    .line 68
    iget v0, p0, Ltn3;->e:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    mul-int/lit8 v0, v0, 0x5

    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x4

    .line 74
    .line 75
    aget v0, v4, v0

    .line 76
    .line 77
    :goto_2
    iput v0, p0, Ltn3;->m:I

    .line 78
    .line 79
    :cond_3
    return-void
.end method
