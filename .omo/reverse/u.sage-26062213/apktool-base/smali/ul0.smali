.class public final Lul0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ll03;


# instance fields
.field public final a:Lvl0;

.field public final b:I


# direct methods
.method public constructor <init>(Lvl0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lul0;->a:Lvl0;

    .line 5
    .line 6
    iput p2, p0, Lul0;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lul0;->a:Lvl0;

    .line 2
    .line 3
    iget p0, p0, Lul0;->b:I

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/AssertionError;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_0
    new-instance p0, Li70;

    .line 15
    .line 16
    iget-object v1, v0, Lvl0;->a:Lih;

    .line 17
    .line 18
    iget-object v1, v1, Lih;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v0, v0, Lvl0;->c:Ll03;

    .line 21
    .line 22
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ln8;

    .line 27
    .line 28
    invoke-direct {p0, v1, v0}, Li70;-><init>(Landroid/content/Context;Ln8;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    new-instance p0, Ljg1;

    .line 33
    .line 34
    iget-object v1, v0, Lvl0;->a:Lih;

    .line 35
    .line 36
    iget-object v1, v1, Lih;->a:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v0, v0, Lvl0;->c:Ll03;

    .line 39
    .line 40
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ln8;

    .line 45
    .line 46
    invoke-direct {p0, v1, v0}, Ljg1;-><init>(Landroid/content/Context;Ln8;)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_2
    new-instance p0, Lpf;

    .line 51
    .line 52
    iget-object v1, v0, Lvl0;->a:Lih;

    .line 53
    .line 54
    iget-object v1, v1, Lih;->a:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v0, v0, Lvl0;->c:Ll03;

    .line 57
    .line 58
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ln8;

    .line 63
    .line 64
    invoke-direct {p0, v1, v0}, Lpf;-><init>(Landroid/content/Context;Ln8;)V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_3
    new-instance p0, Lyh0;

    .line 69
    .line 70
    iget-object v1, v0, Lvl0;->a:Lih;

    .line 71
    .line 72
    iget-object v1, v1, Lih;->a:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v0, v0, Lvl0;->c:Ll03;

    .line 75
    .line 76
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ln8;

    .line 81
    .line 82
    invoke-direct {p0, v1, v0}, Lyh0;-><init>(Landroid/content/Context;Ln8;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_4
    new-instance p0, Lv50;

    .line 87
    .line 88
    iget-object v1, v0, Lvl0;->a:Lih;

    .line 89
    .line 90
    iget-object v1, v1, Lih;->a:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v0, v0, Lvl0;->c:Ll03;

    .line 93
    .line 94
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ln8;

    .line 99
    .line 100
    invoke-direct {p0, v1, v0}, Lv50;-><init>(Landroid/content/Context;Ln8;)V

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_5
    new-instance p0, Lf70;

    .line 105
    .line 106
    iget-object v0, v0, Lvl0;->a:Lih;

    .line 107
    .line 108
    iget-object v0, v0, Lih;->a:Landroid/content/Context;

    .line 109
    .line 110
    invoke-direct {p0, v0}, Lf70;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_6
    new-instance p0, Lgg1;

    .line 115
    .line 116
    iget-object v0, v0, Lvl0;->a:Lih;

    .line 117
    .line 118
    iget-object v0, v0, Lih;->a:Landroid/content/Context;

    .line 119
    .line 120
    invoke-direct {p0, v0}, Lgg1;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    :pswitch_7
    new-instance p0, Llf;

    .line 125
    .line 126
    iget-object v0, v0, Lvl0;->a:Lih;

    .line 127
    .line 128
    iget-object v0, v0, Lih;->a:Landroid/content/Context;

    .line 129
    .line 130
    invoke-direct {p0, v0}, Llf;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_8
    new-instance p0, Lvh0;

    .line 135
    .line 136
    iget-object v0, v0, Lvl0;->a:Lih;

    .line 137
    .line 138
    iget-object v0, v0, Lih;->a:Landroid/content/Context;

    .line 139
    .line 140
    invoke-direct {p0, v0}, Lvh0;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_9
    new-instance p0, Lp50;

    .line 145
    .line 146
    iget-object v0, v0, Lvl0;->a:Lih;

    .line 147
    .line 148
    iget-object v0, v0, Lih;->a:Landroid/content/Context;

    .line 149
    .line 150
    invoke-direct {p0, v0}, Lp50;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    return-object p0

    .line 154
    :pswitch_a
    new-instance p0, Lri3;

    .line 155
    .line 156
    invoke-direct {p0}, Lri3;-><init>()V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :pswitch_b
    new-instance p0, Ln8;

    .line 161
    .line 162
    iget-object v0, v0, Lvl0;->a:Lih;

    .line 163
    .line 164
    iget-object v0, v0, Lih;->a:Landroid/content/Context;

    .line 165
    .line 166
    invoke-direct {p0, v0}, Ln8;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
