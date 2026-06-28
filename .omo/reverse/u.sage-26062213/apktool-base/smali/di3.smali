.class public final synthetic Ldi3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Ldi3;->n:I

    iput-object p2, p0, Ldi3;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lqg4;Log4;)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    iput p1, p0, Ldi3;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Ldi3;->o:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ldi3;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Ldi3;->o:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Log4;

    .line 10
    .line 11
    check-cast p1, Ljb3;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    invoke-static {v0, p0}, Lpr3;->f(Lpb3;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lpb3;->c0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lse0;->t(Ljb3;)I

    .line 32
    .line 33
    .line 34
    sget-object p0, Lt64;->a:Lt64;

    .line 35
    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    invoke-static {v0, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    check-cast p0, Lu/sage/widget/UsageWidgetConfigActivity;

    .line 45
    .line 46
    check-cast p1, Ly84;

    .line 47
    .line 48
    sget v0, Lu/sage/widget/UsageWidgetConfigActivity;->o:I

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget v0, p0, Lu/sage/widget/UsageWidgetConfigActivity;->n:I

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const-string v1, "widget_preferences"

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "service_type_"

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    .line 93
    .line 94
    new-instance p1, Landroid/content/Intent;

    .line 95
    .line 96
    const-class v0, Lu/sage/widget/UsageWidgetProvider;

    .line 97
    .line 98
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const-string v0, "appWidgetIds"

    .line 107
    .line 108
    iget v1, p0, Lu/sage/widget/UsageWidgetConfigActivity;->n:I

    .line 109
    .line 110
    filled-new-array {v1}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Landroid/content/Intent;

    .line 121
    .line 122
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v0, "appWidgetId"

    .line 126
    .line 127
    iget v1, p0, Lu/sage/widget/UsageWidgetConfigActivity;->n:I

    .line 128
    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const/4 v0, -0x1

    .line 137
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lu/sage/widget/UsageWidgetConfigActivity;->g()V

    .line 141
    .line 142
    .line 143
    sget-object p0, Lt64;->a:Lt64;

    .line 144
    .line 145
    return-object p0

    .line 146
    :pswitch_1
    check-cast p0, Ldf1;

    .line 147
    .line 148
    sget-object v0, Lk30;->m:Le34;

    .line 149
    .line 150
    check-cast p1, Lue;

    .line 151
    .line 152
    iget-object v1, p1, Lue;->e:Lws2;

    .line 153
    .line 154
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget-object v0, v0, Le34;->b:Lpe1;

    .line 159
    .line 160
    iget-object p1, p1, Lue;->f:Lbf;

    .line 161
    .line 162
    invoke-interface {v0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-interface {p0, v1, p1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    sget-object p0, Lt64;->a:Lt64;

    .line 170
    .line 171
    return-object p0

    .line 172
    :pswitch_2
    check-cast p0, Lip3;

    .line 173
    .line 174
    iget-object v0, p0, Lip3;->g:Ljava/lang/Object;

    .line 175
    .line 176
    monitor-enter v0

    .line 177
    :try_start_2
    iget-object p0, p0, Lip3;->i:Lhp3;

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lhp3;->b:Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    iget v2, p0, Lhp3;->d:I

    .line 188
    .line 189
    iget-object v3, p0, Lhp3;->c:Lcg2;

    .line 190
    .line 191
    if-nez v3, :cond_0

    .line 192
    .line 193
    new-instance v3, Lcg2;

    .line 194
    .line 195
    invoke-direct {v3}, Lcg2;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v3, p0, Lhp3;->c:Lcg2;

    .line 199
    .line 200
    iget-object v4, p0, Lhp3;->f:Lkg2;

    .line 201
    .line 202
    invoke-virtual {v4, v1, v3}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_0
    invoke-virtual {p0, p1, v2, v1, v3}, Lhp3;->b(Ljava/lang/Object;ILjava/lang/Object;Lcg2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    .line 207
    .line 208
    monitor-exit v0

    .line 209
    sget-object p0, Lt64;->a:Lt64;

    .line 210
    .line 211
    return-object p0

    .line 212
    :catchall_2
    move-exception p0

    .line 213
    monitor-exit v0

    .line 214
    throw p0

    .line 215
    :pswitch_3
    check-cast p0, Ldn3;

    .line 216
    .line 217
    iget-object v0, p0, Ldn3;->f:Lyh3;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    iget-object v2, p0, Ldn3;->f:Lyh3;

    .line 223
    .line 224
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_1

    .line 229
    .line 230
    const-string v0, "Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions"

    .line 231
    .line 232
    invoke-static {v0}, Lix2;->b(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_1
    iget-object v0, p0, Ldn3;->e:Llg2;

    .line 236
    .line 237
    iget-object v2, p0, Ldn3;->c:Ljava/lang/Object;

    .line 238
    .line 239
    if-nez v0, :cond_3

    .line 240
    .line 241
    if-nez v2, :cond_2

    .line 242
    .line 243
    iput-object p1, p0, Ldn3;->c:Ljava/lang/Object;

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_2
    sget-object v0, Lud3;->a:Llg2;

    .line 247
    .line 248
    new-instance v0, Llg2;

    .line 249
    .line 250
    invoke-direct {v0}, Llg2;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v2}, Llg2;->a(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p1}, Llg2;->a(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    iput-object v0, p0, Ldn3;->e:Llg2;

    .line 260
    .line 261
    iput-object v1, p0, Ldn3;->c:Ljava/lang/Object;

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_3
    if-nez v2, :cond_4

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_4
    const-string p0, "workingSoleWatchedObject must be null when workingWatchSet is non-null"

    .line 268
    .line 269
    invoke-static {p0}, Lix2;->b(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :goto_0
    invoke-virtual {v0, p1}, Llg2;->a(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    :goto_1
    sget-object p0, Lt64;->a:Lt64;

    .line 276
    .line 277
    return-object p0

    .line 278
    :pswitch_4
    check-cast p0, Lii3;

    .line 279
    .line 280
    check-cast p1, Ljava/lang/Integer;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Lii3;->e:[Ljava/lang/String;

    .line 292
    .line 293
    aget-object v1, v1, p1

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v1, ": "

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-object p0, p0, Lii3;->f:[Lgi3;

    .line 304
    .line 305
    aget-object p0, p0, p1

    .line 306
    .line 307
    invoke-interface {p0}, Lgi3;->b()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    return-object p0

    .line 319
    :pswitch_5
    check-cast p0, Ll6;

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Ll6;->a()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    return-object p0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
