.class public final Leo0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lh60;


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lje3;

.field public final c:Lqv3;


# direct methods
.method public constructor <init>(Lje3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Leo0;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Leo0;->a:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    iput-object p1, p0, Leo0;->b:Lje3;

    .line 13
    .line 14
    new-instance p1, Lqv3;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, v0}, Lqv3;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Leo0;->c:Lqv3;

    .line 21
    .line 22
    return-void
.end method

.method public static b(Ljava/net/Socket;Lkm1;)V
    .locals 3

    .line 1
    const-string v0, "HTTP parameters"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lf1;

    .line 8
    .line 9
    const-string v1, "http.tcp.nodelay"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Lf1;->d(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lmt1;->H(Lkm1;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 24
    .line 25
    .line 26
    const-string p1, "http.socket.linger"

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-virtual {v0, v1, p1}, Lf1;->e(ILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    if-lez p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0, v2, p1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lqp2;Lem1;Ljava/net/InetAddress;Lul1;Lkm1;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    const-string v0, "Connection"

    .line 12
    .line 13
    invoke-static {v2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "Target host"

    .line 17
    .line 18
    invoke-static {v3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "HTTP parameters"

    .line 22
    .line 23
    invoke-static {v5, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v2

    .line 27
    check-cast v0, Lop3;

    .line 28
    .line 29
    iget-boolean v0, v0, Lop3;->v:Z

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    xor-int/2addr v0, v6

    .line 33
    const-string v7, "Connection must not be open"

    .line 34
    .line 35
    invoke-static {v7, v0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "http.scheme-registry"

    .line 39
    .line 40
    move-object/from16 v7, p4

    .line 41
    .line 42
    invoke-interface {v7, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lje3;

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object v0, v1, Leo0;->b:Lje3;

    .line 51
    .line 52
    :cond_0
    iget-object v7, v3, Lem1;->q:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v7}, Lje3;->a(Ljava/lang/String;)Lfe3;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v7, v0, Lfe3;->b:Lke3;

    .line 59
    .line 60
    iget-object v8, v3, Lem1;->n:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v9, v1, Leo0;->c:Lqv3;

    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v8}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    iget v9, v3, Lem1;->p:I

    .line 72
    .line 73
    if-gtz v9, :cond_1

    .line 74
    .line 75
    iget v9, v0, Lfe3;->c:I

    .line 76
    .line 77
    :cond_1
    const/4 v11, 0x0

    .line 78
    :goto_0
    array-length v0, v8

    .line 79
    if-ge v11, v0, :cond_b

    .line 80
    .line 81
    aget-object v0, v8, v11

    .line 82
    .line 83
    array-length v12, v8

    .line 84
    sub-int/2addr v12, v6

    .line 85
    if-ne v11, v12, :cond_2

    .line 86
    .line 87
    move v12, v6

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v12, 0x0

    .line 90
    :goto_1
    invoke-interface {v7, v5}, Lke3;->createSocket(Lkm1;)Ljava/net/Socket;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    move-object v14, v2

    .line 95
    check-cast v14, Ldo0;

    .line 96
    .line 97
    iget-boolean v15, v14, Lop3;->v:Z

    .line 98
    .line 99
    xor-int/2addr v15, v6

    .line 100
    move/from16 v16, v6

    .line 101
    .line 102
    const-string v6, "Connection is already open"

    .line 103
    .line 104
    invoke-static {v6, v15}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    iput-object v13, v14, Ldo0;->A:Ljava/net/Socket;

    .line 108
    .line 109
    iget-boolean v15, v14, Ldo0;->C:Z

    .line 110
    .line 111
    const-string v10, "Connection already shutdown"

    .line 112
    .line 113
    if-nez v15, :cond_a

    .line 114
    .line 115
    new-instance v15, Lhm1;

    .line 116
    .line 117
    invoke-direct {v15, v3, v0, v9}, Lhm1;-><init>(Lem1;Ljava/net/InetAddress;I)V

    .line 118
    .line 119
    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-direct {v0, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    const/4 v2, 0x0

    .line 130
    const/4 v0, 0x0

    .line 131
    :goto_2
    iget-object v2, v1, Leo0;->a:Lorg/apache/commons/logging/Log;

    .line 132
    .line 133
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_4

    .line 138
    .line 139
    iget-object v2, v1, Leo0;->a:Lorg/apache/commons/logging/Log;

    .line 140
    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v4, "Connecting to "

    .line 144
    .line 145
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    :try_start_0
    invoke-interface {v7, v13, v15, v0, v5}, Lke3;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lkm1;)Ljava/net/Socket;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eq v13, v0, :cond_6

    .line 163
    .line 164
    iget-boolean v2, v14, Lop3;->v:Z

    .line 165
    .line 166
    xor-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    invoke-static {v6, v2}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 169
    .line 170
    .line 171
    iput-object v0, v14, Ldo0;->A:Ljava/net/Socket;

    .line 172
    .line 173
    iget-boolean v2, v14, Ldo0;->C:Z

    .line 174
    .line 175
    if-nez v2, :cond_5

    .line 176
    .line 177
    move-object v13, v0

    .line 178
    goto :goto_3

    .line 179
    :cond_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 180
    .line 181
    .line 182
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 183
    .line 184
    invoke-direct {v0, v10}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_6
    :goto_3
    invoke-static {v13, v5}, Leo0;->b(Ljava/net/Socket;Lkm1;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v7, v13}, Lke3;->isSecure(Ljava/net/Socket;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    move-object/from16 v2, p1

    .line 196
    .line 197
    check-cast v2, Ldo0;

    .line 198
    .line 199
    iget-boolean v3, v2, Lop3;->v:Z

    .line 200
    .line 201
    xor-int/lit8 v3, v3, 0x1

    .line 202
    .line 203
    invoke-static {v6, v3}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 204
    .line 205
    .line 206
    iput-boolean v0, v2, Ldo0;->B:Z

    .line 207
    .line 208
    iget-object v0, v2, Ldo0;->A:Ljava/net/Socket;

    .line 209
    .line 210
    invoke-virtual {v2, v0, v5}, Lop3;->r(Ljava/net/Socket;Lkm1;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lwd0; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :catch_0
    move-exception v0

    .line 215
    goto :goto_4

    .line 216
    :catch_1
    move-exception v0

    .line 217
    goto :goto_5

    .line 218
    :goto_4
    if-nez v12, :cond_7

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_7
    throw v0

    .line 222
    :goto_5
    if-nez v12, :cond_9

    .line 223
    .line 224
    :goto_6
    iget-object v0, v1, Leo0;->a:Lorg/apache/commons/logging/Log;

    .line 225
    .line 226
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_8

    .line 231
    .line 232
    iget-object v0, v1, Leo0;->a:Lorg/apache/commons/logging/Log;

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v3, "Connect to "

    .line 237
    .line 238
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v3, " timed out. Connection will be retried using another IP address"

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 257
    .line 258
    move-object/from16 v2, p1

    .line 259
    .line 260
    move-object/from16 v3, p2

    .line 261
    .line 262
    move-object/from16 v4, p3

    .line 263
    .line 264
    move/from16 v6, v16

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_9
    throw v0

    .line 269
    :cond_a
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 270
    .line 271
    .line 272
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 273
    .line 274
    invoke-direct {v0, v10}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_b
    :goto_7
    return-void
.end method

.method public final c(Lqp2;Lem1;Lul1;Lkm1;)V
    .locals 3

    .line 1
    const-string v0, "Connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Target host"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "Parameters"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lop3;

    .line 18
    .line 19
    iget-boolean v0, v0, Lop3;->v:Z

    .line 20
    .line 21
    const-string v1, "Connection must be open"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "http.scheme-registry"

    .line 27
    .line 28
    invoke-interface {p3, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Lje3;

    .line 33
    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    iget-object p3, p0, Leo0;->b:Lje3;

    .line 37
    .line 38
    :cond_0
    iget-object p0, p2, Lem1;->q:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p3, p0}, Lje3;->a(Ljava/lang/String;)Lfe3;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object p3, p0, Lfe3;->b:Lke3;

    .line 45
    .line 46
    instance-of p3, p3, Lge3;

    .line 47
    .line 48
    const-string v0, "Socket factory must implement SchemeLayeredSocketFactory"

    .line 49
    .line 50
    invoke-static {v0, p3}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    iget-object p3, p0, Lfe3;->b:Lke3;

    .line 54
    .line 55
    check-cast p3, Lge3;

    .line 56
    .line 57
    check-cast p1, Ldo0;

    .line 58
    .line 59
    iget-object v0, p1, Ldo0;->A:Ljava/net/Socket;

    .line 60
    .line 61
    iget-object v1, p2, Lem1;->n:Ljava/lang/String;

    .line 62
    .line 63
    iget v2, p2, Lem1;->p:I

    .line 64
    .line 65
    if-gtz v2, :cond_1

    .line 66
    .line 67
    iget v2, p0, Lfe3;->c:I

    .line 68
    .line 69
    :cond_1
    invoke-interface {p3, v0, v1, v2, p4}, Lge3;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILkm1;)Ljava/net/Socket;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0, p4}, Leo0;->b(Ljava/net/Socket;Lkm1;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p3, p0}, Lke3;->isSecure(Ljava/net/Socket;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    invoke-virtual {p1, p0, p2, p3, p4}, Ldo0;->K(Ljava/net/Socket;Lem1;ZLkm1;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
