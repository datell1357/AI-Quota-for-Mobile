.class public final Ly60;
.super Lex3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "X-Cloud-Trace-Context"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv04;

    .line 7
    .line 8
    sget-object v1, Lv04;->a:Lgp;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lv04;-><init>(Lgp;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lgq3;Lcom/google/api/client/http/HttpHeaders;Ldx3;)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const-string v2, "spanContext"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Ln44;->X(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "setter"

    .line 13
    .line 14
    invoke-static {v1, v2}, Ln44;->X(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "carrier"

    .line 18
    .line 19
    invoke-static {v0, v2}, Ln44;->X(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x20

    .line 28
    .line 29
    new-array v3, v3, [C

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {v3, v4}, Ldw;->b([CI)V

    .line 33
    .line 34
    .line 35
    const/16 v5, 0x10

    .line 36
    .line 37
    invoke-static {v3, v5}, Ldw;->b([CI)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x2f

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v3, 0x8

    .line 54
    .line 55
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    new-array v3, v3, [B

    .line 60
    .line 61
    const/4 v6, 0x7

    .line 62
    aput-byte v4, v3, v6

    .line 63
    .line 64
    const/4 v6, 0x6

    .line 65
    aput-byte v4, v3, v6

    .line 66
    .line 67
    const/4 v6, 0x5

    .line 68
    aput-byte v4, v3, v6

    .line 69
    .line 70
    const/4 v6, 0x4

    .line 71
    aput-byte v4, v3, v6

    .line 72
    .line 73
    const/4 v6, 0x3

    .line 74
    aput-byte v4, v3, v6

    .line 75
    .line 76
    const/4 v6, 0x2

    .line 77
    aput-byte v4, v3, v6

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    aput-byte v4, v3, v6

    .line 81
    .line 82
    aput-byte v4, v3, v4

    .line 83
    .line 84
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    const-wide/16 v7, 0x0

    .line 92
    .line 93
    cmp-long v5, v3, v7

    .line 94
    .line 95
    const-string v9, "0"

    .line 96
    .line 97
    if-nez v5, :cond_0

    .line 98
    .line 99
    move-object v3, v9

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    const/16 v10, 0xa

    .line 102
    .line 103
    if-lez v5, :cond_1

    .line 104
    .line 105
    invoke-static {v3, v4, v10}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    const/16 v5, 0x40

    .line 111
    .line 112
    new-array v5, v5, [C

    .line 113
    .line 114
    ushr-long v11, v3, v6

    .line 115
    .line 116
    const-wide/16 v13, 0x5

    .line 117
    .line 118
    div-long/2addr v11, v13

    .line 119
    const-wide/16 v13, 0xa

    .line 120
    .line 121
    mul-long v15, v11, v13

    .line 122
    .line 123
    sub-long/2addr v3, v15

    .line 124
    long-to-int v3, v3

    .line 125
    invoke-static {v3, v10}, Ljava/lang/Character;->forDigit(II)C

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    const/16 v4, 0x3f

    .line 130
    .line 131
    aput-char v3, v5, v4

    .line 132
    .line 133
    :goto_0
    cmp-long v3, v11, v7

    .line 134
    .line 135
    if-lez v3, :cond_2

    .line 136
    .line 137
    add-int/lit8 v4, v4, -0x1

    .line 138
    .line 139
    rem-long v7, v11, v13

    .line 140
    .line 141
    long-to-int v3, v7

    .line 142
    invoke-static {v3, v10}, Ljava/lang/Character;->forDigit(II)C

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    aput-char v3, v5, v4

    .line 147
    .line 148
    div-long/2addr v11, v13

    .line 149
    const-wide/16 v7, 0x0

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_2
    new-instance v3, Ljava/lang/String;

    .line 153
    .line 154
    rsub-int/lit8 v6, v4, 0x40

    .line 155
    .line 156
    invoke-direct {v3, v5, v4, v6}, Ljava/lang/String;-><init>([CII)V

    .line 157
    .line 158
    .line 159
    :goto_1
    const-string v4, "X-Cloud-Trace-Context"

    .line 160
    .line 161
    const-string v5, ";o="

    .line 162
    .line 163
    invoke-static {v2, v3, v5, v9}, Ldi0;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v1, v0, v4, v2}, Ldx3;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method
