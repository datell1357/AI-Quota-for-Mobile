.class public final Lm70;
.super Lg34;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc44;Ljava/lang/Class;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lm70;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lm70;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lm70;->b:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lg34;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lm70;->a:I

    iput-object p1, p0, Lm70;->b:Ljava/lang/Object;

    iput-object p2, p0, Lm70;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lww1;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lm70;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lm70;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lm70;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/lang/Class;

    .line 12
    .line 13
    check-cast v2, Lc44;

    .line 14
    .line 15
    iget-object v0, v2, Lc44;->p:Lg34;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lfw1;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {p1, v2}, Lww1;->K(Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "Expected a "

    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, " but was "

    .line 60
    .line 61
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p0, "; at path "

    .line 68
    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const/4 p1, 0x5

    .line 80
    invoke-direct {v1, p0, p1}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :cond_1
    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    invoke-virtual {p1}, Lww1;->j()V

    .line 86
    .line 87
    .line 88
    move-object v0, v1

    .line 89
    :goto_1
    invoke-virtual {p1}, Lww1;->s0()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v4, 0x4

    .line 94
    const-string v5, "dateTime"

    .line 95
    .line 96
    const-string v6, "offset"

    .line 97
    .line 98
    if-eq v3, v4, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Lww1;->j0()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_3

    .line 109
    .line 110
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_2

    .line 115
    .line 116
    invoke-virtual {p1}, Lww1;->y0()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    move-object v1, p0

    .line 121
    check-cast v1, Lf34;

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Lf34;->b(Lww1;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v1}, Lku1;->j(Ljava/lang/Object;)Ljava/time/LocalDateTime;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    move-object v0, v2

    .line 133
    check-cast v0, Lg34;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lku1;->s(Ljava/lang/Object;)Ljava/time/ZoneOffset;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p1}, Lww1;->B()V

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v5, p1}, Lmu1;->a(Ljava/io/Serializable;Ljava/lang/String;Lww1;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lku1;->z(Ljava/lang/Object;)Ljava/time/LocalDateTime;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {v0, v6, p1}, Lmu1;->a(Ljava/io/Serializable;Ljava/lang/String;Lww1;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Lku1;->B(Ljava/lang/Object;)Ljava/time/ZoneOffset;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p0, p1}, Lpu1;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    :pswitch_1
    invoke-virtual {p1}, Lww1;->s0()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    const/16 v3, 0x9

    .line 171
    .line 172
    if-ne v0, v3, :cond_5

    .line 173
    .line 174
    invoke-virtual {p1}, Lww1;->o0()V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_5
    check-cast v2, Lon2;

    .line 179
    .line 180
    invoke-interface {v2}, Lon2;->d()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    move-object v1, v0

    .line 185
    check-cast v1, Ljava/util/Collection;

    .line 186
    .line 187
    invoke-virtual {p1}, Lww1;->b()V

    .line 188
    .line 189
    .line 190
    :goto_2
    invoke-virtual {p1}, Lww1;->L()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_6

    .line 195
    .line 196
    move-object v0, p0

    .line 197
    check-cast v0, Lou1;

    .line 198
    .line 199
    iget-object v0, v0, Lou1;->c:Lg34;

    .line 200
    .line 201
    invoke-virtual {v0, p1}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_6
    invoke-virtual {p1}, Lww1;->A()V

    .line 210
    .line 211
    .line 212
    :goto_3
    return-object v1

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lbx1;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lm70;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lm70;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lm70;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lc44;

    .line 11
    .line 12
    iget-object p0, p0, Lc44;->p:Lg34;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lg34;->c(Lbx1;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-static {p2}, Lpu1;->l(Ljava/lang/Object;)Ljava/time/OffsetDateTime;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1}, Lbx1;->r()V

    .line 23
    .line 24
    .line 25
    const-string v0, "dateTime"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lbx1;->F(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v1, Lf34;

    .line 31
    .line 32
    invoke-static {p2}, Ld51;->o(Ljava/time/OffsetDateTime;)Ljava/time/LocalDateTime;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, p1, v0}, Lf34;->c(Lbx1;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "offset"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lbx1;->F(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast p0, Lg34;

    .line 45
    .line 46
    invoke-static {p2}, Lpu1;->r(Ljava/time/OffsetDateTime;)Ljava/time/ZoneOffset;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p0, p1, p2}, Lg34;->c(Lbx1;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lbx1;->B()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    check-cast p2, Ljava/util/Collection;

    .line 58
    .line 59
    if-nez p2, :cond_0

    .line 60
    .line 61
    invoke-virtual {p1}, Lbx1;->L()Lbx1;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p1}, Lbx1;->j()V

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    move-object v0, v1

    .line 83
    check-cast v0, Lou1;

    .line 84
    .line 85
    invoke-virtual {v0, p1, p2}, Lou1;->c(Lbx1;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lbx1;->A()V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
