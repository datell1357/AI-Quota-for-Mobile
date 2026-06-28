.class public abstract Lp63;
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
    iput-object v0, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ltj;Lom1;Lul1;)V
    .locals 7

    .line 1
    iget-object v0, p1, Ltj;->b:Loj;

    .line 2
    .line 3
    iget-object v1, p1, Ltj;->c:Lyk0;

    .line 4
    .line 5
    iget v2, p1, Ltj;->a:I

    .line 6
    .line 7
    invoke-static {v2}, Ldi0;->F(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const-string v4, "Auth scheme"

    .line 13
    .line 14
    const-string v5, " authentication error: "

    .line 15
    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x3

    .line 19
    if-eq v2, p1, :cond_8

    .line 20
    .line 21
    const/4 p1, 0x4

    .line 22
    if-eq v2, p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-static {v0, v4}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Loj;->f()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_6

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_1
    iget-object v2, p1, Ltj;->d:Ljava/util/Queue;

    .line 38
    .line 39
    if-eqz v2, :cond_5

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_8

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lnj;

    .line 52
    .line 53
    iget-object v1, v0, Lnj;->a:Loj;

    .line 54
    .line 55
    iget-object v0, v0, Lnj;->b:Lyk0;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Ltj;->e(Loj;Lyk0;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 61
    .line 62
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    iget-object v3, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v6, "Generating response to an authentication challenge using "

    .line 73
    .line 74
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Loj;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, " scheme"

    .line 85
    .line 86
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :try_start_0
    instance-of v3, v1, Loj;

    .line 97
    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-virtual {v1, v0, p2, p3}, Loj;->b(Lyk0;Lom1;Lul1;)Lgj1;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v1, v0, p2}, Loj;->a(Lyk0;Lom1;)Lgj1;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_1
    invoke-interface {p2, v0}, Lim1;->addHeader(Lgj1;)V
    :try_end_0
    .catch Luj; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v3, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 115
    .line 116
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_2

    .line 121
    .line 122
    iget-object v3, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 123
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    invoke-static {v0, v4}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_2
    if-eqz v0, :cond_8

    .line 154
    .line 155
    :try_start_1
    instance-of p1, v0, Loj;

    .line 156
    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    invoke-virtual {v0, v1, p2, p3}, Loj;->b(Lyk0;Lom1;Lul1;)Lgj1;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    goto :goto_3

    .line 164
    :cond_7
    invoke-virtual {v0, v1, p2}, Loj;->a(Lyk0;Lom1;)Lgj1;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    :goto_3
    invoke-interface {p2, p1}, Lim1;->addHeader(Lgj1;)V
    :try_end_1
    .catch Luj; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_1
    move-exception p1

    .line 173
    iget-object p2, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 174
    .line 175
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_8

    .line 180
    .line 181
    iget-object p0, p0, Lp63;->n:Lorg/apache/commons/logging/Log;

    .line 182
    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    :goto_4
    return-void
.end method
