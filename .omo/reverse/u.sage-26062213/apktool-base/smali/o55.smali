.class public final Lo55;
.super Liu4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln05;


# instance fields
.field public final c:Lpb5;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lpb5;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Liu4;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lo55;->c:Lpb5;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lo55;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final A(Lvc5;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lo55;->H(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lv45;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, p0, p1, v1}, Lv45;-><init>(Lo55;Lvc5;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final B(Lvc5;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv45;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lv45;-><init>(Lo55;Lvc5;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final C(Lvc5;Lwa5;Ld15;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lvc5;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    move-object v2, p1

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p0, Lo55;->c:Lpb5;

    .line 14
    .line 15
    invoke-virtual {p1}, Lpb5;->d()Lj45;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Le30;

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v1, p0

    .line 24
    move-object v3, p2

    .line 25
    move-object v4, p3

    .line 26
    invoke-direct/range {v0 .. v6}, Le30;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final D(Ljava/lang/String;Lbu4;)[B
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lo55;->H(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 12
    .line 13
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, La25;->m:Lx15;

    .line 18
    .line 19
    iget-object v2, v0, Lpb5;->l:Lr45;

    .line 20
    .line 21
    iget-object v3, v2, Lr45;->j:Lp15;

    .line 22
    .line 23
    iget-object v4, p2, Lbu4;->n:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v5, "Log and bundle. event"

    .line 30
    .line 31
    invoke-virtual {v1, v3, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide/32 v7, 0xf4240

    .line 43
    .line 44
    .line 45
    div-long/2addr v5, v7

    .line 46
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v3, Lid2;

    .line 51
    .line 52
    invoke-direct {v3, p0, p2, p1}, Lid2;-><init>(Lo55;Lbu4;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lj45;->D(Ljava/util/concurrent/Callable;)Lf45;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, [B

    .line 64
    .line 65
    if-nez p0, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p0, p0, La25;->f:Lx15;

    .line 72
    .line 73
    const-string v1, "Log and bundle returned null. appId"

    .line 74
    .line 75
    invoke-static {p1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p0, v3, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    new-array p0, p0, [B

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    div-long/2addr v9, v7

    .line 99
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v1, v1, La25;->m:Lx15;

    .line 104
    .line 105
    const-string v3, "Log and bundle processed. event, size, time_ms"

    .line 106
    .line 107
    iget-object v7, v2, Lr45;->j:Lp15;

    .line 108
    .line 109
    invoke-virtual {v7, v4}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    array-length v7, p0

    .line 114
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    sub-long/2addr v9, v5

    .line 119
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v1, v3, v4, v7, v5}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :goto_1
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, La25;->f:Lx15;

    .line 132
    .line 133
    invoke-static {p1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v1, v2, Lr45;->j:Lp15;

    .line 138
    .line 139
    iget-object p2, p2, Lbu4;->n:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v1, p2}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    const-string v1, "Failed to log and bundle. appId, event, error"

    .line 146
    .line 147
    invoke-virtual {v0, v1, p1, p2, p0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const/4 p0, 0x0

    .line 151
    return-object p0
.end method

.method public final E(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10

    .line 1
    iget-object v1, p0, Lo55;->c:Lpb5;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    return v0

    .line 10
    :pswitch_1
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lvc5;

    .line 17
    .line 18
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    .line 20
    invoke-static {p2, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v2, "com.google.android.gms.measurement.internal.ITriggerUrisCallback"

    .line 34
    .line 35
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    instance-of v5, v4, Lv05;

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    move-object v2, v4

    .line 44
    check-cast v2, Lv05;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v4, Lr05;

    .line 48
    .line 49
    invoke-direct {v4, v1, v2}, Lgu4;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v2, v4

    .line 53
    :goto_0
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, v2}, Lo55;->b(Lvc5;Landroid/os/Bundle;Lv05;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    .line 61
    .line 62
    return v3

    .line 63
    :pswitch_2
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    .line 65
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lvc5;

    .line 70
    .line 71
    sget-object v0, Lpo4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    .line 73
    invoke-static {p2, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lpo4;

    .line 78
    .line 79
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, v0}, Lo55;->s(Lvc5;Lpo4;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    .line 87
    .line 88
    return v3

    .line 89
    :pswitch_3
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    .line 91
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lvc5;

    .line 96
    .line 97
    sget-object v0, Lwa5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 98
    .line 99
    invoke-static {p2, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lwa5;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const-string v2, "com.google.android.gms.measurement.internal.IUploadBatchesCallback"

    .line 113
    .line 114
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    instance-of v5, v4, Ld15;

    .line 119
    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    move-object v2, v4

    .line 123
    check-cast v2, Ld15;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    new-instance v4, Ly05;

    .line 127
    .line 128
    invoke-direct {v4, v1, v2}, Lgu4;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v2, v4

    .line 132
    :goto_1
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1, v0, v2}, Lo55;->C(Lvc5;Lwa5;Ld15;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    .line 140
    .line 141
    return v3

    .line 142
    :pswitch_4
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 143
    .line 144
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lvc5;

    .line 149
    .line 150
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lo55;->h(Lvc5;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    .line 158
    .line 159
    return v3

    .line 160
    :pswitch_5
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    .line 162
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lvc5;

    .line 167
    .line 168
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lo55;->n(Lvc5;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    .line 176
    .line 177
    return v3

    .line 178
    :pswitch_6
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    .line 180
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lvc5;

    .line 185
    .line 186
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lo55;->e(Lvc5;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    .line 194
    .line 195
    return v3

    .line 196
    :pswitch_7
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    .line 198
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lvc5;

    .line 203
    .line 204
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 205
    .line 206
    invoke-static {p2, v4}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Landroid/os/Bundle;

    .line 211
    .line 212
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p1, Lvc5;->n:Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    sget-object v6, Le05;->T0:Ld05;

    .line 228
    .line 229
    invoke-virtual {v5, v2, v6}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    const-string v5, "Failed to get trigger URIs. appId"

    .line 234
    .line 235
    if-eqz v2, :cond_4

    .line 236
    .line 237
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    new-instance v6, Li55;

    .line 242
    .line 243
    invoke-direct {v6, p0, p1, v4, v0}, Li55;-><init>(Lo55;Lvc5;Landroid/os/Bundle;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v6}, Lj45;->D(Ljava/util/concurrent/Callable;)Lf45;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 251
    .line 252
    const-wide/16 v6, 0x2710

    .line 253
    .line 254
    invoke-virtual {p0, v6, v7, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :catch_0
    move-exception v0

    .line 262
    :goto_2
    move-object p0, v0

    .line 263
    goto :goto_3

    .line 264
    :catch_1
    move-exception v0

    .line 265
    goto :goto_2

    .line 266
    :catch_2
    move-exception v0

    .line 267
    goto :goto_2

    .line 268
    :goto_3
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iget-object p1, p1, La25;->f:Lx15;

    .line 273
    .line 274
    invoke-static {p2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-virtual {p1, p2, p0, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_4
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    new-instance v2, Li55;

    .line 289
    .line 290
    invoke-direct {v2, p0, p1, v4, v3}, Li55;-><init>(Lo55;Lvc5;Landroid/os/Bundle;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v2}, Lj45;->C(Ljava/util/concurrent/Callable;)Lf45;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :catch_3
    move-exception v0

    .line 305
    :goto_4
    move-object p0, v0

    .line 306
    goto :goto_5

    .line 307
    :catch_4
    move-exception v0

    .line 308
    goto :goto_4

    .line 309
    :goto_5
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    iget-object p1, p1, La25;->f:Lx15;

    .line 314
    .line 315
    invoke-static {p2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    invoke-virtual {p1, p2, p0, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 323
    .line 324
    :goto_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_d

    .line 331
    .line 332
    :pswitch_8
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 333
    .line 334
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Lvc5;

    .line 339
    .line 340
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, p1}, Lo55;->w(Lvc5;)Lms4;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    .line 349
    .line 350
    if-nez p0, :cond_5

    .line 351
    .line 352
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    .line 354
    .line 355
    return v3

    .line 356
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, p3, v3}, Lms4;->writeToParcel(Landroid/os/Parcel;I)V

    .line 360
    .line 361
    .line 362
    return v3

    .line 363
    :pswitch_9
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 364
    .line 365
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    check-cast p1, Lvc5;

    .line 370
    .line 371
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, p1}, Lo55;->j(Lvc5;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    .line 379
    .line 380
    return v3

    .line 381
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 382
    .line 383
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Landroid/os/Bundle;

    .line 388
    .line 389
    sget-object v0, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 390
    .line 391
    invoke-static {p2, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    check-cast v0, Lvc5;

    .line 396
    .line 397
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0, p1, v0}, Lo55;->x(Landroid/os/Bundle;Lvc5;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    .line 405
    .line 406
    return v3

    .line 407
    :pswitch_b
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 408
    .line 409
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    check-cast p1, Lvc5;

    .line 414
    .line 415
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0, p1}, Lo55;->A(Lvc5;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    .line 423
    .line 424
    return v3

    .line 425
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, p1, v0, v1}, Lo55;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 448
    .line 449
    .line 450
    return v3

    .line 451
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    sget-object v1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 460
    .line 461
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    check-cast v1, Lvc5;

    .line 466
    .line 467
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0, p1, v0, v1}, Lo55;->g(Ljava/lang/String;Ljava/lang/String;Lvc5;)Ljava/util/List;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 478
    .line 479
    .line 480
    return v3

    .line 481
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    sget-object v4, Lku4;->a:Ljava/lang/ClassLoader;

    .line 494
    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    if-eqz v4, :cond_6

    .line 500
    .line 501
    move v0, v3

    .line 502
    :cond_6
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0, p1, v1, v2, v0}, Lo55;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 513
    .line 514
    .line 515
    return v3

    .line 516
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    sget-object v2, Lku4;->a:Ljava/lang/ClassLoader;

    .line 525
    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    if-eqz v2, :cond_7

    .line 531
    .line 532
    move v0, v3

    .line 533
    :cond_7
    sget-object v2, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 534
    .line 535
    invoke-static {p2, v2}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    check-cast v2, Lvc5;

    .line 540
    .line 541
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p0, p1, v1, v0, v2}, Lo55;->k(Ljava/lang/String;Ljava/lang/String;ZLvc5;)Ljava/util/List;

    .line 545
    .line 546
    .line 547
    move-result-object p0

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 552
    .line 553
    .line 554
    return v3

    .line 555
    :pswitch_10
    sget-object p1, Lfq4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 556
    .line 557
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    check-cast p1, Lfq4;

    .line 562
    .line 563
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 564
    .line 565
    .line 566
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    iget-object p2, p1, Lfq4;->p:Lvb5;

    .line 570
    .line 571
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    iget-object p2, p1, Lfq4;->n:Ljava/lang/String;

    .line 575
    .line 576
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    iget-object p2, p1, Lfq4;->n:Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {p0, p2, v3}, Lo55;->H(Ljava/lang/String;Z)V

    .line 582
    .line 583
    .line 584
    new-instance p2, Lfq4;

    .line 585
    .line 586
    invoke-direct {p2, p1}, Lfq4;-><init>(Lfq4;)V

    .line 587
    .line 588
    .line 589
    new-instance p1, Lrf1;

    .line 590
    .line 591
    const/16 v1, 0x15

    .line 592
    .line 593
    invoke-direct {p1, v1, p0, p2, v0}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0, p1}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    .line 601
    .line 602
    return v3

    .line 603
    :pswitch_11
    sget-object p1, Lfq4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 604
    .line 605
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    check-cast p1, Lfq4;

    .line 610
    .line 611
    sget-object v0, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 612
    .line 613
    invoke-static {p2, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    check-cast v0, Lvc5;

    .line 618
    .line 619
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p0, p1, v0}, Lo55;->q(Lfq4;Lvc5;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    .line 627
    .line 628
    return v3

    .line 629
    :pswitch_12
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 630
    .line 631
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 632
    .line 633
    .line 634
    move-result-object p1

    .line 635
    check-cast p1, Lvc5;

    .line 636
    .line 637
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p0, p1}, Lo55;->t(Lvc5;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object p0

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    return v3

    .line 651
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 652
    .line 653
    .line 654
    move-result-wide v5

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v7

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v9

    .line 667
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 668
    .line 669
    .line 670
    move-object v4, p0

    .line 671
    invoke-virtual/range {v4 .. v9}, Lo55;->p(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    .line 676
    .line 677
    return v3

    .line 678
    :pswitch_14
    move-object v4, p0

    .line 679
    sget-object p0, Lbu4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 680
    .line 681
    invoke-static {p2, p0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 682
    .line 683
    .line 684
    move-result-object p0

    .line 685
    check-cast p0, Lbu4;

    .line 686
    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object p1

    .line 691
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v4, p1, p0}, Lo55;->D(Ljava/lang/String;Lbu4;)[B

    .line 695
    .line 696
    .line 697
    move-result-object p0

    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 702
    .line 703
    .line 704
    return v3

    .line 705
    :pswitch_15
    move-object v4, p0

    .line 706
    sget-object p0, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 707
    .line 708
    invoke-static {p2, p0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 709
    .line 710
    .line 711
    move-result-object p0

    .line 712
    check-cast p0, Lvc5;

    .line 713
    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 715
    .line 716
    .line 717
    move-result p1

    .line 718
    if-eqz p1, :cond_8

    .line 719
    .line 720
    move p1, v3

    .line 721
    goto :goto_7

    .line 722
    :cond_8
    move p1, v0

    .line 723
    :goto_7
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v4, p0}, Lo55;->G(Lvc5;)V

    .line 727
    .line 728
    .line 729
    iget-object p0, p0, Lvc5;->n:Ljava/lang/String;

    .line 730
    .line 731
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 735
    .line 736
    .line 737
    move-result-object p2

    .line 738
    new-instance v5, Lt45;

    .line 739
    .line 740
    invoke-direct {v5, v4, p0, v0}, Lt45;-><init>(Lo55;Ljava/lang/Object;I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p2, v5}, Lj45;->C(Ljava/util/concurrent/Callable;)Lf45;

    .line 744
    .line 745
    .line 746
    move-result-object p2

    .line 747
    :try_start_2
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object p2

    .line 751
    check-cast p2, Ljava/util/List;

    .line 752
    .line 753
    new-instance v0, Ljava/util/ArrayList;

    .line 754
    .line 755
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 756
    .line 757
    .line 758
    move-result v4

    .line 759
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 760
    .line 761
    .line 762
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 763
    .line 764
    .line 765
    move-result-object p2

    .line 766
    :cond_9
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 767
    .line 768
    .line 769
    move-result v4

    .line 770
    if-eqz v4, :cond_b

    .line 771
    .line 772
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    check-cast v4, Lxb5;

    .line 777
    .line 778
    if-nez p1, :cond_a

    .line 779
    .line 780
    iget-object v5, v4, Lxb5;->c:Ljava/lang/String;

    .line 781
    .line 782
    invoke-static {v5}, Lac5;->Y(Ljava/lang/String;)Z

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    if-nez v5, :cond_9

    .line 787
    .line 788
    goto :goto_a

    .line 789
    :catch_5
    move-exception v0

    .line 790
    :goto_9
    move-object p1, v0

    .line 791
    goto :goto_b

    .line 792
    :catch_6
    move-exception v0

    .line 793
    goto :goto_9

    .line 794
    :cond_a
    :goto_a
    new-instance v5, Lvb5;

    .line 795
    .line 796
    invoke-direct {v5, v4}, Lvb5;-><init>(Lxb5;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_5

    .line 800
    .line 801
    .line 802
    goto :goto_8

    .line 803
    :cond_b
    move-object v2, v0

    .line 804
    goto :goto_c

    .line 805
    :goto_b
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 806
    .line 807
    .line 808
    move-result-object p2

    .line 809
    iget-object p2, p2, La25;->f:Lx15;

    .line 810
    .line 811
    invoke-static {p0}, La25;->D(Ljava/lang/String;)Ly15;

    .line 812
    .line 813
    .line 814
    move-result-object p0

    .line 815
    const-string v0, "Failed to get user properties. appId"

    .line 816
    .line 817
    invoke-virtual {p2, p0, p1, v0}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    :goto_c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    .line 822
    .line 823
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 824
    .line 825
    .line 826
    :goto_d
    return v3

    .line 827
    :pswitch_16
    move-object v4, p0

    .line 828
    sget-object p0, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 829
    .line 830
    invoke-static {p2, p0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 831
    .line 832
    .line 833
    move-result-object p0

    .line 834
    check-cast p0, Lvc5;

    .line 835
    .line 836
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v4, p0}, Lo55;->m(Lvc5;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    .line 844
    .line 845
    return v3

    .line 846
    :pswitch_17
    move-object v4, p0

    .line 847
    sget-object p0, Lbu4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 848
    .line 849
    invoke-static {p2, p0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 850
    .line 851
    .line 852
    move-result-object p0

    .line 853
    check-cast p0, Lbu4;

    .line 854
    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object p1

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 863
    .line 864
    .line 865
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v4, p1, v3}, Lo55;->H(Ljava/lang/String;Z)V

    .line 872
    .line 873
    .line 874
    new-instance p2, Li63;

    .line 875
    .line 876
    const/4 v0, 0x4

    .line 877
    invoke-direct {p2, v4, p0, p1, v0}, Li63;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v4, p2}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    .line 885
    .line 886
    return v3

    .line 887
    :pswitch_18
    move-object v4, p0

    .line 888
    sget-object p0, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 889
    .line 890
    invoke-static {p2, p0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 891
    .line 892
    .line 893
    move-result-object p0

    .line 894
    check-cast p0, Lvc5;

    .line 895
    .line 896
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v4, p0}, Lo55;->B(Lvc5;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    .line 904
    .line 905
    return v3

    .line 906
    :pswitch_19
    move-object v4, p0

    .line 907
    sget-object p0, Lvb5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 908
    .line 909
    invoke-static {p2, p0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 910
    .line 911
    .line 912
    move-result-object p0

    .line 913
    check-cast p0, Lvb5;

    .line 914
    .line 915
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 916
    .line 917
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 918
    .line 919
    .line 920
    move-result-object p1

    .line 921
    check-cast p1, Lvc5;

    .line 922
    .line 923
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v4, p0, p1}, Lo55;->o(Lvb5;Lvc5;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    .line 931
    .line 932
    return v3

    .line 933
    :pswitch_1a
    move-object v4, p0

    .line 934
    sget-object p0, Lbu4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 935
    .line 936
    invoke-static {p2, p0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 937
    .line 938
    .line 939
    move-result-object p0

    .line 940
    check-cast p0, Lbu4;

    .line 941
    .line 942
    sget-object p1, Lvc5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 943
    .line 944
    invoke-static {p2, p1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 945
    .line 946
    .line 947
    move-result-object p1

    .line 948
    check-cast p1, Lvc5;

    .line 949
    .line 950
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v4, p0, p1}, Lo55;->r(Lbu4;Lvc5;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    .line 958
    .line 959
    return v3

    .line 960
    nop

    .line 961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final F(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 5
    .line 6
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lj45;->B()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Lj45;->G(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final G(Lvc5;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lo55;->H(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 14
    .line 15
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p1, p1, Lvc5;->o:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lac5;->B(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final H(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    const-string v0, "Unknown calling package name \'"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lo55;->c:Lpb5;

    .line 8
    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    :try_start_0
    iget-object p2, p0, Lo55;->d:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    const-string p2, "com.google.android.gms"

    .line 18
    .line 19
    iget-object v1, p0, Lo55;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/4 v1, 0x1

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    iget-object p2, v2, Lpb5;->l:Lr45;

    .line 29
    .line 30
    iget-object p2, p2, Lr45;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {p2, v3}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    iget-object p2, v2, Lpb5;->l:Lr45;

    .line 43
    .line 44
    iget-object p2, p2, Lr45;->a:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p2, v3}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isUidGoogleSigned(I)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Lo55;->d:Ljava/lang/Boolean;

    .line 70
    .line 71
    :cond_2
    iget-object p2, p0, Lo55;->d:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object p2, p0, Lo55;->e:Ljava/lang/String;

    .line 81
    .line 82
    if-nez p2, :cond_4

    .line 83
    .line 84
    iget-object p2, v2, Lpb5;->l:Lr45;

    .line 85
    .line 86
    iget-object p2, p2, Lr45;->a:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    iput-object p1, p0, Lo55;->e:Ljava/lang/String;

    .line 99
    .line 100
    :cond_4
    iget-object p0, p0, Lo55;->e:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_5

    .line 107
    .line 108
    :goto_1
    return-void

    .line 109
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, "\'."

    .line 120
    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_2
    invoke-virtual {v2}, Lpb5;->c()La25;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    iget-object p2, p2, La25;->f:Lx15;

    .line 137
    .line 138
    invoke-static {p1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v0, "Measurement Service called with invalid calling package. appId"

    .line 143
    .line 144
    invoke-virtual {p2, p1, v0}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_6
    invoke-virtual {v2}, Lpb5;->c()La25;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    iget-object p0, p0, La25;->f:Lx15;

    .line 153
    .line 154
    const-string p1, "Measurement Service called without app package"

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance p0, Ljava/lang/SecurityException;

    .line 160
    .line 161
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0
.end method

.method public final I(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 5
    .line 6
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lj45;->B()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final b(Lvc5;Landroid/os/Bundle;Lv05;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v6, v0

    .line 11
    check-cast v6, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 14
    .line 15
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lk55;

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    move-object v4, p2

    .line 24
    move-object v5, p3

    .line 25
    invoke-direct/range {v1 .. v6}, Lk55;-><init>(Lo55;Lvc5;Landroid/os/Bundle;Lv05;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lo55;->H(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lo55;->c:Lpb5;

    .line 6
    .line 7
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, La55;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v2 .. v7}, La55;-><init>(Lo55;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lj45;->C(Ljava/util/concurrent/Callable;)Lf45;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/util/List;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lxb5;

    .line 55
    .line 56
    if-nez p4, :cond_1

    .line 57
    .line 58
    iget-object p3, p2, Lxb5;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p3}, Lac5;->Y(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-nez p3, :cond_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :goto_1
    move-object p0, v0

    .line 69
    goto :goto_3

    .line 70
    :catch_1
    move-exception v0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_2
    new-instance p3, Lvb5;

    .line 73
    .line 74
    invoke-direct {p3, p2}, Lvb5;-><init>(Lxb5;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-object p1

    .line 82
    :goto_3
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p1, p1, La25;->f:Lx15;

    .line 87
    .line 88
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const-string p3, "Failed to get user properties as. appId"

    .line 93
    .line 94
    invoke-virtual {p1, p2, p0, p3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 98
    .line 99
    return-object p0
.end method

.method public final e(Lvc5;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lvc5;->F:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lv45;

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lv45;-><init>(Lo55;Lvc5;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lo55;->F(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Lvc5;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p0, p3}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    iget-object v2, p3, Lvc5;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p3, p0, Lo55;->c:Lpb5;

    .line 10
    .line 11
    invoke-virtual {p3}, Lpb5;->d()Lj45;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    new-instance v0, La55;

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    move-object v1, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    invoke-direct/range {v0 .. v5}, La55;-><init>(Lo55;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v0}, Lj45;->C(Ljava/util/concurrent/Callable;)Lf45;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :goto_0
    move-object p0, v0

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    invoke-virtual {p3}, Lpb5;->c()La25;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, La25;->f:Lx15;

    .line 45
    .line 46
    const-string p2, "Failed to get conditional user properties"

    .line 47
    .line 48
    invoke-virtual {p1, p0, p2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 52
    .line 53
    return-object p0
.end method

.method public final h(Lvc5;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv45;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lv45;-><init>(Lo55;Lvc5;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final j(Lvc5;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lvc5;->F:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lv45;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lv45;-><init>(Lo55;Lvc5;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lo55;->F(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;ZLvc5;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p0, p4}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    iget-object v2, p4, Lvc5;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p4, p0, Lo55;->c:Lpb5;

    .line 10
    .line 11
    invoke-virtual {p4}, Lpb5;->d()Lj45;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    new-instance v0, La55;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v1, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    invoke-direct/range {v0 .. v5}, La55;-><init>(Lo55;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v0}, Lj45;->C(Ljava/util/concurrent/Callable;)Lf45;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/List;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Lxb5;

    .line 58
    .line 59
    if-nez p3, :cond_1

    .line 60
    .line 61
    iget-object v0, p2, Lxb5;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0}, Lac5;->Y(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :goto_1
    move-object p0, v0

    .line 72
    goto :goto_3

    .line 73
    :catch_1
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_2
    new-instance v0, Lvb5;

    .line 76
    .line 77
    invoke-direct {v0, p2}, Lvb5;-><init>(Lxb5;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-object p1

    .line 85
    :goto_3
    invoke-virtual {p4}, Lpb5;->c()La25;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, La25;->f:Lx15;

    .line 90
    .line 91
    invoke-static {v2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string p3, "Failed to query user properties. appId"

    .line 96
    .line 97
    invoke-virtual {p1, p2, p0, p3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 101
    .line 102
    return-object p0
.end method

.method public final m(Lvc5;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv45;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lv45;-><init>(Lo55;Lvc5;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final n(Lvc5;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lvc5;->F:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lv45;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lv45;-><init>(Lo55;Lvc5;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lo55;->F(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final o(Lvb5;Lvc5;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lo55;->G(Lvc5;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Li63;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-direct {v0, p0, p1, p2, v1}, Li63;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final p(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Lw45;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v1, p0

    .line 5
    move-wide v5, p1

    .line 6
    move-object v4, p3

    .line 7
    move-object v2, p4

    .line 8
    move-object v3, p5

    .line 9
    invoke-direct/range {v0 .. v7}, Lw45;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final q(Lfq4;Lvc5;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lfq4;->p:Lvb5;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lo55;->G(Lvc5;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lfq4;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lfq4;-><init>(Lfq4;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p2, Lvc5;->n:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, v0, Lfq4;->n:Ljava/lang/String;

    .line 20
    .line 21
    new-instance p1, Li63;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {p1, p0, v0, p2, v1}, Li63;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final r(Lbu4;Lvc5;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lo55;->G(Lvc5;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Li63;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, p0, p1, p2, v1}, Li63;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final s(Lvc5;Lpo4;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Li63;

    .line 5
    .line 6
    const/4 v4, 0x6

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Li63;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final t(Lvc5;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 5
    .line 6
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lt45;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lt45;-><init>(Lpb5;Lvc5;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lj45;->C(Ljava/util/concurrent/Callable;)Lf45;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v2, 0x7530

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catch_2
    move-exception v0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, La25;->f:Lx15;

    .line 40
    .line 41
    iget-object p1, p1, Lvc5;->n:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "Failed to get app instance id. appId"

    .line 48
    .line 49
    invoke-virtual {p0, p1, v0, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lo55;->H(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lo55;->c:Lpb5;

    .line 6
    .line 7
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, La55;

    .line 12
    .line 13
    const/4 v7, 0x3

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v2 .. v7}, La55;-><init>(Lo55;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lj45;->C(Ljava/util/concurrent/Callable;)Lf45;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    :goto_0
    move-object p0, v0

    .line 34
    goto :goto_1

    .line 35
    :catch_1
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, La25;->f:Lx15;

    .line 42
    .line 43
    const-string p2, "Failed to get conditional user properties as"

    .line 44
    .line 45
    invoke-virtual {p1, p0, p2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 49
    .line 50
    return-object p0
.end method

.method public final w(Lvc5;)Lms4;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lo55;->c:Lpb5;

    .line 10
    .line 11
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lt45;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v3, p0, p1, v4}, Lt45;-><init>(Lo55;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lj45;->D(Ljava/util/concurrent/Callable;)Lf45;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    const-wide/16 v2, 0x2710

    .line 28
    .line 29
    invoke-virtual {p0, v2, v3, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lms4;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-object p0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_2
    move-exception p0

    .line 41
    :goto_0
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p1, p1, La25;->f:Lx15;

    .line 46
    .line 47
    invoke-static {v0}, La25;->D(Ljava/lang/String;)Ly15;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Failed to get consent. appId"

    .line 52
    .line 53
    invoke-virtual {p1, v0, p0, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Lms4;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lms4;-><init>(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    return-object p0
.end method

.method public final x(Landroid/os/Bundle;Lvc5;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lo55;->G(Lvc5;)V

    .line 2
    .line 3
    .line 4
    iget-object v3, p2, Lvc5;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    new-instance v0, Le30;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v4, p2

    .line 16
    invoke-direct/range {v0 .. v6}, Le30;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lo55;->I(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
