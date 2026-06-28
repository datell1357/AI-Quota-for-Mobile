.class public final Lo13;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqh0;


# instance fields
.field public final a:I

.field public final b:Lzw2;

.field public volatile c:Ln13;


# direct methods
.method public constructor <init>(ILzw2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x2

    .line 8
    :goto_0
    iput p1, p0, Lo13;->a:I

    .line 9
    .line 10
    iput-object p2, p0, Lo13;->b:Lzw2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lrl1;)Lnh0;
    .locals 12

    .line 1
    iget-object p1, p0, Lo13;->c:Ln13;

    .line 2
    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object p1, p0, Lo13;->c:Ln13;

    .line 7
    .line 8
    if-nez p1, :cond_2

    .line 9
    .line 10
    iget p1, p0, Lo13;->a:I

    .line 11
    .line 12
    invoke-static {p1}, Ldi0;->F(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x4

    .line 17
    const/4 v1, 0x3

    .line 18
    const/4 v2, 0x5

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x2

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    if-eq p1, v5, :cond_0

    .line 25
    .line 26
    new-instance p1, Lp13;

    .line 27
    .line 28
    new-instance v6, Lou;

    .line 29
    .line 30
    invoke-direct {v6, v4}, Lou;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lou;

    .line 34
    .line 35
    invoke-direct {v7, v3}, Lou;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iget-object v8, p0, Lo13;->b:Lzw2;

    .line 39
    .line 40
    invoke-static {v7, v8}, Ls03;->e(Lu80;Lzw2;)Lu80;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    new-instance v8, Lay1;

    .line 45
    .line 46
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v9, Llu;

    .line 50
    .line 51
    invoke-direct {v9, v5}, Llu;-><init>(I)V

    .line 52
    .line 53
    .line 54
    new-instance v10, Lzx1;

    .line 55
    .line 56
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    new-array v2, v2, [Lu80;

    .line 60
    .line 61
    aput-object v6, v2, v3

    .line 62
    .line 63
    aput-object v7, v2, v4

    .line 64
    .line 65
    aput-object v8, v2, v5

    .line 66
    .line 67
    aput-object v9, v2, v1

    .line 68
    .line 69
    aput-object v10, v2, v0

    .line 70
    .line 71
    invoke-direct {p1, v2}, Ln13;-><init>([Lu80;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lo13;->c:Ln13;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    new-instance p1, Lp13;

    .line 80
    .line 81
    new-instance v6, Lj13;

    .line 82
    .line 83
    invoke-direct {v6, v5}, Lj13;-><init>(I)V

    .line 84
    .line 85
    .line 86
    new-instance v7, Lou;

    .line 87
    .line 88
    invoke-direct {v7, v3}, Lou;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iget-object v8, p0, Lo13;->b:Lzw2;

    .line 92
    .line 93
    invoke-static {v7, v8}, Ls03;->e(Lu80;Lzw2;)Lu80;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    new-instance v8, Llu;

    .line 98
    .line 99
    invoke-direct {v8, v4}, Llu;-><init>(I)V

    .line 100
    .line 101
    .line 102
    new-instance v9, Llu;

    .line 103
    .line 104
    invoke-direct {v9, v5}, Llu;-><init>(I)V

    .line 105
    .line 106
    .line 107
    new-instance v10, Lpu;

    .line 108
    .line 109
    sget-object v11, Lq13;->g:[Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v10, v11}, Lpu;-><init>([Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-array v2, v2, [Lu80;

    .line 115
    .line 116
    aput-object v6, v2, v3

    .line 117
    .line 118
    aput-object v7, v2, v4

    .line 119
    .line 120
    aput-object v8, v2, v5

    .line 121
    .line 122
    aput-object v9, v2, v1

    .line 123
    .line 124
    aput-object v10, v2, v0

    .line 125
    .line 126
    invoke-direct {p1, v2}, Ln13;-><init>([Lu80;)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lo13;->c:Ln13;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    new-instance p1, Lq13;

    .line 133
    .line 134
    new-instance v6, Lou;

    .line 135
    .line 136
    invoke-direct {v6, v4}, Lou;-><init>(I)V

    .line 137
    .line 138
    .line 139
    new-instance v7, Lou;

    .line 140
    .line 141
    invoke-direct {v7, v3}, Lou;-><init>(I)V

    .line 142
    .line 143
    .line 144
    iget-object v8, p0, Lo13;->b:Lzw2;

    .line 145
    .line 146
    invoke-static {v7, v8}, Ls03;->e(Lu80;Lzw2;)Lu80;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    new-instance v8, Llu;

    .line 151
    .line 152
    invoke-direct {v8, v4}, Llu;-><init>(I)V

    .line 153
    .line 154
    .line 155
    new-instance v9, Llu;

    .line 156
    .line 157
    invoke-direct {v9, v5}, Llu;-><init>(I)V

    .line 158
    .line 159
    .line 160
    new-instance v10, Lpu;

    .line 161
    .line 162
    sget-object v11, Lq13;->g:[Ljava/lang/String;

    .line 163
    .line 164
    invoke-direct {v10, v11}, Lpu;-><init>([Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-array v2, v2, [Lu80;

    .line 168
    .line 169
    aput-object v6, v2, v3

    .line 170
    .line 171
    aput-object v7, v2, v4

    .line 172
    .line 173
    aput-object v8, v2, v5

    .line 174
    .line 175
    aput-object v9, v2, v1

    .line 176
    .line 177
    aput-object v10, v2, v0

    .line 178
    .line 179
    invoke-direct {p1, v2}, Ln13;-><init>([Lu80;)V

    .line 180
    .line 181
    .line 182
    iput-object p1, p0, Lo13;->c:Ln13;

    .line 183
    .line 184
    :cond_2
    :goto_0
    monitor-exit p0

    .line 185
    goto :goto_2

    .line 186
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    throw p1

    .line 188
    :cond_3
    :goto_2
    iget-object p0, p0, Lo13;->c:Ln13;

    .line 189
    .line 190
    return-object p0
.end method
