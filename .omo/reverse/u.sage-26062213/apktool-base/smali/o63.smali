.class public final Lo63;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrm1;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lo63;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lo63;->n:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lom1;Lul1;)V
    .locals 7

    .line 1
    invoke-static {p2}, Lrl1;->c(Lul1;)Lrl1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "http.auth.auth-cache"

    .line 6
    .line 7
    const-class v0, Lmj;

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lmj;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lo63;->n:Lorg/apache/commons/logging/Log;

    .line 18
    .line 19
    const-string p1, "Auth cache not set in the context"

    .line 20
    .line 21
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string v0, "http.auth.credentials-provider"

    .line 26
    .line 27
    const-class v1, Lzk0;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lzk0;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lo63;->n:Lorg/apache/commons/logging/Log;

    .line 38
    .line 39
    const-string p1, "Credentials provider not set in the context"

    .line 40
    .line 41
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const-string v1, "http.route"

    .line 46
    .line 47
    const-class v2, Lym1;

    .line 48
    .line 49
    invoke-virtual {p1, v1, v2}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lua3;

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object p0, p0, Lo63;->n:Lorg/apache/commons/logging/Log;

    .line 58
    .line 59
    const-string p1, "Route info not set in the context"

    .line 60
    .line 61
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    const-string v2, "http.target_host"

    .line 66
    .line 67
    const-class v3, Lem1;

    .line 68
    .line 69
    invoke-virtual {p1, v2, v3}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lem1;

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    iget-object p0, p0, Lo63;->n:Lorg/apache/commons/logging/Log;

    .line 78
    .line 79
    const-string p1, "Target host not set in the context"

    .line 80
    .line 81
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    iget v3, v2, Lem1;->p:I

    .line 86
    .line 87
    if-gez v3, :cond_4

    .line 88
    .line 89
    new-instance v3, Lem1;

    .line 90
    .line 91
    iget-object v4, v2, Lem1;->n:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {v1}, Lua3;->d()Lem1;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iget v5, v5, Lem1;->p:I

    .line 98
    .line 99
    iget-object v2, v2, Lem1;->q:Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {v3, v4, v5, v2}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move-object v2, v3

    .line 105
    :cond_4
    const-string v3, "http.auth.target-scope"

    .line 106
    .line 107
    const-class v4, Ltj;

    .line 108
    .line 109
    invoke-virtual {p1, v3, v4}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ltj;

    .line 114
    .line 115
    const/4 v5, 0x1

    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    iget v6, v3, Ltj;->a:I

    .line 119
    .line 120
    if-ne v6, v5, :cond_5

    .line 121
    .line 122
    move-object v6, p2

    .line 123
    check-cast v6, Lgu;

    .line 124
    .line 125
    invoke-virtual {v6, v2}, Lgu;->a(Lem1;)Loj;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    if-eqz v6, :cond_5

    .line 130
    .line 131
    invoke-virtual {p0, v2, v6, v3, v0}, Lo63;->b(Lem1;Loj;Ltj;Lzk0;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-interface {v1}, Lua3;->e()Lem1;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "http.auth.proxy-scope"

    .line 139
    .line 140
    invoke-virtual {p1, v2, v4}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Ltj;

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    iget v2, p1, Ltj;->a:I

    .line 151
    .line 152
    if-ne v2, v5, :cond_6

    .line 153
    .line 154
    check-cast p2, Lgu;

    .line 155
    .line 156
    invoke-virtual {p2, v1}, Lgu;->a(Lem1;)Loj;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    if-eqz p2, :cond_6

    .line 161
    .line 162
    invoke-virtual {p0, v1, p2, p1, v0}, Lo63;->b(Lem1;Loj;Ltj;Lzk0;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    return-void
.end method

.method public final b(Lem1;Loj;Ltj;Lzk0;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Loj;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo63;->n:Lorg/apache/commons/logging/Log;

    .line 6
    .line 7
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lo63;->n:Lorg/apache/commons/logging/Log;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Re-using cached \'"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "\' auth scheme for "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v1, Lsj;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-direct {v1, p1, v2, v0}, Lsj;-><init>(Lem1;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p4, v1}, Lzk0;->a(Lsj;)Lyk0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p3, p2, p1}, Ltj;->e(Loj;Lyk0;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p0, p0, Lo63;->n:Lorg/apache/commons/logging/Log;

    .line 57
    .line 58
    const-string p1, "No credentials for preemptive authentication"

    .line 59
    .line 60
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
