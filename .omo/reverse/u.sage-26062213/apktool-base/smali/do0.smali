.class public final Ldo0;
.super Lop3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqp2;
.implements Lv92;
.implements Lul1;


# instance fields
.field public volatile A:Ljava/net/Socket;

.field public B:Z

.field public volatile C:Z

.field public final D:Ljava/util/HashMap;

.field public final x:Lorg/apache/commons/logging/Log;

.field public final y:Lorg/apache/commons/logging/Log;

.field public final z:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lop3;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Ldo0;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    const-string v0, "org.apache.http.headers"

    .line 13
    .line 14
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ldo0;->y:Lorg/apache/commons/logging/Log;

    .line 19
    .line 20
    const-string v0, "org.apache.http.wire"

    .line 21
    .line 22
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Ldo0;->z:Lorg/apache/commons/logging/Log;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Ldo0;->D:Ljava/util/HashMap;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final A(Ljava/net/Socket;ILkm1;)Lxj3;
    .locals 1

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/16 p2, 0x2000

    .line 5
    .line 6
    :goto_0
    new-instance v0, Lpp3;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lpp3;-><init>(Ljava/net/Socket;ILkm1;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ldo0;->z:Lorg/apache/commons/logging/Log;

    .line 12
    .line 13
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    new-instance p1, Lqd1;

    .line 20
    .line 21
    new-instance p2, Lkf4;

    .line 22
    .line 23
    iget-object p0, p0, Ldo0;->z:Lorg/apache/commons/logging/Log;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lkf4;-><init>(Lorg/apache/commons/logging/Log;)V

    .line 26
    .line 27
    .line 28
    const-string p0, "http.protocol.element-charset"

    .line 29
    .line 30
    invoke-interface {p3, p0}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/String;

    .line 35
    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Lvi1;->b:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_1
    invoke-direct {p1, v0, p2, p0}, Lqd1;-><init>(Lpp3;Lkf4;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    return-object v0
.end method

.method public final B(Ljava/net/Socket;ILkm1;)Lzj3;
    .locals 3

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/16 p2, 0x2000

    .line 5
    .line 6
    :goto_0
    new-instance v0, Lqp3;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Socket"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-gez p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    :cond_1
    const/16 v1, 0x400

    .line 23
    .line 24
    if-ge p2, v1, :cond_2

    .line 25
    .line 26
    move p2, v1

    .line 27
    :cond_2
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "Input stream"

    .line 32
    .line 33
    invoke-static {p1, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "Buffer size"

    .line 37
    .line 38
    invoke-static {p2, v1}, Lw80;->J(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "HTTP parameters"

    .line 42
    .line 43
    invoke-static {p3, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, v0, Lqp3;->n:Ljava/io/OutputStream;

    .line 47
    .line 48
    new-instance p1, Luz;

    .line 49
    .line 50
    invoke-direct {p1, p2}, Luz;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object p1, v0, Lqp3;->o:Luz;

    .line 54
    .line 55
    const-string p1, "http.protocol.element-charset"

    .line 56
    .line 57
    invoke-interface {p3, p1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    sget-object p2, Luf0;->b:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    :goto_1
    iput-object p2, v0, Lqp3;->p:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    sget-object v1, Luf0;->b:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput-boolean p2, v0, Lqp3;->q:Z

    .line 81
    .line 82
    const/4 p2, 0x0

    .line 83
    iput-object p2, v0, Lqp3;->v:Ljava/nio/charset/CharsetEncoder;

    .line 84
    .line 85
    const/16 p2, 0x200

    .line 86
    .line 87
    move-object v1, p3

    .line 88
    check-cast v1, Lf1;

    .line 89
    .line 90
    const-string v2, "http.connection.min-chunk-limit"

    .line 91
    .line 92
    invoke-virtual {v1, p2, v2}, Lf1;->e(ILjava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    iput p2, v0, Lqp3;->r:I

    .line 97
    .line 98
    new-instance p2, Lqz0;

    .line 99
    .line 100
    const/4 v1, 0x7

    .line 101
    invoke-direct {p2, v1}, Lqz0;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object p2, v0, Lqp3;->s:Lqz0;

    .line 105
    .line 106
    const-string p2, "http.malformed.input.action"

    .line 107
    .line 108
    invoke-interface {p3, p2}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Ljava/nio/charset/CodingErrorAction;

    .line 113
    .line 114
    if-eqz p2, :cond_4

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 118
    .line 119
    :goto_2
    iput-object p2, v0, Lqp3;->t:Ljava/nio/charset/CodingErrorAction;

    .line 120
    .line 121
    const-string p2, "http.unmappable.input.action"

    .line 122
    .line 123
    invoke-interface {p3, p2}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Ljava/nio/charset/CodingErrorAction;

    .line 128
    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 133
    .line 134
    :goto_3
    iput-object p2, v0, Lqp3;->u:Ljava/nio/charset/CodingErrorAction;

    .line 135
    .line 136
    iget-object p2, p0, Ldo0;->z:Lorg/apache/commons/logging/Log;

    .line 137
    .line 138
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_7

    .line 143
    .line 144
    new-instance p2, Leh;

    .line 145
    .line 146
    new-instance v1, Lkf4;

    .line 147
    .line 148
    iget-object p0, p0, Ldo0;->z:Lorg/apache/commons/logging/Log;

    .line 149
    .line 150
    invoke-direct {v1, p0}, Lkf4;-><init>(Lorg/apache/commons/logging/Log;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p3, p1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Ljava/lang/String;

    .line 158
    .line 159
    if-nez p0, :cond_6

    .line 160
    .line 161
    sget-object p0, Lvi1;->b:Ljava/nio/charset/Charset;

    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    :cond_6
    invoke-direct {p2, v0, v1, p0}, Leh;-><init>(Lqp3;Lkf4;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object p2

    .line 171
    :cond_7
    return-object v0
.end method

.method public final K(Ljava/net/Socket;Lem1;ZLkm1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lop3;->j()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Target host"

    .line 5
    .line 6
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p2, "Parameters"

    .line 10
    .line 11
    invoke-static {p4, p2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Ldo0;->A:Ljava/net/Socket;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p4}, Lop3;->r(Ljava/net/Socket;Lkm1;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-boolean p3, p0, Ldo0;->B:Z

    .line 22
    .line 23
    return-void
.end method

.method public final M()Lvm1;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lop3;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lop3;->s:Lgp0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm1;->a()Lim1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lvm1;

    .line 11
    .line 12
    invoke-interface {v0}, Lvm1;->b()Lkv;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v1, v1, Lkv;->o:I

    .line 17
    .line 18
    const/16 v2, 0xc8

    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lop3;->u:Lqz0;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 28
    .line 29
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "Receiving response: "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lvm1;->b()Lkv;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v1, p0, Ldo0;->y:Lorg/apache/commons/logging/Log;

    .line 59
    .line 60
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Ldo0;->y:Lorg/apache/commons/logging/Log;

    .line 67
    .line 68
    invoke-interface {v0}, Lvm1;->b()Lkv;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "<< "

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Lim1;->getAllHeaders()[Lgj1;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    array-length v2, v1

    .line 90
    const/4 v4, 0x0

    .line 91
    :goto_0
    if-ge v4, v2, :cond_2

    .line 92
    .line 93
    aget-object v5, v1, v4

    .line 94
    .line 95
    iget-object v6, p0, Ldo0;->y:Lorg/apache/commons/logging/Log;

    .line 96
    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-interface {v6, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    return-object v0
.end method

.method public final S(Ljava/net/Socket;)V
    .locals 1

    .line 1
    new-instance v0, Lxu;

    .line 2
    .line 3
    invoke-direct {v0}, Lxu;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lop3;->r(Ljava/net/Socket;Lkm1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ldo0;->D:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b0()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 1
    iget-object v0, p0, Ldo0;->A:Ljava/net/Socket;

    .line 2
    .line 3
    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Ldo0;->A:Ljava/net/Socket;

    .line 8
    .line 9
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final close()V
    .locals 3

    .line 1
    const-string v0, "Connection "

    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Lop3;->close()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " closed"

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void

    .line 40
    :goto_0
    iget-object p0, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 41
    .line 42
    const-string v1, "I/O error closing connection"

    .line 43
    .line 44
    invoke-interface {p0, v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final f()Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Ldo0;->A:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p0
.end method

.method public final shutdown()V
    .locals 3

    .line 1
    const-string v0, "Connection "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Ldo0;->C:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lop3;->v:Z

    .line 8
    .line 9
    iget-object v1, p0, Lop3;->w:Ljava/net/Socket;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 17
    .line 18
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, " shut down"

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Ldo0;->A:Ljava/net/Socket;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :goto_1
    iget-object p0, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 58
    .line 59
    const-string v1, "I/O error shutting down connection"

    .line 60
    .line 61
    invoke-interface {p0, v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final x(Lom1;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ldo0;->x:Lorg/apache/commons/logging/Log;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Sending request: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lop3;->j()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lop3;->t:Ldp0;

    .line 36
    .line 37
    move-object v1, p1

    .line 38
    check-cast v1, Le1;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ln1;->h(Le1;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lop3;->u:Lqz0;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Ldo0;->y:Lorg/apache/commons/logging/Log;

    .line 49
    .line 50
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Ldo0;->y:Lorg/apache/commons/logging/Log;

    .line 57
    .line 58
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, ">> "

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Lim1;->getAllHeaders()[Lgj1;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    array-length v0, p1

    .line 80
    const/4 v1, 0x0

    .line 81
    :goto_0
    if-ge v1, v0, :cond_1

    .line 82
    .line 83
    aget-object v3, p1, v1

    .line 84
    .line 85
    iget-object v4, p0, Ldo0;->y:Lorg/apache/commons/logging/Log;

    .line 86
    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldo0;->D:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
