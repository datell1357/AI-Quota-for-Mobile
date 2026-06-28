.class public final synthetic Lrr;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxo2;
.implements Laa0;
.implements Lwt3;
.implements Leh0;
.implements Lc20;
.implements Lxq0;
.implements Lsm3;
.implements Lmb3;
.implements Lmv3;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lrr;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lrr;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lrr;->o:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p3, p0, Lrr;->n:I

    iput-object p1, p0, Lrr;->o:Ljava/lang/Object;

    iput-object p2, p0, Lrr;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln03;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrr;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxq0;

    .line 4
    .line 5
    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lxq0;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lxq0;->a(Ln03;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p1}, Lxq0;->a(Ln03;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lrr;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lob3;

    .line 4
    .line 5
    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lhp;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    iget-object p1, v0, Lob3;->q:Leo;

    .line 13
    .line 14
    iget v2, p1, Leo;->b:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, p0, v2}, Lob3;->z(Landroid/database/sqlite/SQLiteDatabase;Lhp;I)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    invoke-static {}, Lry2;->values()[Lry2;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    array-length v3, v2

    .line 25
    const/4 v10, 0x0

    .line 26
    move v4, v10

    .line 27
    :goto_0
    if-ge v4, v3, :cond_2

    .line 28
    .line 29
    aget-object v5, v2, v4

    .line 30
    .line 31
    iget-object v6, p0, Lhp;->c:Lry2;

    .line 32
    .line 33
    if-ne v5, v6, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget v6, p1, Leo;->b:I

    .line 37
    .line 38
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    sub-int/2addr v6, v7

    .line 43
    if-gtz v6, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {p0, v5}, Lhp;->b(Lry2;)Lhp;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v0, v1, v5, v6}, Lob3;->z(Landroid/database/sqlite/SQLiteDatabase;Lhp;I)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    :goto_2
    new-instance p0, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, "event_id IN ("

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move v0, v10

    .line 73
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v11, 0x1

    .line 78
    if-ge v0, v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lro;

    .line 85
    .line 86
    iget-wide v2, v2, Lro;->a:J

    .line 87
    .line 88
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    sub-int/2addr v2, v11

    .line 96
    if-ge v0, v2, :cond_3

    .line 97
    .line 98
    const/16 v2, 0x2c

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const/16 v0, 0x29

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, "name"

    .line 112
    .line 113
    const-string v2, "value"

    .line 114
    .line 115
    const-string v3, "event_id"

    .line 116
    .line 117
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v8, 0x0

    .line 127
    const-string v2, "event_metadata"

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Ljava/util/Set;

    .line 154
    .line 155
    if-nez v2, :cond_5

    .line 156
    .line 157
    new-instance v2, Ljava/util/HashSet;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :cond_5
    new-instance v0, Lnb3;

    .line 170
    .line 171
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const/4 v3, 0x2

    .line 176
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-direct {v0, v1, v3}, Lnb3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :goto_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lro;

    .line 205
    .line 206
    iget-wide v1, v0, Lro;->a:J

    .line 207
    .line 208
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_7

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_7
    iget-object v3, v0, Lro;->c:Lco;

    .line 220
    .line 221
    invoke-virtual {v3}, Lco;->c()Lbo;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Ljava/util/Set;

    .line 234
    .line 235
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_8

    .line 244
    .line 245
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    check-cast v5, Lnb3;

    .line 250
    .line 251
    iget-object v6, v5, Lnb3;->a:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v5, v5, Lnb3;->b:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v3, v6, v5}, Lbo;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_8
    iget-object v0, v0, Lro;->b:Lhp;

    .line 260
    .line 261
    invoke-virtual {v3}, Lbo;->c()Lco;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    new-instance v4, Lro;

    .line 266
    .line 267
    invoke-direct {v4, v1, v2, v0, v3}, Lro;-><init>(JLhp;Lco;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {p1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_9
    return-object v9

    .line 275
    :catchall_0
    move-exception v0

    .line 276
    move-object p0, v0

    .line 277
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 278
    .line 279
    .line 280
    throw p0
.end method

.method public b()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lrr;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lrr;->o:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lrr;->p:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Led0;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    iget-object v3, p0, Led0;->i:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Lob3;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    int-to-long v4, v4

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/String;

    .line 55
    .line 56
    sget-object v6, Lo72;->t:Lo72;

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5, v6, v2}, Lob3;->A(JLo72;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-object v1

    .line 63
    :pswitch_0
    check-cast v2, Ljava/lang/Iterable;

    .line 64
    .line 65
    iget-object p0, p0, Led0;->d:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Lob3;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-static {v2}, Lob3;->F(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v2, "DELETE FROM events WHERE _id in "

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lob3;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 102
    .line 103
    .line 104
    :goto_1
    return-object v1

    .line 105
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public c()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lrr;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcy2;

    .line 4
    .line 5
    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lmp;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcy2;->D:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcy2;->h()V

    .line 14
    .line 15
    .line 16
    iget-wide v1, v0, Lcy2;->B:J

    .line 17
    .line 18
    iget-wide v3, p0, Lmp;->a:J

    .line 19
    .line 20
    invoke-static {v1, v2, v3, v4}, Lmp;->a(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, p0, Lmp;->a:J

    .line 25
    .line 26
    iget-wide v3, v0, Lcy2;->A:J

    .line 27
    .line 28
    iget-wide v5, p0, Lmp;->b:J

    .line 29
    .line 30
    add-long/2addr v1, v5

    .line 31
    invoke-virtual {v0, v3, v4, v1, v2}, Lcy2;->g(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    xor-int/lit8 p0, p0, 0x1

    .line 36
    .line 37
    iput-boolean p0, v0, Lcy2;->D:Z

    .line 38
    .line 39
    :cond_0
    iget-boolean p0, v0, Lcy2;->D:Z

    .line 40
    .line 41
    return p0
.end method

.method public d(Lb20;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lrr;->n:I

    .line 2
    .line 3
    sget-object v1, Leu0;->n:Leu0;

    .line 4
    .line 5
    iget-object v2, p0, Lrr;->o:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lrr;->p:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v2, Lne1;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lp42;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v3, v0, v4}, Lp42;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p1, Lb20;->c:Lj73;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4, v3, v1}, Lb2;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v1, Ll20;

    .line 36
    .line 37
    const/4 v3, 0x6

    .line 38
    invoke-direct {v1, v0, p1, v2, v3}, Ll20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lt64;->a:Lt64;

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_0
    check-cast v2, Lj4;

    .line 48
    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Lp42;

    .line 55
    .line 56
    invoke-direct {v4, v0, v3}, Lp42;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p1, Lb20;->c:Lj73;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v3, v4, v1}, Lb2;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    new-instance v1, Ll20;

    .line 67
    .line 68
    const/4 v3, 0x3

    .line 69
    invoke-direct {v1, v0, p1, v2, v3}, Ll20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    const-string p0, "setForegroundAsync"

    .line 76
    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lhg;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lrr;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lrr;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v1, Lmk0;

    .line 13
    .line 14
    const-class v0, Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lhg;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/content/Context;

    .line 21
    .line 22
    iget v0, v1, Lmk0;->n:I

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    packed-switch v0, :pswitch_data_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "android.hardware.type.television"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    const-string v1, "tv"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "android.hardware.type.watch"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    const-string v1, "watch"

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "android.hardware.type.automotive"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    const-string v1, "auto"

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v2, 0x1a

    .line 96
    .line 97
    if-lt v0, v2, :cond_3

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "android.hardware.type.embedded"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    const-string v1, "embedded"

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 121
    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_0

    .line 127
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 134
    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :cond_3
    :goto_0
    new-instance p1, Lmo;

    .line 140
    .line 141
    invoke-direct {p1, p0, v1}, Lmo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object p1

    .line 145
    :pswitch_3
    check-cast v1, Li90;

    .line 146
    .line 147
    :try_start_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, v1, Li90;->f:Laa0;

    .line 151
    .line 152
    invoke-interface {p0, p1}, Laa0;->j(Lhg;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Low3;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrr;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxr;

    .line 4
    .line 5
    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Low3;->j()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lez3;->a:Lra3;

    .line 20
    .line 21
    invoke-virtual {p1}, Low3;->g()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    new-array p1, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lra3;->h([Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lzu0;->a:Lzp0;

    .line 37
    .line 38
    sget-object p1, Llp0;->p:Llp0;

    .line 39
    .line 40
    invoke-static {p1}, Ldm0;->c(Lhi0;)Lbh0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v1, Ln;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x3

    .line 48
    invoke-direct {v1, v0, p0, v2, v3}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v2, v2, v1, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    sget-object p0, Lez3;->a:Lra3;

    .line 56
    .line 57
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 58
    .line 59
    .line 60
    new-array p1, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lra3;->g([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public then(Low3;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lrr;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lrr;->p:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lhd0;

    .line 11
    .line 12
    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lef5;

    .line 15
    .line 16
    const-string p1, "Unable to connect to the server. Try again in a few minutes. HTTP status code: %d"

    .line 17
    .line 18
    iget-object v2, v0, Lhd0;->p:Lcom/google/android/gms/common/util/Clock;

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    const/16 v4, 0x193

    .line 23
    .line 24
    const/16 v5, 0xc8

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lef5;->j()Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-eqz v8, :cond_6

    .line 33
    .line 34
    invoke-virtual {p0}, Lef5;->g()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 39
    .line 40
    iput-object p0, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 46
    :try_start_1
    iget-object v8, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 52
    :try_start_2
    iget-object v9, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 53
    .line 54
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 62
    if-ne v9, v5, :cond_0

    .line 63
    .line 64
    :try_start_3
    monitor-enter v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    iput v3, v0, Lhd0;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    .line 67
    :try_start_5
    monitor-exit v0

    .line 68
    iget-object v11, v0, Lhd0;->q:Ljd0;

    .line 69
    .line 70
    sget-object v12, Ljd0;->f:Ljava/util/Date;

    .line 71
    .line 72
    invoke-virtual {v11, v6, v12}, Ljd0;->e(ILjava/util/Date;)V

    .line 73
    .line 74
    .line 75
    iget-object v11, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 76
    .line 77
    invoke-virtual {v0, v11}, Lhd0;->j(Ljava/net/HttpURLConnection;)Luc0;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    iput-object v11, v0, Lhd0;->g:Luc0;

    .line 82
    .line 83
    invoke-virtual {v11}, Luc0;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v3

    .line 88
    :goto_0
    move-object v7, p0

    .line 89
    goto/16 :goto_a

    .line 90
    .line 91
    :catch_0
    move-exception v9

    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :catchall_1
    move-exception v9

    .line 95
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 96
    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 97
    :cond_0
    :goto_1
    invoke-virtual {v0, p0, v8}, Lhd0;->b(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 98
    .line 99
    .line 100
    monitor-enter v0

    .line 101
    :try_start_8
    iput-boolean v6, v0, Lhd0;->b:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 102
    .line 103
    monitor-exit v0

    .line 104
    iget-boolean p0, v0, Lhd0;->e:Z

    .line 105
    .line 106
    if-nez p0, :cond_1

    .line 107
    .line 108
    invoke-static {v9}, Lhd0;->d(I)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    move v1, v6

    .line 116
    :goto_2
    if-eqz v1, :cond_2

    .line 117
    .line 118
    new-instance p0, Ljava/util/Date;

    .line 119
    .line 120
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p0}, Lhd0;->k(Ljava/util/Date;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    if-nez v1, :cond_5

    .line 131
    .line 132
    if-ne v9, v5, :cond_3

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_3
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    if-ne v9, v4, :cond_4

    .line 144
    .line 145
    iget-object p0, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, Lhd0;->f(Ljava/io/InputStream;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    :cond_4
    new-instance p1, Lx61;

    .line 156
    .line 157
    invoke-direct {p1, v9, p0, v6}, Lx61;-><init>(ILjava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    :goto_3
    invoke-virtual {v0, p1}, Lhd0;->g(Lu61;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_9

    .line 164
    .line 165
    :cond_5
    :goto_4
    invoke-virtual {v0}, Lhd0;->h()V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_9

    .line 169
    .line 170
    :catchall_2
    move-exception p0

    .line 171
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 172
    throw p0

    .line 173
    :catchall_3
    move-exception v3

    .line 174
    move-object v10, v7

    .line 175
    goto :goto_0

    .line 176
    :catch_1
    move-exception v9

    .line 177
    move-object v10, v7

    .line 178
    goto :goto_6

    .line 179
    :catchall_4
    move-exception v3

    .line 180
    move-object v8, v7

    .line 181
    move-object v10, v8

    .line 182
    goto :goto_0

    .line 183
    :catch_2
    move-exception v9

    .line 184
    move-object v8, v7

    .line 185
    :goto_5
    move-object v10, v8

    .line 186
    goto :goto_6

    .line 187
    :catchall_5
    move-exception v3

    .line 188
    move-object v8, v7

    .line 189
    move-object v10, v8

    .line 190
    goto/16 :goto_a

    .line 191
    .line 192
    :catch_3
    move-exception v9

    .line 193
    move-object p0, v7

    .line 194
    move-object v8, p0

    .line 195
    goto :goto_5

    .line 196
    :cond_6
    :try_start_a
    new-instance v8, Ljava/io/IOException;

    .line 197
    .line 198
    invoke-virtual {p0}, Lef5;->f()Ljava/lang/Exception;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-direct {v8, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    throw v8
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 206
    :goto_6
    :try_start_b
    iget-boolean v11, v0, Lhd0;->e:Z

    .line 207
    .line 208
    if-eqz v11, :cond_7

    .line 209
    .line 210
    monitor-enter v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 211
    :try_start_c
    iput v3, v0, Lhd0;->c:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 212
    .line 213
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 214
    goto :goto_7

    .line 215
    :catchall_6
    move-exception v3

    .line 216
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 217
    :try_start_f
    throw v3

    .line 218
    :cond_7
    const-string v3, "FirebaseRemoteConfig"

    .line 219
    .line 220
    const-string v11, "Exception connecting to real-time RC backend. Retrying the connection..."

    .line 221
    .line 222
    invoke-static {v3, v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 223
    .line 224
    .line 225
    :goto_7
    invoke-virtual {v0, p0, v8}, Lhd0;->b(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 226
    .line 227
    .line 228
    monitor-enter v0

    .line 229
    :try_start_10
    iput-boolean v6, v0, Lhd0;->b:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 230
    .line 231
    monitor-exit v0

    .line 232
    iget-boolean p0, v0, Lhd0;->e:Z

    .line 233
    .line 234
    if-nez p0, :cond_8

    .line 235
    .line 236
    if-eqz v10, :cond_9

    .line 237
    .line 238
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    invoke-static {p0}, Lhd0;->d(I)Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    if-eqz p0, :cond_8

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_8
    move v1, v6

    .line 250
    :cond_9
    :goto_8
    if-eqz v1, :cond_a

    .line 251
    .line 252
    new-instance p0, Ljava/util/Date;

    .line 253
    .line 254
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 255
    .line 256
    .line 257
    move-result-wide v2

    .line 258
    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, p0}, Lhd0;->k(Ljava/util/Date;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    if-nez v1, :cond_5

    .line 265
    .line 266
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    if-ne p0, v5, :cond_b

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_b
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-ne p1, v4, :cond_c

    .line 286
    .line 287
    iget-object p0, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-static {p0}, Lhd0;->f(Ljava/io/InputStream;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    :cond_c
    new-instance p1, Lx61;

    .line 298
    .line 299
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-direct {p1, v1, p0, v6}, Lx61;-><init>(ILjava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :goto_9
    iput-object v7, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 309
    .line 310
    iput-object v7, v0, Lhd0;->g:Luc0;

    .line 311
    .line 312
    invoke-static {v7}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    return-object p0

    .line 317
    :catchall_7
    move-exception p0

    .line 318
    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 319
    throw p0

    .line 320
    :goto_a
    invoke-virtual {v0, v7, v8}, Lhd0;->b(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 321
    .line 322
    .line 323
    monitor-enter v0

    .line 324
    :try_start_12
    iput-boolean v6, v0, Lhd0;->b:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 325
    .line 326
    monitor-exit v0

    .line 327
    iget-boolean p0, v0, Lhd0;->e:Z

    .line 328
    .line 329
    if-nez p0, :cond_d

    .line 330
    .line 331
    if-eqz v10, :cond_e

    .line 332
    .line 333
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    invoke-static {p0}, Lhd0;->d(I)Z

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    if-eqz p0, :cond_d

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_d
    move v1, v6

    .line 345
    :cond_e
    :goto_b
    if-eqz v1, :cond_f

    .line 346
    .line 347
    new-instance p0, Ljava/util/Date;

    .line 348
    .line 349
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 350
    .line 351
    .line 352
    move-result-wide v7

    .line 353
    invoke-direct {p0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, p0}, Lhd0;->k(Ljava/util/Date;)V

    .line 357
    .line 358
    .line 359
    :cond_f
    if-nez v1, :cond_11

    .line 360
    .line 361
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-eq p0, v5, :cond_11

    .line 366
    .line 367
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    if-ne p1, v4, :cond_10

    .line 380
    .line 381
    iget-object p0, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 382
    .line 383
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-static {p0}, Lhd0;->f(Ljava/io/InputStream;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    :cond_10
    new-instance p1, Lx61;

    .line 392
    .line 393
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-direct {p1, v1, p0, v6}, Lx61;-><init>(ILjava/lang/String;I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, p1}, Lhd0;->g(Lu61;)V

    .line 401
    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_11
    invoke-virtual {v0}, Lhd0;->h()V

    .line 405
    .line 406
    .line 407
    :goto_c
    throw v3

    .line 408
    :catchall_8
    move-exception p0

    .line 409
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 410
    throw p0

    .line 411
    :pswitch_0
    iget-object v0, p0, Lrr;->p:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v0, Led0;

    .line 414
    .line 415
    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast p0, Ljava/util/Date;

    .line 418
    .line 419
    invoke-virtual {p1}, Low3;->j()Z

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-eqz v2, :cond_12

    .line 424
    .line 425
    iget-object v0, v0, Led0;->h:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v0, Ljd0;

    .line 428
    .line 429
    iget-object v2, v0, Ljd0;->b:Ljava/lang/Object;

    .line 430
    .line 431
    monitor-enter v2

    .line 432
    :try_start_14
    iget-object v0, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 433
    .line 434
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    const-string v1, "last_fetch_status"

    .line 439
    .line 440
    const/4 v3, -0x1

    .line 441
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    const-string v1, "last_fetch_time_in_millis"

    .line 446
    .line 447
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 448
    .line 449
    .line 450
    move-result-wide v3

    .line 451
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    .line 457
    .line 458
    monitor-exit v2

    .line 459
    goto :goto_d

    .line 460
    :catchall_9
    move-exception p0

    .line 461
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 462
    throw p0

    .line 463
    :cond_12
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 464
    .line 465
    .line 466
    move-result-object p0

    .line 467
    if-nez p0, :cond_13

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_13
    instance-of p0, p0, Lv61;

    .line 471
    .line 472
    iget-object v0, v0, Led0;->h:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v0, Ljd0;

    .line 475
    .line 476
    iget-object v2, v0, Ljd0;->b:Ljava/lang/Object;

    .line 477
    .line 478
    if-eqz p0, :cond_14

    .line 479
    .line 480
    monitor-enter v2

    .line 481
    :try_start_15
    iget-object p0, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 482
    .line 483
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    const-string v0, "last_fetch_status"

    .line 488
    .line 489
    const/4 v1, 0x2

    .line 490
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 495
    .line 496
    .line 497
    monitor-exit v2

    .line 498
    goto :goto_d

    .line 499
    :catchall_a
    move-exception p0

    .line 500
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 501
    throw p0

    .line 502
    :cond_14
    monitor-enter v2

    .line 503
    :try_start_16
    iget-object p0, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 504
    .line 505
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    const-string v0, "last_fetch_status"

    .line 510
    .line 511
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 516
    .line 517
    .line 518
    monitor-exit v2

    .line 519
    :goto_d
    return-object p1

    .line 520
    :catchall_b
    move-exception p0

    .line 521
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 522
    throw p0

    .line 523
    :pswitch_1
    iget-object v0, p0, Lrr;->p:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v0, Led0;

    .line 526
    .line 527
    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast p0, Ljava/util/HashMap;

    .line 530
    .line 531
    const-wide/16 v1, 0x0

    .line 532
    .line 533
    invoke-virtual {v0, p1, v1, v2, p0}, Led0;->b(Low3;JLjava/util/HashMap;)Lef5;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    return-object p0

    .line 538
    nop

    .line 539
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public then(Ljava/lang/Object;)Low3;
    .locals 1

    iget-object v0, p0, Lrr;->p:Ljava/lang/Object;

    check-cast v0, Lyc0;

    iget-object p0, p0, Lrr;->o:Ljava/lang/Object;

    check-cast p0, Lad0;

    check-cast p1, Ljava/lang/Void;

    .line 539
    monitor-enter v0

    .line 540
    :try_start_0
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    move-result-object p1

    iput-object p1, v0, Lyc0;->c:Lef5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit v0

    .line 542
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 543
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
