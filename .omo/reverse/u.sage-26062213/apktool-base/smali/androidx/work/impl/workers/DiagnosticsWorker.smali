.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c()Lt42;
    .locals 9

    .line 1
    iget-object p0, p0, Lv42;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Leg4;->c(Landroid/content/Context;)Leg4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lig4;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->x()Ltg4;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lxv3;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Leg4;->b:Lmd0;

    .line 29
    .line 30
    iget-object p0, p0, Lmd0;->d:Lpr3;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    const-wide/32 v6, 0x5265c00

    .line 40
    .line 41
    .line 42
    sub-long/2addr v4, v6

    .line 43
    iget-object p0, v1, Lqg4;->a:Lga3;

    .line 44
    .line 45
    new-instance v6, Ljy;

    .line 46
    .line 47
    const/4 v7, 0x2

    .line 48
    invoke-direct {v6, v4, v5, v7}, Ljy;-><init>(JI)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-static {p0, v4, v5, v6}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/util/List;

    .line 58
    .line 59
    iget-object v1, v1, Lqg4;->a:Lga3;

    .line 60
    .line 61
    new-instance v6, Lba4;

    .line 62
    .line 63
    const/16 v7, 0xe

    .line 64
    .line 65
    invoke-direct {v6, v7}, Lba4;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v4, v5, v6}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/util/List;

    .line 73
    .line 74
    new-instance v7, Lba4;

    .line 75
    .line 76
    const/16 v8, 0x12

    .line 77
    .line 78
    invoke-direct {v7, v8}, Lba4;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v4, v5, v7}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_0

    .line 92
    .line 93
    invoke-static {}, Lt72;->g()Lt72;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    sget-object v5, Ljt0;->a:Ljava/lang/String;

    .line 98
    .line 99
    const-string v7, "Recently completed work:\n\n"

    .line 100
    .line 101
    invoke-virtual {v4, v5, v7}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lt72;->g()Lt72;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v2, v3, v0, p0}, Ljt0;->a(Lig4;Ltg4;Lxv3;Ljava/util/List;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v4, v5, p0}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_0
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_1

    .line 120
    .line 121
    invoke-static {}, Lt72;->g()Lt72;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    sget-object v4, Ljt0;->a:Ljava/lang/String;

    .line 126
    .line 127
    const-string v5, "Running work:\n\n"

    .line 128
    .line 129
    invoke-virtual {p0, v4, v5}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lt72;->g()Lt72;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {v2, v3, v0, v6}, Ljt0;->a(Lig4;Ltg4;Lxv3;Ljava/util/List;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {p0, v4, v5}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_2

    .line 148
    .line 149
    invoke-static {}, Lt72;->g()Lt72;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    sget-object v4, Ljt0;->a:Ljava/lang/String;

    .line 154
    .line 155
    const-string v5, "Enqueued work:\n\n"

    .line 156
    .line 157
    invoke-virtual {p0, v4, v5}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lt72;->g()Lt72;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {v2, v3, v0, v1}, Ljt0;->a(Lig4;Ltg4;Lxv3;Ljava/util/List;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p0, v4, v0}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_2
    new-instance p0, Lt42;

    .line 172
    .line 173
    invoke-direct {p0}, Lt42;-><init>()V

    .line 174
    .line 175
    .line 176
    return-object p0
.end method
