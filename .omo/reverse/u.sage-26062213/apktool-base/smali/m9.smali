.class public final Lm9;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lq9;


# direct methods
.method public synthetic constructor <init>(Lq9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm9;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Lm9;->p:Lq9;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lm9;->o:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lm9;->p:Lq9;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lhu2;

    .line 12
    .line 13
    invoke-virtual {p0}, Lq9;->getPointerIconService()Lyv2;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_0
    check-cast p1, Lhu2;

    .line 19
    .line 20
    invoke-virtual {p0}, Lq9;->getTextToolbar()Lby3;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_1
    check-cast p1, Lhu2;

    .line 26
    .line 27
    invoke-virtual {p0}, Lq9;->getSoftwareKeyboardController()Lrp3;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_2
    check-cast p1, Lhu2;

    .line 33
    .line 34
    invoke-virtual {p0}, Lq9;->getTextInputService()Lhx3;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_3
    check-cast p1, Lhu2;

    .line 40
    .line 41
    invoke-virtual {p0}, Lq9;->getInputModeManager()Lkr1;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_4
    check-cast p1, Lne1;

    .line 47
    .line 48
    invoke-virtual {p0}, Lq9;->getUncaughtExceptionHandler$ui()Lha3;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-ne v0, v3, :cond_1

    .line 68
    .line 69
    invoke-interface {p1}, Lne1;->a()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    new-instance v0, Ld9;

    .line 80
    .line 81
    invoke-direct {v0, v2, p1}, Ld9;-><init>(ILne1;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    return-object v1

    .line 88
    :pswitch_5
    check-cast p1, Lp91;

    .line 89
    .line 90
    iget p1, p1, Lp91;->a:I

    .line 91
    .line 92
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ldh;

    .line 97
    .line 98
    iget-object v0, p0, Ldh;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lq9;

    .line 101
    .line 102
    invoke-virtual {p0}, Ldh;->f()Lka1;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    iget-boolean v3, v3, Lka1;->B:Z

    .line 109
    .line 110
    if-ne v3, v2, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Lq9;->t(I)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    new-instance v2, Lw33;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 122
    .line 123
    .line 124
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 125
    .line 126
    iput-object v3, v2, Lw33;->n:Ljava/lang/Object;

    .line 127
    .line 128
    invoke-virtual {p0}, Ldh;->f()Lka1;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v0}, Lq9;->getEmbeddedViewFocusRect()Ll33;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v4, Laa1;

    .line 137
    .line 138
    invoke-direct {v4, p1, v2}, Laa1;-><init>(ILw33;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1, v0, v4}, Ldh;->e(ILl33;Lpe1;)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    invoke-virtual {p0}, Ldh;->f()Lka1;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-eq v3, p0, :cond_4

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    if-eqz p1, :cond_6

    .line 161
    .line 162
    iget-object p0, v2, Lw33;->n:Ljava/lang/Object;

    .line 163
    .line 164
    if-nez p0, :cond_5

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-eqz p0, :cond_6

    .line 172
    .line 173
    iget-object p0, v2, Lw33;->n:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p0, Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    :cond_6
    :goto_2
    return-object v1

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
