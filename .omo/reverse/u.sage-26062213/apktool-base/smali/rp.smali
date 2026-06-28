.class public final Lrp;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Los2;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Lrp;->a:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p1, p0, Lrp;->b:Ljava/lang/Object;

    .line 813
    new-instance p1, Llj;

    .line 814
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 815
    iput-object p1, p0, Lrp;->d:Ljava/lang/Object;

    .line 816
    new-instance p1, Ldg2;

    invoke-direct {p1}, Ldg2;-><init>()V

    .line 817
    iput-object p1, p0, Lrp;->e:Ljava/lang/Object;

    .line 818
    new-instance p1, Ldg2;

    invoke-direct {p1}, Ldg2;-><init>()V

    .line 819
    iput-object p1, p0, Lrp;->f:Ljava/lang/Object;

    return-void

    .line 820
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    sget-object p1, Lmj1;->R:Lmj1;

    iput-object p1, p0, Lrp;->f:Ljava/lang/Object;

    .line 822
    const-string p1, "GET"

    iput-object p1, p0, Lrp;->c:Ljava/lang/Object;

    .line 823
    new-instance p1, Ldh1;

    const/16 v1, 0x13

    invoke-direct {p1, v1, v0}, Ldh1;-><init>(IZ)V

    iput-object p1, p0, Lrp;->d:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lqd1;)V
    .locals 6

    const/4 v0, 0x7

    iput v0, p0, Lrp;->a:I

    .line 824
    new-instance v0, Luv;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 825
    invoke-direct {v0, v1, p2, v2}, Luv;-><init>(Landroid/content/Context;Lqd1;I)V

    .line 826
    new-instance v1, Luv;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    .line 827
    invoke-direct {v1, v2, p2, v3}, Luv;-><init>(Landroid/content/Context;Lqd1;I)V

    .line 828
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lxl2;->a:Ljava/lang/String;

    .line 830
    new-instance v3, Lyl2;

    invoke-direct {v3, v2, p2}, Lyl2;-><init>(Landroid/content/Context;Lqd1;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 831
    :goto_0
    new-instance v2, Luv;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    .line 832
    invoke-direct {v2, v4, p2, v5}, Luv;-><init>(Landroid/content/Context;Lqd1;I)V

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p1, p0, Lrp;->b:Ljava/lang/Object;

    .line 835
    iput-object v0, p0, Lrp;->c:Ljava/lang/Object;

    .line 836
    iput-object v1, p0, Lrp;->d:Ljava/lang/Object;

    .line 837
    iput-object v3, p0, Lrp;->e:Ljava/lang/Object;

    .line 838
    iput-object v2, p0, Lrp;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/text/Layout;)V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lrp;->a:I

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrp;->b:Ljava/lang/Object;

    .line 840
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 841
    :cond_0
    iget-object v2, p0, Lrp;->b:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v4}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_1

    .line 842
    iget-object v1, p0, Lrp;->b:Ljava/lang/Object;

    check-cast v1, Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 843
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    iget-object v2, p0, Lrp;->b:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 845
    iput-object p1, p0, Lrp;->c:Ljava/lang/Object;

    .line 846
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lrp;->d:Ljava/lang/Object;

    .line 847
    iget-object p1, p0, Lrp;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lrp;->e:Ljava/lang/Object;

    .line 848
    iget-object p0, p0, Lrp;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public constructor <init>(Lda0;)V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lrp;->a:I

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iget-object v0, p1, Lda0;->a:Ljava/util/List;

    .line 864
    invoke-static {v0}, Lo70;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lrp;->b:Ljava/lang/Object;

    .line 865
    iget-object v0, p1, Lda0;->b:Ljava/util/List;

    .line 866
    invoke-static {v0}, Lo70;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lrp;->c:Ljava/lang/Object;

    .line 867
    iget-object v0, p1, Lda0;->c:Ljava/util/List;

    .line 868
    invoke-static {v0}, Lo70;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lrp;->d:Ljava/lang/Object;

    .line 869
    iget-object v0, p1, Lda0;->f:Lnv3;

    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 870
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 871
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 872
    check-cast v2, Ljs2;

    .line 873
    new-instance v3, Lcc;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 874
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 875
    :cond_0
    iput-object v1, p0, Lrp;->e:Ljava/lang/Object;

    .line 876
    iget-object p1, p1, Lda0;->g:Lnv3;

    invoke-virtual {p1}, Lnv3;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 878
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 879
    check-cast v1, Lun0;

    .line 880
    new-instance v2, Lca0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lca0;-><init>(Lun0;I)V

    .line 881
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 882
    :cond_1
    iput-object v0, p0, Lrp;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lff;Lay3;Ljava/util/List;Las0;Lqa1;)V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    iput v3, v0, Lrp;->a:I

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lrp;->b:Ljava/lang/Object;

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    iput-object v3, v0, Lrp;->c:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v3, Lte2;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v3, v0, v4}, Lte2;-><init>(Lrp;I)V

    .line 23
    .line 24
    .line 25
    sget-object v5, Lv12;->o:Lv12;

    .line 26
    .line 27
    invoke-static {v5, v3}, Ldm0;->C(Lv12;Lne1;)Lqz1;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iput-object v3, v0, Lrp;->d:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v3, Lte2;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-direct {v3, v0, v6}, Lte2;-><init>(Lrp;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v5, v3}, Ldm0;->C(Lv12;Lne1;)Lqz1;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v0, Lrp;->e:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v3, v2, Lay3;->b:Lqs2;

    .line 46
    .line 47
    sget v5, Lgf;->a:I

    .line 48
    .line 49
    iget-object v5, v1, Lff;->q:Ljava/util/ArrayList;

    .line 50
    .line 51
    iget-object v6, v1, Lff;->o:Ljava/lang/String;

    .line 52
    .line 53
    sget-object v7, Lg01;->n:Lg01;

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    new-instance v8, Llh0;

    .line 58
    .line 59
    const/4 v9, 0x7

    .line 60
    invoke-direct {v8, v9}, Llh0;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v5, v8}, Lo70;->y0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object v5, v7

    .line 69
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v9, Lvh;

    .line 75
    .line 76
    invoke-direct {v9}, Lvh;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    move v11, v4

    .line 84
    move v12, v11

    .line 85
    :goto_1
    if-ge v11, v10, :cond_a

    .line 86
    .line 87
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    check-cast v14, Lef;

    .line 92
    .line 93
    iget-object v15, v14, Lef;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v15, Lqs2;

    .line 96
    .line 97
    invoke-virtual {v3, v15}, Lqs2;->a(Lqs2;)Lqs2;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    const/16 p3, 0x0

    .line 102
    .line 103
    iget v13, v14, Lef;->b:I

    .line 104
    .line 105
    iget v14, v14, Lef;->c:I

    .line 106
    .line 107
    if-gt v13, v14, :cond_1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    const-string v16, "Reversed range is not supported"

    .line 111
    .line 112
    invoke-static/range {v16 .. v16}, Lbr1;->a(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    if-ge v12, v13, :cond_4

    .line 116
    .line 117
    invoke-virtual {v9}, Lvh;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-nez v16, :cond_4

    .line 122
    .line 123
    invoke-virtual {v9}, Lvh;->last()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v16

    .line 127
    move-object/from16 v4, v16

    .line 128
    .line 129
    check-cast v4, Lef;

    .line 130
    .line 131
    move-object/from16 v16, v5

    .line 132
    .line 133
    iget v5, v4, Lef;->c:I

    .line 134
    .line 135
    move-object/from16 v17, v7

    .line 136
    .line 137
    iget-object v7, v4, Lef;->a:Ljava/lang/Object;

    .line 138
    .line 139
    if-ge v13, v5, :cond_2

    .line 140
    .line 141
    new-instance v4, Lef;

    .line 142
    .line 143
    invoke-direct {v4, v12, v13, v7}, Lef;-><init>(IILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move v12, v13

    .line 150
    move-object/from16 v5, v16

    .line 151
    .line 152
    move-object/from16 v7, v17

    .line 153
    .line 154
    :goto_3
    const/4 v4, 0x0

    .line 155
    goto :goto_2

    .line 156
    :cond_2
    move/from16 v18, v10

    .line 157
    .line 158
    new-instance v10, Lef;

    .line 159
    .line 160
    invoke-direct {v10, v12, v5, v7}, Lef;-><init>(IILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    iget v12, v4, Lef;->c:I

    .line 167
    .line 168
    :goto_4
    invoke-virtual {v9}, Lvh;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-nez v4, :cond_3

    .line 173
    .line 174
    invoke-virtual {v9}, Lvh;->last()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Lef;

    .line 179
    .line 180
    iget v4, v4, Lef;->c:I

    .line 181
    .line 182
    if-ne v12, v4, :cond_3

    .line 183
    .line 184
    invoke-virtual {v9}, Lvh;->removeLast()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_3
    move-object/from16 v5, v16

    .line 189
    .line 190
    move-object/from16 v7, v17

    .line 191
    .line 192
    move/from16 v10, v18

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_4
    move-object/from16 v16, v5

    .line 196
    .line 197
    move-object/from16 v17, v7

    .line 198
    .line 199
    move/from16 v18, v10

    .line 200
    .line 201
    if-ge v12, v13, :cond_5

    .line 202
    .line 203
    new-instance v4, Lef;

    .line 204
    .line 205
    invoke-direct {v4, v12, v13, v3}, Lef;-><init>(IILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move v12, v13

    .line 212
    :cond_5
    invoke-virtual {v9}, Lvh;->i()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Lef;

    .line 217
    .line 218
    if-eqz v4, :cond_9

    .line 219
    .line 220
    iget v5, v4, Lef;->c:I

    .line 221
    .line 222
    iget-object v7, v4, Lef;->a:Ljava/lang/Object;

    .line 223
    .line 224
    iget v4, v4, Lef;->b:I

    .line 225
    .line 226
    if-ne v4, v13, :cond_6

    .line 227
    .line 228
    if-ne v5, v14, :cond_6

    .line 229
    .line 230
    invoke-virtual {v9}, Lvh;->removeLast()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    new-instance v4, Lef;

    .line 234
    .line 235
    check-cast v7, Lqs2;

    .line 236
    .line 237
    invoke-virtual {v7, v15}, Lqs2;->a(Lqs2;)Lqs2;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-direct {v4, v13, v14, v5}, Lef;-><init>(IILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9, v4}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_6
    if-ne v4, v5, :cond_7

    .line 249
    .line 250
    new-instance v10, Lef;

    .line 251
    .line 252
    invoke-direct {v10, v4, v5, v7}, Lef;-><init>(IILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9}, Lvh;->removeLast()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    new-instance v4, Lef;

    .line 262
    .line 263
    invoke-direct {v4, v13, v14, v15}, Lef;-><init>(IILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9, v4}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_7
    if-lt v5, v14, :cond_8

    .line 271
    .line 272
    new-instance v4, Lef;

    .line 273
    .line 274
    check-cast v7, Lqs2;

    .line 275
    .line 276
    invoke-virtual {v7, v15}, Lqs2;->a(Lqs2;)Lqs2;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-direct {v4, v13, v14, v5}, Lef;-><init>(IILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v4}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_8
    invoke-static {}, Lq73;->d()V

    .line 288
    .line 289
    .line 290
    throw p3

    .line 291
    :cond_9
    new-instance v4, Lef;

    .line 292
    .line 293
    invoke-direct {v4, v13, v14, v15}, Lef;-><init>(IILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v4}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 300
    .line 301
    move-object/from16 v5, v16

    .line 302
    .line 303
    move-object/from16 v7, v17

    .line 304
    .line 305
    move/from16 v10, v18

    .line 306
    .line 307
    const/4 v4, 0x0

    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :cond_a
    move-object/from16 v17, v7

    .line 311
    .line 312
    const/16 p3, 0x0

    .line 313
    .line 314
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-gt v12, v4, :cond_c

    .line 319
    .line 320
    invoke-virtual {v9}, Lvh;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_c

    .line 325
    .line 326
    invoke-virtual {v9}, Lvh;->last()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    check-cast v4, Lef;

    .line 331
    .line 332
    new-instance v5, Lef;

    .line 333
    .line 334
    iget-object v7, v4, Lef;->a:Ljava/lang/Object;

    .line 335
    .line 336
    iget v4, v4, Lef;->c:I

    .line 337
    .line 338
    invoke-direct {v5, v12, v4, v7}, Lef;-><init>(IILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :goto_7
    invoke-virtual {v9}, Lvh;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-nez v5, :cond_b

    .line 349
    .line 350
    invoke-virtual {v9}, Lvh;->last()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    check-cast v5, Lef;

    .line 355
    .line 356
    iget v5, v5, Lef;->c:I

    .line 357
    .line 358
    if-ne v4, v5, :cond_b

    .line 359
    .line 360
    invoke-virtual {v9}, Lvh;->removeLast()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_b
    move v12, v4

    .line 365
    goto :goto_6

    .line 366
    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-ge v12, v4, :cond_d

    .line 371
    .line 372
    new-instance v4, Lef;

    .line 373
    .line 374
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    invoke-direct {v4, v12, v5, v3}, Lef;-><init>(IILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_e

    .line 389
    .line 390
    new-instance v4, Lef;

    .line 391
    .line 392
    const/4 v5, 0x0

    .line 393
    invoke-direct {v4, v5, v5, v3}, Lef;-><init>(IILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_e
    const/4 v5, 0x0

    .line 401
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    move v9, v5

    .line 415
    :goto_9
    if-ge v9, v7, :cond_1c

    .line 416
    .line 417
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v10

    .line 421
    check-cast v10, Lef;

    .line 422
    .line 423
    iget v11, v10, Lef;->b:I

    .line 424
    .line 425
    iget v12, v10, Lef;->c:I

    .line 426
    .line 427
    new-instance v13, Lff;

    .line 428
    .line 429
    if-eq v11, v12, :cond_f

    .line 430
    .line 431
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v14

    .line 435
    goto :goto_a

    .line 436
    :cond_f
    const-string v14, ""

    .line 437
    .line 438
    :goto_a
    if-ne v11, v12, :cond_11

    .line 439
    .line 440
    :goto_b
    move-object/from16 v5, p3

    .line 441
    .line 442
    move-object/from16 v16, v6

    .line 443
    .line 444
    :cond_10
    move/from16 v25, v7

    .line 445
    .line 446
    move-object/from16 v26, v8

    .line 447
    .line 448
    move/from16 v27, v9

    .line 449
    .line 450
    goto/16 :goto_f

    .line 451
    .line 452
    :cond_11
    iget-object v15, v1, Lff;->n:Ljava/util/List;

    .line 453
    .line 454
    if-nez v15, :cond_12

    .line 455
    .line 456
    goto :goto_b

    .line 457
    :cond_12
    if-nez v11, :cond_14

    .line 458
    .line 459
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    if-lt v12, v5, :cond_14

    .line 464
    .line 465
    new-instance v5, Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    .line 473
    .line 474
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    move-object/from16 v16, v6

    .line 479
    .line 480
    const/4 v6, 0x0

    .line 481
    :goto_c
    if-ge v6, v1, :cond_10

    .line 482
    .line 483
    move/from16 v18, v1

    .line 484
    .line 485
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    move/from16 v19, v6

    .line 490
    .line 491
    move-object v6, v1

    .line 492
    check-cast v6, Lef;

    .line 493
    .line 494
    iget-object v6, v6, Lef;->a:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v6, Ldf;

    .line 497
    .line 498
    instance-of v6, v6, Lqs2;

    .line 499
    .line 500
    if-nez v6, :cond_13

    .line 501
    .line 502
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    :cond_13
    add-int/lit8 v6, v19, 0x1

    .line 506
    .line 507
    move/from16 v1, v18

    .line 508
    .line 509
    goto :goto_c

    .line 510
    :cond_14
    move-object/from16 v16, v6

    .line 511
    .line 512
    new-instance v5, Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    .line 520
    .line 521
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    const/4 v6, 0x0

    .line 526
    :goto_d
    if-ge v6, v1, :cond_10

    .line 527
    .line 528
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v18

    .line 532
    move/from16 v19, v1

    .line 533
    .line 534
    move-object/from16 v1, v18

    .line 535
    .line 536
    check-cast v1, Lef;

    .line 537
    .line 538
    move/from16 v18, v6

    .line 539
    .line 540
    iget-object v6, v1, Lef;->a:Ljava/lang/Object;

    .line 541
    .line 542
    move-object/from16 v20, v6

    .line 543
    .line 544
    iget v6, v1, Lef;->b:I

    .line 545
    .line 546
    move/from16 v25, v7

    .line 547
    .line 548
    move-object/from16 v7, v20

    .line 549
    .line 550
    check-cast v7, Ldf;

    .line 551
    .line 552
    instance-of v7, v7, Lqs2;

    .line 553
    .line 554
    if-nez v7, :cond_15

    .line 555
    .line 556
    iget v7, v1, Lef;->c:I

    .line 557
    .line 558
    invoke-static {v11, v12, v6, v7}, Lgf;->a(IIII)Z

    .line 559
    .line 560
    .line 561
    move-result v20

    .line 562
    if-eqz v20, :cond_15

    .line 563
    .line 564
    move-object/from16 v26, v8

    .line 565
    .line 566
    iget-object v8, v1, Lef;->d:Ljava/lang/String;

    .line 567
    .line 568
    iget-object v1, v1, Lef;->a:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v1, Ldf;

    .line 571
    .line 572
    invoke-static {v6, v11, v12}, Lix;->k(III)I

    .line 573
    .line 574
    .line 575
    move-result v6

    .line 576
    sub-int/2addr v6, v11

    .line 577
    invoke-static {v7, v11, v12}, Lix;->k(III)I

    .line 578
    .line 579
    .line 580
    move-result v7

    .line 581
    sub-int/2addr v7, v11

    .line 582
    move/from16 v27, v9

    .line 583
    .line 584
    new-instance v9, Lef;

    .line 585
    .line 586
    invoke-direct {v9, v1, v6, v7, v8}, Lef;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    goto :goto_e

    .line 593
    :cond_15
    move-object/from16 v26, v8

    .line 594
    .line 595
    move/from16 v27, v9

    .line 596
    .line 597
    :goto_e
    add-int/lit8 v6, v18, 0x1

    .line 598
    .line 599
    move/from16 v1, v19

    .line 600
    .line 601
    move/from16 v7, v25

    .line 602
    .line 603
    move-object/from16 v8, v26

    .line 604
    .line 605
    move/from16 v9, v27

    .line 606
    .line 607
    goto :goto_d

    .line 608
    :goto_f
    if-nez v5, :cond_16

    .line 609
    .line 610
    move-object/from16 v5, v17

    .line 611
    .line 612
    :cond_16
    invoke-direct {v13, v14, v5}, Lff;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 613
    .line 614
    .line 615
    iget-object v1, v10, Lef;->a:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast v1, Lqs2;

    .line 618
    .line 619
    iget v5, v1, Lqs2;->b:I

    .line 620
    .line 621
    if-nez v5, :cond_17

    .line 622
    .line 623
    iget v5, v3, Lqs2;->b:I

    .line 624
    .line 625
    iget v6, v1, Lqs2;->a:I

    .line 626
    .line 627
    iget-wide v7, v1, Lqs2;->c:J

    .line 628
    .line 629
    iget-object v9, v1, Lqs2;->d:Lgx3;

    .line 630
    .line 631
    iget-object v10, v1, Lqs2;->e:Lmv2;

    .line 632
    .line 633
    iget-object v15, v1, Lqs2;->f:Li32;

    .line 634
    .line 635
    move/from16 v30, v5

    .line 636
    .line 637
    iget v5, v1, Lqs2;->g:I

    .line 638
    .line 639
    move/from16 v36, v5

    .line 640
    .line 641
    iget v5, v1, Lqs2;->h:I

    .line 642
    .line 643
    iget-object v1, v1, Lqs2;->i:Lsx3;

    .line 644
    .line 645
    new-instance v28, Lqs2;

    .line 646
    .line 647
    move-object/from16 v38, v1

    .line 648
    .line 649
    move/from16 v37, v5

    .line 650
    .line 651
    move/from16 v29, v6

    .line 652
    .line 653
    move-wide/from16 v31, v7

    .line 654
    .line 655
    move-object/from16 v33, v9

    .line 656
    .line 657
    move-object/from16 v34, v10

    .line 658
    .line 659
    move-object/from16 v35, v15

    .line 660
    .line 661
    invoke-direct/range {v28 .. v38}, Lqs2;-><init>(IIJLgx3;Lmv2;Li32;IILsx3;)V

    .line 662
    .line 663
    .line 664
    move-object/from16 v1, v28

    .line 665
    .line 666
    :cond_17
    new-instance v5, Lns2;

    .line 667
    .line 668
    new-instance v6, Lay3;

    .line 669
    .line 670
    iget-object v7, v2, Lay3;->a:Liq3;

    .line 671
    .line 672
    invoke-virtual {v3, v1}, Lqs2;->a(Lqs2;)Lqs2;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-direct {v6, v7, v1}, Lay3;-><init>(Liq3;Lqs2;)V

    .line 677
    .line 678
    .line 679
    iget-object v1, v13, Lff;->n:Ljava/util/List;

    .line 680
    .line 681
    if-nez v1, :cond_18

    .line 682
    .line 683
    move-object/from16 v21, v17

    .line 684
    .line 685
    goto :goto_10

    .line 686
    :cond_18
    move-object/from16 v21, v1

    .line 687
    .line 688
    :goto_10
    iget-object v1, v0, Lrp;->c:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v1, Ljava/util/List;

    .line 691
    .line 692
    new-instance v7, Ljava/util/ArrayList;

    .line 693
    .line 694
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 699
    .line 700
    .line 701
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 702
    .line 703
    .line 704
    move-result v8

    .line 705
    const/4 v9, 0x0

    .line 706
    :goto_11
    if-ge v9, v8, :cond_1b

    .line 707
    .line 708
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v10

    .line 712
    check-cast v10, Lef;

    .line 713
    .line 714
    iget v13, v10, Lef;->b:I

    .line 715
    .line 716
    iget v15, v10, Lef;->c:I

    .line 717
    .line 718
    invoke-static {v11, v12, v13, v15}, Lgf;->a(IIII)Z

    .line 719
    .line 720
    .line 721
    move-result v18

    .line 722
    if-eqz v18, :cond_1a

    .line 723
    .line 724
    if-gt v11, v13, :cond_19

    .line 725
    .line 726
    if-gt v15, v12, :cond_19

    .line 727
    .line 728
    :goto_12
    move-object/from16 v18, v1

    .line 729
    .line 730
    goto :goto_13

    .line 731
    :cond_19
    const-string v18, "placeholder can not overlap with paragraph."

    .line 732
    .line 733
    invoke-static/range {v18 .. v18}, Lbr1;->a(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    goto :goto_12

    .line 737
    :goto_13
    new-instance v1, Lef;

    .line 738
    .line 739
    iget-object v10, v10, Lef;->a:Ljava/lang/Object;

    .line 740
    .line 741
    sub-int/2addr v13, v11

    .line 742
    sub-int/2addr v15, v11

    .line 743
    invoke-direct {v1, v13, v15, v10}, Lef;-><init>(IILjava/lang/Object;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    goto :goto_14

    .line 750
    :cond_1a
    move-object/from16 v18, v1

    .line 751
    .line 752
    :goto_14
    add-int/lit8 v9, v9, 0x1

    .line 753
    .line 754
    move-object/from16 v1, v18

    .line 755
    .line 756
    goto :goto_11

    .line 757
    :cond_1b
    new-instance v18, Lrb;

    .line 758
    .line 759
    move-object/from16 v24, p4

    .line 760
    .line 761
    move-object/from16 v23, p5

    .line 762
    .line 763
    move-object/from16 v20, v6

    .line 764
    .line 765
    move-object/from16 v22, v7

    .line 766
    .line 767
    move-object/from16 v19, v14

    .line 768
    .line 769
    invoke-direct/range {v18 .. v24}, Lrb;-><init>(Ljava/lang/String;Lay3;Ljava/util/List;Ljava/util/List;Lqa1;Las0;)V

    .line 770
    .line 771
    .line 772
    move-object/from16 v1, v18

    .line 773
    .line 774
    invoke-direct {v5, v1, v11, v12}, Lns2;-><init>(Lrb;II)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    add-int/lit8 v9, v27, 0x1

    .line 781
    .line 782
    move-object/from16 v1, p1

    .line 783
    .line 784
    move-object/from16 v6, v16

    .line 785
    .line 786
    move/from16 v7, v25

    .line 787
    .line 788
    move-object/from16 v8, v26

    .line 789
    .line 790
    const/4 v5, 0x0

    .line 791
    goto/16 :goto_9

    .line 792
    .line 793
    :cond_1c
    iput-object v4, v0, Lrp;->f:Ljava/lang/Object;

    .line 794
    .line 795
    return-void
.end method

.method public constructor <init>(Lhp;Ljava/lang/String;Lo01;Lmk0;Ly14;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lrp;->a:I

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object p1, p0, Lrp;->b:Ljava/lang/Object;

    .line 851
    iput-object p2, p0, Lrp;->c:Ljava/lang/Object;

    .line 852
    iput-object p3, p0, Lrp;->d:Ljava/lang/Object;

    .line 853
    iput-object p4, p0, Lrp;->e:Ljava/lang/Object;

    .line 854
    iput-object p5, p0, Lrp;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lrp;->a:I

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    const-string v0, "org.apache.http.client"

    iput-object v0, p0, Lrp;->b:Ljava/lang/Object;

    .line 858
    const-string v0, "UNAVAILABLE"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lrp;->c:Ljava/lang/Object;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 859
    :goto_1
    iput-object p2, p0, Lrp;->d:Ljava/lang/Object;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v0

    .line 860
    :goto_2
    iput-object p3, p0, Lrp;->e:Ljava/lang/Object;

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    move-object p4, v0

    .line 861
    :goto_3
    iput-object p4, p0, Lrp;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lrp;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 805
    iput-object v0, p0, Lrp;->b:Ljava/lang/Object;

    .line 806
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lrp;->c:Ljava/lang/Object;

    .line 807
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lrp;->d:Ljava/lang/Object;

    .line 808
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lrp;->e:Ljava/lang/Object;

    .line 809
    new-instance p1, Lmc1;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lmc1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lrp;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ltw3;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lrp;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    iput-object p1, p0, Lrp;->b:Ljava/lang/Object;

    .line 885
    sget-object p1, Lzk1;->a:Lyk1;

    iput-object p1, p0, Lrp;->e:Ljava/lang/Object;

    .line 886
    sget-object p1, Lc81;->a:Lc81;

    iput-object p1, p0, Lrp;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwd2;Lgd5;Ljava/util/HashMap;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lrp;->a:I

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lrp;->b:Ljava/lang/Object;

    .line 797
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    iput-object p1, p0, Lrp;->c:Ljava/lang/Object;

    .line 799
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    iput-object p2, p0, Lrp;->d:Ljava/lang/Object;

    .line 801
    iput-object p3, p0, Lrp;->f:Ljava/lang/Object;

    .line 802
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ln44;->U(Z)V

    sget-object p1, Lu85;->c:Lu85;

    iput-object p1, p0, Lrp;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 855
    const/4 p1, 0x5

    iput p1, p0, Lrp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j(Ljava/lang/Class;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "org.apache.http.client"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "/version.properties"

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    const/4 v2, 0x0

    .line 21
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const/16 v4, 0x2e

    .line 27
    .line 28
    const/16 v5, 0x2f

    .line 29
    .line 30
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    .line 65
    .line 66
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    :catch_0
    :cond_1
    move-object v1, v2

    .line 68
    :catch_1
    :goto_1
    if-eqz v1, :cond_8

    .line 69
    .line 70
    const-string v0, "info.module"

    .line 71
    .line 72
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/String;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-ge v4, v3, :cond_2

    .line 86
    .line 87
    move-object v0, v2

    .line 88
    :cond_2
    const-string v4, "info.release"

    .line 89
    .line 90
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-lt v5, v3, :cond_3

    .line 103
    .line 104
    const-string v5, "${pom.version}"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    :cond_3
    move-object v4, v2

    .line 113
    :cond_4
    const-string v5, "info.timestamp"

    .line 114
    .line 115
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-lt v5, v3, :cond_5

    .line 128
    .line 129
    const-string v3, "${mvn.timestamp}"

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_6

    .line 136
    .line 137
    :cond_5
    move-object v1, v2

    .line 138
    :cond_6
    if-eqz p0, :cond_7

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :cond_7
    new-instance p0, Lrp;

    .line 145
    .line 146
    invoke-direct {p0, v0, v4, v1, v2}, Lrp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move-object v2, p0

    .line 150
    :cond_8
    if-eqz v2, :cond_9

    .line 151
    .line 152
    iget-object p0, v2, Lrp;->d:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p0, Ljava/lang/String;

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_9
    const-string p0, "UNAVAILABLE"

    .line 158
    .line 159
    :goto_2
    const-string v0, "java.version"

    .line 160
    .line 161
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, " (Java/"

    .line 166
    .line 167
    const-string v2, ")"

    .line 168
    .line 169
    const-string v3, "Apache-HttpClient/"

    .line 170
    .line 171
    invoke-static {v3, p0, v1, v0, v2}, Lxw1;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    return-object p0
.end method


# virtual methods
.method public a()F
    .locals 0

    .line 1
    iget-object p0, p0, Lrp;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lqz1;

    .line 4
    .line 5
    invoke-interface {p0}, Lqz1;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lrp;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lns2;

    .line 18
    .line 19
    iget-object v3, v3, Lns2;->a:Lrb;

    .line 20
    .line 21
    invoke-virtual {v3}, Lrb;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method public c()F
    .locals 0

    .line 1
    iget-object p0, p0, Lrp;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lqz1;

    .line 4
    .line 5
    invoke-interface {p0}, Lqz1;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public d(Lrc;Li50;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lrp;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v0, Ljs2;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e(Ly41;Li50;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lrp;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v0, Lh4;

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    invoke-direct {v0, v1, p1, p2}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public f(Lqp;Lne1;)Lq20;
    .locals 8

    .line 1
    new-instance v0, Lu33;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lu33;->n:I

    .line 8
    .line 9
    iget-object v1, p0, Lrp;->b:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lrp;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Throwable;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lqp;->b(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lmj1;->E:Lk21;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v1

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    :try_start_1
    iget-object v2, p0, Lrp;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Llj;

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/lit8 v4, v3, 0x1

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const v2, 0x7ffffff

    .line 45
    .line 46
    .line 47
    and-int/2addr v2, v4

    .line 48
    const/4 v3, 0x1

    .line 49
    const/4 v5, 0x0

    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    move v2, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v2, v5

    .line 55
    :goto_0
    ushr-int/lit8 v4, v4, 0x1b

    .line 56
    .line 57
    and-int/lit8 v4, v4, 0xf

    .line 58
    .line 59
    iput v4, v0, Lu33;->n:I

    .line 60
    .line 61
    iget-object v4, p0, Lrp;->e:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Ldg2;

    .line 64
    .line 65
    invoke-virtual {v4, p1}, Ldg2;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit v1

    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    if-eqz p2, :cond_6

    .line 72
    .line 73
    :try_start_2
    invoke-interface {p2}, Lne1;->a()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :catchall_1
    move-exception p2

    .line 78
    iget-object v1, p0, Lrp;->b:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v1

    .line 81
    :try_start_3
    iget-object v2, p0, Lrp;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    :goto_1
    monitor-exit v1

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    :try_start_4
    iput-object p2, p0, Lrp;->c:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v2, p0, Lrp;->e:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Ldg2;

    .line 94
    .line 95
    iget-object v4, v2, Ldg2;->a:[Ljava/lang/Object;

    .line 96
    .line 97
    iget v2, v2, Ldg2;->b:I

    .line 98
    .line 99
    move v6, v5

    .line 100
    :goto_2
    if-ge v6, v2, :cond_4

    .line 101
    .line 102
    aget-object v7, v4, v6

    .line 103
    .line 104
    check-cast v7, Lqp;

    .line 105
    .line 106
    invoke-virtual {v7, p2}, Lqp;->b(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catchall_2
    move-exception p0

    .line 113
    goto :goto_3

    .line 114
    :cond_4
    iget-object p2, p0, Lrp;->e:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p2, Ldg2;

    .line 117
    .line 118
    invoke-virtual {p2}, Ldg2;->d()V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lrp;->d:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p2, Llj;

    .line 124
    .line 125
    :cond_5
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    ushr-int/lit8 v4, v2, 0x1b

    .line 130
    .line 131
    and-int/lit8 v4, v4, 0xf

    .line 132
    .line 133
    add-int/2addr v4, v3

    .line 134
    and-int/lit8 v4, v4, 0xf

    .line 135
    .line 136
    shl-int/lit8 v4, v4, 0x1b

    .line 137
    .line 138
    invoke-virtual {p2, v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 139
    .line 140
    .line 141
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :goto_3
    monitor-exit v1

    .line 146
    throw p0

    .line 147
    :cond_6
    :goto_4
    new-instance p2, Lxh1;

    .line 148
    .line 149
    new-instance v1, Lpp;

    .line 150
    .line 151
    invoke-direct {v1, p1, p0, v0, v5}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 152
    .line 153
    .line 154
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v1, p2, Lxh1;->n:Ljava/lang/Object;

    .line 158
    .line 159
    new-instance p0, Llj;

    .line 160
    .line 161
    invoke-direct {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 162
    .line 163
    .line 164
    iput-object p0, p2, Lxh1;->o:Ljava/lang/Object;

    .line 165
    .line 166
    return-object p2

    .line 167
    :goto_5
    monitor-exit v1

    .line 168
    throw p0
.end method

.method public g(Lpe1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrp;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lrp;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ldg2;

    .line 7
    .line 8
    iget-object v2, p0, Lrp;->f:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ldg2;

    .line 11
    .line 12
    iput-object v2, p0, Lrp;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, p0, Lrp;->f:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p0, p0, Lrp;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Llj;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    ushr-int/lit8 v3, v2, 0x1b

    .line 25
    .line 26
    and-int/lit8 v3, v3, 0xf

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    and-int/lit8 v3, v3, 0xf

    .line 31
    .line 32
    shl-int/lit8 v3, v3, 0x1b

    .line 33
    .line 34
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget p0, v1, Ldg2;->b:I

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ldg2;->f(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {p1, v3}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v1}, Ldg2;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v0

    .line 63
    throw p0
.end method

.method public h(IZ)F
    .locals 1

    .line 1
    iget-object p0, p0, Lrp;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/text/Layout;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-le p1, v0, :cond_0

    .line 14
    .line 15
    move p1, v0

    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public i(IZZ)F
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lrp;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v4, v0, Lrp;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Landroid/text/Layout;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p2}, Lrp;->h(IZ)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    invoke-static {v4, v1, v2}, Lk75;->A(Landroid/text/Layout;IZ)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineStart(I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineEnd(I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eq v1, v6, :cond_1

    .line 35
    .line 36
    if-eq v1, v7, :cond_1

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p2}, Lrp;->h(IZ)F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0

    .line 43
    :cond_1
    if-eqz v1, :cond_30

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ne v1, v8, :cond_2

    .line 54
    .line 55
    goto/16 :goto_1b

    .line 56
    .line 57
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-static {v3, v8}, Ltv4;->k(Ljava/util/ArrayList;Ljava/lang/Comparable;)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const/4 v9, 0x1

    .line 66
    if-gez v8, :cond_3

    .line 67
    .line 68
    add-int/2addr v8, v9

    .line 69
    neg-int v8, v8

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    add-int/2addr v8, v9

    .line 72
    :goto_0
    if-eqz v2, :cond_4

    .line 73
    .line 74
    if-lez v8, :cond_4

    .line 75
    .line 76
    add-int/lit8 v2, v8, -0x1

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    check-cast v10, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-ne v1, v10, :cond_4

    .line 89
    .line 90
    move v8, v2

    .line 91
    :cond_4
    if-nez v8, :cond_5

    .line 92
    .line 93
    const/4 v10, 0x0

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    add-int/lit8 v10, v8, -0x1

    .line 96
    .line 97
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Ljava/lang/Number;

    .line 102
    .line 103
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    :goto_1
    invoke-virtual {v4, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    invoke-virtual {v4, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    const/4 v11, -0x1

    .line 116
    if-ne v10, v11, :cond_6

    .line 117
    .line 118
    move v10, v9

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    const/4 v10, 0x0

    .line 121
    :goto_2
    invoke-virtual {v0, v7, v6}, Lrp;->l(II)I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-nez v8, :cond_7

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    goto :goto_3

    .line 129
    :cond_7
    add-int/lit8 v12, v8, -0x1

    .line 130
    .line 131
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    check-cast v12, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    :goto_3
    sub-int v13, v6, v12

    .line 142
    .line 143
    sub-int v12, v7, v12

    .line 144
    .line 145
    iget-object v14, v0, Lrp;->d:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v14, Ljava/util/ArrayList;

    .line 148
    .line 149
    iget-object v15, v0, Lrp;->e:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v15, [Z

    .line 152
    .line 153
    aget-boolean v16, v15, v8

    .line 154
    .line 155
    const/16 v17, 0x0

    .line 156
    .line 157
    if-eqz v16, :cond_8

    .line 158
    .line 159
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Ljava/text/Bidi;

    .line 164
    .line 165
    move/from16 v27, v5

    .line 166
    .line 167
    move/from16 v26, v7

    .line 168
    .line 169
    move v5, v11

    .line 170
    goto/16 :goto_a

    .line 171
    .line 172
    :cond_8
    if-nez v8, :cond_9

    .line 173
    .line 174
    const/4 v9, 0x0

    .line 175
    goto :goto_4

    .line 176
    :cond_9
    add-int/lit8 v9, v8, -0x1

    .line 177
    .line 178
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    check-cast v9, Ljava/lang/Number;

    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    :goto_4
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v18

    .line 192
    check-cast v18, Ljava/lang/Number;

    .line 193
    .line 194
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    sub-int v2, v11, v9

    .line 199
    .line 200
    move-object/from16 v25, v15

    .line 201
    .line 202
    iget-object v15, v0, Lrp;->f:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v15, [C

    .line 205
    .line 206
    move/from16 v26, v7

    .line 207
    .line 208
    if-eqz v15, :cond_a

    .line 209
    .line 210
    array-length v7, v15

    .line 211
    if-ge v7, v2, :cond_b

    .line 212
    .line 213
    :cond_a
    new-array v15, v2, [C

    .line 214
    .line 215
    :cond_b
    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    move/from16 v27, v5

    .line 220
    .line 221
    const/4 v5, 0x0

    .line 222
    invoke-static {v7, v9, v11, v15, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 223
    .line 224
    .line 225
    invoke-static {v15, v5, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_f

    .line 230
    .line 231
    if-nez v8, :cond_c

    .line 232
    .line 233
    const/4 v5, 0x0

    .line 234
    goto :goto_5

    .line 235
    :cond_c
    add-int/lit8 v5, v8, -0x1

    .line 236
    .line 237
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Ljava/lang/Number;

    .line 242
    .line 243
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    :goto_5
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    const/4 v5, -0x1

    .line 256
    if-ne v3, v5, :cond_d

    .line 257
    .line 258
    const/16 v24, 0x1

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_d
    const/16 v24, 0x0

    .line 262
    .line 263
    :goto_6
    new-instance v18, Ljava/text/Bidi;

    .line 264
    .line 265
    const/16 v21, 0x0

    .line 266
    .line 267
    const/16 v22, 0x0

    .line 268
    .line 269
    const/16 v20, 0x0

    .line 270
    .line 271
    move/from16 v23, v2

    .line 272
    .line 273
    move-object/from16 v19, v15

    .line 274
    .line 275
    invoke-direct/range {v18 .. v24}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {v18 .. v18}, Ljava/text/Bidi;->getRunCount()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    const/4 v3, 0x1

    .line 283
    if-ne v2, v3, :cond_e

    .line 284
    .line 285
    :goto_7
    move-object/from16 v2, v17

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_e
    move-object/from16 v2, v18

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_f
    const/4 v3, 0x1

    .line 292
    const/4 v5, -0x1

    .line 293
    goto :goto_7

    .line 294
    :goto_8
    invoke-virtual {v14, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    aput-boolean v3, v25, v8

    .line 298
    .line 299
    if-eqz v2, :cond_11

    .line 300
    .line 301
    iget-object v3, v0, Lrp;->f:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v3, [C

    .line 304
    .line 305
    if-ne v15, v3, :cond_10

    .line 306
    .line 307
    move-object/from16 v15, v17

    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_10
    move-object v15, v3

    .line 311
    :cond_11
    :goto_9
    iput-object v15, v0, Lrp;->f:Ljava/lang/Object;

    .line 312
    .line 313
    move-object v3, v2

    .line 314
    :goto_a
    if-eqz v3, :cond_12

    .line 315
    .line 316
    invoke-virtual {v3, v13, v12}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    .line 317
    .line 318
    .line 319
    move-result-object v17

    .line 320
    :cond_12
    move-object/from16 v2, v17

    .line 321
    .line 322
    if-eqz v2, :cond_29

    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    const/4 v7, 0x1

    .line 329
    if-ne v3, v7, :cond_13

    .line 330
    .line 331
    move/from16 v16, v7

    .line 332
    .line 333
    :goto_b
    move/from16 v8, v27

    .line 334
    .line 335
    const/4 v11, 0x0

    .line 336
    goto/16 :goto_18

    .line 337
    .line 338
    :cond_13
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    new-array v7, v3, [Ljy1;

    .line 343
    .line 344
    const/4 v8, 0x0

    .line 345
    :goto_c
    if-ge v8, v3, :cond_15

    .line 346
    .line 347
    new-instance v9, Ljy1;

    .line 348
    .line 349
    invoke-virtual {v2, v8}, Ljava/text/Bidi;->getRunStart(I)I

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    add-int/2addr v11, v6

    .line 354
    invoke-virtual {v2, v8}, Ljava/text/Bidi;->getRunLimit(I)I

    .line 355
    .line 356
    .line 357
    move-result v12

    .line 358
    add-int/2addr v12, v6

    .line 359
    invoke-virtual {v2, v8}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 360
    .line 361
    .line 362
    move-result v13

    .line 363
    rem-int/lit8 v13, v13, 0x2

    .line 364
    .line 365
    const/4 v14, 0x1

    .line 366
    if-ne v13, v14, :cond_14

    .line 367
    .line 368
    const/4 v13, 0x1

    .line 369
    goto :goto_d

    .line 370
    :cond_14
    const/4 v13, 0x0

    .line 371
    :goto_d
    invoke-direct {v9, v11, v13, v12}, Ljy1;-><init>(IZI)V

    .line 372
    .line 373
    .line 374
    aput-object v9, v7, v8

    .line 375
    .line 376
    add-int/lit8 v8, v8, 0x1

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_15
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 380
    .line 381
    .line 382
    move-result v8

    .line 383
    new-array v9, v8, [B

    .line 384
    .line 385
    const/4 v11, 0x0

    .line 386
    :goto_e
    if-ge v11, v8, :cond_16

    .line 387
    .line 388
    invoke-virtual {v2, v11}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 389
    .line 390
    .line 391
    move-result v12

    .line 392
    int-to-byte v12, v12

    .line 393
    aput-byte v12, v9, v11

    .line 394
    .line 395
    add-int/lit8 v11, v11, 0x1

    .line 396
    .line 397
    goto :goto_e

    .line 398
    :cond_16
    const/4 v11, 0x0

    .line 399
    invoke-static {v9, v11, v7, v11, v3}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 400
    .line 401
    .line 402
    if-ne v1, v6, :cond_1f

    .line 403
    .line 404
    move v0, v11

    .line 405
    :goto_f
    if-ge v0, v3, :cond_18

    .line 406
    .line 407
    aget-object v2, v7, v0

    .line 408
    .line 409
    iget v2, v2, Ljy1;->a:I

    .line 410
    .line 411
    if-ne v2, v1, :cond_17

    .line 412
    .line 413
    goto :goto_10

    .line 414
    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 415
    .line 416
    goto :goto_f

    .line 417
    :cond_18
    move v0, v5

    .line 418
    :goto_10
    aget-object v1, v7, v0

    .line 419
    .line 420
    if-nez p2, :cond_1a

    .line 421
    .line 422
    iget-boolean v1, v1, Ljy1;->c:Z

    .line 423
    .line 424
    if-ne v10, v1, :cond_19

    .line 425
    .line 426
    goto :goto_11

    .line 427
    :cond_19
    move v2, v10

    .line 428
    goto :goto_12

    .line 429
    :cond_1a
    :goto_11
    if-nez v10, :cond_1b

    .line 430
    .line 431
    const/4 v2, 0x1

    .line 432
    goto :goto_12

    .line 433
    :cond_1b
    move v2, v11

    .line 434
    :goto_12
    if-nez v0, :cond_1c

    .line 435
    .line 436
    if-eqz v2, :cond_1c

    .line 437
    .line 438
    move/from16 v8, v27

    .line 439
    .line 440
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineLeft(I)F

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    return v0

    .line 445
    :cond_1c
    move/from16 v8, v27

    .line 446
    .line 447
    const/16 v16, 0x1

    .line 448
    .line 449
    add-int/lit8 v3, v3, -0x1

    .line 450
    .line 451
    if-ne v0, v3, :cond_1d

    .line 452
    .line 453
    if-nez v2, :cond_1d

    .line 454
    .line 455
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineRight(I)F

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    return v0

    .line 460
    :cond_1d
    if-eqz v2, :cond_1e

    .line 461
    .line 462
    add-int/lit8 v0, v0, -0x1

    .line 463
    .line 464
    aget-object v0, v7, v0

    .line 465
    .line 466
    iget v0, v0, Ljy1;->a:I

    .line 467
    .line 468
    invoke-virtual {v4, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    return v0

    .line 473
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 474
    .line 475
    aget-object v0, v7, v0

    .line 476
    .line 477
    iget v0, v0, Ljy1;->a:I

    .line 478
    .line 479
    invoke-virtual {v4, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    return v0

    .line 484
    :cond_1f
    move/from16 v2, v26

    .line 485
    .line 486
    move/from16 v8, v27

    .line 487
    .line 488
    if-le v1, v2, :cond_20

    .line 489
    .line 490
    invoke-virtual {v0, v1, v6}, Lrp;->l(II)I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    goto :goto_13

    .line 495
    :cond_20
    move v0, v1

    .line 496
    :goto_13
    move v1, v11

    .line 497
    :goto_14
    if-ge v1, v3, :cond_22

    .line 498
    .line 499
    aget-object v2, v7, v1

    .line 500
    .line 501
    iget v2, v2, Ljy1;->b:I

    .line 502
    .line 503
    if-ne v2, v0, :cond_21

    .line 504
    .line 505
    goto :goto_15

    .line 506
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 507
    .line 508
    goto :goto_14

    .line 509
    :cond_22
    move v1, v5

    .line 510
    :goto_15
    aget-object v0, v7, v1

    .line 511
    .line 512
    if-nez p2, :cond_25

    .line 513
    .line 514
    iget-boolean v0, v0, Ljy1;->c:Z

    .line 515
    .line 516
    if-ne v10, v0, :cond_23

    .line 517
    .line 518
    goto :goto_16

    .line 519
    :cond_23
    if-nez v10, :cond_24

    .line 520
    .line 521
    const/4 v2, 0x1

    .line 522
    goto :goto_17

    .line 523
    :cond_24
    move v2, v11

    .line 524
    goto :goto_17

    .line 525
    :cond_25
    :goto_16
    move v2, v10

    .line 526
    :goto_17
    if-nez v1, :cond_26

    .line 527
    .line 528
    if-eqz v2, :cond_26

    .line 529
    .line 530
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineLeft(I)F

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    return v0

    .line 535
    :cond_26
    const/16 v16, 0x1

    .line 536
    .line 537
    add-int/lit8 v3, v3, -0x1

    .line 538
    .line 539
    if-ne v1, v3, :cond_27

    .line 540
    .line 541
    if-nez v2, :cond_27

    .line 542
    .line 543
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineRight(I)F

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    return v0

    .line 548
    :cond_27
    if-eqz v2, :cond_28

    .line 549
    .line 550
    add-int/lit8 v1, v1, -0x1

    .line 551
    .line 552
    aget-object v0, v7, v1

    .line 553
    .line 554
    iget v0, v0, Ljy1;->b:I

    .line 555
    .line 556
    invoke-virtual {v4, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    return v0

    .line 561
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 562
    .line 563
    aget-object v0, v7, v1

    .line 564
    .line 565
    iget v0, v0, Ljy1;->b:I

    .line 566
    .line 567
    invoke-virtual {v4, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    return v0

    .line 572
    :cond_29
    const/16 v16, 0x1

    .line 573
    .line 574
    goto/16 :goto_b

    .line 575
    .line 576
    :goto_18
    invoke-virtual {v4, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-nez p2, :cond_2a

    .line 581
    .line 582
    if-ne v10, v0, :cond_2c

    .line 583
    .line 584
    :cond_2a
    if-nez v10, :cond_2b

    .line 585
    .line 586
    move/from16 v10, v16

    .line 587
    .line 588
    goto :goto_19

    .line 589
    :cond_2b
    move v10, v11

    .line 590
    :cond_2c
    :goto_19
    if-ne v1, v6, :cond_2d

    .line 591
    .line 592
    move v9, v10

    .line 593
    goto :goto_1a

    .line 594
    :cond_2d
    if-nez v10, :cond_2e

    .line 595
    .line 596
    move/from16 v9, v16

    .line 597
    .line 598
    goto :goto_1a

    .line 599
    :cond_2e
    move v9, v11

    .line 600
    :goto_1a
    if-eqz v9, :cond_2f

    .line 601
    .line 602
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineLeft(I)F

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    return v0

    .line 607
    :cond_2f
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineRight(I)F

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    return v0

    .line 612
    :cond_30
    :goto_1b
    invoke-virtual/range {p0 .. p2}, Lrp;->h(IZ)F

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    return v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lrp;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Ldh1;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lci4;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p1}, Lci4;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ldh1;->q(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, p2}, Lci4;->a(Ldh1;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public l(II)I
    .locals 2

    .line 1
    :goto_0
    if-le p1, p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lrp;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/text/Layout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    add-int/lit8 v1, p1, -0x1

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x1680

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x2000

    .line 30
    .line 31
    invoke-static {v0, v1}, Lnt1;->l(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ltz v1, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x200a

    .line 38
    .line 39
    invoke-static {v0, v1}, Lnt1;->l(II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-gtz v1, :cond_0

    .line 44
    .line 45
    const/16 v1, 0x2007

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    :cond_0
    const/16 v1, 0x205f

    .line 50
    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    const/16 v1, 0x3000

    .line 54
    .line 55
    if-ne v0, v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return p1

    .line 59
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return p1
.end method

.method public m(Ljava/lang/String;Lq63;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_3

    .line 9
    .line 10
    const-string v0, "method "

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    const-string v1, "POST"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "PUT"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "PATCH"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    const-string v1, "PROPPATCH"

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    const-string v1, "QUERY"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    const-string v1, "REPORT"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string p0, " must have a request body."

    .line 64
    .line 65
    invoke-static {v0, p1, p0}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    invoke-static {p1}, Lnt1;->M(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    :goto_0
    iput-object p1, p0, Lrp;->c:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p2, p0, Lrp;->e:Ljava/lang/Object;

    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    const-string p0, " must not have a request body."

    .line 85
    .line 86
    invoke-static {v0, p1, p0}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    const-string p0, "method.isEmpty() == true"

    .line 95
    .line 96
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public n(Lao;Lz14;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lrp;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly14;

    .line 4
    .line 5
    iget-object v1, p0, Lrp;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lhp;

    .line 8
    .line 9
    iget-object v2, p0, Lrp;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lrp;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lmk0;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lrp;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lo01;

    .line 22
    .line 23
    iget-object v5, v0, Ly14;->c:Laq0;

    .line 24
    .line 25
    iget-object v4, p1, Lao;->b:Lry2;

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Lhp;->b(Lry2;)Lhp;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v1, Lbo;

    .line 32
    .line 33
    invoke-direct {v1}, Lbo;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v4, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v4, v1, Lbo;->i:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object v4, v0, Ly14;->a:Lpr3;

    .line 44
    .line 45
    invoke-virtual {v4}, Lpr3;->i()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iput-object v4, v1, Lbo;->g:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v0, v0, Ly14;->b:Lpr3;

    .line 56
    .line 57
    invoke-virtual {v0}, Lpr3;->i()J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, v1, Lbo;->h:Ljava/lang/Object;

    .line 66
    .line 67
    iput-object v2, v1, Lbo;->b:Ljava/lang/Object;

    .line 68
    .line 69
    new-instance v0, Ll01;

    .line 70
    .line 71
    iget-object p1, p1, Lao;->a:Ljava/lang/Object;

    .line 72
    .line 73
    iget v2, v3, Lmk0;->n:I

    .line 74
    .line 75
    packed-switch v2, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    check-cast p1, Lmj3;

    .line 79
    .line 80
    sget-object v2, Lnj3;->b:Ldd1;

    .line 81
    .line 82
    invoke-virtual {v2, p1}, Ldd1;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const-string v2, "FirebaseSessions"

    .line 90
    .line 91
    const-string v3, "Session Event Type: SESSION_START"

    .line 92
    .line 93
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    sget-object v2, Lk40;->a:Ljava/nio/charset/Charset;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_0
    check-cast p1, Lkk0;

    .line 107
    .line 108
    sget-object v2, Lgn0;->b:Lnk0;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v2, Lnk0;->a:Ldd1;

    .line 114
    .line 115
    invoke-virtual {v2, p1}, Ldd1;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v2, "UTF-8"

    .line 120
    .line 121
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :goto_0
    check-cast p1, [B

    .line 130
    .line 131
    invoke-direct {v0, p0, p1}, Ll01;-><init>(Lo01;[B)V

    .line 132
    .line 133
    .line 134
    iput-object v0, v1, Lbo;->f:Ljava/lang/Object;

    .line 135
    .line 136
    const/4 p0, 0x0

    .line 137
    iput-object p0, v1, Lbo;->d:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-virtual {v1}, Lbo;->c()Lco;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    iget-object p0, v5, Laq0;->b:Ljava/util/concurrent/Executor;

    .line 144
    .line 145
    new-instance v4, Lyp0;

    .line 146
    .line 147
    const/4 v9, 0x0

    .line 148
    move-object v7, p2

    .line 149
    invoke-direct/range {v4 .. v9}, Lyp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 150
    .line 151
    .line 152
    invoke-interface {p0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_0
    const-string p0, "Null transformer"

    .line 157
    .line 158
    invoke-static {p0}, Lq73;->r(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public o(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lrp;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lrp;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lwr3;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lwr3;->h(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lrp;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lwr3;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lwr3;->h(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lrp;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget-object v1, p0, Lrp;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, 0x14

    .line 22
    .line 23
    iget-object v3, p0, Lrp;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    add-int/2addr v4, v2

    .line 32
    iget-object v2, p0, Lrp;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    add-int/2addr v5, v4

    .line 41
    iget-object v4, p0, Lrp;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    add-int/2addr v6, v5

    .line 50
    iget-object p0, p0, Lrp;->f:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    add-int/2addr v5, v6

    .line 59
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const-string v5, "VersionInfo("

    .line 63
    .line 64
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/16 v1, 0x3a

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, "UNAVAILABLE"

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_1

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :cond_1
    const/16 v1, 0x29

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_2

    .line 114
    .line 115
    const/16 v1, 0x40

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
