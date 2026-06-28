.class public final Lf24;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic n:I

.field public o:Lg24;

.field public p:Le24;

.field public final synthetic q:Lh24;


# direct methods
.method public constructor <init>(Lh24;I)V
    .locals 6

    .line 1
    iput p2, p0, Lf24;->n:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lf24;->q:Lh24;

    .line 12
    .line 13
    iget-object p2, p1, Lh24;->t:Lg24;

    .line 14
    .line 15
    iget-object v2, p1, Lg2;->p:Ljava/util/Comparator;

    .line 16
    .line 17
    iget-object v3, p1, Lh24;->s:Llg1;

    .line 18
    .line 19
    iget-object p1, p1, Lh24;->r:Li3;

    .line 20
    .line 21
    iget-object p1, p1, Li3;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lg24;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-boolean v4, v3, Llg1;->o:Z

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget-object v4, v3, Llg1;->p:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {p1, v2, v4}, Lg24;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lg24;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget v5, v3, Llg1;->q:I

    .line 42
    .line 43
    if-ne v5, v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p1, Lg24;->a:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-interface {v2, v4, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    iget-object p1, p1, Lg24;->i:Lg24;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p2, Lg24;->i:Lg24;

    .line 60
    .line 61
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    if-eq p1, p2, :cond_5

    .line 65
    .line 66
    iget-object p2, p1, Lg24;->a:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {v3, p2}, Llg1;->a(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move-object v1, p1

    .line 76
    :cond_5
    :goto_1
    iput-object v1, p0, Lf24;->o:Lg24;

    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lf24;->q:Lh24;

    .line 83
    .line 84
    iget-object p2, p1, Lh24;->t:Lg24;

    .line 85
    .line 86
    iget-object v2, p1, Lg2;->p:Ljava/util/Comparator;

    .line 87
    .line 88
    iget-object v3, p1, Lh24;->s:Llg1;

    .line 89
    .line 90
    iget-object p1, p1, Lh24;->r:Li3;

    .line 91
    .line 92
    iget-object p1, p1, Li3;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Lg24;

    .line 95
    .line 96
    if-nez p1, :cond_6

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    iget-boolean v4, v3, Llg1;->r:Z

    .line 100
    .line 101
    if-eqz v4, :cond_8

    .line 102
    .line 103
    iget-object v4, v3, Llg1;->s:Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {p1, v2, v4}, Lg24;->f(Ljava/util/Comparator;Ljava/lang/Object;)Lg24;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-nez p1, :cond_7

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_7
    iget v5, v3, Llg1;->t:I

    .line 113
    .line 114
    if-ne v5, v0, :cond_9

    .line 115
    .line 116
    iget-object v0, p1, Lg24;->a:Ljava/lang/Object;

    .line 117
    .line 118
    invoke-interface {v2, v4, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    iget-object p1, p1, Lg24;->h:Lg24;

    .line 125
    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_8
    iget-object p1, p2, Lg24;->h:Lg24;

    .line 131
    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :cond_9
    :goto_2
    if-eq p1, p2, :cond_a

    .line 136
    .line 137
    iget-object p2, p1, Lg24;->a:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-virtual {v3, p2}, Llg1;->a(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_b

    .line 144
    .line 145
    :cond_a
    :goto_3
    move-object p1, v1

    .line 146
    :cond_b
    iput-object p1, p0, Lf24;->o:Lg24;

    .line 147
    .line 148
    iput-object v1, p0, Lf24;->p:Le24;

    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    .line 1
    iget v0, p0, Lf24;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lf24;->q:Lh24;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    :goto_0
    move v1, v4

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v3, v3, Lh24;->s:Llg1;

    .line 18
    .line 19
    iget-object v0, v0, Lg24;->a:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Llg1;->d(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iput-object v2, p0, Lf24;->o:Lg24;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    return v1

    .line 31
    :pswitch_0
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    :goto_2
    move v1, v4

    .line 36
    goto :goto_3

    .line 37
    :cond_2
    iget-object v3, v3, Lh24;->s:Llg1;

    .line 38
    .line 39
    iget-object v0, v0, Lg24;->a:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Llg1;->c(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iput-object v2, p0, Lf24;->o:Lg24;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    :goto_3
    return v1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lf24;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lf24;->q:Lh24;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lf24;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v3, Le24;

    .line 26
    .line 27
    invoke-direct {v3, v1, v0}, Le24;-><init>(Lh24;Lg24;)V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lf24;->p:Le24;

    .line 31
    .line 32
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 33
    .line 34
    iget-object v0, v0, Lg24;->h:Lg24;

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lh24;->t:Lg24;

    .line 40
    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iput-object v2, p0, Lf24;->o:Lg24;

    .line 44
    .line 45
    :goto_0
    move-object v2, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 48
    .line 49
    iget-object v0, v0, Lg24;->h:Lg24;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lf24;->o:Lg24;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Lp61;->v()V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-object v2

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lf24;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 68
    .line 69
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v3, Le24;

    .line 76
    .line 77
    invoke-direct {v3, v1, v0}, Le24;-><init>(Lh24;Lg24;)V

    .line 78
    .line 79
    .line 80
    iput-object v3, p0, Lf24;->p:Le24;

    .line 81
    .line 82
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 83
    .line 84
    iget-object v0, v0, Lg24;->i:Lg24;

    .line 85
    .line 86
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object v1, v1, Lh24;->t:Lg24;

    .line 90
    .line 91
    if-ne v0, v1, :cond_2

    .line 92
    .line 93
    iput-object v2, p0, Lf24;->o:Lg24;

    .line 94
    .line 95
    :goto_2
    move-object v2, v3

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    iget-object v0, p0, Lf24;->o:Lg24;

    .line 98
    .line 99
    iget-object v0, v0, Lg24;->i:Lg24;

    .line 100
    .line 101
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lf24;->o:Lg24;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    invoke-static {}, Lp61;->v()V

    .line 108
    .line 109
    .line 110
    :goto_3
    return-object v2

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget v0, p0, Lf24;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf24;->p:Le24;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 14
    .line 15
    invoke-static {v0, v1}, Ln44;->b0(ZLjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lf24;->p:Le24;

    .line 19
    .line 20
    iget-object v0, v0, Le24;->n:Lg24;

    .line 21
    .line 22
    iget-object v0, v0, Lg24;->a:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v1, p0, Lf24;->q:Lh24;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lh24;->f(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lf24;->p:Le24;

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lf24;->p:Le24;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_1
    const-string v1, "no calls to next() since the last call to remove()"

    .line 41
    .line 42
    invoke-static {v0, v1}, Ln44;->b0(ZLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lf24;->p:Le24;

    .line 46
    .line 47
    iget-object v0, v0, Le24;->n:Lg24;

    .line 48
    .line 49
    iget-object v0, v0, Lg24;->a:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v1, p0, Lf24;->q:Lh24;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lh24;->f(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lf24;->p:Le24;

    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
