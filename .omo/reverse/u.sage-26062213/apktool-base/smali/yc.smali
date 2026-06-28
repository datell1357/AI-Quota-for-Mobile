.class public final Lyc;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Lyc;->o:I

    iput-object p1, p0, Lyc;->p:Ljava/lang/Object;

    iput-object p2, p0, Lyc;->q:Ljava/lang/Object;

    iput-object p3, p0, Lyc;->r:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lpb4;Lxy1;Lpb4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lyc;->o:I

    .line 3
    .line 4
    iput-object p1, p0, Lyc;->p:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lyc;->r:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lyc;->q:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lyc;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lyc;->r:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v5, p0, Lyc;->q:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lyc;->p:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Lka1;

    .line 16
    .line 17
    check-cast p0, Lka1;

    .line 18
    .line 19
    invoke-static {p1, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    check-cast v5, Ldh;

    .line 27
    .line 28
    iget-object p0, v5, Ldh;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lka1;

    .line 31
    .line 32
    invoke-static {p1, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    check-cast v4, Lpe1;

    .line 39
    .line 40
    invoke-interface {v4, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p0, "Focus search landed at the root."

    .line 56
    .line 57
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-object v2

    .line 61
    :pswitch_0
    check-cast p1, Lb24;

    .line 62
    .line 63
    move-object v0, p1

    .line 64
    check-cast v0, Lgw0;

    .line 65
    .line 66
    check-cast v5, Lgw0;

    .line 67
    .line 68
    invoke-static {v5}, Lw80;->S(Ljr0;)Lsr2;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lq9;

    .line 73
    .line 74
    invoke-virtual {v1}, Lq9;->getDragAndDropManager()Lfw0;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lsa;

    .line 79
    .line 80
    iget-object v1, v1, Lsa;->b:Lfi;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lfi;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    check-cast v4, Lwu4;

    .line 89
    .line 90
    invoke-static {v4}, Lon4;->B(Lwu4;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    invoke-static {v0, v1, v2}, Lfl4;->d(Lgw0;J)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    check-cast p0, Lw33;

    .line 101
    .line 102
    iput-object p1, p0, Lw33;->n:Ljava/lang/Object;

    .line 103
    .line 104
    sget-object p0, La24;->p:La24;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    sget-object p0, La24;->n:La24;

    .line 108
    .line 109
    :goto_2
    return-object p0

    .line 110
    :pswitch_1
    check-cast p1, Lhv0;

    .line 111
    .line 112
    check-cast p0, Lgp3;

    .line 113
    .line 114
    check-cast v4, Lhe;

    .line 115
    .line 116
    new-instance p1, Lt4;

    .line 117
    .line 118
    invoke-direct {p1, p0, v5, v4, v1}, Lt4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    return-object p1

    .line 122
    :pswitch_2
    check-cast p1, Lkx0;

    .line 123
    .line 124
    check-cast p0, Lpb4;

    .line 125
    .line 126
    check-cast v4, Lxy1;

    .line 127
    .line 128
    check-cast v5, Lpb4;

    .line 129
    .line 130
    invoke-interface {p1}, Lkx0;->z()Leh;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Leh;->u()Lv20;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lbd;->getView()Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const/16 v6, 0x8

    .line 147
    .line 148
    if-eq v0, v6, :cond_5

    .line 149
    .line 150
    iput-boolean v1, p0, Lbd;->L:Z

    .line 151
    .line 152
    iget-object v0, v4, Lxy1;->A:Lsr2;

    .line 153
    .line 154
    instance-of v1, v0, Lq9;

    .line 155
    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    move-object v2, v0

    .line 159
    check-cast v2, Lq9;

    .line 160
    .line 161
    :cond_3
    if-eqz v2, :cond_4

    .line 162
    .line 163
    invoke-static {p1}, Lz8;->a(Lv20;)Landroid/graphics/Canvas;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object v0, v2, Lq9;->c0:Lid;

    .line 168
    .line 169
    if-eqz v0, :cond_4

    .line 170
    .line 171
    invoke-virtual {v5, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 172
    .line 173
    .line 174
    :cond_4
    iput-boolean v3, p0, Lbd;->L:Z

    .line 175
    .line 176
    :cond_5
    sget-object p0, Lt64;->a:Lt64;

    .line 177
    .line 178
    return-object p0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
