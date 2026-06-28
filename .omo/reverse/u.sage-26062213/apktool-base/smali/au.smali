.class public final Lau;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lu/sage/a;


# direct methods
.method public synthetic constructor <init>(Lu/sage/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lau;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lau;->o:Lu/sage/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget p2, p0, Lau;->n:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object p0, p0, Lau;->o:Lu/sage/a;

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p2, Lez3;->a:Lra3;

    .line 24
    .line 25
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    new-array v0, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lra3;->h([Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lu/sage/a;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    sget-object p1, Lez3;->a:Lra3;

    .line 41
    .line 42
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p2, ": [RemoteConfig] setupScriptObserver: Received NULL/empty script from provider."

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    new-array p0, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-object v2

    .line 60
    :pswitch_0
    check-cast p1, Ld84;

    .line 61
    .line 62
    const-string p1, "RepositoryObserver"

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lu/sage/a;->x(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :pswitch_1
    check-cast p1, Ljs2;

    .line 69
    .line 70
    iget-object p2, p1, Ljs2;->n:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    iget-object p1, p1, Ljs2;->o:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Ljava/lang/String;

    .line 81
    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    iget-boolean v3, p0, Lu/sage/a;->w:Z

    .line 85
    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    const-string v3, "usage_fetch"

    .line 89
    .line 90
    invoke-static {p1, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    sget-object v3, Lez3;->a:Lra3;

    .line 97
    .line 98
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lu/sage/a;->g()Ln8;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lu/sage/a;->q()Ly84;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v4, "web_app"

    .line 118
    .line 119
    invoke-static {p1, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    sget-object p1, Lqj3;->b:Lqj3;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    sget-object p1, Loj3;->b:Loj3;

    .line 129
    .line 130
    :goto_2
    invoke-virtual {v1, v3, p1}, Ln8;->h(Ly84;Lv43;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    sget-object p1, Lez3;->a:Lra3;

    .line 135
    .line 136
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const-string v4, ": Session expiration detected (source=usage_fetch). Skipping duplicate log."

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    new-array v1, v1, [Ljava/lang/Object;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :goto_3
    iput-boolean v0, p0, Lu/sage/a;->w:Z

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    iput-boolean v1, p0, Lu/sage/a;->w:Z

    .line 157
    .line 158
    :cond_5
    :goto_4
    iput-boolean p2, p0, Lu/sage/a;->z:Z

    .line 159
    .line 160
    const-string p1, "SessionExpiredObserver"

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lu/sage/a;->x(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object v2

    .line 166
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_6

    .line 173
    .line 174
    sget-object p1, Lez3;->a:Lra3;

    .line 175
    .line 176
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    const-string v3, ": isLoggedIn flipped to false; clearing WebView. Expiration analytics is handled at the JS fetch detection site."

    .line 181
    .line 182
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    new-array p2, v1, [Ljava/lang/Object;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {p2}, Lra3;->c([Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lu/sage/a;->n:Landroid/os/Handler;

    .line 194
    .line 195
    new-instance p2, Lrt;

    .line 196
    .line 197
    invoke-direct {p2, p0, v0}, Lrt;-><init>(Lu/sage/a;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    .line 202
    .line 203
    :cond_6
    return-object v2

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
