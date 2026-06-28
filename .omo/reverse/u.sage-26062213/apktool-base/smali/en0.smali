.class public final Len0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:Lu33;

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lu33;

.field public final synthetic v:Lfn0;

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Z


# direct methods
.method public constructor <init>(Lu33;Lfn0;Ljava/lang/Object;ZLdh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Len0;->u:Lu33;

    .line 2
    .line 3
    iput-object p2, p0, Len0;->v:Lfn0;

    .line 4
    .line 5
    iput-object p3, p0, Len0;->w:Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p4, p0, Len0;->x:Z

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls51;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Len0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Len0;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Len0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 6

    .line 1
    new-instance v0, Len0;

    .line 2
    .line 3
    iget-object v3, p0, Len0;->w:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v4, p0, Len0;->x:Z

    .line 6
    .line 7
    iget-object v1, p0, Len0;->u:Lu33;

    .line 8
    .line 9
    iget-object v2, p0, Len0;->v:Lfn0;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Len0;-><init>(Lu33;Lfn0;Ljava/lang/Object;ZLdh0;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, v0, Len0;->t:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Len0;->s:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Len0;->w:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Len0;->v:Lfn0;

    .line 8
    .line 9
    iget-object v4, p0, Len0;->u:Lu33;

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    sget-object v8, Lri0;->n:Lri0;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    if-eq v0, v6, :cond_1

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v7

    .line 32
    :cond_1
    iget-object v0, p0, Len0;->r:Lu33;

    .line 33
    .line 34
    iget-object v6, p0, Len0;->t:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v6, Ls51;

    .line 37
    .line 38
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Len0;->t:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Ls51;

    .line 48
    .line 49
    invoke-virtual {v3}, Lfn0;->i()Lvs1;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object p1, p0, Len0;->t:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v4, p0, Len0;->r:Lu33;

    .line 56
    .line 57
    iput v6, p0, Len0;->s:I

    .line 58
    .line 59
    invoke-interface {v0, p0}, Lvs1;->c(Len0;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne v0, v8, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object v6, p1

    .line 67
    move-object p1, v0

    .line 68
    move-object v0, v4

    .line 69
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iput p1, v0, Lu33;->n:I

    .line 76
    .line 77
    iput-object v7, p0, Len0;->t:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v7, p0, Len0;->r:Lu33;

    .line 80
    .line 81
    iput v5, p0, Len0;->s:I

    .line 82
    .line 83
    iget-object p1, v6, Lj51;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_8

    .line 90
    .line 91
    iget-object p1, v6, Lj51;->a:Ljava/io/File;

    .line 92
    .line 93
    new-instance v0, Lcn0;

    .line 94
    .line 95
    invoke-direct {v0, v6, v2, v7}, Lcn0;-><init>(Ls51;Ljava/lang/Object;Ldh0;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0, p0}, Lzf5;->h(Ljava/io/File;Lpe1;Lfh0;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v8, :cond_4

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    move-object p1, v1

    .line 106
    :goto_1
    if-ne p1, v8, :cond_5

    .line 107
    .line 108
    :goto_2
    return-object v8

    .line 109
    :cond_5
    :goto_3
    iget-boolean p0, p0, Len0;->x:Z

    .line 110
    .line 111
    if-eqz p0, :cond_7

    .line 112
    .line 113
    iget-object p0, v3, Lfn0;->h:Lwu4;

    .line 114
    .line 115
    new-instance p1, Lam0;

    .line 116
    .line 117
    if-eqz v2, :cond_6

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    const/4 v0, 0x0

    .line 125
    :goto_4
    iget v3, v4, Lu33;->n:I

    .line 126
    .line 127
    invoke-direct {p1, v0, v3, v2}, Lam0;-><init>(IILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lwu4;->v(Lsr3;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    return-object v1

    .line 134
    :cond_8
    const-string p0, "This scope has already been closed."

    .line 135
    .line 136
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object v7
.end method
