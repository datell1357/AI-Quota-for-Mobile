.class public abstract synthetic Lhn3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public static a(Landroid/content/Context;)Lo23;
    .locals 22

    .line 1
    new-instance v0, Leh;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Leh;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Leh;->p:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lg41;

    .line 13
    .line 14
    sget-object v3, Lin3;->a:Li3;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v2, v2, Lg41;->a:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    sget-object v4, Lt64;->a:Lt64;

    .line 22
    .line 23
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v5, Lm23;

    .line 27
    .line 28
    iget-object v3, v0, Leh;->q:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v6, v3

    .line 31
    check-cast v6, Landroid/content/Context;

    .line 32
    .line 33
    iget-object v3, v0, Leh;->o:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Lho1;

    .line 36
    .line 37
    new-instance v4, Lh41;

    .line 38
    .line 39
    invoke-static {v2}, Lk30;->G(Ljava/util/Map;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v4, v2}, Lh41;-><init>(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    iget-object v8, v3, Lho1;->a:Lr51;

    .line 47
    .line 48
    iget-object v9, v3, Lho1;->b:Lhi0;

    .line 49
    .line 50
    iget-object v10, v3, Lho1;->c:Lhi0;

    .line 51
    .line 52
    iget-object v11, v3, Lho1;->d:Lhi0;

    .line 53
    .line 54
    iget-object v12, v3, Lho1;->e:Ly00;

    .line 55
    .line 56
    iget-object v13, v3, Lho1;->f:Ly00;

    .line 57
    .line 58
    iget-object v14, v3, Lho1;->g:Ly00;

    .line 59
    .line 60
    iget-object v15, v3, Lho1;->h:Lpe1;

    .line 61
    .line 62
    iget-object v2, v3, Lho1;->i:Lpe1;

    .line 63
    .line 64
    iget-object v7, v3, Lho1;->j:Lpe1;

    .line 65
    .line 66
    iget-object v1, v3, Lho1;->k:Lqn3;

    .line 67
    .line 68
    move-object/from16 v18, v1

    .line 69
    .line 70
    iget-object v1, v3, Lho1;->l:Lrd3;

    .line 71
    .line 72
    iget-object v3, v3, Lho1;->m:Lcx2;

    .line 73
    .line 74
    move-object/from16 v17, v7

    .line 75
    .line 76
    new-instance v7, Lho1;

    .line 77
    .line 78
    move-object/from16 v19, v1

    .line 79
    .line 80
    move-object/from16 v16, v2

    .line 81
    .line 82
    move-object/from16 v20, v3

    .line 83
    .line 84
    move-object/from16 v21, v4

    .line 85
    .line 86
    invoke-direct/range {v7 .. v21}, Lho1;-><init>(Lr51;Lhi0;Lhi0;Lhi0;Ly00;Ly00;Ly00;Lpe1;Lpe1;Lpe1;Lqn3;Lrd3;Lcx2;Lh41;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Ll6;

    .line 90
    .line 91
    const/16 v2, 0xf

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ll6;-><init>(I)V

    .line 94
    .line 95
    .line 96
    new-instance v8, Lnv3;

    .line 97
    .line 98
    invoke-direct {v8, v1}, Lnv3;-><init>(Lne1;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcc;

    .line 102
    .line 103
    const/16 v2, 0xd

    .line 104
    .line 105
    invoke-direct {v1, v2, v0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v9, Lnv3;

    .line 109
    .line 110
    invoke-direct {v9, v1}, Lnv3;-><init>(Lne1;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ll6;

    .line 114
    .line 115
    const/16 v1, 0x10

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 118
    .line 119
    .line 120
    new-instance v10, Lnv3;

    .line 121
    .line 122
    invoke-direct {v10, v0}, Lnv3;-><init>(Lne1;)V

    .line 123
    .line 124
    .line 125
    new-instance v11, Lda0;

    .line 126
    .line 127
    sget-object v12, Lg01;->n:Lg01;

    .line 128
    .line 129
    move-object v13, v12

    .line 130
    move-object v14, v12

    .line 131
    move-object v15, v12

    .line 132
    move-object/from16 v16, v12

    .line 133
    .line 134
    invoke-direct/range {v11 .. v16}, Lda0;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    invoke-direct/range {v5 .. v11}, Lm23;-><init>(Landroid/content/Context;Lho1;Lnv3;Lnv3;Lnv3;Lda0;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lo23;

    .line 141
    .line 142
    invoke-direct {v0, v5}, Lo23;-><init>(Lm23;)V

    .line 143
    .line 144
    .line 145
    return-object v0
.end method
