.class public abstract Lsy0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:I

.field public static final b:I

.field public static c:Lzy0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xe6

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lsy0;->a:I

    .line 10
    .line 11
    const/16 v0, 0x80

    .line 12
    .line 13
    const/16 v1, 0x1b

    .line 14
    .line 15
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lsy0;->b:I

    .line 20
    .line 21
    return-void
.end method

.method public static a(Lu90;)V
    .locals 10

    .line 1
    new-instance v0, Ljd3;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljd3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v4, Lov3;

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    invoke-direct {v4, v9, v9, v0}, Lov3;-><init>(IILpe1;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljd3;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljd3;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lov3;

    .line 20
    .line 21
    sget v1, Lsy0;->a:I

    .line 22
    .line 23
    sget v2, Lsy0;->b:I

    .line 24
    .line 25
    invoke-direct {v5, v1, v2, v0}, Lov3;-><init>(IILpe1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v0, Lsy0;->c:Lzy0;

    .line 40
    .line 41
    if-nez v0, :cond_5

    .line 42
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v1, 0x23

    .line 46
    .line 47
    if-lt v0, v1, :cond_0

    .line 48
    .line 49
    new-instance v0, Lyy0;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/16 v1, 0x1e

    .line 56
    .line 57
    if-lt v0, v1, :cond_1

    .line 58
    .line 59
    new-instance v0, Lxy0;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v1, 0x1d

    .line 66
    .line 67
    if-lt v0, v1, :cond_2

    .line 68
    .line 69
    new-instance v0, Lwy0;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/16 v1, 0x1c

    .line 76
    .line 77
    if-lt v0, v1, :cond_3

    .line 78
    .line 79
    new-instance v0, Lvy0;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/16 v1, 0x1a

    .line 86
    .line 87
    if-lt v0, v1, :cond_4

    .line 88
    .line 89
    new-instance v0, Luy0;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    new-instance v0, Lty0;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    :goto_0
    sput-object v0, Lsy0;->c:Lzy0;

    .line 101
    .line 102
    :cond_5
    move-object v3, v0

    .line 103
    new-instance v2, Lmv;

    .line 104
    .line 105
    const/4 v8, 0x1

    .line 106
    move-object v6, p0

    .line 107
    invoke-direct/range {v2 .. v8}, Lmv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    check-cast v7, Landroid/view/ViewGroup;

    .line 111
    .line 112
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-ge v9, p0, :cond_8

    .line 117
    .line 118
    add-int/lit8 p0, v9, 0x1

    .line 119
    .line 120
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    instance-of v0, v0, Lzy0;

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    move v9, p0

    .line 136
    goto :goto_1

    .line 137
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 138
    .line 139
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-instance v0, Lry0;

    .line 148
    .line 149
    invoke-direct {v0, v2, p0}, Lry0;-><init>(Lmv;Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    const/16 p0, 0x8

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    const/4 p0, 0x1

    .line 161
    invoke-virtual {v0, p0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    invoke-virtual {v2}, Lmv;->run()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p0}, Lzy0;->a(Landroid/view/Window;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method
