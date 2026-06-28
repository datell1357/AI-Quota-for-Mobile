.class public final Lvv2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lft1;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lft1;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvv2;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lvv2;->b:Lft1;

    .line 7
    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v0, 0x1d

    .line 11
    .line 12
    if-lt p2, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lvv2;->a()Landroid/view/MotionEvent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {v1}, Lfi1;->w(Landroid/view/MotionEvent;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lvv2;->a()Landroid/view/MotionEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lvv2;->a()Landroid/view/MotionEvent;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lvv2;->a()Landroid/view/MotionEvent;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x3

    .line 47
    const/4 v4, 0x2

    .line 48
    const/4 v5, 0x1

    .line 49
    if-eqz v1, :cond_10

    .line 50
    .line 51
    if-lt p2, v0, :cond_3

    .line 52
    .line 53
    invoke-static {v1}, Lfi1;->w(Landroid/view/MotionEvent;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-ne p1, v3, :cond_3

    .line 58
    .line 59
    move p1, v5

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move p1, v2

    .line 62
    :goto_0
    const/4 v6, 0x5

    .line 63
    if-lt p2, v0, :cond_4

    .line 64
    .line 65
    invoke-static {v1}, Lfi1;->w(Landroid/view/MotionEvent;)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-ne p2, v6, :cond_4

    .line 70
    .line 71
    move p2, v5

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move p2, v2

    .line 74
    :goto_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/16 v1, 0xa

    .line 79
    .line 80
    if-eqz v0, :cond_e

    .line 81
    .line 82
    const/16 v7, 0xc

    .line 83
    .line 84
    if-eq v0, v5, :cond_c

    .line 85
    .line 86
    const/16 v8, 0x8

    .line 87
    .line 88
    if-eq v0, v4, :cond_9

    .line 89
    .line 90
    packed-switch v0, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    goto/16 :goto_8

    .line 94
    .line 95
    :pswitch_0
    move v2, v6

    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :pswitch_1
    const/4 v2, 0x4

    .line 99
    goto/16 :goto_8

    .line 100
    .line 101
    :pswitch_2
    const/4 v2, 0x6

    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :pswitch_3
    if-eqz p1, :cond_5

    .line 105
    .line 106
    :goto_2
    move v2, v7

    .line 107
    goto :goto_8

    .line 108
    :cond_5
    if-eqz p2, :cond_6

    .line 109
    .line 110
    :goto_3
    move v2, v8

    .line 111
    goto :goto_8

    .line 112
    :cond_6
    :goto_4
    move v2, v4

    .line 113
    goto :goto_8

    .line 114
    :pswitch_4
    if-eqz p1, :cond_7

    .line 115
    .line 116
    :goto_5
    move v2, v1

    .line 117
    goto :goto_8

    .line 118
    :cond_7
    if-eqz p2, :cond_8

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_8
    :goto_6
    move v2, v5

    .line 122
    goto :goto_8

    .line 123
    :cond_9
    :pswitch_5
    if-eqz p1, :cond_a

    .line 124
    .line 125
    const/16 v2, 0xb

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_a
    if-eqz p2, :cond_b

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_b
    move v2, v3

    .line 132
    goto :goto_8

    .line 133
    :cond_c
    if-eqz p1, :cond_d

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_d
    if-eqz p2, :cond_6

    .line 137
    .line 138
    const/16 v2, 0x9

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_e
    if-eqz p1, :cond_f

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_f
    if-eqz p2, :cond_8

    .line 145
    .line 146
    const/4 v2, 0x7

    .line 147
    goto :goto_8

    .line 148
    :cond_10
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    :goto_7
    if-ge v2, p2, :cond_b

    .line 153
    .line 154
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lzv2;

    .line 159
    .line 160
    invoke-static {v0}, Lse0;->f(Lzv2;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_11

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_11
    invoke-static {v0}, Lse0;->d(Lzv2;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_12

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :goto_8
    iput v2, p0, Lvv2;->c:I

    .line 178
    .line 179
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/view/MotionEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lvv2;->b:Lft1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lft1;->q:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lxh1;

    .line 8
    .line 9
    iget-object p0, p0, Lxh1;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/view/MotionEvent;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method
