.class public final synthetic Lb92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:Lgx;

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Lu/sage/MainActivity;

.field public final synthetic q:Z

.field public final synthetic r:Lxi2;

.field public final synthetic s:Lpg2;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lgx;Ljava/util/List;Lu/sage/MainActivity;ZLxi2;Lpg2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb92;->n:Lgx;

    .line 5
    .line 6
    iput-object p2, p0, Lb92;->o:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lb92;->p:Lu/sage/MainActivity;

    .line 9
    .line 10
    iput-boolean p4, p0, Lb92;->q:Z

    .line 11
    .line 12
    iput-object p5, p0, Lb92;->r:Lxi2;

    .line 13
    .line 14
    iput-object p6, p0, Lb92;->s:Lpg2;

    .line 15
    .line 16
    iput-object p7, p0, Lb92;->t:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    .line 1
    sget v0, Lu/sage/MainActivity;->C:I

    .line 2
    .line 3
    sget-object v0, Lez3;->a:Lra3;

    .line 4
    .line 5
    iget-object v1, p0, Lb92;->n:Lgx;

    .line 6
    .line 7
    iget-object v1, v1, Lgx;->a:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lb92;->o:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    move-object v5, v3

    .line 36
    check-cast v5, Ly84;

    .line 37
    .line 38
    invoke-static {v5}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v3, v4

    .line 50
    :goto_0
    check-cast v3, Ly84;

    .line 51
    .line 52
    iget-object v0, p0, Lb92;->p:Lu/sage/MainActivity;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lu/sage/MainActivity;->i()Ln8;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget-object v6, Lez3;->a:Lra3;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    new-array v7, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v6, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v7, "service_type"

    .line 79
    .line 80
    iget-object v3, v3, Ly84;->q:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v6, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "bottom_nav_clicked"

    .line 86
    .line 87
    invoke-virtual {v5, v3, v6}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5, v3, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v3, v0, Lu/sage/MainActivity;->B:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v3, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0}, Lu/sage/MainActivity;->i()Ln8;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v5, v0, Lu/sage/MainActivity;->B:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {v5, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_3

    .line 119
    .line 120
    sget-object v3, Lez3;->a:Lra3;

    .line 121
    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    sget-object v6, Lez3;->a:Lra3;

    .line 132
    .line 133
    new-array v2, v2, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-instance v2, Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 144
    .line 145
    .line 146
    if-eqz v5, :cond_4

    .line 147
    .line 148
    const-string v6, "from_tab"

    .line 149
    .line 150
    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    const-string v5, "to_tab"

    .line 154
    .line 155
    invoke-virtual {v2, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v5, "tab_switched"

    .line 159
    .line 160
    invoke-virtual {v3, v5, v2}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3, v5, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    .line 169
    .line 170
    :goto_1
    iput-object v1, v0, Lu/sage/MainActivity;->B:Ljava/lang/String;

    .line 171
    .line 172
    :cond_5
    iget-object v0, p0, Lb92;->s:Lpg2;

    .line 173
    .line 174
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lyh2;

    .line 179
    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    iget-object v0, v0, Lyh2;->o:Lqi2;

    .line 183
    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    iget-object v0, v0, Lqi2;->o:Lgg;

    .line 187
    .line 188
    iget-object v0, v0, Lgg;->e:Ljava/lang/Object;

    .line 189
    .line 190
    move-object v4, v0

    .line 191
    check-cast v4, Ljava/lang/String;

    .line 192
    .line 193
    :cond_6
    iget-boolean v0, p0, Lb92;->q:Z

    .line 194
    .line 195
    iget-object v2, p0, Lb92;->r:Lxi2;

    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-static {v4, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_7

    .line 204
    .line 205
    invoke-static {v2, v1}, Lxi2;->d(Lxi2;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_7
    new-instance v0, Lao0;

    .line 210
    .line 211
    const/4 v3, 0x5

    .line 212
    iget-object p0, p0, Lb92;->t:Ljava/lang/String;

    .line 213
    .line 214
    invoke-direct {v0, p0, v3}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1, v0}, Lxi2;->a(Ljava/lang/String;Lpe1;)V

    .line 218
    .line 219
    .line 220
    :goto_2
    sget-object p0, Lt64;->a:Lt64;

    .line 221
    .line 222
    return-object p0
.end method
