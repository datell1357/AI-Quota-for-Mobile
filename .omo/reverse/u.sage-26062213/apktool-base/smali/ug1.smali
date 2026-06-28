.class public final Lug1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/Iterator;
.implements Lfx1;


# instance fields
.field public final synthetic n:I

.field public o:I

.field public p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgg2;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lug1;->n:I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lug1;->q:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lug1;->o:I

    .line 33
    new-instance v0, Lfg2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lfg2;-><init>(Lgg2;Lug1;Ldh0;)V

    invoke-static {v0}, Lse0;->y(Ldf1;)Lbi3;

    move-result-object p1

    iput-object p1, p0, Lug1;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lug1;->n:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug1;->p:Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lug1;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lng2;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lug1;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lug1;->q:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lug1;->o:I

    .line 11
    .line 12
    new-instance v0, Lmg2;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p1, p0, v1}, Lmg2;-><init>(Lng2;Lug1;Ldh0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lse0;->y(Ldf1;)Lbi3;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lug1;->p:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lyr0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lug1;->n:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lug1;->q:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 27
    iput p1, p0, Lug1;->o:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget v0, p0, Lug1;->o:I

    .line 2
    .line 3
    iget-object v1, p0, Lug1;->q:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lyr0;

    .line 6
    .line 7
    const/4 v2, -0x2

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, v1, Lyr0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lne1;

    .line 13
    .line 14
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v1, Lyr0;->c:Lef1;

    .line 20
    .line 21
    check-cast v0, Lpe1;

    .line 22
    .line 23
    iget-object v1, p0, Lug1;->p:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    iput-object v0, p0, Lug1;->p:Ljava/lang/Object;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    :goto_1
    iput v0, p0, Lug1;->o:I

    .line 40
    .line 41
    return-void
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    iget v0, p0, Lug1;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lug1;->o:I

    .line 9
    .line 10
    iget-object p0, p0, Lug1;->q:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ge v0, p0, :cond_0

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_0
    return v1

    .line 22
    :pswitch_0
    iget-object p0, p0, Lug1;->p:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lbi3;

    .line 25
    .line 26
    invoke-virtual {p0}, Lbi3;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_1
    iget-object p0, p0, Lug1;->p:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lbi3;

    .line 34
    .line 35
    invoke-virtual {p0}, Lbi3;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :pswitch_2
    iget v0, p0, Lug1;->o:I

    .line 41
    .line 42
    if-gez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lug1;->b()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget p0, p0, Lug1;->o:I

    .line 48
    .line 49
    if-ne p0, v2, :cond_2

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_2
    return v1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lug1;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lug1;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lug1;->p:Ljava/lang/Object;

    .line 14
    .line 15
    iget v0, p0, Lug1;->o:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lug1;->o:I

    .line 20
    .line 21
    iget-object v0, p0, Lug1;->q:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    check-cast v0, Ly32;

    .line 32
    .line 33
    iget-object v0, v0, Ly32;->b:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object v0, p0, Lug1;->p:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Hash code of an element ("

    .line 43
    .line 44
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ") has changed after it was added to the persistent set."

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_1
    invoke-static {}, Lp61;->v()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-object v1

    .line 67
    :pswitch_0
    iget-object p0, p0, Lug1;->p:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lbi3;

    .line 70
    .line 71
    invoke-virtual {p0}, Lbi3;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :pswitch_1
    iget-object p0, p0, Lug1;->p:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Lbi3;

    .line 79
    .line 80
    invoke-virtual {p0}, Lbi3;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_2
    iget v0, p0, Lug1;->o:I

    .line 86
    .line 87
    if-gez v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, Lug1;->b()V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget v0, p0, Lug1;->o:I

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Lug1;->p:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lug1;->o:I

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-static {}, Lp61;->v()V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-object v1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget v0, p0, Lug1;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lug1;->q:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "Operation is not supported for read-only collection"

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0

    .line 17
    :pswitch_0
    iget v0, p0, Lug1;->o:I

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Lng2;

    .line 22
    .line 23
    iget-object v1, v1, Lng2;->o:Llg2;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Llg2;->m(I)V

    .line 26
    .line 27
    .line 28
    iput v2, p0, Lug1;->o:I

    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_1
    iget v0, p0, Lug1;->o:I

    .line 32
    .line 33
    if-eq v0, v2, :cond_1

    .line 34
    .line 35
    check-cast v1, Lgg2;

    .line 36
    .line 37
    iget-object v1, v1, Lgg2;->o:Leg2;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Leg2;->i(I)V

    .line 40
    .line 41
    .line 42
    iput v2, p0, Lug1;->o:I

    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :pswitch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 46
    .line 47
    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
