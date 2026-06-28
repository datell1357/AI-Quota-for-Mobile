.class public abstract Ll04;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lds2;

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lds2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1, v1}, Lds2;-><init>(FFFF)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ll04;->a:Lds2;

    .line 8
    .line 9
    const/high16 v0, 0x42800000    # 64.0f

    .line 10
    .line 11
    sput v0, Ll04;->b:F

    .line 12
    .line 13
    return-void
.end method

.method public static a(JJLag1;I)Lk04;
    .locals 23

    .line 1
    sget-wide v0, Lt70;->f:J

    .line 2
    .line 3
    and-int/lit8 v2, p5, 0x8

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    move-wide v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide/from16 v2, p2

    .line 10
    .line 11
    :goto_0
    sget-object v4, Lwa2;->a:Lis3;

    .line 12
    .line 13
    move-object/from16 v5, p4

    .line 14
    .line 15
    invoke-virtual {v5, v4}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lua2;

    .line 20
    .line 21
    iget-object v4, v4, Lua2;->a:Ly70;

    .line 22
    .line 23
    iget-object v5, v4, Ly70;->b0:Lk04;

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    new-instance v6, Lk04;

    .line 28
    .line 29
    sget-object v5, Lis0;->b:Lz70;

    .line 30
    .line 31
    invoke-static {v4, v5}, La80;->c(Ly70;Lz70;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    sget-object v5, Lis0;->d:Lz70;

    .line 36
    .line 37
    invoke-static {v4, v5}, La80;->c(Ly70;Lz70;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    sget-object v5, Lis0;->c:Lz70;

    .line 42
    .line 43
    invoke-static {v4, v5}, La80;->c(Ly70;Lz70;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    sget-object v5, Lis0;->f:Lz70;

    .line 48
    .line 49
    invoke-static {v4, v5}, La80;->c(Ly70;Lz70;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v13

    .line 53
    sget-object v5, Lis0;->g:Lz70;

    .line 54
    .line 55
    invoke-static {v4, v5}, La80;->c(Ly70;Lz70;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v15

    .line 59
    sget-object v5, Lis0;->e:Lz70;

    .line 60
    .line 61
    invoke-static {v4, v5}, La80;->c(Ly70;Lz70;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v17

    .line 65
    invoke-direct/range {v6 .. v18}, Lk04;-><init>(JJJJJJ)V

    .line 66
    .line 67
    .line 68
    iput-object v6, v4, Ly70;->b0:Lk04;

    .line 69
    .line 70
    move-object v5, v6

    .line 71
    :cond_1
    const-wide/16 v6, 0x10

    .line 72
    .line 73
    cmp-long v4, p0, v6

    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    move-wide/from16 v11, p0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-wide v8, v5, Lk04;->a:J

    .line 81
    .line 82
    move-wide v11, v8

    .line 83
    :goto_1
    cmp-long v4, v0, v6

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    move-wide v13, v0

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iget-wide v8, v5, Lk04;->b:J

    .line 90
    .line 91
    move-wide v13, v8

    .line 92
    :goto_2
    cmp-long v4, v0, v6

    .line 93
    .line 94
    if-eqz v4, :cond_4

    .line 95
    .line 96
    move-wide v15, v0

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    iget-wide v8, v5, Lk04;->c:J

    .line 99
    .line 100
    move-wide v15, v8

    .line 101
    :goto_3
    cmp-long v4, v2, v6

    .line 102
    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    :goto_4
    move-wide/from16 v17, v2

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_5
    iget-wide v2, v5, Lk04;->d:J

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :goto_5
    cmp-long v2, v0, v6

    .line 112
    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    move-wide/from16 v19, v0

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_6
    iget-wide v2, v5, Lk04;->e:J

    .line 119
    .line 120
    move-wide/from16 v19, v2

    .line 121
    .line 122
    :goto_6
    cmp-long v2, v0, v6

    .line 123
    .line 124
    if-eqz v2, :cond_7

    .line 125
    .line 126
    :goto_7
    move-wide/from16 v21, v0

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_7
    iget-wide v0, v5, Lk04;->f:J

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :goto_8
    new-instance v10, Lk04;

    .line 133
    .line 134
    invoke-direct/range {v10 .. v22}, Lk04;-><init>(JJJJJJ)V

    .line 135
    .line 136
    .line 137
    return-object v10
.end method
