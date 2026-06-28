.class public final Lna1;
.super Lkr0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leh3;
.implements Lfh1;
.implements Lfc0;
.implements Lco2;
.implements Lb24;


# static fields
.field public static final J:Lb21;


# instance fields
.field public D:Lvf2;

.field public final E:Lo;

.field public F:Lt91;

.field public G:Li02;

.field public H:Lmm2;

.field public final I:Lka1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb21;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lna1;->J:Lb21;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvf2;Lo;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lkr0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lna1;->D:Lvf2;

    .line 5
    .line 6
    iput-object p2, p0, Lna1;->E:Lo;

    .line 7
    .line 8
    new-instance v0, Lha1;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v1, 0x2

    .line 13
    const-class v3, Lna1;

    .line 14
    .line 15
    const-string v4, "onFocusStateChange"

    .line 16
    .line 17
    const-string v5, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v2, p0

    .line 21
    invoke-direct/range {v0 .. v8}, Lha1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Lka1;

    .line 25
    .line 26
    const/16 p1, 0xa

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p2, v0, p1}, Lka1;-><init>(ILdf1;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 33
    .line 34
    .line 35
    iput-object p0, v2, Lna1;->I:Lka1;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lna1;->G:Li02;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Li02;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lna1;->G:Li02;

    .line 10
    .line 11
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    new-instance v0, Lw33;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lh4;

    .line 7
    .line 8
    const/16 v2, 0xd

    .line 9
    .line 10
    invoke-direct {v1, v2, v0, p0}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1}, Lix;->H(Lmd2;Lne1;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Li02;

    .line 19
    .line 20
    iget-object v1, p0, Lna1;->I:Lka1;

    .line 21
    .line 22
    invoke-virtual {v1}, Lka1;->L0()Lfa1;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lfa1;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lna1;->G:Li02;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Li02;->b()V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Li02;->a()Li02;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    iput-object v0, p0, Lna1;->G:Li02;

    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final J0(Lvf2;Lws1;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lmd2;->u0()Lqi0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lbh0;

    .line 10
    .line 11
    iget-object v0, v0, Lbh0;->n:Lhi0;

    .line 12
    .line 13
    sget-object v1, Lmj1;->W:Lmj1;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lhi0;->K(Lgi0;)Lfi0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ltu1;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v1, Lm;

    .line 25
    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    invoke-direct {v1, v2, p1, p2}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ltu1;->V(Lpe1;)Ljv0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v4, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v4, v5

    .line 38
    :goto_0
    invoke-virtual {p0}, Lmd2;->u0()Lqi0;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v1, Lp;

    .line 43
    .line 44
    const/16 v6, 0xd

    .line 45
    .line 46
    move-object v2, p1

    .line 47
    move-object v3, p2

    .line 48
    invoke-direct/range {v1 .. v6}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x3

    .line 52
    invoke-static {p0, v5, v5, v1, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    move-object v2, p1

    .line 57
    move-object v3, p2

    .line 58
    invoke-virtual {v2, v3}, Lvf2;->c(Lws1;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final K0()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, Lmd2;->n:Lmd2;

    .line 6
    .line 7
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "visitAncestors called on an unattached node"

    .line 12
    .line 13
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lmd2;->n:Lmd2;

    .line 17
    .line 18
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 19
    .line 20
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    if-eqz p0, :cond_c

    .line 25
    .line 26
    iget-object v1, p0, Lxy1;->S:Lbo;

    .line 27
    .line 28
    iget-object v1, v1, Lbo;->g:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lmd2;

    .line 31
    .line 32
    iget v1, v1, Lmd2;->q:I

    .line 33
    .line 34
    const/high16 v2, 0x40000

    .line 35
    .line 36
    and-int/2addr v1, v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_a

    .line 39
    .line 40
    :goto_1
    if-eqz v0, :cond_a

    .line 41
    .line 42
    iget v1, v0, Lmd2;->p:I

    .line 43
    .line 44
    and-int/2addr v1, v2

    .line 45
    if-eqz v1, :cond_9

    .line 46
    .line 47
    move-object v1, v0

    .line 48
    move-object v4, v3

    .line 49
    :goto_2
    if-eqz v1, :cond_9

    .line 50
    .line 51
    instance-of v5, v1, Lb24;

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    move-object v5, v1

    .line 56
    check-cast v5, Lb24;

    .line 57
    .line 58
    invoke-interface {v5}, Lb24;->n()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    sget-object v6, Loa1;->B:Lqz0;

    .line 63
    .line 64
    if-eq v6, v5, :cond_1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    return-void

    .line 68
    :cond_2
    :goto_3
    iget v5, v1, Lmd2;->p:I

    .line 69
    .line 70
    and-int/2addr v5, v2

    .line 71
    if-eqz v5, :cond_8

    .line 72
    .line 73
    instance-of v5, v1, Lkr0;

    .line 74
    .line 75
    if-eqz v5, :cond_8

    .line 76
    .line 77
    move-object v5, v1

    .line 78
    check-cast v5, Lkr0;

    .line 79
    .line 80
    iget-object v5, v5, Lkr0;->C:Lmd2;

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    :goto_4
    const/4 v7, 0x1

    .line 84
    if-eqz v5, :cond_7

    .line 85
    .line 86
    iget v8, v5, Lmd2;->p:I

    .line 87
    .line 88
    and-int/2addr v8, v2

    .line 89
    if-eqz v8, :cond_6

    .line 90
    .line 91
    add-int/lit8 v6, v6, 0x1

    .line 92
    .line 93
    if-ne v6, v7, :cond_3

    .line 94
    .line 95
    move-object v1, v5

    .line 96
    goto :goto_5

    .line 97
    :cond_3
    if-nez v4, :cond_4

    .line 98
    .line 99
    new-instance v4, Lug2;

    .line 100
    .line 101
    const/16 v7, 0x10

    .line 102
    .line 103
    new-array v7, v7, [Lmd2;

    .line 104
    .line 105
    invoke-direct {v4, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    if-eqz v1, :cond_5

    .line 109
    .line 110
    invoke-virtual {v4, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object v1, v3

    .line 114
    :cond_5
    invoke-virtual {v4, v5}, Lug2;->c(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_5
    iget-object v5, v5, Lmd2;->s:Lmd2;

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_7
    if-ne v6, v7, :cond_8

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    invoke-static {v4}, Lw80;->g(Lug2;)Lmd2;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_2

    .line 128
    :cond_9
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_a
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-eqz p0, :cond_b

    .line 136
    .line 137
    iget-object v0, p0, Lxy1;->S:Lbo;

    .line 138
    .line 139
    if-eqz v0, :cond_b

    .line 140
    .line 141
    iget-object v0, v0, Lbo;->f:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Lgw3;

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_b
    move-object v0, v3

    .line 147
    goto :goto_0

    .line 148
    :cond_c
    return-void
.end method

.method public final L0(Lvf2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lna1;->D:Lvf2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lna1;->D:Lvf2;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lna1;->F:Lt91;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v2, Lu91;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lu91;-><init>(Lt91;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lvf2;->c(Lws1;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lna1;->F:Lt91;

    .line 27
    .line 28
    iput-object p1, p0, Lna1;->D:Lvf2;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final a0(Lph3;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lna1;->I:Lka1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lka1;->L0()Lfa1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lfa1;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 12
    .line 13
    sget-object v1, Llh3;->l:Loh3;

    .line 14
    .line 15
    sget-object v2, Lnh3;->a:[Lkx1;

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    aget-object v2, v2, v3

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v1, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lh9;

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    const-class v5, Lna1;

    .line 33
    .line 34
    const-string v6, "requestFocus"

    .line 35
    .line 36
    const-string v7, "requestFocus()Z"

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    move-object v4, p0

    .line 40
    invoke-direct/range {v2 .. v10}, Lh9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lah3;->v:Loh3;

    .line 44
    .line 45
    new-instance v0, Lo2;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, v1, v2}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p0, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final n()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lna1;->J:Lb21;

    .line 2
    .line 3
    return-object p0
.end method

.method public final r(Lmm2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lna1;->H:Lmm2;

    .line 2
    .line 3
    iget-object v0, p0, Lna1;->I:Lka1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lka1;->L0()Lfa1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lfa1;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lmm2;->O0()Lmd2;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-boolean p1, p1, Lmd2;->A:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lna1;->H:Lmm2;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lmm2;->O0()Lmd2;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-boolean p1, p1, Lmd2;->A:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lna1;->K0()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    invoke-virtual {p0}, Lna1;->K0()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
