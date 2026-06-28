.class public final Lpv3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzk0;


# static fields
.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Lnu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lpv3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    const-string v2, "Basic"

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string v2, "Digest"

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v2, "NTLM"

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string v2, "Negotiate"

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "SPNEGO"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string v2, "Kerberos"

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnu;

    .line 5
    .line 6
    invoke-direct {v0}, Lnu;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lpv3;->a:Lnu;

    .line 10
    .line 11
    return-void
.end method

.method public static c(Ljava/lang/String;Lsj;)Ljava/net/PasswordAuthentication;
    .locals 6

    .line 1
    const-string v0, ".proxyPassword"

    .line 2
    .line 3
    const-string v1, ".proxyUser"

    .line 4
    .line 5
    const-string v2, ".proxyHost"

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-string v4, ".proxyPort"

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :try_start_0
    new-instance v5, Lsj;

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-direct {v5, v2, v4, v3, v3}, Lsj;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v5}, Lsj;->a(Lsj;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-ltz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance v0, Ljava/net/PasswordAuthentication;

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 p0, 0x0

    .line 76
    new-array p0, p0, [C

    .line 77
    .line 78
    :goto_0
    invoke-direct {v0, p1, p0}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :catch_0
    :cond_4
    :goto_1
    return-object v3
.end method


# virtual methods
.method public final a(Lsj;)Lyk0;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lsj;->a:Ljava/lang/String;

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v2, v2, Lpv3;->a:Lnu;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Lnu;->a(Lsj;)Lyk0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    iget-object v3, v0, Lsj;->c:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v3, :cond_b

    .line 20
    .line 21
    iget-object v4, v0, Lsj;->e:Lem1;

    .line 22
    .line 23
    const-string v11, "http"

    .line 24
    .line 25
    const-string v12, "https"

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v4, Lem1;->q:Ljava/lang/String;

    .line 30
    .line 31
    move-object/from16 v16, v4

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v4, v0, Lsj;->d:I

    .line 35
    .line 36
    const/16 v5, 0x1bb

    .line 37
    .line 38
    if-ne v4, v5, :cond_2

    .line 39
    .line 40
    move-object/from16 v16, v12

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object/from16 v16, v11

    .line 44
    .line 45
    :goto_0
    sget-object v10, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 46
    .line 47
    iget v5, v0, Lsj;->d:I

    .line 48
    .line 49
    sget-object v13, Lpv3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    move-object v8, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    move-object v8, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    move-object v8, v1

    .line 66
    :goto_1
    const/4 v9, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    move-object/from16 v6, v16

    .line 70
    .line 71
    invoke-static/range {v3 .. v10}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_7

    .line 76
    .line 77
    sget-object v20, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 78
    .line 79
    iget-object v3, v0, Lsj;->c:Ljava/lang/String;

    .line 80
    .line 81
    iget v15, v0, Lsj;->d:I

    .line 82
    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    move-object/from16 v18, v2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v4, :cond_6

    .line 95
    .line 96
    move-object/from16 v18, v4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    move-object/from16 v18, v1

    .line 100
    .line 101
    :goto_2
    const/16 v19, 0x0

    .line 102
    .line 103
    const/4 v14, 0x0

    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    move-object v13, v3

    .line 107
    invoke-static/range {v13 .. v20}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    :cond_7
    if-nez v3, :cond_8

    .line 112
    .line 113
    invoke-static {v11, v0}, Lpv3;->c(Ljava/lang/String;Lsj;)Ljava/net/PasswordAuthentication;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-nez v3, :cond_8

    .line 118
    .line 119
    invoke-static {v12, v0}, Lpv3;->c(Ljava/lang/String;Lsj;)Ljava/net/PasswordAuthentication;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    :cond_8
    if-eqz v3, :cond_b

    .line 124
    .line 125
    const-string v0, "http.auth.ntlm.domain"

    .line 126
    .line 127
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_9

    .line 132
    .line 133
    new-instance v1, Ljh2;

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-instance v4, Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v2, v4, v0}, Ljh2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_9
    const-string v0, "NTLM"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    new-instance v0, Ljh2;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    new-instance v4, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v1, v4, v2}, Ljh2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_a
    new-instance v0, Le94;

    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    new-instance v2, Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, v1, v2}, Le94;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-object v0

    .line 198
    :cond_b
    return-object v2
.end method

.method public final b(Lsj;Le94;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpv3;->a:Lnu;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lnu;->b(Lsj;Le94;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
