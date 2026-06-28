.class public final Lfq2;
.super Lzq2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final d:Lfq2;

.field public static final e:Lfq2;

.field public static final f:Lfq2;

.field public static final g:Lfq2;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lfq2;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-direct {v0, v3, v1, v2}, Lfq2;-><init>(III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lfq2;->d:Lfq2;

    .line 10
    .line 11
    new-instance v0, Lfq2;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v1, v1, v2}, Lfq2;-><init>(III)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lfq2;->e:Lfq2;

    .line 19
    .line 20
    new-instance v0, Lfq2;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v0, v3, v1, v2}, Lfq2;-><init>(III)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lfq2;->f:Lfq2;

    .line 28
    .line 29
    new-instance v0, Lfq2;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-direct {v0, v1, v1, v2}, Lfq2;-><init>(III)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lfq2;->g:Lfq2;

    .line 37
    .line 38
    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lfq2;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lzq2;-><init>(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Le50;Lkh;Lxn3;Ll53;Lar2;)V
    .locals 1

    .line 1
    iget p0, p0, Lfq2;->c:I

    .line 2
    .line 3
    const/4 p5, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Le50;->d(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, v0}, Le50;->c(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    instance-of p2, p0, Leg1;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    move-object p2, p0

    .line 21
    check-cast p2, Leg1;

    .line 22
    .line 23
    iget-object p5, p4, Ll53;->e:Lug2;

    .line 24
    .line 25
    invoke-virtual {p5, p2}, Lug2;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p5, p4, Ll53;->d:Llg2;

    .line 29
    .line 30
    invoke-virtual {p5, p2}, Llg2;->a(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    iget p2, p3, Lxn3;->t:I

    .line 34
    .line 35
    invoke-virtual {p3, p2, p1, p0}, Lxn3;->K(IILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    instance-of p1, p0, Leg1;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    check-cast p0, Leg1;

    .line 44
    .line 45
    invoke-virtual {p4, p0}, Ll53;->e(Leg1;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    instance-of p1, p0, Lc33;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    check-cast p0, Lc33;

    .line 54
    .line 55
    invoke-virtual {p0}, Lc33;->c()V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p1, v0}, Le50;->d(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p5}, Le50;->d(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lvf1;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Le50;->c(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    instance-of p5, p0, Leg1;

    .line 74
    .line 75
    if-eqz p5, :cond_3

    .line 76
    .line 77
    move-object p5, p0

    .line 78
    check-cast p5, Leg1;

    .line 79
    .line 80
    iget-object v0, p4, Ll53;->e:Lug2;

    .line 81
    .line 82
    invoke-virtual {v0, p5}, Lug2;->c(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p4, Ll53;->d:Llg2;

    .line 86
    .line 87
    invoke-virtual {v0, p5}, Llg2;->a(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p3, p2}, Lxn3;->c(Lvf1;)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {p3, p2, p1, p0}, Lxn3;->K(IILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    instance-of p1, p0, Leg1;

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    check-cast p0, Leg1;

    .line 103
    .line 104
    invoke-virtual {p4, p0}, Ll53;->e(Leg1;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    instance-of p1, p0, Lc33;

    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    check-cast p0, Lc33;

    .line 113
    .line 114
    invoke-virtual {p0}, Lc33;->c()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_1
    return-void

    .line 118
    :pswitch_1
    invoke-virtual {p1, v0}, Le50;->d(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lvf1;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Le50;->c(I)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-interface {p2}, Lkh;->n()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p0}, Lxn3;->c(Lvf1;)I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    invoke-virtual {p3, p0}, Lxn3;->D(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-interface {p2, p1, p0}, Lkh;->b(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_2
    invoke-virtual {p1, v0}, Le50;->d(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Lne1;

    .line 151
    .line 152
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p1, p5}, Le50;->d(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p4

    .line 160
    check-cast p4, Lvf1;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Le50;->c(I)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, p4}, Lxn3;->c(Lvf1;)I

    .line 170
    .line 171
    .line 172
    move-result p4

    .line 173
    invoke-virtual {p3, p4, p0}, Lxn3;->U(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p2, p1, p0}, Lkh;->f(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, p0}, Lkh;->d(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Le50;)Lvf1;
    .locals 1

    .line 1
    iget v0, p0, Lfq2;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lzq2;->b(Le50;)Lvf1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const/4 p0, 0x0

    .line 12
    invoke-virtual {p1, p0}, Le50;->d(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lvf1;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    const/4 p0, 0x1

    .line 20
    invoke-virtual {p1, p0}, Le50;->d(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lvf1;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
