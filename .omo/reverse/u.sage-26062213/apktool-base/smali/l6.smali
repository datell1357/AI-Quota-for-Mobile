.class public final synthetic Ll6;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll6;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lbu1;I)V
    .locals 0

    .line 7
    iput p2, p0, Ll6;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget p0, p0, Ll6;->n:I

    .line 2
    .line 3
    sget-object v0, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object p0, Lr52;->a:Llc0;

    .line 10
    .line 11
    return-object v1

    .line 12
    :pswitch_0
    new-instance p0, Ln12;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v0}, Ln12;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    sget-object p0, Lnv1;->b:Lmv1;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_2
    sget-object p0, Lrw1;->b:Lqw1;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_3
    sget-object p0, Lhw1;->b:Lpy2;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_4
    sget-object p0, Lmw1;->b:Lii3;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_5
    sget-object p0, Lvw1;->b:Lii3;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_6
    return-object v0

    .line 35
    :pswitch_7
    new-instance p0, Lcw0;

    .line 36
    .line 37
    const/high16 v0, 0x42400000    # 48.0f

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcw0;-><init>(F)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_8
    sget-object p0, Lat1;->a:Lck1;

    .line 44
    .line 45
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_9
    sget-object p0, Lwr1;->a:Lis3;

    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_a
    sget-object p0, Lwp1;->a:Llc0;

    .line 52
    .line 53
    sget-object p0, Loo0;->a:Loo0;

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_b
    sget-object p0, Ln94;->a:Lnv3;

    .line 57
    .line 58
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ll23;

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_c
    sget-object p0, Lzu0;->a:Lzp0;

    .line 66
    .line 67
    sget-object p0, Ln92;->a:Lxi1;

    .line 68
    .line 69
    iget-object p0, p0, Lxi1;->s:Lxi1;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v0, "CompositionLocal LocalHostDefaultProvider not present"

    .line 75
    .line 76
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :pswitch_e
    :try_start_0
    sget-object p0, Lee1;->o:[Ljava/lang/String;

    .line 81
    .line 82
    sget-object p0, Lee1;->q:Lqz1;

    .line 83
    .line 84
    invoke-interface {p0}, Lqz1;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Ljava/lang/reflect/Method;

    .line 89
    .line 90
    if-eqz p0, :cond_0

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_0

    .line 97
    .line 98
    const-string v0, "beginTransaction"

    .line 99
    .line 100
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 101
    .line 102
    const-class v3, Landroid/database/sqlite/SQLiteTransactionListener;

    .line 103
    .line 104
    const-class v4, Landroid/os/CancellationSignal;

    .line 105
    .line 106
    filled-new-array {v2, v3, v2, v4}, [Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    .line 112
    .line 113
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    :cond_0
    return-object v1

    .line 115
    :pswitch_f
    :try_start_1
    const-class p0, Landroid/database/sqlite/SQLiteDatabase;

    .line 116
    .line 117
    const-string v0, "getThreadSession"

    .line 118
    .line 119
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    .line 126
    .line 127
    move-object v1, p0

    .line 128
    :catchall_1
    return-object v1

    .line 129
    :pswitch_10
    new-instance p0, Landroid/os/Handler;

    .line 130
    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :pswitch_11
    const/high16 p0, 0x3f800000    # 1.0f

    .line 140
    .line 141
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :pswitch_12
    const-string p0, "Unexpected call to default provider"

    .line 147
    .line 148
    invoke-static {p0}, Lwb0;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 149
    .line 150
    .line 151
    new-instance p0, Lv00;

    .line 152
    .line 153
    const/4 v0, 0x6

    .line 154
    invoke-direct {p0, v0}, Lv00;-><init>(I)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :pswitch_13
    sget-object p0, Ldc0;->a:Lis3;

    .line 159
    .line 160
    return-object v1

    .line 161
    :pswitch_14
    return-object v0

    .line 162
    :pswitch_15
    sget-object p0, La80;->a:Lis3;

    .line 163
    .line 164
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_16
    sget-object p0, Lnv;->a:Lis3;

    .line 168
    .line 169
    return-object v1

    .line 170
    :pswitch_17
    sget-object p0, Leg;->a:Llc0;

    .line 171
    .line 172
    sget-object p0, Lw13;->v:Lw13;

    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_18
    sget-object p0, Leg;->a:Llc0;

    .line 176
    .line 177
    sget-object p0, Lgq0;->a:Lgq0;

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_19
    sget-object p0, Lx7;->a:Lds2;

    .line 181
    .line 182
    sget-object p0, Lbo0;->a:Lbo0;

    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_1a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_1b
    sget-object p0, Ls13;->n:Lt1;

    .line 195
    .line 196
    sget-object p0, Ls13;->n:Lt1;

    .line 197
    .line 198
    invoke-virtual {p0}, Lt1;->a()Ljava/util/Random;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    const/high16 v0, 0x7fff0000

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    const/high16 v0, 0x10000

    .line 209
    .line 210
    add-int/2addr p0, v0

    .line 211
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
