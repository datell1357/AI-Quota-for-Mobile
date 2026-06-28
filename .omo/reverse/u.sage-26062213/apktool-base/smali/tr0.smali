.class public final synthetic Ltr0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lvr0;


# direct methods
.method public synthetic constructor <init>(Lvr0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ltr0;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ltr0;->o:Lvr0;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lvr0;Lur0;Lwu4;)V
    .locals 0

    .line 10
    const/4 p2, 0x1

    iput p2, p0, Ltr0;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr0;->o:Lvr0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ltr0;->n:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    iget-object p0, p0, Ltr0;->o:Lvr0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lwa2;->a:Lis3;

    .line 11
    .line 12
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lua2;

    .line 17
    .line 18
    iget-object v0, v0, Lua2;->d:Lee2;

    .line 19
    .line 20
    sget-object v0, Lb93;->a:Llc0;

    .line 21
    .line 22
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lp93;

    .line 27
    .line 28
    sget-object v2, Lb93;->b:Llc0;

    .line 29
    .line 30
    invoke-static {p0, v2}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lx83;

    .line 35
    .line 36
    new-instance v2, Lm93;

    .line 37
    .line 38
    iget-boolean v3, p0, Lvr0;->H:Z

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    new-instance v3, Ll93;

    .line 43
    .line 44
    invoke-direct {v3, v1}, Lkt4;-><init>(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object v3, Lk93;->z:Lk93;

    .line 49
    .line 50
    :goto_0
    iget-boolean v1, p0, Lvr0;->I:Z

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v0, v0, Lp93;->a:Lo93;

    .line 55
    .line 56
    new-instance v0, Lh93;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    sget-object v0, Lg93;->d:Lg93;

    .line 63
    .line 64
    :goto_1
    iget-boolean v1, p0, Lvr0;->J:Z

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    new-instance v1, Lj93;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    sget-object v1, Li93;->r:Li93;

    .line 75
    .line 76
    :goto_2
    iget-boolean p0, p0, Lvr0;->K:Z

    .line 77
    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    new-instance p0, Lf93;

    .line 81
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    sget-object p0, Le93;->x:Le93;

    .line 87
    .line 88
    :goto_3
    invoke-direct {v2, v3, v0, v1, p0}, Lm93;-><init>(Lkt4;Lon4;Lht4;Lfl4;)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :pswitch_0
    sget-object v0, Lb93;->b:Llc0;

    .line 93
    .line 94
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lx83;

    .line 99
    .line 100
    iget-object v2, p0, Lvr0;->L:Lc93;

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Lkr0;->H0(Ljr0;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lvr0;->L:Lc93;

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    if-nez v2, :cond_6

    .line 114
    .line 115
    new-instance v5, Lur0;

    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-direct {v5, p0, v0}, Lur0;-><init>(Lvr0;I)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lur0;

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    invoke-direct {v0, p0, v2}, Lur0;-><init>(Lvr0;I)V

    .line 125
    .line 126
    .line 127
    new-instance v2, Lwu4;

    .line 128
    .line 129
    invoke-direct {v2, v1, p0}, Lwu4;-><init>(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    new-instance v6, Ltr0;

    .line 133
    .line 134
    invoke-direct {v6, p0, v0, v2}, Ltr0;-><init>(Lvr0;Lur0;Lwu4;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lvr0;->D:Lxs1;

    .line 138
    .line 139
    iget-boolean v3, p0, Lvr0;->E:Z

    .line 140
    .line 141
    iget v4, p0, Lvr0;->F:F

    .line 142
    .line 143
    sget-object v0, La93;->a:Ld34;

    .line 144
    .line 145
    new-instance v0, Lc93;

    .line 146
    .line 147
    invoke-direct {v0}, Lkr0;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v1, Ldc;

    .line 151
    .line 152
    invoke-direct/range {v1 .. v6}, Ldc;-><init>(Lxs1;ZFLur0;Ltr0;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Lvr0;->L:Lc93;

    .line 162
    .line 163
    :cond_6
    :goto_4
    sget-object p0, Lt64;->a:Lt64;

    .line 164
    .line 165
    return-object p0

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
