.class public abstract Lak;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyj;


# static fields
.field public static final d:Ljava/util/List;


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "Digest"

    .line 2
    .line 3
    const-string v5, "Basic"

    .line 4
    .line 5
    const-string v0, "Negotiate"

    .line 6
    .line 7
    const-string v1, "Kerberos"

    .line 8
    .line 9
    const-string v2, "NTLM"

    .line 10
    .line 11
    const-string v3, "CredSSP"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lak;->d:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 13
    .line 14
    iput p1, p0, Lak;->b:I

    .line 15
    .line 16
    iput-object p2, p0, Lak;->c:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lem1;Loj;Lul1;)V
    .locals 1

    .line 1
    const-string p2, "Host"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Lrl1;->c(Lul1;)Lrl1;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string p3, "http.auth.auth-cache"

    .line 11
    .line 12
    const-class v0, Lmj;

    .line 13
    .line 14
    invoke-virtual {p2, p3, v0}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lmj;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object p3, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 23
    .line 24
    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 31
    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "Clearing cached auth scheme for "

    .line 35
    .line 36
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p0, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    check-cast p2, Lgu;

    .line 50
    .line 51
    iget-object p0, p2, Lgu;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lgu;->b(Lem1;)Lem1;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final b(Lvm1;Lul1;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lvm1;->b()Lkv;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lkv;->o:I

    .line 6
    .line 7
    iget p0, p0, Lak;->b:I

    .line 8
    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final c(Ljava/util/Map;Lem1;Lvm1;Lul1;)Ljava/util/LinkedList;
    .locals 7

    .line 1
    const-string p3, "Host"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p4}, Lrl1;->c(Lul1;)Lrl1;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "http.authscheme-registry"

    .line 16
    .line 17
    const-class v2, Lr82;

    .line 18
    .line 19
    invoke-virtual {p3, v1, v2}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lr82;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 28
    .line 29
    const-string p1, "Auth scheme registry not set in the context"

    .line 30
    .line 31
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    const-string v2, "http.auth.credentials-provider"

    .line 36
    .line 37
    const-class v3, Lzk0;

    .line 38
    .line 39
    invoke-virtual {p3, v2, v3}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lzk0;

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object p0, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 48
    .line 49
    const-string p1, "Credentials provider not set in the context"

    .line 50
    .line 51
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    invoke-virtual {p3}, Lrl1;->d()Lv63;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p0, p3}, Lak;->f(Lv63;)Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    if-nez p3, :cond_2

    .line 64
    .line 65
    sget-object p3, Lak;->d:Ljava/util/List;

    .line 66
    .line 67
    :cond_2
    iget-object v3, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 68
    .line 69
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    iget-object v3, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v5, "Authentication schemes in the order of preference: "

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    :cond_4
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_7

    .line 103
    .line 104
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/String;

    .line 109
    .line 110
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lgj1;

    .line 121
    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    invoke-interface {v1, v3}, Lr82;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Lpj;

    .line 129
    .line 130
    if-nez v5, :cond_5

    .line 131
    .line 132
    iget-object v4, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 133
    .line 134
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    iget-object v4, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 141
    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v6, "Authentication scheme "

    .line 145
    .line 146
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v3, " not supported"

    .line 153
    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    invoke-interface {v5, p4}, Lpj;->a(Lul1;)Loj;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3, v4}, Loj;->i(Lgj1;)V

    .line 170
    .line 171
    .line 172
    new-instance v4, Lsj;

    .line 173
    .line 174
    invoke-virtual {v3}, Loj;->c()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v3}, Loj;->d()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-direct {v4, p2, v5, v6}, Lsj;-><init>(Lem1;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v2, v4}, Lzk0;->a(Lsj;)Lyk0;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-eqz v4, :cond_4

    .line 190
    .line 191
    new-instance v5, Lnj;

    .line 192
    .line 193
    invoke-direct {v5, v3, v4}, Lnj;-><init>(Loj;Lyk0;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_6
    iget-object v4, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 201
    .line 202
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_4

    .line 207
    .line 208
    iget-object v4, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 209
    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v6, "Challenge for "

    .line 213
    .line 214
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v3, " authentication scheme not available"

    .line 221
    .line 222
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_7
    return-object v0
.end method

.method public final d(Lvm1;Lul1;)Ljava/util/Map;
    .locals 7

    .line 1
    iget-object p0, p0, Lak;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lim1;->getHeaders(Ljava/lang/String;)[Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    array-length p2, p0

    .line 10
    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    array-length p2, p0

    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    if-ge v1, p2, :cond_4

    .line 17
    .line 18
    aget-object v2, p0, v1

    .line 19
    .line 20
    instance-of v3, v2, Lcz;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    move-object v3, v2

    .line 25
    check-cast v3, Lcz;

    .line 26
    .line 27
    iget-object v4, v3, Lcz;->o:Lb40;

    .line 28
    .line 29
    iget v3, v3, Lcz;->p:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {v2}, Lsh2;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    new-instance v4, Lb40;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-direct {v4, v5}, Lb40;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Lb40;->b(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move v3, v0

    .line 51
    :goto_1
    iget v5, v4, Lb40;->o:I

    .line 52
    .line 53
    if-ge v3, v5, :cond_1

    .line 54
    .line 55
    iget-object v5, v4, Lb40;->n:[C

    .line 56
    .line 57
    aget-char v5, v5, v3

    .line 58
    .line 59
    invoke-static {v5}, Lvi1;->a(C)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v5, v3

    .line 69
    :goto_2
    iget v6, v4, Lb40;->o:I

    .line 70
    .line 71
    if-ge v5, v6, :cond_2

    .line 72
    .line 73
    iget-object v6, v4, Lb40;->n:[C

    .line 74
    .line 75
    aget-char v6, v6, v5

    .line 76
    .line 77
    invoke-static {v6}, Lvi1;->a(C)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_2

    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {v4, v3, v5}, Lb40;->h(II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance p0, Lo92;

    .line 103
    .line 104
    const-string p1, "Header value is null"

    .line 105
    .line 106
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_4
    return-object p1
.end method

.method public final e(Lem1;Loj;Lul1;)V
    .locals 2

    .line 1
    const-string v0, "Host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Auth scheme"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lrl1;->c(Lul1;)Lrl1;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p2}, Loj;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2}, Loj;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "Basic"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :goto_0
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const-class v0, Lmj;

    .line 36
    .line 37
    const-string v1, "http.auth.auth-cache"

    .line 38
    .line 39
    invoke-virtual {p3, v1, v0}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lmj;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Lgu;

    .line 48
    .line 49
    invoke-direct {v0}, Lgu;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v0, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p3, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 56
    .line 57
    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    iget-object p0, p0, Lak;->a:Lorg/apache/commons/logging/Log;

    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Caching \'"

    .line 68
    .line 69
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Loj;->d()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, "\' auth scheme for "

    .line 80
    .line 81
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-interface {p0, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    check-cast v0, Lgu;

    .line 95
    .line 96
    invoke-virtual {v0, p1, p2}, Lgu;->c(Lem1;Loj;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method public abstract f(Lv63;)Ljava/util/Collection;
.end method
