.class public final synthetic Lyi2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lwa0;

.field public final synthetic p:Lpe1;

.field public final synthetic q:Lpe1;

.field public final synthetic r:Lpg2;


# direct methods
.method public synthetic constructor <init>(Lwa0;Lpe1;Lpe1;Lpg2;I)V
    .locals 0

    .line 1
    iput p5, p0, Lyi2;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lyi2;->o:Lwa0;

    .line 4
    .line 5
    iput-object p2, p0, Lyi2;->p:Lpe1;

    .line 6
    .line 7
    iput-object p3, p0, Lyi2;->q:Lpe1;

    .line 8
    .line 9
    iput-object p4, p0, Lyi2;->r:Lpg2;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lyi2;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lyi2;->r:Lpg2;

    .line 4
    .line 5
    iget-object v2, p0, Lyi2;->q:Lpe1;

    .line 6
    .line 7
    iget-object v3, p0, Lyi2;->p:Lpe1;

    .line 8
    .line 9
    iget-object p0, p0, Lyi2;->o:Lwa0;

    .line 10
    .line 11
    check-cast p1, Lbe;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lk14;->c()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lyh2;

    .line 21
    .line 22
    iget-object v0, v0, Lyh2;->o:Lqi2;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    check-cast v0, Lva0;

    .line 28
    .line 29
    iget-object p0, p0, Lwa0;->c:Lws2;

    .line 30
    .line 31
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    invoke-interface {v1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget p0, Lqi2;->r:I

    .line 57
    .line 58
    invoke-static {v0}, Lmt1;->z(Lqi2;)Lai3;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Lai3;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lqi2;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v2, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lo11;

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    :goto_1
    sget p0, Lqi2;->r:I

    .line 87
    .line 88
    invoke-static {v0}, Lmt1;->z(Lqi2;)Lai3;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {p0}, Lai3;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lqi2;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-interface {v3, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Lo11;

    .line 114
    .line 115
    :goto_3
    return-object p0

    .line 116
    :pswitch_0
    invoke-interface {p1}, Lk14;->b()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lyh2;

    .line 121
    .line 122
    iget-object v0, v0, Lyh2;->o:Lqi2;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    check-cast v0, Lva0;

    .line 128
    .line 129
    iget-object p0, p0, Lwa0;->c:Lws2;

    .line 130
    .line 131
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-nez p0, :cond_6

    .line 142
    .line 143
    invoke-interface {v1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_4

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_4
    sget p0, Lqi2;->r:I

    .line 157
    .line 158
    invoke-static {v0}, Lmt1;->z(Lqi2;)Lai3;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-interface {p0}, Lai3;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lqi2;

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_5
    invoke-interface {v2, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, Ly31;

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_6
    :goto_5
    sget p0, Lqi2;->r:I

    .line 187
    .line 188
    invoke-static {v0}, Lmt1;->z(Lqi2;)Lai3;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-interface {p0}, Lai3;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lqi2;

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_7
    invoke-interface {v3, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    check-cast p0, Ly31;

    .line 214
    .line 215
    :goto_7
    return-object p0

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
