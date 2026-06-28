.class public final Lzd2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyd2;


# instance fields
.field public final n:Landroid/content/Context;

.field public o:Lbh0;

.field public final p:Lss2;

.field public q:Lir3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzd2;->n:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lss2;

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lss2;-><init>(F)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lzd2;->p:Lss2;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final F(Lhi0;)Lhi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final K(Lgi0;)Lfi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->r(Lfi0;Lgi0;)Lfi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final R(Ldf1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final Y(Lgi0;)Lhi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->z(Lfi0;Lgi0;)Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final Z()F
    .locals 13

    .line 1
    iget-object v0, p0, Lzd2;->q:Lir3;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v6, p0, Lzd2;->n:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v8, Ljf4;->a:Lkg2;

    .line 8
    .line 9
    monitor-enter v8

    .line 10
    :try_start_0
    invoke-virtual {v8, v6}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v9, 0x3

    .line 15
    const/4 v10, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v0, "animator_duration_scale"

    .line 23
    .line 24
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v0, -0x1

    .line 29
    const/4 v1, 0x6

    .line 30
    invoke-static {v0, v1, v10}, Lix;->c(IILvy;)Lzy;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lw80;->p(Landroid/os/Looper;)Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v4, Lif4;

    .line 43
    .line 44
    invoke-direct {v4, v5, v0}, Lif4;-><init>(Lzy;Landroid/os/Handler;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lu01;

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-direct/range {v1 .. v7}, Lu01;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lif4;Lzy;Landroid/content/Context;Ldh0;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lmt;

    .line 54
    .line 55
    invoke-direct {v0, v9, v1}, Lmt;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lbh0;

    .line 59
    .line 60
    invoke-static {}, Lk30;->f()Lbu3;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    sget-object v3, Lzu0;->a:Lzp0;

    .line 65
    .line 66
    sget-object v3, Ln92;->a:Lxi1;

    .line 67
    .line 68
    invoke-static {v2, v3}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v1, v2}, Lbh0;-><init>(Lhi0;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lrr3;

    .line 76
    .line 77
    const-wide/16 v3, 0x0

    .line 78
    .line 79
    const-wide v11, 0x7fffffffffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-direct {v2, v3, v4, v11, v12}, Lrr3;-><init>(JJ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v4, "animator_duration_scale"

    .line 92
    .line 93
    const/high16 v5, 0x3f800000    # 1.0f

    .line 94
    .line 95
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v0, v1, v2, v3}, Lqj0;->Y(La81;Lqi0;Lom3;Ljava/lang/Object;)Lb23;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v8, v6, v0}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object p0, v0

    .line 113
    goto :goto_1

    .line 114
    :cond_0
    :goto_0
    check-cast v0, Lur3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    monitor-exit v8

    .line 117
    invoke-interface {v0}, Lur3;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-object v2, p0, Lzd2;->p:Lss2;

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Lss2;->h(F)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lzd2;->o:Lbh0;

    .line 133
    .line 134
    if-eqz v1, :cond_1

    .line 135
    .line 136
    new-instance v2, Ln;

    .line 137
    .line 138
    const/16 v3, 0x16

    .line 139
    .line 140
    invoke-direct {v2, v0, p0, v10, v3}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v10, v10, v2, v9}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lzd2;->q:Lir3;

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_1
    const-string p0, "MotionDurationScale scale factor requested before recomposer loop start"

    .line 151
    .line 152
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/4 p0, 0x0

    .line 156
    return p0

    .line 157
    :goto_1
    monitor-exit v8

    .line 158
    throw p0

    .line 159
    :cond_2
    :goto_2
    iget-object p0, p0, Lzd2;->p:Lss2;

    .line 160
    .line 161
    invoke-virtual {p0}, Lss2;->g()F

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0
.end method
