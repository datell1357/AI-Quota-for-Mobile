.class public final Lsq1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyp3;


# instance fields
.field public final n:Ld23;

.field public final o:Ljava/util/zip/Inflater;

.field public p:I

.field public q:Z


# direct methods
.method public constructor <init>(Ld23;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsq1;->n:Ld23;

    .line 5
    .line 6
    iput-object p2, p0, Lsq1;->o:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsq1;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lsq1;->o:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lsq1;->q:Z

    .line 13
    .line 14
    iget-object p0, p0, Lsq1;->n:Ld23;

    .line 15
    .line 16
    invoke-virtual {p0}, Ld23;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final g()Lmz3;
    .locals 0

    .line 1
    iget-object p0, p0, Lsq1;->n:Ld23;

    .line 2
    .line 3
    iget-object p0, p0, Ld23;->n:Lyp3;

    .line 4
    .line 5
    invoke-interface {p0}, Lyp3;->g()Lmz3;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final l(JLsy;)J
    .locals 10

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-ltz v2, :cond_b

    .line 9
    .line 10
    iget-boolean v3, p0, Lsq1;->q:Z

    .line 11
    .line 12
    if-nez v3, :cond_a

    .line 13
    .line 14
    iget-object v3, p0, Lsq1;->n:Ld23;

    .line 15
    .line 16
    iget-object v4, p0, Lsq1;->o:Ljava/util/zip/Inflater;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    :cond_0
    :goto_1
    move-wide v8, v0

    .line 21
    goto :goto_4

    .line 22
    :cond_1
    const/4 v2, 0x1

    .line 23
    :try_start_0
    invoke-virtual {p3, v2}, Lsy;->Z(I)Lqg3;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v5, v2, Lqg3;->c:I

    .line 28
    .line 29
    rsub-int v5, v5, 0x2000

    .line 30
    .line 31
    int-to-long v5, v5

    .line 32
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    long-to-int v5, v5

    .line 37
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v3}, Ld23;->b()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget-object v6, v3, Ld23;->o:Lsy;

    .line 52
    .line 53
    iget-object v6, v6, Lsy;->n:Lqg3;

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget v7, v6, Lqg3;->c:I

    .line 59
    .line 60
    iget v8, v6, Lqg3;->b:I

    .line 61
    .line 62
    sub-int/2addr v7, v8

    .line 63
    iput v7, p0, Lsq1;->p:I

    .line 64
    .line 65
    iget-object v6, v6, Lqg3;->a:[B

    .line 66
    .line 67
    invoke-virtual {v4, v6, v8, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 68
    .line 69
    .line 70
    :goto_2
    iget-object v6, v2, Lqg3;->a:[B

    .line 71
    .line 72
    iget v7, v2, Lqg3;->c:I

    .line 73
    .line 74
    invoke-virtual {v4, v6, v7, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    iget v6, p0, Lsq1;->p:I

    .line 79
    .line 80
    if-nez v6, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    sub-int/2addr v6, v7

    .line 88
    iget v7, p0, Lsq1;->p:I

    .line 89
    .line 90
    sub-int/2addr v7, v6

    .line 91
    iput v7, p0, Lsq1;->p:I

    .line 92
    .line 93
    int-to-long v6, v6

    .line 94
    invoke-virtual {v3, v6, v7}, Ld23;->skip(J)V

    .line 95
    .line 96
    .line 97
    :goto_3
    if-lez v5, :cond_5

    .line 98
    .line 99
    iget v6, v2, Lqg3;->c:I

    .line 100
    .line 101
    add-int/2addr v6, v5

    .line 102
    iput v6, v2, Lqg3;->c:I

    .line 103
    .line 104
    iget-wide v6, p3, Lsy;->o:J

    .line 105
    .line 106
    int-to-long v8, v5

    .line 107
    add-long/2addr v6, v8

    .line 108
    iput-wide v6, p3, Lsy;->o:J

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    iget v5, v2, Lqg3;->b:I

    .line 112
    .line 113
    iget v6, v2, Lqg3;->c:I

    .line 114
    .line 115
    if-ne v5, v6, :cond_0

    .line 116
    .line 117
    invoke-virtual {v2}, Lqg3;->a()Lqg3;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iput-object v5, p3, Lsy;->n:Lqg3;

    .line 122
    .line 123
    invoke-static {v2}, Lsg3;->a(Lqg3;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_4
    cmp-long v0, v8, v0

    .line 128
    .line 129
    if-lez v0, :cond_6

    .line 130
    .line 131
    return-wide v8

    .line 132
    :cond_6
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_9

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_7
    invoke-virtual {v3}, Ld23;->b()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_8

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_8
    new-instance p0, Ljava/io/EOFException;

    .line 154
    .line 155
    const-string p1, "source exhausted prematurely"

    .line 156
    .line 157
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0

    .line 161
    :cond_9
    :goto_5
    const-wide/16 p0, -0x1

    .line 162
    .line 163
    return-wide p0

    .line 164
    :catch_0
    move-exception p0

    .line 165
    new-instance p1, Ljava/io/IOException;

    .line 166
    .line 167
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_a
    const-string p0, "closed"

    .line 172
    .line 173
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-wide v0

    .line 177
    :cond_b
    const-string p0, "byteCount < 0: "

    .line 178
    .line 179
    invoke-static {p1, p2, p0}, Ldi0;->s(JLjava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-wide v0
.end method
