.class public final Lgp0;
.super Lm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final g:Lorg/apache/commons/logging/Log;

.field public final h:Lep0;

.field public final i:Lb40;


# direct methods
.method public constructor <init>(Lxj3;Lbv;Lep0;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lm1;-><init>(Lxj3;Lbv;)V

    .line 30
    const-class p1, Lgp0;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lgp0;->g:Lorg/apache/commons/logging/Log;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    sget-object p3, Lep0;->b:Lep0;

    :goto_0
    iput-object p3, p0, Lgp0;->h:Lep0;

    .line 32
    new-instance p1, Lb40;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lb40;-><init>(I)V

    iput-object p1, p0, Lgp0;->i:Lb40;

    return-void
.end method

.method public constructor <init>(Lxj3;Lep0;Lkm1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lm1;-><init>(Lxj3;Lkm1;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lgp0;

    .line 5
    .line 6
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lgp0;->g:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    const-string p1, "Response factory"

    .line 13
    .line 14
    invoke-static {p2, p1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lgp0;->h:Lep0;

    .line 18
    .line 19
    new-instance p1, Lb40;

    .line 20
    .line 21
    const/16 p2, 0x80

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lb40;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lgp0;->i:Lb40;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final b(Lxj3;)Lav;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lm1;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lbv;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    iget-object v4, v0, Lgp0;->i:Lb40;

    .line 10
    .line 11
    iput v2, v4, Lb40;->o:I

    .line 12
    .line 13
    move-object/from16 v5, p1

    .line 14
    .line 15
    invoke-interface {v5, v4}, Lxj3;->d(Lb40;)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    const/4 v7, -0x1

    .line 20
    if-ne v6, v7, :cond_1

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v0, Lem2;

    .line 26
    .line 27
    const-string v1, "The target server failed to respond"

    .line 28
    .line 29
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_1
    new-instance v8, Lky0;

    .line 38
    .line 39
    iget v9, v4, Lb40;->o:I

    .line 40
    .line 41
    invoke-direct {v8, v2, v9}, Lky0;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget v9, v8, Lky0;->d:I

    .line 48
    .line 49
    iget-object v10, v1, Lbv;->a:Lg03;

    .line 50
    .line 51
    iget-object v10, v10, Lg03;->n:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    iget v12, v4, Lb40;->o:I

    .line 58
    .line 59
    add-int/lit8 v13, v11, 0x4

    .line 60
    .line 61
    if-ge v12, v13, :cond_2

    .line 62
    .line 63
    :goto_2
    move v13, v2

    .line 64
    goto :goto_7

    .line 65
    :cond_2
    if-gez v9, :cond_3

    .line 66
    .line 67
    add-int/lit8 v12, v12, -0x4

    .line 68
    .line 69
    sub-int v9, v12, v11

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_3
    if-nez v9, :cond_4

    .line 73
    .line 74
    :goto_3
    iget v12, v4, Lb40;->o:I

    .line 75
    .line 76
    if-ge v9, v12, :cond_4

    .line 77
    .line 78
    iget-object v12, v4, Lb40;->n:[C

    .line 79
    .line 80
    aget-char v12, v12, v9

    .line 81
    .line 82
    invoke-static {v12}, Lvi1;->a(C)Z

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-eqz v12, :cond_4

    .line 87
    .line 88
    add-int/lit8 v9, v9, 0x1

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    :goto_4
    add-int v12, v9, v11

    .line 92
    .line 93
    add-int/lit8 v13, v12, 0x4

    .line 94
    .line 95
    iget v14, v4, Lb40;->o:I

    .line 96
    .line 97
    if-le v13, v14, :cond_5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    const/4 v13, 0x1

    .line 101
    move v15, v2

    .line 102
    move v14, v13

    .line 103
    :goto_5
    if-eqz v14, :cond_7

    .line 104
    .line 105
    if-ge v15, v11, :cond_7

    .line 106
    .line 107
    add-int v14, v9, v15

    .line 108
    .line 109
    iget-object v2, v4, Lb40;->n:[C

    .line 110
    .line 111
    aget-char v2, v2, v14

    .line 112
    .line 113
    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-ne v2, v14, :cond_6

    .line 118
    .line 119
    move v14, v13

    .line 120
    goto :goto_6

    .line 121
    :cond_6
    const/4 v14, 0x0

    .line 122
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    goto :goto_5

    .line 126
    :cond_7
    if-eqz v14, :cond_9

    .line 127
    .line 128
    iget-object v2, v4, Lb40;->n:[C

    .line 129
    .line 130
    aget-char v2, v2, v12

    .line 131
    .line 132
    const/16 v9, 0x2f

    .line 133
    .line 134
    if-ne v2, v9, :cond_8

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_8
    const/4 v13, 0x0

    .line 138
    goto :goto_7

    .line 139
    :cond_9
    move v13, v14

    .line 140
    :goto_7
    if-eqz v13, :cond_a

    .line 141
    .line 142
    invoke-virtual {v1, v4, v8}, Lbv;->b(Lb40;Lky0;)Lkv;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v2, Lav;

    .line 147
    .line 148
    iget-object v0, v0, Lgp0;->h:Lep0;

    .line 149
    .line 150
    iget-object v0, v0, Lep0;->a:Lz01;

    .line 151
    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-direct {v2, v1, v0, v3}, Lav;-><init>(Lkv;Lz01;Ljava/util/Locale;)V

    .line 157
    .line 158
    .line 159
    return-object v2

    .line 160
    :cond_a
    if-eq v6, v7, :cond_c

    .line 161
    .line 162
    iget-object v2, v0, Lgp0;->g:Lorg/apache/commons/logging/Log;

    .line 163
    .line 164
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_b

    .line 169
    .line 170
    iget-object v2, v0, Lgp0;->g:Lorg/apache/commons/logging/Log;

    .line 171
    .line 172
    invoke-virtual {v4}, Lb40;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    const-string v6, "Garbage in response: "

    .line 177
    .line 178
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_c
    new-instance v0, Le03;

    .line 191
    .line 192
    const-string v1, "The server failed to respond with a valid HTTP response"

    .line 193
    .line 194
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0
.end method
