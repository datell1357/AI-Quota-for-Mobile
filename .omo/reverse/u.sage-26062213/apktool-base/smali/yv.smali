.class public final Lyv;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lph0;
.implements Lqh0;


# instance fields
.field public final synthetic a:I

.field public final b:Lnh0;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Lyv;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lxv;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p1, v0, v1}, Lho0;-><init>([Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lyv;->b:Lnh0;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lm13;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {p1, v0, v1}, Lm13;-><init>([Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lyv;->b:Lnh0;

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lk13;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {p1, v0, v1}, Lk13;-><init>([Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lyv;->b:Lnh0;

    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lpy;

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {p1, v1, v0}, Lpy;-><init>([Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lyv;->b:Lnh0;

    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lpy;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {p1, v1, v0}, Lpy;-><init>([Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lyv;->b:Lnh0;

    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lkm1;)Lnh0;
    .locals 4

    .line 1
    iget p0, p0, Lyv;->a:I

    .line 2
    .line 3
    const-string v0, "http.protocol.single-cookie-header"

    .line 4
    .line 5
    const-string v1, "http.protocol.cookie-datepatterns"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, v1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/Collection;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v1, v1, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    move-object v2, p0

    .line 33
    check-cast v2, [Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    check-cast p1, Lf1;

    .line 36
    .line 37
    invoke-virtual {p1, v0, v3}, Lf1;->d(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    new-instance p1, Lm13;

    .line 42
    .line 43
    invoke-direct {p1, v2, p0}, Lm13;-><init>([Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Lm13;

    .line 48
    .line 49
    invoke-direct {p1, v2, v3}, Lm13;-><init>([Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-object p1

    .line 53
    :pswitch_0
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-interface {p1, v1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/util/Collection;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    new-array v1, v1, [Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v2, p0

    .line 74
    check-cast v2, [Ljava/lang/String;

    .line 75
    .line 76
    :cond_2
    check-cast p1, Lf1;

    .line 77
    .line 78
    invoke-virtual {p1, v0, v3}, Lf1;->d(Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    new-instance p1, Lk13;

    .line 83
    .line 84
    invoke-direct {p1, v2, p0}, Lk13;-><init>([Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance p1, Lk13;

    .line 89
    .line 90
    invoke-direct {p1, v2, v3}, Lk13;-><init>([Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-object p1

    .line 94
    :pswitch_1
    const/4 p0, 0x2

    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    invoke-interface {p1, v1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/util/Collection;

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    new-array v0, v0, [Ljava/lang/String;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    move-object v2, p1

    .line 116
    check-cast v2, [Ljava/lang/String;

    .line 117
    .line 118
    :cond_4
    new-instance p1, Lpy;

    .line 119
    .line 120
    invoke-direct {p1, v2, p0}, Lpy;-><init>([Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    new-instance p1, Lpy;

    .line 125
    .line 126
    invoke-direct {p1, v2, p0}, Lpy;-><init>([Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    :goto_2
    return-object p1

    .line 130
    :pswitch_2
    if-eqz p1, :cond_7

    .line 131
    .line 132
    invoke-interface {p1, v1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Ljava/util/Collection;

    .line 137
    .line 138
    if-eqz p0, :cond_6

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    new-array p1, p1, [Ljava/lang/String;

    .line 145
    .line 146
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    move-object v2, p0

    .line 151
    check-cast v2, [Ljava/lang/String;

    .line 152
    .line 153
    :cond_6
    new-instance p0, Lpy;

    .line 154
    .line 155
    invoke-direct {p0, v2, v3}, Lpy;-><init>([Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    new-instance p0, Lpy;

    .line 160
    .line 161
    invoke-direct {p0, v2, v3}, Lpy;-><init>([Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    :goto_3
    return-object p0

    .line 165
    :pswitch_3
    if-eqz p1, :cond_9

    .line 166
    .line 167
    invoke-interface {p1, v1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Ljava/util/Collection;

    .line 172
    .line 173
    if-eqz p0, :cond_8

    .line 174
    .line 175
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    new-array v1, v1, [Ljava/lang/String;

    .line 180
    .line 181
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    move-object v2, p0

    .line 186
    check-cast v2, [Ljava/lang/String;

    .line 187
    .line 188
    :cond_8
    check-cast p1, Lf1;

    .line 189
    .line 190
    invoke-virtual {p1, v0, v3}, Lf1;->d(Ljava/lang/String;Z)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    new-instance p1, Lxv;

    .line 195
    .line 196
    invoke-direct {p1, v2, p0}, Lho0;-><init>([Ljava/lang/String;Z)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_9
    new-instance p1, Lxv;

    .line 201
    .line 202
    invoke-direct {p1, v2, v3}, Lho0;-><init>([Ljava/lang/String;Z)V

    .line 203
    .line 204
    .line 205
    :goto_4
    return-object p1

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lrl1;)Lnh0;
    .locals 0

    .line 1
    iget p1, p0, Lyv;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lyv;->b:Lnh0;

    .line 7
    .line 8
    check-cast p0, Lm13;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lyv;->b:Lnh0;

    .line 12
    .line 13
    check-cast p0, Lk13;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lyv;->b:Lnh0;

    .line 17
    .line 18
    check-cast p0, Lpy;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    iget-object p0, p0, Lyv;->b:Lnh0;

    .line 22
    .line 23
    check-cast p0, Lpy;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_3
    iget-object p0, p0, Lyv;->b:Lnh0;

    .line 27
    .line 28
    check-cast p0, Lxv;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
