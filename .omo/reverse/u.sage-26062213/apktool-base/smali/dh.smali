.class public final Ldh;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ly91;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object p1, Ltd3;->a:[J

    .line 8
    .line 9
    new-instance p1, Lkg2;

    .line 10
    .line 11
    invoke-direct {p1}, Lkg2;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ldh;->a:Ljava/lang/Object;

    .line 15
    .line 16
    sget-object p1, Lud3;->a:Llg2;

    .line 17
    .line 18
    new-instance p1, Llg2;

    .line 19
    .line 20
    invoke-direct {p1}, Llg2;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ldh;->c:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Ldh;->g:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Ldh;->d:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Ldh;->e:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Ldh;->f:Ljava/lang/Object;

    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Ldh;->h:Ljava/lang/Object;

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Ldh;->a:Ljava/lang/Object;

    .line 71
    .line 72
    new-instance v0, Lss2;

    .line 73
    .line 74
    const/high16 v1, 0x3f800000    # 1.0f

    .line 75
    .line 76
    invoke-direct {v0, v1}, Lss2;-><init>(F)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Ldh;->b:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Ldh;->c:Ljava/lang/Object;

    .line 86
    .line 87
    new-instance v0, Lss2;

    .line 88
    .line 89
    invoke-direct {v0, v1}, Lss2;-><init>(F)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Ldh;->d:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Ldh;->e:Ljava/lang/Object;

    .line 99
    .line 100
    sget-wide v0, Lf14;->b:J

    .line 101
    .line 102
    new-instance v2, Lf14;

    .line 103
    .line 104
    invoke-direct {v2, v0, v1}, Lf14;-><init>(J)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Ldh;->f:Ljava/lang/Object;

    .line 112
    .line 113
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Ldh;->g:Ljava/lang/Object;

    .line 118
    .line 119
    sget-wide v0, Lt70;->e:J

    .line 120
    .line 121
    new-instance p1, Lt70;

    .line 122
    .line 123
    invoke-direct {p1, v0, v1}, Lt70;-><init>(J)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Ldh;->h:Ljava/lang/Object;

    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgw4;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Ldh;->a:Ljava/lang/Object;

    .line 142
    iput-object p2, p0, Ldh;->b:Ljava/lang/Object;

    .line 143
    iput-object p3, p0, Ldh;->g:Ljava/lang/Object;

    .line 144
    iput-object p4, p0, Ldh;->c:Ljava/lang/Object;

    .line 145
    iput-object p5, p0, Ldh;->d:Ljava/lang/Object;

    .line 146
    iput-object p6, p0, Ldh;->e:Ljava/lang/Object;

    .line 147
    iput-object p7, p0, Ldh;->f:Ljava/lang/Object;

    .line 148
    iput-object p8, p0, Ldh;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq9;Lq9;)V
    .locals 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Ldh;->a:Ljava/lang/Object;

    .line 135
    iput-object p2, p0, Ldh;->b:Ljava/lang/Object;

    .line 136
    new-instance p1, Lka1;

    const/4 v0, 0x0

    const/16 v1, 0xe

    const/4 v2, 0x2

    invoke-direct {p1, v2, v0, v1}, Lka1;-><init>(ILdf1;I)V

    iput-object p1, p0, Ldh;->c:Ljava/lang/Object;

    .line 137
    new-instance p1, Lw91;

    invoke-direct {p1, p0, p2}, Lw91;-><init>(Ldh;Lq9;)V

    iput-object p1, p0, Ldh;->d:Ljava/lang/Object;

    .line 138
    new-instance p1, Lz91;

    invoke-direct {p1, p0}, Lz91;-><init>(Ldh;)V

    iput-object p1, p0, Ldh;->e:Ljava/lang/Object;

    .line 139
    new-instance p1, Ldg2;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ldg2;-><init>(I)V

    iput-object p1, p0, Ldh;->g:Ljava/lang/Object;

    return-void
.end method

.method public static m([ILg12;Z)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget v1, p0, v0

    .line 6
    .line 7
    invoke-static {p1, p2}, Lc75;->L(Lg12;Z)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr p1, v1

    .line 12
    aput p1, p0, v0

    .line 13
    .line 14
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method


# virtual methods
.method public a(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ldh;->f()Lka1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Ldh;->f()Lka1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1}, Ldh;->k(Lka1;)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_c

    .line 19
    .line 20
    sget-object p0, Lfa1;->n:Lfa1;

    .line 21
    .line 22
    sget-object v2, Lfa1;->p:Lfa1;

    .line 23
    .line 24
    invoke-virtual {p1, p0, v2}, Lka1;->H0(Lfa1;Lfa1;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p1, Lmd2;->n:Lmd2;

    .line 28
    .line 29
    iget-boolean p0, p0, Lmd2;->A:Z

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    const-string p0, "visitAncestors called on an unattached node"

    .line 34
    .line 35
    invoke-static {p0}, Lar1;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p0, p1, Lmd2;->n:Lmd2;

    .line 39
    .line 40
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 41
    .line 42
    invoke-static {p1}, Lw80;->R(Ljr0;)Lxy1;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_0
    if-eqz p1, :cond_c

    .line 47
    .line 48
    iget-object v3, p1, Lxy1;->S:Lbo;

    .line 49
    .line 50
    iget-object v3, v3, Lbo;->g:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lmd2;

    .line 53
    .line 54
    iget v3, v3, Lmd2;->q:I

    .line 55
    .line 56
    and-int/lit16 v3, v3, 0x400

    .line 57
    .line 58
    if-eqz v3, :cond_a

    .line 59
    .line 60
    :goto_1
    if-eqz p0, :cond_a

    .line 61
    .line 62
    iget v3, p0, Lmd2;->p:I

    .line 63
    .line 64
    and-int/lit16 v3, v3, 0x400

    .line 65
    .line 66
    if-eqz v3, :cond_9

    .line 67
    .line 68
    move-object v3, p0

    .line 69
    move-object v4, v1

    .line 70
    :goto_2
    if-eqz v3, :cond_9

    .line 71
    .line 72
    instance-of v5, v3, Lka1;

    .line 73
    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    check-cast v3, Lka1;

    .line 77
    .line 78
    sget-object v5, Lfa1;->o:Lfa1;

    .line 79
    .line 80
    invoke-virtual {v3, v5, v2}, Lka1;->H0(Lfa1;Lfa1;)V

    .line 81
    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_2
    iget v5, v3, Lmd2;->p:I

    .line 85
    .line 86
    and-int/lit16 v5, v5, 0x400

    .line 87
    .line 88
    if-eqz v5, :cond_8

    .line 89
    .line 90
    instance-of v5, v3, Lkr0;

    .line 91
    .line 92
    if-eqz v5, :cond_8

    .line 93
    .line 94
    move-object v5, v3

    .line 95
    check-cast v5, Lkr0;

    .line 96
    .line 97
    iget-object v5, v5, Lkr0;->C:Lmd2;

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    :goto_3
    if-eqz v5, :cond_7

    .line 101
    .line 102
    iget v7, v5, Lmd2;->p:I

    .line 103
    .line 104
    and-int/lit16 v7, v7, 0x400

    .line 105
    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    .line 110
    if-ne v6, v0, :cond_3

    .line 111
    .line 112
    move-object v3, v5

    .line 113
    goto :goto_4

    .line 114
    :cond_3
    if-nez v4, :cond_4

    .line 115
    .line 116
    new-instance v4, Lug2;

    .line 117
    .line 118
    const/16 v7, 0x10

    .line 119
    .line 120
    new-array v7, v7, [Lmd2;

    .line 121
    .line 122
    invoke-direct {v4, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    if-eqz v3, :cond_5

    .line 126
    .line 127
    invoke-virtual {v4, v3}, Lug2;->c(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    move-object v3, v1

    .line 131
    :cond_5
    invoke-virtual {v4, v5}, Lug2;->c(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_4
    iget-object v5, v5, Lmd2;->s:Lmd2;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    if-ne v6, v0, :cond_8

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    :goto_5
    invoke-static {v4}, Lw80;->g(Lug2;)Lmd2;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    goto :goto_2

    .line 145
    :cond_9
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_a
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_b

    .line 153
    .line 154
    iget-object p0, p1, Lxy1;->S:Lbo;

    .line 155
    .line 156
    if-eqz p0, :cond_b

    .line 157
    .line 158
    iget-object p0, p0, Lbo;->f:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p0, Lgw3;

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_b
    move-object p0, v1

    .line 164
    goto :goto_0

    .line 165
    :cond_c
    :goto_6
    return v0
.end method

.method public b(IZZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Ldh;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lka1;

    .line 7
    .line 8
    invoke-static {v1, p1}, Ln44;->A0(Lka1;I)Lfl0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 29
    .line 30
    .line 31
    return p2

    .line 32
    :cond_1
    :goto_0
    move v0, p2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0, p2}, Ldh;->a(Z)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {p0, p2}, Ldh;->a(Z)Z

    .line 39
    .line 40
    .line 41
    :goto_1
    if-eqz v0, :cond_4

    .line 42
    .line 43
    if-eqz p3, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Ldh;->c()V

    .line 46
    .line 47
    .line 48
    :cond_4
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object p0, p0, Ldh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lq9;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void

    .line 37
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public d(Landroid/view/KeyEvent;Lne1;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Ldh;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lka1;

    .line 4
    .line 5
    const-string v1, "FocusOwnerImpl:dispatchKeyEvent"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Ldh;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lw91;

    .line 13
    .line 14
    iget-boolean v1, v1, Lw91;->e:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string p0, "FocusRelatedWarning: Dispatching key event while focus system is invalidated."

    .line 20
    .line 21
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ldh;->n(Landroid/view/KeyEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    :try_start_2
    invoke-static {v0}, Lgg4;->u(Lka1;)Lka1;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    const-string v1, "visitAncestors called on an unattached node"

    .line 45
    .line 46
    const/16 v3, 0x10

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x1

    .line 50
    if-eqz p0, :cond_7

    .line 51
    .line 52
    :try_start_3
    iget-object v6, p0, Lmd2;->n:Lmd2;

    .line 53
    .line 54
    iget-boolean v6, v6, Lmd2;->A:Z

    .line 55
    .line 56
    if-nez v6, :cond_2

    .line 57
    .line 58
    const-string v6, "visitLocalDescendants called on an unattached node"

    .line 59
    .line 60
    invoke-static {v6}, Lar1;->b(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v6, p0, Lmd2;->n:Lmd2;

    .line 64
    .line 65
    iget v7, v6, Lmd2;->q:I

    .line 66
    .line 67
    and-int/lit16 v7, v7, 0x2400

    .line 68
    .line 69
    if-eqz v7, :cond_5

    .line 70
    .line 71
    iget-object v6, v6, Lmd2;->s:Lmd2;

    .line 72
    .line 73
    move-object v7, v4

    .line 74
    :goto_0
    if-eqz v6, :cond_6

    .line 75
    .line 76
    iget v8, v6, Lmd2;->p:I

    .line 77
    .line 78
    and-int/lit16 v9, v8, 0x2400

    .line 79
    .line 80
    if-eqz v9, :cond_4

    .line 81
    .line 82
    and-int/lit16 v8, v8, 0x400

    .line 83
    .line 84
    if-eqz v8, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move-object v7, v6

    .line 88
    :cond_4
    iget-object v6, v6, Lmd2;->s:Lmd2;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    move-object v7, v4

    .line 92
    :cond_6
    :goto_1
    if-nez v7, :cond_22

    .line 93
    .line 94
    :cond_7
    if-eqz p0, :cond_14

    .line 95
    .line 96
    iget-object v6, p0, Lmd2;->n:Lmd2;

    .line 97
    .line 98
    iget-boolean v6, v6, Lmd2;->A:Z

    .line 99
    .line 100
    if-nez v6, :cond_8

    .line 101
    .line 102
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_8
    iget-object v6, p0, Lmd2;->n:Lmd2;

    .line 106
    .line 107
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    :goto_2
    if-eqz p0, :cond_13

    .line 112
    .line 113
    iget-object v7, p0, Lxy1;->S:Lbo;

    .line 114
    .line 115
    iget-object v7, v7, Lbo;->g:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v7, Lmd2;

    .line 118
    .line 119
    iget v7, v7, Lmd2;->q:I

    .line 120
    .line 121
    and-int/lit16 v7, v7, 0x2000

    .line 122
    .line 123
    if-eqz v7, :cond_11

    .line 124
    .line 125
    :goto_3
    if-eqz v6, :cond_11

    .line 126
    .line 127
    iget v7, v6, Lmd2;->p:I

    .line 128
    .line 129
    and-int/lit16 v7, v7, 0x2000

    .line 130
    .line 131
    if-eqz v7, :cond_10

    .line 132
    .line 133
    move-object v8, v4

    .line 134
    move-object v7, v6

    .line 135
    :goto_4
    if-eqz v7, :cond_10

    .line 136
    .line 137
    instance-of v9, v7, Lpx1;

    .line 138
    .line 139
    if-eqz v9, :cond_9

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_9
    iget v9, v7, Lmd2;->p:I

    .line 143
    .line 144
    and-int/lit16 v9, v9, 0x2000

    .line 145
    .line 146
    if-eqz v9, :cond_f

    .line 147
    .line 148
    instance-of v9, v7, Lkr0;

    .line 149
    .line 150
    if-eqz v9, :cond_f

    .line 151
    .line 152
    move-object v9, v7

    .line 153
    check-cast v9, Lkr0;

    .line 154
    .line 155
    iget-object v9, v9, Lkr0;->C:Lmd2;

    .line 156
    .line 157
    move v10, v2

    .line 158
    :goto_5
    if-eqz v9, :cond_e

    .line 159
    .line 160
    iget v11, v9, Lmd2;->p:I

    .line 161
    .line 162
    and-int/lit16 v11, v11, 0x2000

    .line 163
    .line 164
    if-eqz v11, :cond_d

    .line 165
    .line 166
    add-int/lit8 v10, v10, 0x1

    .line 167
    .line 168
    if-ne v10, v5, :cond_a

    .line 169
    .line 170
    move-object v7, v9

    .line 171
    goto :goto_6

    .line 172
    :cond_a
    if-nez v8, :cond_b

    .line 173
    .line 174
    new-instance v8, Lug2;

    .line 175
    .line 176
    new-array v11, v3, [Lmd2;

    .line 177
    .line 178
    invoke-direct {v8, v11}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_b
    if-eqz v7, :cond_c

    .line 182
    .line 183
    invoke-virtual {v8, v7}, Lug2;->c(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    move-object v7, v4

    .line 187
    :cond_c
    invoke-virtual {v8, v9}, Lug2;->c(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_d
    :goto_6
    iget-object v9, v9, Lmd2;->s:Lmd2;

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_e
    if-ne v10, v5, :cond_f

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_f
    invoke-static {v8}, Lw80;->g(Lug2;)Lmd2;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    goto :goto_4

    .line 201
    :cond_10
    iget-object v6, v6, Lmd2;->r:Lmd2;

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_11
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    if-eqz p0, :cond_12

    .line 209
    .line 210
    iget-object v6, p0, Lxy1;->S:Lbo;

    .line 211
    .line 212
    if-eqz v6, :cond_12

    .line 213
    .line 214
    iget-object v6, v6, Lbo;->f:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v6, Lgw3;

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_12
    move-object v6, v4

    .line 220
    goto :goto_2

    .line 221
    :cond_13
    move-object v7, v4

    .line 222
    :goto_7
    check-cast v7, Lpx1;

    .line 223
    .line 224
    if-eqz v7, :cond_14

    .line 225
    .line 226
    check-cast v7, Lmd2;

    .line 227
    .line 228
    iget-object v7, v7, Lmd2;->n:Lmd2;

    .line 229
    .line 230
    goto/16 :goto_e

    .line 231
    .line 232
    :cond_14
    iget-object p0, v0, Lmd2;->n:Lmd2;

    .line 233
    .line 234
    iget-boolean p0, p0, Lmd2;->A:Z

    .line 235
    .line 236
    if-nez p0, :cond_15

    .line 237
    .line 238
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_15
    iget-object p0, v0, Lmd2;->n:Lmd2;

    .line 242
    .line 243
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 244
    .line 245
    invoke-static {v0}, Lw80;->R(Ljr0;)Lxy1;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    :goto_8
    if-eqz v0, :cond_20

    .line 250
    .line 251
    iget-object v6, v0, Lxy1;->S:Lbo;

    .line 252
    .line 253
    iget-object v6, v6, Lbo;->g:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v6, Lmd2;

    .line 256
    .line 257
    iget v6, v6, Lmd2;->q:I

    .line 258
    .line 259
    and-int/lit16 v6, v6, 0x2000

    .line 260
    .line 261
    if-eqz v6, :cond_1e

    .line 262
    .line 263
    :goto_9
    if-eqz p0, :cond_1e

    .line 264
    .line 265
    iget v6, p0, Lmd2;->p:I

    .line 266
    .line 267
    and-int/lit16 v6, v6, 0x2000

    .line 268
    .line 269
    if-eqz v6, :cond_1d

    .line 270
    .line 271
    move-object v6, p0

    .line 272
    move-object v7, v4

    .line 273
    :goto_a
    if-eqz v6, :cond_1d

    .line 274
    .line 275
    instance-of v8, v6, Lpx1;

    .line 276
    .line 277
    if-eqz v8, :cond_16

    .line 278
    .line 279
    goto :goto_d

    .line 280
    :cond_16
    iget v8, v6, Lmd2;->p:I

    .line 281
    .line 282
    and-int/lit16 v8, v8, 0x2000

    .line 283
    .line 284
    if-eqz v8, :cond_1c

    .line 285
    .line 286
    instance-of v8, v6, Lkr0;

    .line 287
    .line 288
    if-eqz v8, :cond_1c

    .line 289
    .line 290
    move-object v8, v6

    .line 291
    check-cast v8, Lkr0;

    .line 292
    .line 293
    iget-object v8, v8, Lkr0;->C:Lmd2;

    .line 294
    .line 295
    move v9, v2

    .line 296
    :goto_b
    if-eqz v8, :cond_1b

    .line 297
    .line 298
    iget v10, v8, Lmd2;->p:I

    .line 299
    .line 300
    and-int/lit16 v10, v10, 0x2000

    .line 301
    .line 302
    if-eqz v10, :cond_1a

    .line 303
    .line 304
    add-int/lit8 v9, v9, 0x1

    .line 305
    .line 306
    if-ne v9, v5, :cond_17

    .line 307
    .line 308
    move-object v6, v8

    .line 309
    goto :goto_c

    .line 310
    :cond_17
    if-nez v7, :cond_18

    .line 311
    .line 312
    new-instance v7, Lug2;

    .line 313
    .line 314
    new-array v10, v3, [Lmd2;

    .line 315
    .line 316
    invoke-direct {v7, v10}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_18
    if-eqz v6, :cond_19

    .line 320
    .line 321
    invoke-virtual {v7, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    move-object v6, v4

    .line 325
    :cond_19
    invoke-virtual {v7, v8}, Lug2;->c(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    :cond_1a
    :goto_c
    iget-object v8, v8, Lmd2;->s:Lmd2;

    .line 329
    .line 330
    goto :goto_b

    .line 331
    :cond_1b
    if-ne v9, v5, :cond_1c

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_1c
    invoke-static {v7}, Lw80;->g(Lug2;)Lmd2;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    goto :goto_a

    .line 339
    :cond_1d
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_1e
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-eqz v0, :cond_1f

    .line 347
    .line 348
    iget-object p0, v0, Lxy1;->S:Lbo;

    .line 349
    .line 350
    if-eqz p0, :cond_1f

    .line 351
    .line 352
    iget-object p0, p0, Lbo;->f:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast p0, Lgw3;

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_1f
    move-object p0, v4

    .line 358
    goto :goto_8

    .line 359
    :cond_20
    move-object v6, v4

    .line 360
    :goto_d
    check-cast v6, Lpx1;

    .line 361
    .line 362
    if-eqz v6, :cond_21

    .line 363
    .line 364
    check-cast v6, Lmd2;

    .line 365
    .line 366
    iget-object v7, v6, Lmd2;->n:Lmd2;

    .line 367
    .line 368
    goto :goto_e

    .line 369
    :cond_21
    move-object v7, v4

    .line 370
    :cond_22
    :goto_e
    if-eqz v7, :cond_45

    .line 371
    .line 372
    iget-object p0, v7, Lmd2;->n:Lmd2;

    .line 373
    .line 374
    iget-boolean p0, p0, Lmd2;->A:Z

    .line 375
    .line 376
    if-nez p0, :cond_23

    .line 377
    .line 378
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    :cond_23
    iget-object p0, v7, Lmd2;->n:Lmd2;

    .line 382
    .line 383
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 384
    .line 385
    invoke-static {v7}, Lw80;->R(Ljr0;)Lxy1;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    move-object v1, v4

    .line 390
    :goto_f
    if-eqz v0, :cond_2f

    .line 391
    .line 392
    iget-object v6, v0, Lxy1;->S:Lbo;

    .line 393
    .line 394
    iget-object v6, v6, Lbo;->g:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v6, Lmd2;

    .line 397
    .line 398
    iget v6, v6, Lmd2;->q:I

    .line 399
    .line 400
    and-int/lit16 v6, v6, 0x2000

    .line 401
    .line 402
    if-eqz v6, :cond_2d

    .line 403
    .line 404
    :goto_10
    if-eqz p0, :cond_2d

    .line 405
    .line 406
    iget v6, p0, Lmd2;->p:I

    .line 407
    .line 408
    and-int/lit16 v6, v6, 0x2000

    .line 409
    .line 410
    if-eqz v6, :cond_2c

    .line 411
    .line 412
    move-object v6, p0

    .line 413
    move-object v8, v4

    .line 414
    :goto_11
    if-eqz v6, :cond_2c

    .line 415
    .line 416
    instance-of v9, v6, Lpx1;

    .line 417
    .line 418
    if-eqz v9, :cond_25

    .line 419
    .line 420
    if-nez v1, :cond_24

    .line 421
    .line 422
    new-instance v1, Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .line 426
    .line 427
    :cond_24
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move v9, v2

    .line 431
    goto :goto_12

    .line 432
    :cond_25
    move v9, v5

    .line 433
    :goto_12
    if-eqz v9, :cond_2b

    .line 434
    .line 435
    iget v9, v6, Lmd2;->p:I

    .line 436
    .line 437
    and-int/lit16 v9, v9, 0x2000

    .line 438
    .line 439
    if-eqz v9, :cond_2b

    .line 440
    .line 441
    instance-of v9, v6, Lkr0;

    .line 442
    .line 443
    if-eqz v9, :cond_2b

    .line 444
    .line 445
    move-object v9, v6

    .line 446
    check-cast v9, Lkr0;

    .line 447
    .line 448
    iget-object v9, v9, Lkr0;->C:Lmd2;

    .line 449
    .line 450
    move v10, v2

    .line 451
    :goto_13
    if-eqz v9, :cond_2a

    .line 452
    .line 453
    iget v11, v9, Lmd2;->p:I

    .line 454
    .line 455
    and-int/lit16 v11, v11, 0x2000

    .line 456
    .line 457
    if-eqz v11, :cond_29

    .line 458
    .line 459
    add-int/lit8 v10, v10, 0x1

    .line 460
    .line 461
    if-ne v10, v5, :cond_26

    .line 462
    .line 463
    move-object v6, v9

    .line 464
    goto :goto_14

    .line 465
    :cond_26
    if-nez v8, :cond_27

    .line 466
    .line 467
    new-instance v8, Lug2;

    .line 468
    .line 469
    new-array v11, v3, [Lmd2;

    .line 470
    .line 471
    invoke-direct {v8, v11}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    :cond_27
    if-eqz v6, :cond_28

    .line 475
    .line 476
    invoke-virtual {v8, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    move-object v6, v4

    .line 480
    :cond_28
    invoke-virtual {v8, v9}, Lug2;->c(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    :cond_29
    :goto_14
    iget-object v9, v9, Lmd2;->s:Lmd2;

    .line 484
    .line 485
    goto :goto_13

    .line 486
    :cond_2a
    if-ne v10, v5, :cond_2b

    .line 487
    .line 488
    goto :goto_11

    .line 489
    :cond_2b
    invoke-static {v8}, Lw80;->g(Lug2;)Lmd2;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    goto :goto_11

    .line 494
    :cond_2c
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 495
    .line 496
    goto :goto_10

    .line 497
    :cond_2d
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    if-eqz v0, :cond_2e

    .line 502
    .line 503
    iget-object p0, v0, Lxy1;->S:Lbo;

    .line 504
    .line 505
    if-eqz p0, :cond_2e

    .line 506
    .line 507
    iget-object p0, p0, Lbo;->f:Ljava/lang/Object;

    .line 508
    .line 509
    check-cast p0, Lgw3;

    .line 510
    .line 511
    goto :goto_f

    .line 512
    :cond_2e
    move-object p0, v4

    .line 513
    goto :goto_f

    .line 514
    :cond_2f
    if-eqz v1, :cond_32

    .line 515
    .line 516
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 517
    .line 518
    .line 519
    move-result p0

    .line 520
    add-int/lit8 p0, p0, -0x1

    .line 521
    .line 522
    if-ltz p0, :cond_32

    .line 523
    .line 524
    :goto_15
    add-int/lit8 v0, p0, -0x1

    .line 525
    .line 526
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object p0

    .line 530
    check-cast p0, Lpx1;

    .line 531
    .line 532
    invoke-interface {p0, p1}, Lpx1;->j(Landroid/view/KeyEvent;)Z

    .line 533
    .line 534
    .line 535
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 536
    if-eqz p0, :cond_30

    .line 537
    .line 538
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 539
    .line 540
    .line 541
    return v5

    .line 542
    :cond_30
    if-gez v0, :cond_31

    .line 543
    .line 544
    goto :goto_16

    .line 545
    :cond_31
    move p0, v0

    .line 546
    goto :goto_15

    .line 547
    :cond_32
    :goto_16
    :try_start_4
    iget-object p0, v7, Lmd2;->n:Lmd2;

    .line 548
    .line 549
    move-object v0, v4

    .line 550
    :goto_17
    if-eqz p0, :cond_3a

    .line 551
    .line 552
    instance-of v6, p0, Lpx1;

    .line 553
    .line 554
    if-eqz v6, :cond_33

    .line 555
    .line 556
    check-cast p0, Lpx1;

    .line 557
    .line 558
    invoke-interface {p0, p1}, Lpx1;->j(Landroid/view/KeyEvent;)Z

    .line 559
    .line 560
    .line 561
    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 562
    if-eqz p0, :cond_39

    .line 563
    .line 564
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 565
    .line 566
    .line 567
    return v5

    .line 568
    :cond_33
    :try_start_5
    iget v6, p0, Lmd2;->p:I

    .line 569
    .line 570
    and-int/lit16 v6, v6, 0x2000

    .line 571
    .line 572
    if-eqz v6, :cond_39

    .line 573
    .line 574
    instance-of v6, p0, Lkr0;

    .line 575
    .line 576
    if-eqz v6, :cond_39

    .line 577
    .line 578
    move-object v6, p0

    .line 579
    check-cast v6, Lkr0;

    .line 580
    .line 581
    iget-object v6, v6, Lkr0;->C:Lmd2;

    .line 582
    .line 583
    move v8, v2

    .line 584
    :goto_18
    if-eqz v6, :cond_38

    .line 585
    .line 586
    iget v9, v6, Lmd2;->p:I

    .line 587
    .line 588
    and-int/lit16 v9, v9, 0x2000

    .line 589
    .line 590
    if-eqz v9, :cond_37

    .line 591
    .line 592
    add-int/lit8 v8, v8, 0x1

    .line 593
    .line 594
    if-ne v8, v5, :cond_34

    .line 595
    .line 596
    move-object p0, v6

    .line 597
    goto :goto_19

    .line 598
    :cond_34
    if-nez v0, :cond_35

    .line 599
    .line 600
    new-instance v0, Lug2;

    .line 601
    .line 602
    new-array v9, v3, [Lmd2;

    .line 603
    .line 604
    invoke-direct {v0, v9}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    :cond_35
    if-eqz p0, :cond_36

    .line 608
    .line 609
    invoke-virtual {v0, p0}, Lug2;->c(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    move-object p0, v4

    .line 613
    :cond_36
    invoke-virtual {v0, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    :cond_37
    :goto_19
    iget-object v6, v6, Lmd2;->s:Lmd2;

    .line 617
    .line 618
    goto :goto_18

    .line 619
    :cond_38
    if-ne v8, v5, :cond_39

    .line 620
    .line 621
    goto :goto_17

    .line 622
    :cond_39
    invoke-static {v0}, Lw80;->g(Lug2;)Lmd2;

    .line 623
    .line 624
    .line 625
    move-result-object p0

    .line 626
    goto :goto_17

    .line 627
    :cond_3a
    invoke-interface {p2}, Lne1;->a()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object p0

    .line 631
    check-cast p0, Ljava/lang/Boolean;

    .line 632
    .line 633
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 634
    .line 635
    .line 636
    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 637
    if-eqz p0, :cond_3b

    .line 638
    .line 639
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 640
    .line 641
    .line 642
    return v5

    .line 643
    :cond_3b
    :try_start_6
    iget-object p0, v7, Lmd2;->n:Lmd2;

    .line 644
    .line 645
    move-object p2, v4

    .line 646
    :goto_1a
    if-eqz p0, :cond_43

    .line 647
    .line 648
    instance-of v0, p0, Lpx1;

    .line 649
    .line 650
    if-eqz v0, :cond_3c

    .line 651
    .line 652
    check-cast p0, Lpx1;

    .line 653
    .line 654
    invoke-interface {p0, p1}, Lpx1;->R(Landroid/view/KeyEvent;)Z

    .line 655
    .line 656
    .line 657
    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 658
    if-eqz p0, :cond_42

    .line 659
    .line 660
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 661
    .line 662
    .line 663
    return v5

    .line 664
    :cond_3c
    :try_start_7
    iget v0, p0, Lmd2;->p:I

    .line 665
    .line 666
    and-int/lit16 v0, v0, 0x2000

    .line 667
    .line 668
    if-eqz v0, :cond_42

    .line 669
    .line 670
    instance-of v0, p0, Lkr0;

    .line 671
    .line 672
    if-eqz v0, :cond_42

    .line 673
    .line 674
    move-object v0, p0

    .line 675
    check-cast v0, Lkr0;

    .line 676
    .line 677
    iget-object v0, v0, Lkr0;->C:Lmd2;

    .line 678
    .line 679
    move v6, v2

    .line 680
    :goto_1b
    if-eqz v0, :cond_41

    .line 681
    .line 682
    iget v7, v0, Lmd2;->p:I

    .line 683
    .line 684
    and-int/lit16 v7, v7, 0x2000

    .line 685
    .line 686
    if-eqz v7, :cond_40

    .line 687
    .line 688
    add-int/lit8 v6, v6, 0x1

    .line 689
    .line 690
    if-ne v6, v5, :cond_3d

    .line 691
    .line 692
    move-object p0, v0

    .line 693
    goto :goto_1c

    .line 694
    :cond_3d
    if-nez p2, :cond_3e

    .line 695
    .line 696
    new-instance p2, Lug2;

    .line 697
    .line 698
    new-array v7, v3, [Lmd2;

    .line 699
    .line 700
    invoke-direct {p2, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    :cond_3e
    if-eqz p0, :cond_3f

    .line 704
    .line 705
    invoke-virtual {p2, p0}, Lug2;->c(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    move-object p0, v4

    .line 709
    :cond_3f
    invoke-virtual {p2, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    :cond_40
    :goto_1c
    iget-object v0, v0, Lmd2;->s:Lmd2;

    .line 713
    .line 714
    goto :goto_1b

    .line 715
    :cond_41
    if-ne v6, v5, :cond_42

    .line 716
    .line 717
    goto :goto_1a

    .line 718
    :cond_42
    invoke-static {p2}, Lw80;->g(Lug2;)Lmd2;

    .line 719
    .line 720
    .line 721
    move-result-object p0

    .line 722
    goto :goto_1a

    .line 723
    :cond_43
    if-eqz v1, :cond_45

    .line 724
    .line 725
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 726
    .line 727
    .line 728
    move-result p0

    .line 729
    move p2, v2

    .line 730
    :goto_1d
    if-ge p2, p0, :cond_45

    .line 731
    .line 732
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    check-cast v0, Lpx1;

    .line 737
    .line 738
    invoke-interface {v0, p1}, Lpx1;->R(Landroid/view/KeyEvent;)Z

    .line 739
    .line 740
    .line 741
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 742
    if-eqz v0, :cond_44

    .line 743
    .line 744
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 745
    .line 746
    .line 747
    return v5

    .line 748
    :cond_44
    add-int/lit8 p2, p2, 0x1

    .line 749
    .line 750
    goto :goto_1d

    .line 751
    :cond_45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 752
    .line 753
    .line 754
    return v2

    .line 755
    :catchall_0
    move-exception p0

    .line 756
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 757
    .line 758
    .line 759
    throw p0
.end method

.method public e(ILl33;Lpe1;)Ljava/lang/Boolean;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Ldh;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lq9;

    .line 12
    .line 13
    iget-object v5, v0, Ldh;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Lka1;

    .line 16
    .line 17
    invoke-static {v5}, Lgg4;->u(Lka1;)Lka1;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    const/4 v8, 0x4

    .line 22
    const/4 v9, 0x3

    .line 23
    const/4 v10, 0x6

    .line 24
    const/4 v11, 0x5

    .line 25
    const/4 v12, 0x2

    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    const/4 v15, 0x1

    .line 31
    if-eqz v6, :cond_25

    .line 32
    .line 33
    invoke-virtual {v4}, Lq9;->getLayoutDirection()Lhy1;

    .line 34
    .line 35
    .line 36
    move-result-object v18

    .line 37
    invoke-virtual {v6}, Lka1;->I0()Lca1;

    .line 38
    .line 39
    .line 40
    move-result-object v14

    .line 41
    iget-object v7, v14, Lca1;->h:Lea1;

    .line 42
    .line 43
    iget-object v13, v14, Lca1;->i:Lea1;

    .line 44
    .line 45
    if-ne v1, v15, :cond_0

    .line 46
    .line 47
    iget-object v7, v14, Lca1;->b:Lea1;

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_0
    if-ne v1, v12, :cond_1

    .line 52
    .line 53
    iget-object v7, v14, Lca1;->c:Lea1;

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    if-ne v1, v11, :cond_2

    .line 58
    .line 59
    iget-object v7, v14, Lca1;->d:Lea1;

    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_2
    if-ne v1, v10, :cond_3

    .line 64
    .line 65
    iget-object v7, v14, Lca1;->e:Lea1;

    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_3
    if-ne v1, v9, :cond_7

    .line 70
    .line 71
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-eqz v10, :cond_5

    .line 76
    .line 77
    if-ne v10, v15, :cond_4

    .line 78
    .line 79
    move-object v7, v13

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-static {}, Lp61;->x()V

    .line 82
    .line 83
    .line 84
    return-object v17

    .line 85
    :cond_5
    :goto_0
    sget-object v10, Lea1;->b:Lea1;

    .line 86
    .line 87
    if-ne v7, v10, :cond_6

    .line 88
    .line 89
    move-object/from16 v7, v17

    .line 90
    .line 91
    :cond_6
    if-nez v7, :cond_10

    .line 92
    .line 93
    iget-object v7, v14, Lca1;->f:Lea1;

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    if-ne v1, v8, :cond_b

    .line 97
    .line 98
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-eqz v10, :cond_9

    .line 103
    .line 104
    if-ne v10, v15, :cond_8

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_8
    invoke-static {}, Lp61;->x()V

    .line 108
    .line 109
    .line 110
    return-object v17

    .line 111
    :cond_9
    move-object v7, v13

    .line 112
    :goto_1
    sget-object v10, Lea1;->b:Lea1;

    .line 113
    .line 114
    if-ne v7, v10, :cond_a

    .line 115
    .line 116
    move-object/from16 v7, v17

    .line 117
    .line 118
    :cond_a
    if-nez v7, :cond_10

    .line 119
    .line 120
    iget-object v7, v14, Lca1;->g:Lea1;

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_b
    const/4 v7, 0x7

    .line 124
    if-ne v1, v7, :cond_c

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_c
    const/16 v10, 0x8

    .line 128
    .line 129
    if-ne v1, v10, :cond_24

    .line 130
    .line 131
    :goto_2
    new-instance v10, Lk20;

    .line 132
    .line 133
    invoke-direct {v10, v1}, Lk20;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v6}, Lw80;->S(Ljr0;)Lsr2;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    check-cast v13, Lq9;

    .line 141
    .line 142
    invoke-virtual {v13}, Lq9;->getFocusOwner()Ly91;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    check-cast v13, Ldh;

    .line 147
    .line 148
    invoke-virtual {v13}, Ldh;->f()Lka1;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    if-ne v1, v7, :cond_d

    .line 153
    .line 154
    iget-object v7, v14, Lca1;->j:Lpe1;

    .line 155
    .line 156
    invoke-interface {v7, v10}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_d
    iget-object v7, v14, Lca1;->k:Lpe1;

    .line 161
    .line 162
    invoke-interface {v7, v10}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :goto_3
    iget-boolean v7, v10, Lk20;->b:Z

    .line 166
    .line 167
    if-eqz v7, :cond_e

    .line 168
    .line 169
    sget-object v7, Lea1;->c:Lea1;

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_e
    invoke-virtual {v13}, Ldh;->f()Lka1;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    if-eq v11, v7, :cond_f

    .line 177
    .line 178
    sget-object v7, Lea1;->d:Lea1;

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_f
    sget-object v7, Lea1;->b:Lea1;

    .line 182
    .line 183
    :cond_10
    :goto_4
    sget-object v10, Lea1;->c:Lea1;

    .line 184
    .line 185
    invoke-static {v7, v10}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_11

    .line 190
    .line 191
    goto/16 :goto_11

    .line 192
    .line 193
    :cond_11
    sget-object v11, Lea1;->d:Lea1;

    .line 194
    .line 195
    invoke-static {v7, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    if-eqz v11, :cond_12

    .line 200
    .line 201
    invoke-static {v5}, Lgg4;->u(Lka1;)Lka1;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_31

    .line 206
    .line 207
    invoke-interface {v3, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Ljava/lang/Boolean;

    .line 212
    .line 213
    return-object v0

    .line 214
    :cond_12
    sget-object v11, Lea1;->b:Lea1;

    .line 215
    .line 216
    invoke-static {v7, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    if-nez v13, :cond_26

    .line 221
    .line 222
    const-string v0, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    .line 223
    .line 224
    if-eq v7, v11, :cond_23

    .line 225
    .line 226
    if-eq v7, v10, :cond_22

    .line 227
    .line 228
    iget-object v0, v7, Lea1;->a:Lug2;

    .line 229
    .line 230
    iget v1, v0, Lug2;->p:I

    .line 231
    .line 232
    if-nez v1, :cond_13

    .line 233
    .line 234
    const-string v0, "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    .line 235
    .line 236
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_c

    .line 242
    .line 243
    :cond_13
    iget-object v0, v0, Lug2;->n:[Ljava/lang/Object;

    .line 244
    .line 245
    move/from16 v2, v16

    .line 246
    .line 247
    move v4, v2

    .line 248
    :goto_5
    if-ge v2, v1, :cond_21

    .line 249
    .line 250
    aget-object v5, v0, v2

    .line 251
    .line 252
    check-cast v5, Lkq;

    .line 253
    .line 254
    iget-object v6, v5, Lmd2;->n:Lmd2;

    .line 255
    .line 256
    iget-boolean v6, v6, Lmd2;->A:Z

    .line 257
    .line 258
    if-nez v6, :cond_14

    .line 259
    .line 260
    const-string v6, "visitChildren called on an unattached node"

    .line 261
    .line 262
    invoke-static {v6}, Lar1;->b(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_14
    new-instance v6, Lug2;

    .line 266
    .line 267
    const/16 v7, 0x10

    .line 268
    .line 269
    new-array v8, v7, [Lmd2;

    .line 270
    .line 271
    invoke-direct {v6, v8}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v5, v5, Lmd2;->n:Lmd2;

    .line 275
    .line 276
    iget-object v7, v5, Lmd2;->s:Lmd2;

    .line 277
    .line 278
    if-nez v7, :cond_15

    .line 279
    .line 280
    invoke-static {v6, v5}, Lw80;->c(Lug2;Lmd2;)V

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_15
    invoke-virtual {v6, v7}, Lug2;->c(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_16
    :goto_6
    iget v5, v6, Lug2;->p:I

    .line 288
    .line 289
    if-eqz v5, :cond_20

    .line 290
    .line 291
    add-int/lit8 v5, v5, -0x1

    .line 292
    .line 293
    invoke-virtual {v6, v5}, Lug2;->l(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    check-cast v5, Lmd2;

    .line 298
    .line 299
    iget v7, v5, Lmd2;->q:I

    .line 300
    .line 301
    and-int/lit16 v7, v7, 0x400

    .line 302
    .line 303
    if-nez v7, :cond_17

    .line 304
    .line 305
    invoke-static {v6, v5}, Lw80;->c(Lug2;Lmd2;)V

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_17
    :goto_7
    if-eqz v5, :cond_16

    .line 310
    .line 311
    iget v7, v5, Lmd2;->p:I

    .line 312
    .line 313
    and-int/lit16 v7, v7, 0x400

    .line 314
    .line 315
    if-eqz v7, :cond_1f

    .line 316
    .line 317
    move-object/from16 v7, v17

    .line 318
    .line 319
    :goto_8
    if-eqz v5, :cond_16

    .line 320
    .line 321
    instance-of v8, v5, Lka1;

    .line 322
    .line 323
    if-eqz v8, :cond_18

    .line 324
    .line 325
    check-cast v5, Lka1;

    .line 326
    .line 327
    invoke-interface {v3, v5}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    check-cast v5, Ljava/lang/Boolean;

    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_1e

    .line 338
    .line 339
    move v4, v15

    .line 340
    goto :goto_b

    .line 341
    :cond_18
    iget v8, v5, Lmd2;->p:I

    .line 342
    .line 343
    and-int/lit16 v8, v8, 0x400

    .line 344
    .line 345
    if-eqz v8, :cond_1e

    .line 346
    .line 347
    instance-of v8, v5, Lkr0;

    .line 348
    .line 349
    if-eqz v8, :cond_1e

    .line 350
    .line 351
    move-object v8, v5

    .line 352
    check-cast v8, Lkr0;

    .line 353
    .line 354
    iget-object v8, v8, Lkr0;->C:Lmd2;

    .line 355
    .line 356
    move/from16 v9, v16

    .line 357
    .line 358
    :goto_9
    if-eqz v8, :cond_1d

    .line 359
    .line 360
    iget v10, v8, Lmd2;->p:I

    .line 361
    .line 362
    and-int/lit16 v10, v10, 0x400

    .line 363
    .line 364
    if-eqz v10, :cond_1c

    .line 365
    .line 366
    add-int/lit8 v9, v9, 0x1

    .line 367
    .line 368
    if-ne v9, v15, :cond_19

    .line 369
    .line 370
    move-object v5, v8

    .line 371
    goto :goto_a

    .line 372
    :cond_19
    if-nez v7, :cond_1a

    .line 373
    .line 374
    new-instance v7, Lug2;

    .line 375
    .line 376
    const/16 v10, 0x10

    .line 377
    .line 378
    new-array v11, v10, [Lmd2;

    .line 379
    .line 380
    invoke-direct {v7, v11}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    :cond_1a
    if-eqz v5, :cond_1b

    .line 384
    .line 385
    invoke-virtual {v7, v5}, Lug2;->c(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    move-object/from16 v5, v17

    .line 389
    .line 390
    :cond_1b
    invoke-virtual {v7, v8}, Lug2;->c(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :cond_1c
    :goto_a
    iget-object v8, v8, Lmd2;->s:Lmd2;

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_1d
    if-ne v9, v15, :cond_1e

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_1e
    invoke-static {v7}, Lw80;->g(Lug2;)Lmd2;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    goto :goto_8

    .line 404
    :cond_1f
    iget-object v5, v5, Lmd2;->s:Lmd2;

    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_20
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 408
    .line 409
    goto/16 :goto_5

    .line 410
    .line 411
    :cond_21
    move/from16 v16, v4

    .line 412
    .line 413
    :goto_c
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    return-object v0

    .line 418
    :cond_22
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    return-object v17

    .line 422
    :cond_23
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    return-object v17

    .line 426
    :cond_24
    const-string v0, "invalid FocusDirection"

    .line 427
    .line 428
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    return-object v17

    .line 432
    :cond_25
    move-object/from16 v6, v17

    .line 433
    .line 434
    :cond_26
    invoke-virtual {v4}, Lq9;->getLayoutDirection()Lhy1;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    new-instance v7, Lyc;

    .line 439
    .line 440
    invoke-direct {v7, v6, v0, v3, v9}, Lyc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 441
    .line 442
    .line 443
    if-ne v1, v15, :cond_27

    .line 444
    .line 445
    goto :goto_d

    .line 446
    :cond_27
    if-ne v1, v12, :cond_2a

    .line 447
    .line 448
    :goto_d
    if-ne v1, v15, :cond_28

    .line 449
    .line 450
    invoke-static {v5, v7}, Ldm0;->v(Lka1;Lyc;)Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    goto :goto_e

    .line 455
    :cond_28
    if-ne v1, v12, :cond_29

    .line 456
    .line 457
    invoke-static {v5, v7}, Ldm0;->n(Lka1;Lyc;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    return-object v0

    .line 466
    :cond_29
    const-string v0, "This function should only be used for 1-D focus search"

    .line 467
    .line 468
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    return-object v17

    .line 472
    :cond_2a
    if-ne v1, v9, :cond_2b

    .line 473
    .line 474
    goto :goto_f

    .line 475
    :cond_2b
    if-ne v1, v8, :cond_2c

    .line 476
    .line 477
    goto :goto_f

    .line 478
    :cond_2c
    const/4 v0, 0x5

    .line 479
    if-ne v1, v0, :cond_2d

    .line 480
    .line 481
    goto :goto_f

    .line 482
    :cond_2d
    const/4 v0, 0x6

    .line 483
    if-ne v1, v0, :cond_2e

    .line 484
    .line 485
    :goto_f
    invoke-static {v1, v7, v5, v2}, Lqn0;->L(ILyc;Lka1;Ll33;)Ljava/lang/Boolean;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    return-object v0

    .line 490
    :cond_2e
    const/4 v0, 0x7

    .line 491
    if-ne v1, v0, :cond_32

    .line 492
    .line 493
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_30

    .line 498
    .line 499
    if-ne v0, v15, :cond_2f

    .line 500
    .line 501
    move v8, v9

    .line 502
    goto :goto_10

    .line 503
    :cond_2f
    invoke-static {}, Lp61;->x()V

    .line 504
    .line 505
    .line 506
    return-object v17

    .line 507
    :cond_30
    :goto_10
    invoke-static {v5}, Lgg4;->u(Lka1;)Lka1;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    if-eqz v0, :cond_31

    .line 512
    .line 513
    invoke-static {v8, v7, v0, v2}, Lqn0;->L(ILyc;Lka1;Ll33;)Ljava/lang/Boolean;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    return-object v0

    .line 518
    :cond_31
    :goto_11
    return-object v17

    .line 519
    :cond_32
    const/16 v10, 0x8

    .line 520
    .line 521
    if-ne v1, v10, :cond_41

    .line 522
    .line 523
    invoke-static {v5}, Lgg4;->u(Lka1;)Lka1;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    if-eqz v0, :cond_3f

    .line 528
    .line 529
    iget-object v1, v0, Lmd2;->n:Lmd2;

    .line 530
    .line 531
    iget-boolean v1, v1, Lmd2;->A:Z

    .line 532
    .line 533
    if-nez v1, :cond_33

    .line 534
    .line 535
    const-string v1, "visitAncestors called on an unattached node"

    .line 536
    .line 537
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    :cond_33
    iget-object v1, v0, Lmd2;->n:Lmd2;

    .line 541
    .line 542
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 543
    .line 544
    invoke-static {v0}, Lw80;->R(Ljr0;)Lxy1;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    :goto_12
    if-eqz v0, :cond_3f

    .line 549
    .line 550
    iget-object v2, v0, Lxy1;->S:Lbo;

    .line 551
    .line 552
    iget-object v2, v2, Lbo;->g:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v2, Lmd2;

    .line 555
    .line 556
    iget v2, v2, Lmd2;->q:I

    .line 557
    .line 558
    and-int/lit16 v2, v2, 0x400

    .line 559
    .line 560
    if-eqz v2, :cond_3d

    .line 561
    .line 562
    :goto_13
    if-eqz v1, :cond_3d

    .line 563
    .line 564
    iget v2, v1, Lmd2;->p:I

    .line 565
    .line 566
    and-int/lit16 v2, v2, 0x400

    .line 567
    .line 568
    if-eqz v2, :cond_3c

    .line 569
    .line 570
    move-object v2, v1

    .line 571
    move-object/from16 v3, v17

    .line 572
    .line 573
    :goto_14
    if-eqz v2, :cond_3c

    .line 574
    .line 575
    instance-of v4, v2, Lka1;

    .line 576
    .line 577
    if-eqz v4, :cond_35

    .line 578
    .line 579
    check-cast v2, Lka1;

    .line 580
    .line 581
    invoke-virtual {v2}, Lka1;->I0()Lca1;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    iget-boolean v4, v4, Lca1;->a:Z

    .line 586
    .line 587
    if-eqz v4, :cond_34

    .line 588
    .line 589
    move-object v15, v2

    .line 590
    goto/16 :goto_19

    .line 591
    .line 592
    :cond_34
    const/16 v10, 0x10

    .line 593
    .line 594
    goto :goto_18

    .line 595
    :cond_35
    iget v4, v2, Lmd2;->p:I

    .line 596
    .line 597
    and-int/lit16 v4, v4, 0x400

    .line 598
    .line 599
    if-eqz v4, :cond_34

    .line 600
    .line 601
    instance-of v4, v2, Lkr0;

    .line 602
    .line 603
    if-eqz v4, :cond_34

    .line 604
    .line 605
    move-object v4, v2

    .line 606
    check-cast v4, Lkr0;

    .line 607
    .line 608
    iget-object v4, v4, Lkr0;->C:Lmd2;

    .line 609
    .line 610
    move/from16 v6, v16

    .line 611
    .line 612
    :goto_15
    if-eqz v4, :cond_3a

    .line 613
    .line 614
    iget v8, v4, Lmd2;->p:I

    .line 615
    .line 616
    and-int/lit16 v8, v8, 0x400

    .line 617
    .line 618
    if-eqz v8, :cond_36

    .line 619
    .line 620
    add-int/lit8 v6, v6, 0x1

    .line 621
    .line 622
    if-ne v6, v15, :cond_37

    .line 623
    .line 624
    move-object v2, v4

    .line 625
    :cond_36
    const/16 v10, 0x10

    .line 626
    .line 627
    goto :goto_17

    .line 628
    :cond_37
    if-nez v3, :cond_38

    .line 629
    .line 630
    new-instance v3, Lug2;

    .line 631
    .line 632
    const/16 v10, 0x10

    .line 633
    .line 634
    new-array v8, v10, [Lmd2;

    .line 635
    .line 636
    invoke-direct {v3, v8}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    goto :goto_16

    .line 640
    :cond_38
    const/16 v10, 0x10

    .line 641
    .line 642
    :goto_16
    if-eqz v2, :cond_39

    .line 643
    .line 644
    invoke-virtual {v3, v2}, Lug2;->c(Ljava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    move-object/from16 v2, v17

    .line 648
    .line 649
    :cond_39
    invoke-virtual {v3, v4}, Lug2;->c(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    :goto_17
    iget-object v4, v4, Lmd2;->s:Lmd2;

    .line 653
    .line 654
    goto :goto_15

    .line 655
    :cond_3a
    const/16 v10, 0x10

    .line 656
    .line 657
    if-ne v6, v15, :cond_3b

    .line 658
    .line 659
    goto :goto_14

    .line 660
    :cond_3b
    :goto_18
    invoke-static {v3}, Lw80;->g(Lug2;)Lmd2;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    goto :goto_14

    .line 665
    :cond_3c
    const/16 v10, 0x10

    .line 666
    .line 667
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 668
    .line 669
    goto :goto_13

    .line 670
    :cond_3d
    const/16 v10, 0x10

    .line 671
    .line 672
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    if-eqz v0, :cond_3e

    .line 677
    .line 678
    iget-object v1, v0, Lxy1;->S:Lbo;

    .line 679
    .line 680
    if-eqz v1, :cond_3e

    .line 681
    .line 682
    iget-object v1, v1, Lbo;->f:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v1, Lgw3;

    .line 685
    .line 686
    goto/16 :goto_12

    .line 687
    .line 688
    :cond_3e
    move-object/from16 v1, v17

    .line 689
    .line 690
    goto/16 :goto_12

    .line 691
    .line 692
    :cond_3f
    move-object/from16 v15, v17

    .line 693
    .line 694
    :goto_19
    if-eqz v15, :cond_40

    .line 695
    .line 696
    if-eq v15, v5, :cond_40

    .line 697
    .line 698
    invoke-virtual {v7, v15}, Lyc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    check-cast v0, Ljava/lang/Boolean;

    .line 703
    .line 704
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 705
    .line 706
    .line 707
    move-result v16

    .line 708
    :cond_40
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    return-object v0

    .line 713
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 714
    .line 715
    invoke-static {v1}, Lp91;->a(I)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    const-string v2, "Focus search invoked with invalid FocusDirection "

    .line 720
    .line 721
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v0
.end method

.method public f()Lka1;
    .locals 2

    .line 1
    iget-object p0, p0, Ldh;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lka1;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object p0, p0, Ldh;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ldi0;->D(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public h(IILjava/util/ArrayList;Lhb;Ld12;ZZZII)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move/from16 v5, p6

    .line 10
    .line 11
    iget-object v6, v0, Ldh;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v7, v0, Ldh;->g:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v7, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v8, v0, Ldh;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v8, Llg2;

    .line 22
    .line 23
    iget-object v9, v0, Ldh;->a:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v10, v9

    .line 26
    check-cast v10, Lkg2;

    .line 27
    .line 28
    iget-object v11, v0, Ldh;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v11, Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v12, v0, Ldh;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v12, Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v13, v0, Ldh;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v13, Lhb;

    .line 39
    .line 40
    iput-object v4, v0, Ldh;->b:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    const/4 v15, 0x0

    .line 47
    :goto_0
    if-ge v15, v14, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v16

    .line 53
    move-object/from16 p9, v9

    .line 54
    .line 55
    move-object/from16 v9, v16

    .line 56
    .line 57
    check-cast v9, Lg12;

    .line 58
    .line 59
    move/from16 p10, v14

    .line 60
    .line 61
    iget-object v14, v9, Lg12;->b:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    move/from16 v16, v15

    .line 68
    .line 69
    const/4 v15, 0x0

    .line 70
    :goto_1
    if-ge v15, v14, :cond_0

    .line 71
    .line 72
    move/from16 v17, v14

    .line 73
    .line 74
    iget-object v14, v9, Lg12;->b:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    check-cast v14, Ldv2;

    .line 81
    .line 82
    invoke-virtual {v14}, Ldv2;->i()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v15, v15, 0x1

    .line 86
    .line 87
    move/from16 v14, v17

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    add-int/lit8 v15, v16, 0x1

    .line 91
    .line 92
    move-object/from16 v9, p9

    .line 93
    .line 94
    move/from16 v14, p10

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move-object/from16 p9, v9

    .line 98
    .line 99
    invoke-virtual {v10}, Lkg2;->i()Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_2

    .line 104
    .line 105
    invoke-virtual {v0}, Ldh;->i()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    invoke-static {v3}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    check-cast v9, Lg12;

    .line 114
    .line 115
    if-nez p7, :cond_4

    .line 116
    .line 117
    if-nez p8, :cond_3

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const/4 v14, 0x0

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    :goto_2
    const/4 v14, 0x1

    .line 123
    :goto_3
    iget-object v15, v10, Lkg2;->b:[Ljava/lang/Object;

    .line 124
    .line 125
    iget-object v9, v10, Lkg2;->a:[J

    .line 126
    .line 127
    move/from16 p8, v14

    .line 128
    .line 129
    array-length v14, v9

    .line 130
    move-object/from16 v16, v9

    .line 131
    .line 132
    const/4 v9, 0x2

    .line 133
    sub-int/2addr v14, v9

    .line 134
    const-wide/16 v17, 0x80

    .line 135
    .line 136
    const-wide/16 v19, 0xff

    .line 137
    .line 138
    const/16 v21, 0x7

    .line 139
    .line 140
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    if-ltz v14, :cond_8

    .line 146
    .line 147
    const/4 v9, 0x0

    .line 148
    :goto_4
    const/16 v25, 0x8

    .line 149
    .line 150
    aget-wide v0, v16, v9

    .line 151
    .line 152
    move-object/from16 v26, v11

    .line 153
    .line 154
    move-object/from16 v27, v12

    .line 155
    .line 156
    not-long v11, v0

    .line 157
    shl-long v11, v11, v21

    .line 158
    .line 159
    and-long/2addr v11, v0

    .line 160
    and-long v11, v11, v22

    .line 161
    .line 162
    cmp-long v11, v11, v22

    .line 163
    .line 164
    if-eqz v11, :cond_7

    .line 165
    .line 166
    sub-int v11, v9, v14

    .line 167
    .line 168
    not-int v11, v11

    .line 169
    ushr-int/lit8 v11, v11, 0x1f

    .line 170
    .line 171
    rsub-int/lit8 v11, v11, 0x8

    .line 172
    .line 173
    move-wide/from16 v28, v0

    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    :goto_5
    if-ge v0, v11, :cond_6

    .line 177
    .line 178
    and-long v30, v28, v19

    .line 179
    .line 180
    cmp-long v1, v30, v17

    .line 181
    .line 182
    if-gez v1, :cond_5

    .line 183
    .line 184
    shl-int/lit8 v1, v9, 0x3

    .line 185
    .line 186
    add-int/2addr v1, v0

    .line 187
    aget-object v1, v15, v1

    .line 188
    .line 189
    invoke-virtual {v8, v1}, Llg2;->a(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_5
    shr-long v28, v28, v25

    .line 193
    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_6
    move/from16 v0, v25

    .line 198
    .line 199
    if-ne v11, v0, :cond_9

    .line 200
    .line 201
    :cond_7
    if-eq v9, v14, :cond_9

    .line 202
    .line 203
    add-int/lit8 v9, v9, 0x1

    .line 204
    .line 205
    move-object/from16 v11, v26

    .line 206
    .line 207
    move-object/from16 v12, v27

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_8
    move-object/from16 v26, v11

    .line 211
    .line 212
    move-object/from16 v27, v12

    .line 213
    .line 214
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    const/4 v1, 0x0

    .line 219
    :goto_6
    if-ge v1, v0, :cond_b

    .line 220
    .line 221
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    check-cast v9, Lg12;

    .line 226
    .line 227
    iget-object v11, v9, Lg12;->i:Ljava/lang/Object;

    .line 228
    .line 229
    iget-object v12, v9, Lg12;->b:Ljava/util/List;

    .line 230
    .line 231
    invoke-virtual {v8, v11}, Llg2;->l(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    const/4 v14, 0x0

    .line 239
    :goto_7
    if-ge v14, v11, :cond_a

    .line 240
    .line 241
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    check-cast v15, Ldv2;

    .line 246
    .line 247
    invoke-virtual {v15}, Ldv2;->i()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    add-int/lit8 v14, v14, 0x1

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_a
    iget-object v9, v9, Lg12;->i:Ljava/lang/Object;

    .line 254
    .line 255
    move-object/from16 v11, p9

    .line 256
    .line 257
    check-cast v11, Lkg2;

    .line 258
    .line 259
    invoke-virtual {v11, v9}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-static {v9}, Ldi0;->D(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    add-int/lit8 v1, v1, 0x1

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_b
    const/4 v1, 0x1

    .line 270
    new-array v0, v1, [I

    .line 271
    .line 272
    const/4 v9, 0x0

    .line 273
    if-eqz p8, :cond_11

    .line 274
    .line 275
    if-eqz v13, :cond_11

    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    if-nez v11, :cond_e

    .line 282
    .line 283
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-le v11, v1, :cond_c

    .line 288
    .line 289
    new-instance v11, La02;

    .line 290
    .line 291
    const/4 v12, 0x2

    .line 292
    invoke-direct {v11, v13, v12}, La02;-><init>(Lhb;I)V

    .line 293
    .line 294
    .line 295
    invoke-static {v7, v11}, Lr70;->c0(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    .line 297
    .line 298
    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result v11

    .line 302
    if-gtz v11, :cond_d

    .line 303
    .line 304
    const/4 v11, 0x0

    .line 305
    invoke-static {v0, v11, v1, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 306
    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_d
    const/4 v11, 0x0

    .line 310
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Lg12;

    .line 315
    .line 316
    invoke-static {v0, v1, v5}, Ldh;->m([ILg12;Z)I

    .line 317
    .line 318
    .line 319
    iget-object v0, v1, Lg12;->i:Ljava/lang/Object;

    .line 320
    .line 321
    invoke-virtual {v10, v0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-static {v0}, Ldi0;->D(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v11}, Lg12;->b(I)J

    .line 332
    .line 333
    .line 334
    throw v9

    .line 335
    :cond_e
    const/4 v11, 0x0

    .line 336
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_11

    .line 341
    .line 342
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    const/4 v12, 0x1

    .line 347
    if-le v1, v12, :cond_f

    .line 348
    .line 349
    new-instance v1, La02;

    .line 350
    .line 351
    invoke-direct {v1, v13, v11}, La02;-><init>(Lhb;I)V

    .line 352
    .line 353
    .line 354
    invoke-static {v6, v1}, Lr70;->c0(Ljava/util/List;Ljava/util/Comparator;)V

    .line 355
    .line 356
    .line 357
    :cond_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-gtz v1, :cond_10

    .line 362
    .line 363
    invoke-static {v0, v11, v12, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 364
    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_10
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    check-cast v1, Lg12;

    .line 372
    .line 373
    invoke-static {v0, v1, v5}, Ldh;->m([ILg12;Z)I

    .line 374
    .line 375
    .line 376
    invoke-static {v1, v5}, Lc75;->L(Lg12;Z)I

    .line 377
    .line 378
    .line 379
    iget-object v0, v1, Lg12;->i:Ljava/lang/Object;

    .line 380
    .line 381
    invoke-virtual {v10, v0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    invoke-static {v0}, Ldi0;->D(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v11}, Lg12;->b(I)J

    .line 392
    .line 393
    .line 394
    throw v9

    .line 395
    :cond_11
    :goto_9
    iget-object v1, v8, Llg2;->b:[Ljava/lang/Object;

    .line 396
    .line 397
    iget-object v11, v8, Llg2;->a:[J

    .line 398
    .line 399
    array-length v12, v11

    .line 400
    const/16 v24, 0x2

    .line 401
    .line 402
    add-int/lit8 v12, v12, -0x2

    .line 403
    .line 404
    if-ltz v12, :cond_15

    .line 405
    .line 406
    const/4 v13, 0x0

    .line 407
    :goto_a
    aget-wide v14, v11, v13

    .line 408
    .line 409
    move-object/from16 p9, v9

    .line 410
    .line 411
    move-object/from16 v16, v10

    .line 412
    .line 413
    not-long v9, v14

    .line 414
    shl-long v9, v9, v21

    .line 415
    .line 416
    and-long/2addr v9, v14

    .line 417
    and-long v9, v9, v22

    .line 418
    .line 419
    cmp-long v9, v9, v22

    .line 420
    .line 421
    if-eqz v9, :cond_14

    .line 422
    .line 423
    sub-int v9, v13, v12

    .line 424
    .line 425
    not-int v9, v9

    .line 426
    ushr-int/lit8 v9, v9, 0x1f

    .line 427
    .line 428
    const/16 v25, 0x8

    .line 429
    .line 430
    rsub-int/lit8 v9, v9, 0x8

    .line 431
    .line 432
    const/4 v10, 0x0

    .line 433
    :goto_b
    if-ge v10, v9, :cond_13

    .line 434
    .line 435
    and-long v28, v14, v19

    .line 436
    .line 437
    cmp-long v24, v28, v17

    .line 438
    .line 439
    if-gez v24, :cond_12

    .line 440
    .line 441
    shl-int/lit8 v24, v13, 0x3

    .line 442
    .line 443
    add-int v24, v24, v10

    .line 444
    .line 445
    move-object/from16 v28, v1

    .line 446
    .line 447
    aget-object v1, v28, v24

    .line 448
    .line 449
    move-object/from16 v24, v6

    .line 450
    .line 451
    move-object/from16 v6, v16

    .line 452
    .line 453
    invoke-virtual {v6, v1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-static {v1}, Ldi0;->D(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :goto_c
    const/16 v1, 0x8

    .line 461
    .line 462
    goto :goto_d

    .line 463
    :cond_12
    move-object/from16 v28, v1

    .line 464
    .line 465
    move-object/from16 v24, v6

    .line 466
    .line 467
    move-object/from16 v6, v16

    .line 468
    .line 469
    goto :goto_c

    .line 470
    :goto_d
    shr-long/2addr v14, v1

    .line 471
    add-int/lit8 v10, v10, 0x1

    .line 472
    .line 473
    move-object/from16 v16, v6

    .line 474
    .line 475
    move-object/from16 v6, v24

    .line 476
    .line 477
    move-object/from16 v1, v28

    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_13
    move-object/from16 v28, v1

    .line 481
    .line 482
    move-object/from16 v24, v6

    .line 483
    .line 484
    move-object/from16 v6, v16

    .line 485
    .line 486
    const/16 v1, 0x8

    .line 487
    .line 488
    if-ne v9, v1, :cond_16

    .line 489
    .line 490
    goto :goto_e

    .line 491
    :cond_14
    move-object/from16 v28, v1

    .line 492
    .line 493
    move-object/from16 v24, v6

    .line 494
    .line 495
    move-object/from16 v6, v16

    .line 496
    .line 497
    const/16 v1, 0x8

    .line 498
    .line 499
    :goto_e
    if-eq v13, v12, :cond_16

    .line 500
    .line 501
    add-int/lit8 v13, v13, 0x1

    .line 502
    .line 503
    move-object/from16 v9, p9

    .line 504
    .line 505
    move-object v10, v6

    .line 506
    move-object/from16 v6, v24

    .line 507
    .line 508
    move-object/from16 v1, v28

    .line 509
    .line 510
    goto :goto_a

    .line 511
    :cond_15
    move-object/from16 v24, v6

    .line 512
    .line 513
    move-object/from16 p9, v9

    .line 514
    .line 515
    move-object v6, v10

    .line 516
    :cond_16
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-nez v1, :cond_1c

    .line 521
    .line 522
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    const/4 v12, 0x1

    .line 527
    if-le v1, v12, :cond_17

    .line 528
    .line 529
    new-instance v1, La02;

    .line 530
    .line 531
    const/4 v9, 0x3

    .line 532
    invoke-direct {v1, v4, v9}, La02;-><init>(Lhb;I)V

    .line 533
    .line 534
    .line 535
    move-object/from16 v12, v27

    .line 536
    .line 537
    invoke-static {v12, v1}, Lr70;->c0(Ljava/util/List;Ljava/util/Comparator;)V

    .line 538
    .line 539
    .line 540
    goto :goto_f

    .line 541
    :cond_17
    move-object/from16 v12, v27

    .line 542
    .line 543
    :goto_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    const/4 v9, 0x0

    .line 548
    :goto_10
    if-ge v9, v1, :cond_1b

    .line 549
    .line 550
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v10

    .line 554
    check-cast v10, Lg12;

    .line 555
    .line 556
    iget-object v11, v10, Lg12;->i:Ljava/lang/Object;

    .line 557
    .line 558
    invoke-virtual {v6, v11}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v11}, Ldi0;->D(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    invoke-static {v0, v10, v5}, Ldh;->m([ILg12;Z)I

    .line 569
    .line 570
    .line 571
    move-result v11

    .line 572
    if-eqz p7, :cond_19

    .line 573
    .line 574
    invoke-static {v3}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v13

    .line 578
    check-cast v13, Lg12;

    .line 579
    .line 580
    const/4 v14, 0x0

    .line 581
    invoke-virtual {v13, v14}, Lg12;->b(I)J

    .line 582
    .line 583
    .line 584
    move-result-wide v15

    .line 585
    if-eqz v5, :cond_18

    .line 586
    .line 587
    const-wide v13, 0xffffffffL

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    and-long/2addr v13, v15

    .line 593
    :goto_11
    long-to-int v13, v13

    .line 594
    goto :goto_12

    .line 595
    :cond_18
    const/16 v13, 0x20

    .line 596
    .line 597
    shr-long v13, v15, v13

    .line 598
    .line 599
    goto :goto_11

    .line 600
    :cond_19
    const/4 v13, 0x0

    .line 601
    :goto_12
    sub-int/2addr v13, v11

    .line 602
    move/from16 v11, p1

    .line 603
    .line 604
    invoke-virtual {v10, v13, v11, v2}, Lg12;->d(III)V

    .line 605
    .line 606
    .line 607
    if-nez p8, :cond_1a

    .line 608
    .line 609
    add-int/lit8 v9, v9, 0x1

    .line 610
    .line 611
    goto :goto_10

    .line 612
    :cond_1a
    const/4 v13, 0x1

    .line 613
    move-object/from16 v9, p0

    .line 614
    .line 615
    invoke-virtual {v9, v10, v13}, Ldh;->l(Lg12;Z)V

    .line 616
    .line 617
    .line 618
    throw p9

    .line 619
    :cond_1b
    const/4 v13, 0x1

    .line 620
    move-object/from16 v9, p0

    .line 621
    .line 622
    move/from16 v11, p1

    .line 623
    .line 624
    const/4 v14, 0x0

    .line 625
    invoke-static {v0, v14, v13, v14}, Ljava/util/Arrays;->fill([IIII)V

    .line 626
    .line 627
    .line 628
    goto :goto_13

    .line 629
    :cond_1c
    move-object/from16 v9, p0

    .line 630
    .line 631
    move/from16 v11, p1

    .line 632
    .line 633
    move-object/from16 v12, v27

    .line 634
    .line 635
    const/4 v13, 0x1

    .line 636
    :goto_13
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-nez v1, :cond_1f

    .line 641
    .line 642
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-le v1, v13, :cond_1d

    .line 647
    .line 648
    new-instance v1, La02;

    .line 649
    .line 650
    invoke-direct {v1, v4, v13}, La02;-><init>(Lhb;I)V

    .line 651
    .line 652
    .line 653
    move-object/from16 v4, v26

    .line 654
    .line 655
    invoke-static {v4, v1}, Lr70;->c0(Ljava/util/List;Ljava/util/Comparator;)V

    .line 656
    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_1d
    move-object/from16 v4, v26

    .line 660
    .line 661
    :goto_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    const/4 v10, 0x0

    .line 666
    :goto_15
    if-ge v10, v1, :cond_20

    .line 667
    .line 668
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v13

    .line 672
    check-cast v13, Lg12;

    .line 673
    .line 674
    iget-object v14, v13, Lg12;->i:Ljava/lang/Object;

    .line 675
    .line 676
    invoke-virtual {v6, v14}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v14

    .line 680
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    invoke-static {v14}, Ldi0;->D(Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    invoke-static {v0, v13, v5}, Ldh;->m([ILg12;Z)I

    .line 687
    .line 688
    .line 689
    move-result v14

    .line 690
    invoke-static {v13, v5}, Lc75;->L(Lg12;Z)I

    .line 691
    .line 692
    .line 693
    move-result v15

    .line 694
    const/16 v16, 0x0

    .line 695
    .line 696
    rsub-int/lit8 v15, v15, 0x0

    .line 697
    .line 698
    add-int/2addr v15, v14

    .line 699
    invoke-virtual {v13, v15, v11, v2}, Lg12;->d(III)V

    .line 700
    .line 701
    .line 702
    if-nez p8, :cond_1e

    .line 703
    .line 704
    add-int/lit8 v10, v10, 0x1

    .line 705
    .line 706
    goto :goto_15

    .line 707
    :cond_1e
    const/4 v10, 0x1

    .line 708
    invoke-virtual {v9, v13, v10}, Ldh;->l(Lg12;Z)V

    .line 709
    .line 710
    .line 711
    throw p9

    .line 712
    :cond_1f
    move-object/from16 v4, v26

    .line 713
    .line 714
    :cond_20
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 715
    .line 716
    .line 717
    const/4 v14, 0x0

    .line 718
    invoke-virtual {v3, v14, v12}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 719
    .line 720
    .line 721
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 722
    .line 723
    .line 724
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 725
    .line 726
    .line 727
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v8}, Llg2;->b()V

    .line 737
    .line 738
    .line 739
    return-void
.end method

.method public i()V
    .locals 14

    .line 1
    iget-object p0, p0, Ldh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkg2;

    .line 4
    .line 5
    invoke-virtual {p0}, Lkg2;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lkg2;->c:[Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, p0, Lkg2;->a:[J

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    add-int/lit8 v2, v2, -0x2

    .line 17
    .line 18
    if-ltz v2, :cond_3

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    :goto_0
    aget-wide v5, v1, v4

    .line 23
    .line 24
    not-long v7, v5

    .line 25
    const/4 v9, 0x7

    .line 26
    shl-long/2addr v7, v9

    .line 27
    and-long/2addr v7, v5

    .line 28
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v7, v9

    .line 34
    cmp-long v7, v7, v9

    .line 35
    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    sub-int v7, v4, v2

    .line 39
    .line 40
    not-int v7, v7

    .line 41
    ushr-int/lit8 v7, v7, 0x1f

    .line 42
    .line 43
    const/16 v8, 0x8

    .line 44
    .line 45
    rsub-int/lit8 v7, v7, 0x8

    .line 46
    .line 47
    move v9, v3

    .line 48
    :goto_1
    if-ge v9, v7, :cond_1

    .line 49
    .line 50
    const-wide/16 v10, 0xff

    .line 51
    .line 52
    and-long/2addr v10, v5

    .line 53
    const-wide/16 v12, 0x80

    .line 54
    .line 55
    cmp-long v10, v10, v12

    .line 56
    .line 57
    if-ltz v10, :cond_0

    .line 58
    .line 59
    shr-long/2addr v5, v8

    .line 60
    add-int/lit8 v9, v9, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    shl-int/lit8 p0, v4, 0x3

    .line 64
    .line 65
    add-int/2addr p0, v9

    .line 66
    aget-object p0, v0, p0

    .line 67
    .line 68
    invoke-static {p0}, Ldi0;->D(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    throw p0

    .line 73
    :cond_1
    if-ne v7, v8, :cond_3

    .line 74
    .line 75
    :cond_2
    if-eq v4, v2, :cond_3

    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lkg2;->a()V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method public j(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Ldh;->b(IZZ)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v1, Ln9;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, p1, v2}, Ln9;-><init>(II)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, p1, v2, v1}, Ldh;->e(ILl33;Lpe1;)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :cond_1
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Ldh;->c()V

    .line 29
    .line 30
    .line 31
    :cond_2
    return v0
.end method

.method public k(Lka1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldh;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lka1;

    .line 4
    .line 5
    iput-object p1, p0, Ldh;->h:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Ldh;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ldg2;

    .line 10
    .line 11
    iget-object v1, p0, Ldg2;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    iget p0, p0, Ldg2;->b:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, p0, :cond_0

    .line 17
    .line 18
    aget-object v3, v1, v2

    .line 19
    .line 20
    check-cast v3, Lx91;

    .line 21
    .line 22
    invoke-interface {v3, v0, p1}, Lx91;->a(Lka1;Lka1;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public l(Lg12;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkg2;

    .line 4
    .line 5
    iget-object p1, p1, Lg12;->i:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Ldi0;->D(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    throw p0
.end method

.method public n(Landroid/view/KeyEvent;)Z
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lk30;->c(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static/range {p1 .. p1}, Ltv4;->z(Landroid/view/KeyEvent;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x2

    .line 16
    const v10, -0x3361d2af    # -8.2930312E7f

    .line 17
    .line 18
    .line 19
    const-wide/16 v15, 0x0

    .line 20
    .line 21
    const-wide v17, 0x101010101010101L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide/16 v19, 0xfe

    .line 27
    .line 28
    const/16 p1, 0x6

    .line 29
    .line 30
    const/16 v5, 0x8

    .line 31
    .line 32
    const/16 v21, 0x0

    .line 33
    .line 34
    const-wide/16 v22, 0x1

    .line 35
    .line 36
    const/4 v6, 0x3

    .line 37
    const/4 v7, 0x1

    .line 38
    if-ne v3, v4, :cond_10

    .line 39
    .line 40
    iget-object v3, v0, Ldh;->f:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lzf2;

    .line 43
    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    new-instance v3, Lzf2;

    .line 47
    .line 48
    invoke-direct {v3, v6}, Lzf2;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v3, v0, Ldh;->f:Ljava/lang/Object;

    .line 52
    .line 53
    :cond_0
    move-object v4, v3

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    mul-int/2addr v0, v10

    .line 59
    shl-int/lit8 v3, v0, 0x10

    .line 60
    .line 61
    xor-int/2addr v0, v3

    .line 62
    ushr-int/lit8 v3, v0, 0x7

    .line 63
    .line 64
    and-int/lit8 v0, v0, 0x7f

    .line 65
    .line 66
    move/from16 v24, v6

    .line 67
    .line 68
    iget v6, v4, Lzf2;->c:I

    .line 69
    .line 70
    and-int v25, v3, v6

    .line 71
    .line 72
    move/from16 v26, v21

    .line 73
    .line 74
    const/16 v27, 0x3f

    .line 75
    .line 76
    :goto_0
    iget-object v8, v4, Lzf2;->a:[J

    .line 77
    .line 78
    shr-int/lit8 v28, v25, 0x3

    .line 79
    .line 80
    and-int/lit8 v29, v25, 0x7

    .line 81
    .line 82
    const/16 v30, 0x7

    .line 83
    .line 84
    shl-int/lit8 v9, v29, 0x3

    .line 85
    .line 86
    aget-wide v31, v8, v28

    .line 87
    .line 88
    ushr-long v31, v31, v9

    .line 89
    .line 90
    add-int/lit8 v28, v28, 0x1

    .line 91
    .line 92
    aget-wide v28, v8, v28

    .line 93
    .line 94
    rsub-int/lit8 v8, v9, 0x40

    .line 95
    .line 96
    shl-long v28, v28, v8

    .line 97
    .line 98
    int-to-long v8, v9

    .line 99
    neg-long v8, v8

    .line 100
    shr-long v8, v8, v27

    .line 101
    .line 102
    and-long v8, v28, v8

    .line 103
    .line 104
    or-long v8, v31, v8

    .line 105
    .line 106
    move/from16 v28, v10

    .line 107
    .line 108
    const-wide/16 v31, 0xff

    .line 109
    .line 110
    int-to-long v10, v0

    .line 111
    mul-long v33, v10, v17

    .line 112
    .line 113
    const-wide v35, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    xor-long v13, v8, v33

    .line 119
    .line 120
    sub-long v33, v13, v17

    .line 121
    .line 122
    not-long v12, v13

    .line 123
    and-long v12, v33, v12

    .line 124
    .line 125
    and-long v12, v12, v35

    .line 126
    .line 127
    :goto_1
    cmp-long v14, v12, v15

    .line 128
    .line 129
    if-eqz v14, :cond_2

    .line 130
    .line 131
    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    shr-int/lit8 v14, v14, 0x3

    .line 136
    .line 137
    add-int v14, v25, v14

    .line 138
    .line 139
    and-int/2addr v14, v6

    .line 140
    move-wide/from16 v33, v15

    .line 141
    .line 142
    iget-object v15, v4, Lzf2;->b:[J

    .line 143
    .line 144
    aget-wide v37, v15, v14

    .line 145
    .line 146
    cmp-long v15, v37, v1

    .line 147
    .line 148
    if-nez v15, :cond_1

    .line 149
    .line 150
    move/from16 v37, v7

    .line 151
    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :cond_1
    sub-long v14, v12, v22

    .line 155
    .line 156
    and-long/2addr v12, v14

    .line 157
    move-wide/from16 v15, v33

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    move-wide/from16 v33, v15

    .line 161
    .line 162
    not-long v12, v8

    .line 163
    shl-long v12, v12, p1

    .line 164
    .line 165
    and-long/2addr v8, v12

    .line 166
    and-long v8, v8, v35

    .line 167
    .line 168
    cmp-long v8, v8, v33

    .line 169
    .line 170
    if-eqz v8, :cond_f

    .line 171
    .line 172
    invoke-virtual {v4, v3}, Lzf2;->b(I)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iget v6, v4, Lzf2;->e:I

    .line 177
    .line 178
    if-nez v6, :cond_3

    .line 179
    .line 180
    iget-object v6, v4, Lzf2;->a:[J

    .line 181
    .line 182
    shr-int/lit8 v12, v0, 0x3

    .line 183
    .line 184
    aget-wide v12, v6, v12

    .line 185
    .line 186
    and-int/lit8 v6, v0, 0x7

    .line 187
    .line 188
    shl-int/lit8 v6, v6, 0x3

    .line 189
    .line 190
    shr-long/2addr v12, v6

    .line 191
    and-long v12, v12, v31

    .line 192
    .line 193
    cmp-long v6, v12, v19

    .line 194
    .line 195
    if-nez v6, :cond_4

    .line 196
    .line 197
    :cond_3
    move/from16 v37, v7

    .line 198
    .line 199
    const-wide/16 p0, 0x80

    .line 200
    .line 201
    goto/16 :goto_9

    .line 202
    .line 203
    :cond_4
    iget v0, v4, Lzf2;->c:I

    .line 204
    .line 205
    if-le v0, v5, :cond_c

    .line 206
    .line 207
    iget v6, v4, Lzf2;->d:I

    .line 208
    .line 209
    int-to-long v12, v6

    .line 210
    const-wide/16 v14, 0x20

    .line 211
    .line 212
    mul-long/2addr v12, v14

    .line 213
    int-to-long v14, v0

    .line 214
    const-wide/16 v16, 0x19

    .line 215
    .line 216
    mul-long v14, v14, v16

    .line 217
    .line 218
    const-wide/high16 v16, -0x8000000000000000L

    .line 219
    .line 220
    xor-long v12, v12, v16

    .line 221
    .line 222
    xor-long v14, v14, v16

    .line 223
    .line 224
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Long;->compare(JJ)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-gtz v0, :cond_c

    .line 229
    .line 230
    iget-object v0, v4, Lzf2;->a:[J

    .line 231
    .line 232
    iget v6, v4, Lzf2;->c:I

    .line 233
    .line 234
    iget-object v12, v4, Lzf2;->b:[J

    .line 235
    .line 236
    add-int/lit8 v13, v6, 0x7

    .line 237
    .line 238
    shr-int/lit8 v13, v13, 0x3

    .line 239
    .line 240
    move/from16 v14, v21

    .line 241
    .line 242
    :goto_2
    if-ge v14, v13, :cond_5

    .line 243
    .line 244
    aget-wide v22, v0, v14

    .line 245
    .line 246
    const-wide/16 p0, 0x80

    .line 247
    .line 248
    and-long v8, v22, v35

    .line 249
    .line 250
    move v15, v5

    .line 251
    move/from16 v18, v6

    .line 252
    .line 253
    not-long v5, v8

    .line 254
    ushr-long v8, v8, v30

    .line 255
    .line 256
    add-long/2addr v5, v8

    .line 257
    const-wide v8, -0x101010101010102L

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    and-long/2addr v5, v8

    .line 263
    aput-wide v5, v0, v14

    .line 264
    .line 265
    add-int/lit8 v14, v14, 0x1

    .line 266
    .line 267
    move v5, v15

    .line 268
    move/from16 v6, v18

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_5
    move v15, v5

    .line 272
    move/from16 v18, v6

    .line 273
    .line 274
    const-wide/16 p0, 0x80

    .line 275
    .line 276
    invoke-static {v0}, Lji;->Y([J)I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    add-int/lit8 v6, v5, -0x1

    .line 281
    .line 282
    aget-wide v8, v0, v6

    .line 283
    .line 284
    const-wide v13, 0xffffffffffffffL

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    and-long/2addr v8, v13

    .line 290
    const-wide/high16 v22, -0x100000000000000L

    .line 291
    .line 292
    or-long v8, v8, v22

    .line 293
    .line 294
    aput-wide v8, v0, v6

    .line 295
    .line 296
    aget-wide v8, v0, v21

    .line 297
    .line 298
    aput-wide v8, v0, v5

    .line 299
    .line 300
    move/from16 v5, v18

    .line 301
    .line 302
    move/from16 v6, v21

    .line 303
    .line 304
    :goto_3
    if-eq v6, v5, :cond_a

    .line 305
    .line 306
    shr-int/lit8 v8, v6, 0x3

    .line 307
    .line 308
    aget-wide v22, v0, v8

    .line 309
    .line 310
    and-int/lit8 v9, v6, 0x7

    .line 311
    .line 312
    shl-int/lit8 v9, v9, 0x3

    .line 313
    .line 314
    shr-long v22, v22, v9

    .line 315
    .line 316
    and-long v22, v22, v31

    .line 317
    .line 318
    cmp-long v18, v22, p0

    .line 319
    .line 320
    if-nez v18, :cond_6

    .line 321
    .line 322
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_6
    cmp-long v18, v22, v19

    .line 326
    .line 327
    if-eqz v18, :cond_7

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_7
    aget-wide v22, v12, v6

    .line 331
    .line 332
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->hashCode(J)I

    .line 333
    .line 334
    .line 335
    move-result v18

    .line 336
    mul-int v18, v18, v28

    .line 337
    .line 338
    shl-int/lit8 v22, v18, 0x10

    .line 339
    .line 340
    xor-int v18, v18, v22

    .line 341
    .line 342
    move-wide/from16 v22, v13

    .line 343
    .line 344
    ushr-int/lit8 v13, v18, 0x7

    .line 345
    .line 346
    invoke-virtual {v4, v13}, Lzf2;->b(I)I

    .line 347
    .line 348
    .line 349
    move-result v14

    .line 350
    and-int/2addr v13, v5

    .line 351
    sub-int v25, v14, v13

    .line 352
    .line 353
    and-int v25, v25, v5

    .line 354
    .line 355
    move/from16 v29, v15

    .line 356
    .line 357
    div-int/lit8 v15, v25, 0x8

    .line 358
    .line 359
    sub-int v13, v6, v13

    .line 360
    .line 361
    and-int/2addr v13, v5

    .line 362
    div-int/lit8 v13, v13, 0x8

    .line 363
    .line 364
    if-ne v15, v13, :cond_8

    .line 365
    .line 366
    and-int/lit8 v13, v18, 0x7f

    .line 367
    .line 368
    int-to-long v13, v13

    .line 369
    aget-wide v25, v0, v8

    .line 370
    .line 371
    move v15, v7

    .line 372
    move/from16 v27, v8

    .line 373
    .line 374
    shl-long v7, v31, v9

    .line 375
    .line 376
    not-long v7, v7

    .line 377
    and-long v7, v25, v7

    .line 378
    .line 379
    shl-long/2addr v13, v9

    .line 380
    or-long/2addr v7, v13

    .line 381
    aput-wide v7, v0, v27

    .line 382
    .line 383
    array-length v7, v0

    .line 384
    sub-int/2addr v7, v15

    .line 385
    aget-wide v8, v0, v21

    .line 386
    .line 387
    and-long v8, v8, v22

    .line 388
    .line 389
    or-long v8, v8, v16

    .line 390
    .line 391
    aput-wide v8, v0, v7

    .line 392
    .line 393
    add-int/lit8 v6, v6, 0x1

    .line 394
    .line 395
    move v7, v15

    .line 396
    move-wide/from16 v13, v22

    .line 397
    .line 398
    move/from16 v15, v29

    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_8
    move v15, v7

    .line 402
    move/from16 v27, v8

    .line 403
    .line 404
    shr-int/lit8 v7, v14, 0x3

    .line 405
    .line 406
    aget-wide v25, v0, v7

    .line 407
    .line 408
    and-int/lit8 v8, v14, 0x7

    .line 409
    .line 410
    shl-int/lit8 v8, v8, 0x3

    .line 411
    .line 412
    shr-long v35, v25, v8

    .line 413
    .line 414
    and-long v35, v35, v31

    .line 415
    .line 416
    cmp-long v13, v35, p0

    .line 417
    .line 418
    if-nez v13, :cond_9

    .line 419
    .line 420
    and-int/lit8 v13, v18, 0x7f

    .line 421
    .line 422
    move/from16 v35, v5

    .line 423
    .line 424
    move/from16 v36, v6

    .line 425
    .line 426
    int-to-long v5, v13

    .line 427
    move-wide/from16 v37, v5

    .line 428
    .line 429
    shl-long v5, v31, v8

    .line 430
    .line 431
    not-long v5, v5

    .line 432
    and-long v5, v25, v5

    .line 433
    .line 434
    shl-long v25, v37, v8

    .line 435
    .line 436
    or-long v5, v5, v25

    .line 437
    .line 438
    aput-wide v5, v0, v7

    .line 439
    .line 440
    aget-wide v5, v0, v27

    .line 441
    .line 442
    shl-long v7, v31, v9

    .line 443
    .line 444
    not-long v7, v7

    .line 445
    and-long/2addr v5, v7

    .line 446
    shl-long v7, p0, v9

    .line 447
    .line 448
    or-long/2addr v5, v7

    .line 449
    aput-wide v5, v0, v27

    .line 450
    .line 451
    aget-wide v5, v12, v36

    .line 452
    .line 453
    aput-wide v5, v12, v14

    .line 454
    .line 455
    aput-wide v33, v12, v36

    .line 456
    .line 457
    move/from16 v6, v36

    .line 458
    .line 459
    goto :goto_5

    .line 460
    :cond_9
    move/from16 v35, v5

    .line 461
    .line 462
    move/from16 v36, v6

    .line 463
    .line 464
    and-int/lit8 v5, v18, 0x7f

    .line 465
    .line 466
    int-to-long v5, v5

    .line 467
    move-wide/from16 v37, v5

    .line 468
    .line 469
    shl-long v5, v31, v8

    .line 470
    .line 471
    not-long v5, v5

    .line 472
    and-long v5, v25, v5

    .line 473
    .line 474
    shl-long v8, v37, v8

    .line 475
    .line 476
    or-long/2addr v5, v8

    .line 477
    aput-wide v5, v0, v7

    .line 478
    .line 479
    aget-wide v5, v12, v14

    .line 480
    .line 481
    aget-wide v7, v12, v36

    .line 482
    .line 483
    aput-wide v7, v12, v14

    .line 484
    .line 485
    aput-wide v5, v12, v36

    .line 486
    .line 487
    add-int/lit8 v6, v36, -0x1

    .line 488
    .line 489
    :goto_5
    array-length v5, v0

    .line 490
    sub-int/2addr v5, v15

    .line 491
    aget-wide v7, v0, v21

    .line 492
    .line 493
    and-long v7, v7, v22

    .line 494
    .line 495
    or-long v7, v7, v16

    .line 496
    .line 497
    aput-wide v7, v0, v5

    .line 498
    .line 499
    add-int/2addr v6, v15

    .line 500
    move v7, v15

    .line 501
    move-wide/from16 v13, v22

    .line 502
    .line 503
    move/from16 v15, v29

    .line 504
    .line 505
    move/from16 v5, v35

    .line 506
    .line 507
    goto/16 :goto_3

    .line 508
    .line 509
    :cond_a
    move v15, v7

    .line 510
    iget v0, v4, Lzf2;->c:I

    .line 511
    .line 512
    invoke-static {v0}, Ltd3;->a(I)I

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    iget v5, v4, Lzf2;->d:I

    .line 517
    .line 518
    sub-int/2addr v0, v5

    .line 519
    iput v0, v4, Lzf2;->e:I

    .line 520
    .line 521
    :cond_b
    move/from16 v37, v15

    .line 522
    .line 523
    goto/16 :goto_8

    .line 524
    .line 525
    :cond_c
    move v15, v7

    .line 526
    const-wide/16 p0, 0x80

    .line 527
    .line 528
    iget v0, v4, Lzf2;->c:I

    .line 529
    .line 530
    invoke-static {v0}, Ltd3;->b(I)I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    iget-object v5, v4, Lzf2;->a:[J

    .line 535
    .line 536
    iget-object v6, v4, Lzf2;->b:[J

    .line 537
    .line 538
    iget v7, v4, Lzf2;->c:I

    .line 539
    .line 540
    invoke-virtual {v4, v0}, Lzf2;->c(I)V

    .line 541
    .line 542
    .line 543
    iget-object v0, v4, Lzf2;->a:[J

    .line 544
    .line 545
    iget-object v8, v4, Lzf2;->b:[J

    .line 546
    .line 547
    iget v9, v4, Lzf2;->c:I

    .line 548
    .line 549
    move/from16 v12, v21

    .line 550
    .line 551
    :goto_6
    if-ge v12, v7, :cond_b

    .line 552
    .line 553
    shr-int/lit8 v13, v12, 0x3

    .line 554
    .line 555
    aget-wide v13, v5, v13

    .line 556
    .line 557
    and-int/lit8 v16, v12, 0x7

    .line 558
    .line 559
    shl-int/lit8 v16, v16, 0x3

    .line 560
    .line 561
    shr-long v13, v13, v16

    .line 562
    .line 563
    and-long v13, v13, v31

    .line 564
    .line 565
    cmp-long v13, v13, p0

    .line 566
    .line 567
    if-gez v13, :cond_d

    .line 568
    .line 569
    aget-wide v13, v6, v12

    .line 570
    .line 571
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 572
    .line 573
    .line 574
    move-result v16

    .line 575
    mul-int v16, v16, v28

    .line 576
    .line 577
    shl-int/lit8 v17, v16, 0x10

    .line 578
    .line 579
    xor-int v16, v16, v17

    .line 580
    .line 581
    move/from16 v37, v15

    .line 582
    .line 583
    ushr-int/lit8 v15, v16, 0x7

    .line 584
    .line 585
    invoke-virtual {v4, v15}, Lzf2;->b(I)I

    .line 586
    .line 587
    .line 588
    move-result v15

    .line 589
    move-object/from16 v17, v0

    .line 590
    .line 591
    and-int/lit8 v0, v16, 0x7f

    .line 592
    .line 593
    move-object/from16 v16, v5

    .line 594
    .line 595
    move-object/from16 v18, v6

    .line 596
    .line 597
    int-to-long v5, v0

    .line 598
    shr-int/lit8 v0, v15, 0x3

    .line 599
    .line 600
    and-int/lit8 v19, v15, 0x7

    .line 601
    .line 602
    shl-int/lit8 v19, v19, 0x3

    .line 603
    .line 604
    aget-wide v22, v17, v0

    .line 605
    .line 606
    move-wide/from16 v25, v5

    .line 607
    .line 608
    shl-long v5, v31, v19

    .line 609
    .line 610
    not-long v5, v5

    .line 611
    and-long v5, v22, v5

    .line 612
    .line 613
    shl-long v19, v25, v19

    .line 614
    .line 615
    or-long v5, v5, v19

    .line 616
    .line 617
    aput-wide v5, v17, v0

    .line 618
    .line 619
    add-int/lit8 v0, v15, -0x7

    .line 620
    .line 621
    and-int/2addr v0, v9

    .line 622
    and-int/lit8 v19, v9, 0x7

    .line 623
    .line 624
    add-int v0, v0, v19

    .line 625
    .line 626
    shr-int/lit8 v0, v0, 0x3

    .line 627
    .line 628
    aput-wide v5, v17, v0

    .line 629
    .line 630
    aput-wide v13, v8, v15

    .line 631
    .line 632
    goto :goto_7

    .line 633
    :cond_d
    move-object/from16 v17, v0

    .line 634
    .line 635
    move-object/from16 v16, v5

    .line 636
    .line 637
    move-object/from16 v18, v6

    .line 638
    .line 639
    move/from16 v37, v15

    .line 640
    .line 641
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 642
    .line 643
    move-object/from16 v5, v16

    .line 644
    .line 645
    move-object/from16 v0, v17

    .line 646
    .line 647
    move-object/from16 v6, v18

    .line 648
    .line 649
    move/from16 v15, v37

    .line 650
    .line 651
    goto :goto_6

    .line 652
    :goto_8
    invoke-virtual {v4, v3}, Lzf2;->b(I)I

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    :goto_9
    move v14, v0

    .line 657
    iget v0, v4, Lzf2;->d:I

    .line 658
    .line 659
    add-int/lit8 v0, v0, 0x1

    .line 660
    .line 661
    iput v0, v4, Lzf2;->d:I

    .line 662
    .line 663
    iget v0, v4, Lzf2;->e:I

    .line 664
    .line 665
    iget-object v3, v4, Lzf2;->a:[J

    .line 666
    .line 667
    shr-int/lit8 v5, v14, 0x3

    .line 668
    .line 669
    aget-wide v6, v3, v5

    .line 670
    .line 671
    and-int/lit8 v8, v14, 0x7

    .line 672
    .line 673
    shl-int/lit8 v8, v8, 0x3

    .line 674
    .line 675
    shr-long v12, v6, v8

    .line 676
    .line 677
    and-long v12, v12, v31

    .line 678
    .line 679
    cmp-long v9, v12, p0

    .line 680
    .line 681
    if-nez v9, :cond_e

    .line 682
    .line 683
    move/from16 v21, v37

    .line 684
    .line 685
    :cond_e
    sub-int v0, v0, v21

    .line 686
    .line 687
    iput v0, v4, Lzf2;->e:I

    .line 688
    .line 689
    iget v0, v4, Lzf2;->c:I

    .line 690
    .line 691
    shl-long v12, v31, v8

    .line 692
    .line 693
    not-long v12, v12

    .line 694
    and-long/2addr v6, v12

    .line 695
    shl-long v8, v10, v8

    .line 696
    .line 697
    or-long/2addr v6, v8

    .line 698
    aput-wide v6, v3, v5

    .line 699
    .line 700
    add-int/lit8 v5, v14, -0x7

    .line 701
    .line 702
    and-int/2addr v5, v0

    .line 703
    and-int/lit8 v0, v0, 0x7

    .line 704
    .line 705
    add-int/2addr v5, v0

    .line 706
    shr-int/lit8 v0, v5, 0x3

    .line 707
    .line 708
    aput-wide v6, v3, v0

    .line 709
    .line 710
    :goto_a
    iget-object v0, v4, Lzf2;->b:[J

    .line 711
    .line 712
    aput-wide v1, v0, v14

    .line 713
    .line 714
    return v37

    .line 715
    :cond_f
    move/from16 v29, v5

    .line 716
    .line 717
    move/from16 v37, v7

    .line 718
    .line 719
    add-int/lit8 v26, v26, 0x8

    .line 720
    .line 721
    add-int v25, v25, v26

    .line 722
    .line 723
    and-int v25, v25, v6

    .line 724
    .line 725
    move/from16 v10, v28

    .line 726
    .line 727
    move-wide/from16 v15, v33

    .line 728
    .line 729
    goto/16 :goto_0

    .line 730
    .line 731
    :cond_10
    move/from16 v29, v5

    .line 732
    .line 733
    move/from16 v24, v6

    .line 734
    .line 735
    move/from16 v28, v10

    .line 736
    .line 737
    move-wide/from16 v33, v15

    .line 738
    .line 739
    const/16 v27, 0x3f

    .line 740
    .line 741
    const/16 v30, 0x7

    .line 742
    .line 743
    const-wide/16 v31, 0xff

    .line 744
    .line 745
    const-wide v35, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    move v15, v7

    .line 751
    if-ne v3, v15, :cond_16

    .line 752
    .line 753
    iget-object v3, v0, Ldh;->f:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v3, Lzf2;

    .line 756
    .line 757
    if-eqz v3, :cond_15

    .line 758
    .line 759
    invoke-virtual {v3, v1, v2}, Lzf2;->a(J)Z

    .line 760
    .line 761
    .line 762
    move-result v3

    .line 763
    if-ne v3, v15, :cond_15

    .line 764
    .line 765
    iget-object v0, v0, Ldh;->f:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast v0, Lzf2;

    .line 768
    .line 769
    if-eqz v0, :cond_13

    .line 770
    .line 771
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    mul-int v3, v3, v28

    .line 776
    .line 777
    shl-int/lit8 v4, v3, 0x10

    .line 778
    .line 779
    xor-int/2addr v3, v4

    .line 780
    and-int/lit8 v4, v3, 0x7f

    .line 781
    .line 782
    iget v5, v0, Lzf2;->c:I

    .line 783
    .line 784
    ushr-int/lit8 v3, v3, 0x7

    .line 785
    .line 786
    :goto_b
    and-int/2addr v3, v5

    .line 787
    iget-object v6, v0, Lzf2;->a:[J

    .line 788
    .line 789
    shr-int/lit8 v7, v3, 0x3

    .line 790
    .line 791
    and-int/lit8 v8, v3, 0x7

    .line 792
    .line 793
    shl-int/lit8 v8, v8, 0x3

    .line 794
    .line 795
    aget-wide v9, v6, v7

    .line 796
    .line 797
    ushr-long/2addr v9, v8

    .line 798
    const/4 v15, 0x1

    .line 799
    add-int/2addr v7, v15

    .line 800
    aget-wide v11, v6, v7

    .line 801
    .line 802
    rsub-int/lit8 v6, v8, 0x40

    .line 803
    .line 804
    shl-long v6, v11, v6

    .line 805
    .line 806
    int-to-long v11, v8

    .line 807
    neg-long v11, v11

    .line 808
    shr-long v11, v11, v27

    .line 809
    .line 810
    and-long/2addr v6, v11

    .line 811
    or-long/2addr v6, v9

    .line 812
    int-to-long v8, v4

    .line 813
    mul-long v8, v8, v17

    .line 814
    .line 815
    xor-long/2addr v8, v6

    .line 816
    sub-long v10, v8, v17

    .line 817
    .line 818
    not-long v8, v8

    .line 819
    and-long/2addr v8, v10

    .line 820
    and-long v8, v8, v35

    .line 821
    .line 822
    :goto_c
    cmp-long v10, v8, v33

    .line 823
    .line 824
    if-eqz v10, :cond_12

    .line 825
    .line 826
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 827
    .line 828
    .line 829
    move-result v10

    .line 830
    shr-int/lit8 v10, v10, 0x3

    .line 831
    .line 832
    add-int/2addr v10, v3

    .line 833
    and-int/2addr v10, v5

    .line 834
    iget-object v11, v0, Lzf2;->b:[J

    .line 835
    .line 836
    aget-wide v12, v11, v10

    .line 837
    .line 838
    cmp-long v11, v12, v1

    .line 839
    .line 840
    if-nez v11, :cond_11

    .line 841
    .line 842
    goto :goto_d

    .line 843
    :cond_11
    sub-long v10, v8, v22

    .line 844
    .line 845
    and-long/2addr v8, v10

    .line 846
    goto :goto_c

    .line 847
    :cond_12
    not-long v8, v6

    .line 848
    shl-long v8, v8, p1

    .line 849
    .line 850
    and-long/2addr v6, v8

    .line 851
    and-long v6, v6, v35

    .line 852
    .line 853
    cmp-long v6, v6, v33

    .line 854
    .line 855
    if-eqz v6, :cond_14

    .line 856
    .line 857
    const/4 v10, -0x1

    .line 858
    :goto_d
    if-ltz v10, :cond_13

    .line 859
    .line 860
    iget v1, v0, Lzf2;->d:I

    .line 861
    .line 862
    const/4 v15, 0x1

    .line 863
    sub-int/2addr v1, v15

    .line 864
    iput v1, v0, Lzf2;->d:I

    .line 865
    .line 866
    iget-object v1, v0, Lzf2;->a:[J

    .line 867
    .line 868
    iget v0, v0, Lzf2;->c:I

    .line 869
    .line 870
    shr-int/lit8 v2, v10, 0x3

    .line 871
    .line 872
    and-int/lit8 v3, v10, 0x7

    .line 873
    .line 874
    shl-int/lit8 v3, v3, 0x3

    .line 875
    .line 876
    aget-wide v4, v1, v2

    .line 877
    .line 878
    shl-long v6, v31, v3

    .line 879
    .line 880
    not-long v6, v6

    .line 881
    and-long/2addr v4, v6

    .line 882
    shl-long v6, v19, v3

    .line 883
    .line 884
    or-long v3, v4, v6

    .line 885
    .line 886
    aput-wide v3, v1, v2

    .line 887
    .line 888
    add-int/lit8 v10, v10, -0x7

    .line 889
    .line 890
    and-int v2, v10, v0

    .line 891
    .line 892
    and-int/lit8 v0, v0, 0x7

    .line 893
    .line 894
    add-int/2addr v2, v0

    .line 895
    shr-int/lit8 v0, v2, 0x3

    .line 896
    .line 897
    aput-wide v3, v1, v0

    .line 898
    .line 899
    const/4 v15, 0x1

    .line 900
    return v15

    .line 901
    :cond_13
    const/4 v15, 0x1

    .line 902
    goto :goto_e

    .line 903
    :cond_14
    const/4 v15, 0x1

    .line 904
    add-int/lit8 v21, v21, 0x8

    .line 905
    .line 906
    add-int v3, v3, v21

    .line 907
    .line 908
    goto :goto_b

    .line 909
    :cond_15
    return v21

    .line 910
    :cond_16
    :goto_e
    return v15
.end method
