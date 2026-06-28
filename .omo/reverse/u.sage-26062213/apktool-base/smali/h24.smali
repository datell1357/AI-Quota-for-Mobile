.class public final Lh24;
.super Lg2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic u:I


# instance fields
.field public final transient r:Li3;

.field public final transient s:Llg1;

.field public final transient t:Lg24;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    sget-object v1, Lvh2;->o:Lvh2;

    .line 2
    .line 3
    invoke-direct {p0, v1}, Lg2;-><init>(Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Llg1;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    move v7, v4

    .line 14
    invoke-direct/range {v0 .. v7}, Llg1;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lh24;->s:Llg1;

    .line 18
    .line 19
    new-instance v0, Lg24;

    .line 20
    .line 21
    invoke-direct {v0}, Lg24;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lh24;->t:Lg24;

    .line 25
    .line 26
    iput-object v0, v0, Lg24;->i:Lg24;

    .line 27
    .line 28
    iput-object v0, v0, Lg24;->h:Lg24;

    .line 29
    .line 30
    new-instance v0, Li3;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lh24;->r:Li3;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Li3;Llg1;Lg24;)V
    .locals 1

    .line 38
    iget-object v0, p2, Llg1;->n:Ljava/util/Comparator;

    .line 39
    invoke-direct {p0, v0}, Lg2;-><init>(Ljava/util/Comparator;)V

    .line 40
    iput-object p1, p0, Lh24;->r:Li3;

    .line 41
    iput-object p2, p0, Lh24;->s:Llg1;

    .line 42
    iput-object p3, p0, Lh24;->t:Lg24;

    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)Z
    .locals 5

    .line 1
    const-string v0, "newCount"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lht4;->i(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "oldCount"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lht4;->i(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lh24;->s:Llg1;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Llg1;->a(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ln44;->U(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lh24;->r:Li3;

    .line 22
    .line 23
    iget-object v2, v0, Li3;->a:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lg24;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-array v4, v3, [I

    .line 34
    .line 35
    iget-object p0, p0, Lg2;->p:Ljava/util/Comparator;

    .line 36
    .line 37
    invoke-virtual {v2, p0, p2, p1, v4}, Lg24;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, v2, p0}, Li3;->a(Ljava/lang/Object;Lg24;)V

    .line 42
    .line 43
    .line 44
    aget p0, v4, v1

    .line 45
    .line 46
    if-ne p0, p1, :cond_1

    .line 47
    .line 48
    :goto_0
    return v3

    .line 49
    :cond_1
    return v1
.end method

.method public final L(ILjava/lang/Object;)Lup3;
    .locals 9

    .line 1
    new-instance v0, Lh24;

    .line 2
    .line 3
    new-instance v1, Llg1;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x1

    .line 7
    iget-object v2, p0, Lg2;->p:Ljava/util/Comparator;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    move v5, p1

    .line 12
    move-object v4, p2

    .line 13
    invoke-direct/range {v1 .. v8}, Llg1;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lh24;->s:Llg1;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Llg1;->b(Llg1;)Llg1;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Lh24;->t:Lg24;

    .line 23
    .line 24
    iget-object p0, p0, Lh24;->r:Li3;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1, p2}, Lh24;-><init>(Li3;Llg1;Lg24;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final N(Ljava/lang/Object;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh24;->r:Li3;

    .line 3
    .line 4
    iget-object v1, v1, Li3;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lg24;

    .line 7
    .line 8
    iget-object v2, p0, Lh24;->s:Llg1;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Llg1;->a(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lg2;->p:Ljava/util/Comparator;

    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Lg24;->d(Ljava/util/Comparator;Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p0

    .line 26
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final V(ILjava/lang/Object;)I
    .locals 5

    .line 1
    const-string v0, "occurrences"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lht4;->i(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lh24;->N(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v0, p0, Lh24;->r:Li3;

    .line 14
    .line 15
    iget-object v1, v0, Li3;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lg24;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v2, v2, [I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :try_start_0
    iget-object v4, p0, Lh24;->s:Llg1;

    .line 24
    .line 25
    invoke-virtual {v4, p2}, Llg1;->a(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lg2;->p:Ljava/util/Comparator;

    .line 35
    .line 36
    invoke-virtual {v1, p0, p2, p1, v2}, Lg24;->j(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-virtual {v0, v1, p0}, Li3;->a(Ljava/lang/Object;Lg24;)V

    .line 41
    .line 42
    .line 43
    aget p0, v2, v3

    .line 44
    .line 45
    return p0

    .line 46
    :catch_0
    :cond_2
    :goto_0
    return v3
.end method

.method public final a(ILjava/lang/Object;)I
    .locals 4

    .line 1
    const-string v0, "occurrences"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lht4;->i(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lh24;->N(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v0, p0, Lh24;->s:Llg1;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Llg1;->a(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ln44;->U(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lh24;->r:Li3;

    .line 23
    .line 24
    iget-object v1, v0, Li3;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lg24;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lg2;->p:Ljava/util/Comparator;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v3, p2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    new-instance v3, Lg24;

    .line 37
    .line 38
    invoke-direct {v3, p1, p2}, Lg24;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lh24;->t:Lg24;

    .line 42
    .line 43
    iput-object v3, p0, Lg24;->i:Lg24;

    .line 44
    .line 45
    iput-object p0, v3, Lg24;->h:Lg24;

    .line 46
    .line 47
    iput-object p0, v3, Lg24;->i:Lg24;

    .line 48
    .line 49
    iput-object v3, p0, Lg24;->h:Lg24;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v3}, Li3;->a(Ljava/lang/Object;Lg24;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_1
    const/4 p0, 0x1

    .line 56
    new-array p0, p0, [I

    .line 57
    .line 58
    invoke-virtual {v1, v3, p2, p1, p0}, Lg24;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, v1, p1}, Li3;->a(Ljava/lang/Object;Lg24;)V

    .line 63
    .line 64
    .line 65
    aget p0, p0, v2

    .line 66
    .line 67
    return p0
.end method

.method public final c(ILg24;)J
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-wide/16 p0, 0x0

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    iget-object v0, p0, Lh24;->s:Llg1;

    .line 7
    .line 8
    iget-object v1, v0, Llg1;->s:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v2, p2, Lg24;->a:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v3, p0, Lg2;->p:Ljava/util/Comparator;

    .line 13
    .line 14
    invoke-interface {v3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    iget-object p2, p2, Lg24;->g:Lg24;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lh24;->c(ILg24;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_1
    if-nez v1, :cond_4

    .line 28
    .line 29
    iget p0, v0, Llg1;->t:I

    .line 30
    .line 31
    invoke-static {p0}, Ldi0;->F(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-ne p0, v0, :cond_2

    .line 39
    .line 40
    iget-object p0, p2, Lg24;->g:Lg24;

    .line 41
    .line 42
    invoke-static {p1, p0}, Lxw1;->d(ILg24;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    return-wide p0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_3
    invoke-static {p1, p2}, Lxw1;->b(ILg24;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    int-to-long v0, p0

    .line 58
    iget-object p0, p2, Lg24;->g:Lg24;

    .line 59
    .line 60
    invoke-static {p1, p0}, Lxw1;->d(ILg24;)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    add-long/2addr p0, v0

    .line 65
    return-wide p0

    .line 66
    :cond_4
    iget-object v0, p2, Lg24;->g:Lg24;

    .line 67
    .line 68
    invoke-static {p1, v0}, Lxw1;->d(ILg24;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-static {p1, p2}, Lxw1;->b(ILg24;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    int-to-long v2, v2

    .line 77
    add-long/2addr v0, v2

    .line 78
    iget-object p2, p2, Lg24;->f:Lg24;

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Lh24;->c(ILg24;)J

    .line 81
    .line 82
    .line 83
    move-result-wide p0

    .line 84
    add-long/2addr p0, v0

    .line 85
    return-wide p0
.end method

.method public final clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lh24;->s:Llg1;

    .line 2
    .line 3
    iget-boolean v1, v0, Llg1;->o:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, v0, Llg1;->r:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lh24;->t:Lg24;

    .line 13
    .line 14
    iget-object v1, v0, Lg24;->i:Lg24;

    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v3, 0x0

    .line 20
    if-eq v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v4, v1, Lg24;->i:Lg24;

    .line 23
    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iput v2, v1, Lg24;->b:I

    .line 28
    .line 29
    iput-object v3, v1, Lg24;->f:Lg24;

    .line 30
    .line 31
    iput-object v3, v1, Lg24;->g:Lg24;

    .line 32
    .line 33
    iput-object v3, v1, Lg24;->h:Lg24;

    .line 34
    .line 35
    iput-object v3, v1, Lg24;->i:Lg24;

    .line 36
    .line 37
    move-object v1, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object v0, v0, Lg24;->i:Lg24;

    .line 40
    .line 41
    iput-object v0, v0, Lg24;->h:Lg24;

    .line 42
    .line 43
    iget-object p0, p0, Lh24;->r:Li3;

    .line 44
    .line 45
    iput-object v3, p0, Li3;->a:Ljava/lang/Object;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance v0, Lf24;

    .line 49
    .line 50
    invoke-direct {v0, p0, v2}, Lf24;-><init>(Lh24;I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {v0}, Lf24;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lf24;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lf24;->remove()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-void
.end method

.method public final d(ILg24;)J
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-wide/16 p0, 0x0

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    iget-object v0, p0, Lh24;->s:Llg1;

    .line 7
    .line 8
    iget-object v1, v0, Llg1;->p:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v2, p2, Lg24;->a:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v3, p0, Lg2;->p:Ljava/util/Comparator;

    .line 13
    .line 14
    invoke-interface {v3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-gez v1, :cond_1

    .line 19
    .line 20
    iget-object p2, p2, Lg24;->f:Lg24;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lh24;->d(ILg24;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_1
    if-nez v1, :cond_4

    .line 28
    .line 29
    iget p0, v0, Llg1;->q:I

    .line 30
    .line 31
    invoke-static {p0}, Ldi0;->F(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-ne p0, v0, :cond_2

    .line 39
    .line 40
    iget-object p0, p2, Lg24;->f:Lg24;

    .line 41
    .line 42
    invoke-static {p1, p0}, Lxw1;->d(ILg24;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    return-wide p0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_3
    invoke-static {p1, p2}, Lxw1;->b(ILg24;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    int-to-long v0, p0

    .line 58
    iget-object p0, p2, Lg24;->f:Lg24;

    .line 59
    .line 60
    invoke-static {p1, p0}, Lxw1;->d(ILg24;)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    add-long/2addr p0, v0

    .line 65
    return-wide p0

    .line 66
    :cond_4
    iget-object v0, p2, Lg24;->f:Lg24;

    .line 67
    .line 68
    invoke-static {p1, v0}, Lxw1;->d(ILg24;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-static {p1, p2}, Lxw1;->b(ILg24;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    int-to-long v2, v2

    .line 77
    add-long/2addr v0, v2

    .line 78
    iget-object p2, p2, Lg24;->g:Lg24;

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Lh24;->d(ILg24;)J

    .line 81
    .line 82
    .line 83
    move-result-wide p0

    .line 84
    add-long/2addr p0, v0

    .line 85
    return-wide p0
.end method

.method public final e(I)J
    .locals 6

    .line 1
    iget-object v0, p0, Lh24;->r:Li3;

    .line 2
    .line 3
    iget-object v0, v0, Li3;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lg24;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lxw1;->d(ILg24;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lh24;->s:Llg1;

    .line 12
    .line 13
    iget-boolean v4, v3, Llg1;->o:Z

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lh24;->d(ILg24;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sub-long/2addr v1, v4

    .line 22
    :cond_0
    iget-boolean v3, v3, Llg1;->r:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lh24;->c(ILg24;)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    sub-long/2addr v1, p0

    .line 31
    :cond_1
    return-wide v1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "count"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lht4;->i(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lh24;->s:Llg1;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Llg1;->a(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lh24;->r:Li3;

    .line 17
    .line 18
    iget-object v1, v0, Li3;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lg24;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [I

    .line 27
    .line 28
    iget-object p0, p0, Lg2;->p:Ljava/util/Comparator;

    .line 29
    .line 30
    invoke-virtual {v1, p0, p1, v2}, Lg24;->p(Ljava/util/Comparator;Ljava/lang/Object;[I)Lg24;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, v1, p0}, Li3;->a(Ljava/lang/Object;Lg24;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Llf2;

    .line 2
    .line 3
    invoke-interface {p0}, Lhf2;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Llf2;-><init>(Lup3;Ljava/util/Iterator;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final j(ILjava/lang/Object;)Lup3;
    .locals 9

    .line 1
    new-instance v0, Lh24;

    .line 2
    .line 3
    new-instance v1, Llg1;

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v6, 0x1

    .line 7
    iget-object v2, p0, Lg2;->p:Ljava/util/Comparator;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move v8, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v1 .. v8}, Llg1;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lh24;->s:Llg1;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Llg1;->b(Llg1;)Llg1;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Lh24;->t:Lg24;

    .line 23
    .line 24
    iget-object p0, p0, Lh24;->r:Li3;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1, p2}, Lh24;-><init>(Li3;Llg1;Lg24;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lh24;->e(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Lqn0;->G(J)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
