.class public abstract Lph4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lph4;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(La0;Lpb0;Lka0;)Lmh4;
    .locals 7

    .line 1
    sget-object v0, Lkh1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    invoke-static {v2, v0, v3}, Lix;->c(IILvy;)Lzy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v4, Lnc;->z:Lnv3;

    .line 18
    .line 19
    invoke-virtual {v4}, Lnv3;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lhi0;

    .line 24
    .line 25
    invoke-static {v4}, Ldm0;->c(Lhi0;)Lbh0;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Lp;

    .line 30
    .line 31
    const/16 v6, 0xe

    .line 32
    .line 33
    invoke-direct {v5, v0, v3, v6}, Lp;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 34
    .line 35
    .line 36
    const/4 v6, 0x3

    .line 37
    invoke-static {v4, v3, v3, v5, v6}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 38
    .line 39
    .line 40
    new-instance v4, Lc8;

    .line 41
    .line 42
    const/16 v5, 0xd

    .line 43
    .line 44
    invoke-direct {v4, v5, v0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lwo3;->c:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v5, Lwo3;->i:Ljava/util/List;

    .line 51
    .line 52
    invoke-static {v5, v4}, Lo70;->r0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sput-object v4, Lwo3;->i:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    invoke-static {}, Lwo3;->a()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0

    .line 65
    throw p0

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lez v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    instance-of v1, v0, Lq9;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    check-cast v0, Lq9;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    move-object v0, v3

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :goto_2
    if-nez v0, :cond_3

    .line 90
    .line 91
    new-instance v0, Lq9;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-direct {v0, v1, p1}, Lq9;-><init>(Landroid/content/Context;Lpb0;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lq9;->getView()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v4, Lph4;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    invoke-virtual {p0, v1, v4}, La0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {v0}, Lq9;->getComposeViewContext()Lpb0;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eq v1, p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0, p1}, La0;->m(Lpb0;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {p0}, La0;->getComposeViewContext$ui()Lpb0;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-eqz p0, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Lpb0;->d()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Lq9;->setComposeViewContextIncrementedDuringInit$ui(Z)V

    .line 128
    .line 129
    .line 130
    :cond_5
    const p0, 0x7f0900ff

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    instance-of v2, v1, Lmh4;

    .line 138
    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    move-object v3, v1

    .line 142
    check-cast v3, Lmh4;

    .line 143
    .line 144
    :cond_6
    if-nez v3, :cond_7

    .line 145
    .line 146
    new-instance v3, Lmh4;

    .line 147
    .line 148
    new-instance v1, Lg64;

    .line 149
    .line 150
    invoke-virtual {v0}, Lq9;->getRoot()Lxy1;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-direct {v1, v2}, Lg64;-><init>(Lxy1;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lpb0;->f()V

    .line 158
    .line 159
    .line 160
    iget-object v2, p1, Lpb0;->c:Lzb0;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    new-instance v4, Lec0;

    .line 166
    .line 167
    invoke-direct {v4, v2, v1}, Lec0;-><init>(Lzb0;Lg64;)V

    .line 168
    .line 169
    .line 170
    invoke-direct {v3, v0, v4}, Lmh4;-><init>(Lq9;Lec0;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_7
    invoke-virtual {v3, p2}, Lmh4;->b(Ldf1;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lpb0;->f()V

    .line 180
    .line 181
    .line 182
    iget-object p0, p1, Lpb0;->c:Lzb0;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    new-instance p1, Loh4;

    .line 188
    .line 189
    invoke-direct {p1, p0}, Loh4;-><init>(Lzb0;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, p1}, Lq9;->setFrameEndScheduler$ui(Lt22;)V

    .line 193
    .line 194
    .line 195
    return-object v3
.end method
