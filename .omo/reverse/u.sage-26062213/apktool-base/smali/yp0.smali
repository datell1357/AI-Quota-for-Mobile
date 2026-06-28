.class public final synthetic Lyp0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lyp0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lyp0;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lyp0;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lyp0;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lyp0;->r:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lyp0;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lyp0;->r:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lyp0;->q:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lyp0;->p:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lyp0;->o:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lq51;

    .line 16
    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    .line 19
    check-cast v3, Ljava/util/Map;

    .line 20
    .line 21
    check-cast v2, Ljava/util/List;

    .line 22
    .line 23
    iget-object v0, p0, Lq51;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Luc2;

    .line 26
    .line 27
    iget-object p0, p0, Lq51;->g:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/String;

    .line 44
    .line 45
    const-string v5, "Failed to close user metadata file."

    .line 46
    .line 47
    iget-object v6, v0, Luc2;->a:Lq51;

    .line 48
    .line 49
    const-string v7, "user-data"

    .line 50
    .line 51
    invoke-virtual {v6, v4, v7}, Lq51;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :try_start_0
    new-instance v7, Ltc2;

    .line 56
    .line 57
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v8, "userId"

    .line 61
    .line 62
    invoke-virtual {v7, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    new-instance v7, Ljava/io/BufferedWriter;

    .line 70
    .line 71
    new-instance v8, Ljava/io/OutputStreamWriter;

    .line 72
    .line 73
    new-instance v9, Ljava/io/FileOutputStream;

    .line 74
    .line 75
    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    .line 77
    .line 78
    sget-object v6, Luc2;->b:Ljava/nio/charset/Charset;

    .line 79
    .line 80
    invoke-direct {v8, v9, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-virtual {v7, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {v7, v5}, Lw80;->n(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    move-object v1, v7

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p0

    .line 100
    move-object v1, v7

    .line 101
    goto :goto_0

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :catch_1
    move-exception p0

    .line 105
    :goto_0
    :try_start_2
    const-string v6, "Error serializing user metadata."

    .line 106
    .line 107
    const-string v7, "FirebaseCrashlytics"

    .line 108
    .line 109
    invoke-static {v7, v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v5}, Lw80;->n(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_1
    invoke-static {v1, v5}, Lw80;->n(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-nez p0, :cond_1

    .line 125
    .line 126
    const/4 p0, 0x0

    .line 127
    invoke-virtual {v0, v4, v3, p0}, Luc2;->h(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 128
    .line 129
    .line 130
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_2

    .line 135
    .line 136
    invoke-virtual {v0, v4, v2}, Luc2;->i(Ljava/lang/String;Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    return-void

    .line 140
    :pswitch_0
    check-cast p0, Ljava/util/List;

    .line 141
    .line 142
    check-cast v4, Lbg4;

    .line 143
    .line 144
    check-cast v3, Lmd0;

    .line 145
    .line 146
    check-cast v2, Landroidx/work/impl/WorkDatabase;

    .line 147
    .line 148
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lwd3;

    .line 163
    .line 164
    iget-object v5, v4, Lbg4;->a:Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {v1, v5}, Lwd3;->a(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    invoke-static {v3, v2, p0}, Lzd3;->b(Lmd0;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_1
    check-cast p0, Laq0;

    .line 175
    .line 176
    check-cast v4, Lhp;

    .line 177
    .line 178
    iget-object v0, v4, Lhp;->a:Ljava/lang/String;

    .line 179
    .line 180
    check-cast v3, Lz14;

    .line 181
    .line 182
    check-cast v2, Lco;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    sget-object v5, Laq0;->f:Ljava/util/logging/Logger;

    .line 188
    .line 189
    const-string v6, "Transport backend \'"

    .line 190
    .line 191
    :try_start_3
    iget-object v7, p0, Laq0;->c:Lvc2;

    .line 192
    .line 193
    invoke-virtual {v7, v0}, Lvc2;->a(Ljava/lang/String;)Lv14;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    if-nez v7, :cond_4

    .line 198
    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v0, "\' is not registered"

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {v5, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 220
    .line 221
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v3, v0}, Lz14;->a(Ljava/lang/Exception;)V

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :catch_2
    move-exception p0

    .line 229
    goto :goto_4

    .line 230
    :cond_4
    check-cast v7, Li30;

    .line 231
    .line 232
    invoke-virtual {v7, v2}, Li30;->a(Lco;)Lco;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v2, p0, Laq0;->e:Lob3;

    .line 237
    .line 238
    new-instance v6, Lgd0;

    .line 239
    .line 240
    const/4 v7, 0x2

    .line 241
    invoke-direct {v6, p0, v4, v0, v7}, Lgd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v6}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-interface {v3, v1}, Lz14;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v1, "Error scheduling event "

    .line 254
    .line 255
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v3, p0}, Lz14;->a(Ljava/lang/Exception;)V

    .line 273
    .line 274
    .line 275
    :goto_5
    return-void

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
