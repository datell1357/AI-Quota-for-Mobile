.class public Lui3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqo4;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lp75;
.implements Ld25;


# static fields
.field public static r:Ljava/lang/Boolean;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    iput p1, p0, Lui3;->n:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    sget-object v0, Lis0;->l:Loy3;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lui3;->p:Ljava/lang/Object;

    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lui3;->p:Ljava/lang/Object;

    .line 48
    .line 49
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lui3;->q:Ljava/lang/Object;

    .line 60
    .line 61
    return-void

    .line 62
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lxk4;

    .line 70
    .line 71
    const-string v0, ""

    .line 72
    .line 73
    const-wide/16 v1, 0x0

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-direct {p1, v0, v1, v2, v3}, Lxk4;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    .line 80
    .line 81
    new-instance p1, Lxk4;

    .line 82
    .line 83
    invoke-direct {p1, v0, v1, v2, v3}, Lxk4;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lui3;->p:Ljava/lang/Object;

    .line 87
    .line 88
    new-instance p1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lui3;->q:Ljava/lang/Object;

    .line 94
    .line 95
    return-void

    .line 96
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance p1, Ljava/util/WeakHashMap;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    .line 105
    .line 106
    new-instance p1, Ljava/util/WeakHashMap;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lui3;->p:Ljava/lang/Object;

    .line 112
    .line 113
    new-instance p1, Ljava/util/WeakHashMap;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lui3;->q:Ljava/lang/Object;

    .line 119
    .line 120
    return-void

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x8 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lui3;->n:I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    .line 149
    iput-object p2, p0, Lui3;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lui3;->n:I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lr22;

    const/4 v1, 0x1

    .line 143
    invoke-direct {v0, p1, v1}, Lr22;-><init>(Lp22;Z)V

    .line 144
    iput-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 145
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lui3;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc54;Lui3;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lui3;->n:I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    .line 152
    iput-object p2, p0, Lui3;->p:Ljava/lang/Object;

    .line 153
    iget-object p1, p1, Lc54;->n:Ljava/lang/Object;

    .line 154
    iput-object p1, p0, Lui3;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 146
    iput p4, p0, Lui3;->n:I

    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    iput-object p2, p0, Lui3;->p:Ljava/lang/Object;

    iput-object p3, p0, Lui3;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Lui3;->n:I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lui3;

    const/16 v1, 0x8

    .line 124
    invoke-direct {v0, v1}, Lui3;-><init>(I)V

    .line 125
    iput-object v0, p0, Lui3;->p:Ljava/lang/Object;

    iput-object v0, p0, Lui3;->q:Ljava/lang/Object;

    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo75;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x11

    iput v0, p0, Lui3;->n:I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    iput-object p2, p0, Lui3;->q:Ljava/lang/Object;

    .line 132
    iget-object p1, p1, Lo75;->b:Landroid/content/Context;

    .line 133
    sget-object v0, Lld5;->a:Ljava/util/regex/Pattern;

    .line 134
    new-instance v0, Lhg;

    invoke-direct {v0, p1}, Lhg;-><init>(Landroid/content/Context;)V

    .line 135
    const-string p1, "phenotype"

    .line 136
    invoke-virtual {v0, p1}, Lhg;->v(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x4

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pb"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Lhg;->w(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lhg;->x()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lui3;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpb5;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 122
    iput p4, p0, Lui3;->n:I

    iput-object p2, p0, Lui3;->o:Ljava/lang/Object;

    iput-object p3, p0, Lui3;->p:Ljava/lang/Object;

    iput-object p1, p0, Lui3;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvl4;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const/16 p1, 0x12

    iput p1, p0, Lui3;->n:I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lui3;->o:Ljava/lang/Object;

    iput-object p3, p0, Lui3;->p:Ljava/lang/Object;

    iput-object p4, p0, Lui3;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxk4;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lui3;->n:I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui3;->o:Ljava/lang/Object;

    invoke-virtual {p1}, Lxk4;->a()Lxk4;

    move-result-object p1

    iput-object p1, p0, Lui3;->p:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 140
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lui3;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lzm4;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xd

    iput v0, p0, Lui3;->n:I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v0, Llr;->b:Lhr;

    .line 128
    iput-object v0, p0, Lui3;->o:Ljava/lang/Object;

    new-instance v0, Lpc4;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0, p1}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-static {v0}, Lc75;->M(Lcu3;)Lcu3;

    move-result-object p1

    iput-object p1, p0, Lui3;->p:Ljava/lang/Object;

    new-instance p1, Lpc4;

    const/16 v0, 0x12

    invoke-direct {p1, v0, p0, p2}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 130
    invoke-static {p1}, Lc75;->M(Lcu3;)Lcu3;

    move-result-object p1

    iput-object p1, p0, Lui3;->q:Ljava/lang/Object;

    return-void
.end method

.method public static h(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lui3;
    .locals 2

    .line 1
    new-instance v0, Lui3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v0, p0, p1}, Lui3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8

    .line 1
    iget p1, p0, Lui3;->n:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lui3;->p:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ltb5;

    .line 9
    .line 10
    iget-wide v0, p1, Ltb5;->a:J

    .line 11
    .line 12
    iget-object p1, p0, Lui3;->q:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lpb5;

    .line 15
    .line 16
    iget-object p0, p0, Lui3;->o:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lpb5;->d()Lj45;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    invoke-virtual {p5}, Lj45;->v()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lpb5;->l0()V

    .line 28
    .line 29
    .line 30
    const/4 p5, 0x0

    .line 31
    if-nez p4, :cond_0

    .line 32
    .line 33
    :try_start_0
    new-array p4, p5, [B

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    :goto_0
    const/16 v2, 0xc8

    .line 41
    .line 42
    if-eq p2, v2, :cond_1

    .line 43
    .line 44
    const/16 v2, 0xcc

    .line 45
    .line 46
    if-ne p2, v2, :cond_3

    .line 47
    .line 48
    move p2, v2

    .line 49
    :cond_1
    if-nez p3, :cond_3

    .line 50
    .line 51
    iget-object p3, p1, Lpb5;->c:Lat4;

    .line 52
    .line 53
    invoke-static {p3}, Lpb5;->T(Lab5;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    invoke-virtual {p3, p4}, Lat4;->C(Ljava/lang/Long;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lpb5;->c()La25;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iget-object p3, p3, La25;->n:Lx15;

    .line 68
    .line 69
    const-string p4, "Successfully uploaded batch from upload queue. appId, status"

    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p3, p0, p2, p4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p1, Lpb5;->b:Li25;

    .line 79
    .line 80
    invoke-static {p2}, Lpb5;->T(Lab5;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Li25;->z()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    iget-object p2, p1, Lpb5;->c:Lat4;

    .line 90
    .line 91
    invoke-static {p2}, Lpb5;->T(Lab5;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p0}, Lat4;->B(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Lpb5;->t(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p1}, Lpb5;->N()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    new-instance v2, Ljava/lang/String;

    .line 109
    .line 110
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 111
    .line 112
    invoke-direct {v2, p4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    const/16 v3, 0x20

    .line 120
    .line 121
    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    invoke-virtual {v2, p5, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    invoke-virtual {p1}, Lpb5;->c()La25;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v2, v2, La25;->k:Lx15;

    .line 134
    .line 135
    const-string v3, "Network upload failed. Will retry later. appId, status, error"

    .line 136
    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    if-nez p3, :cond_4

    .line 142
    .line 143
    move-object p3, p4

    .line 144
    :cond_4
    invoke-virtual {v2, v3, p0, p2, p3}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p1, Lpb5;->c:Lat4;

    .line 148
    .line 149
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p0, p2}, Lat4;->H(Ljava/lang/Long;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lpb5;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    :goto_1
    iput-boolean p5, p1, Lpb5;->u:Z

    .line 163
    .line 164
    invoke-virtual {p1}, Lpb5;->O()V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :goto_2
    iput-boolean p5, p1, Lpb5;->u:Z

    .line 169
    .line 170
    invoke-virtual {p1}, Lpb5;->O()V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :pswitch_0
    iget-object p1, p0, Lui3;->q:Ljava/lang/Object;

    .line 175
    .line 176
    move-object v0, p1

    .line 177
    check-cast v0, Lpb5;

    .line 178
    .line 179
    iget-object p1, p0, Lui3;->o:Ljava/lang/Object;

    .line 180
    .line 181
    move-object v5, p1

    .line 182
    check-cast v5, Ljava/lang/String;

    .line 183
    .line 184
    iget-object p0, p0, Lui3;->p:Ljava/lang/Object;

    .line 185
    .line 186
    move-object v6, p0

    .line 187
    check-cast v6, Ljava/util/ArrayList;

    .line 188
    .line 189
    const/4 v1, 0x1

    .line 190
    move v2, p2

    .line 191
    move-object v3, p3

    .line 192
    move-object v4, p4

    .line 193
    move-object v7, p5

    .line 194
    invoke-virtual/range {v0 .. v7}, Lpb5;->z(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lui3;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/accounts/Account;

    .line 9
    .line 10
    iget-object v1, p0, Lui3;->p:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroid/os/Bundle;

    .line 17
    .line 18
    check-cast p1, Ll45;

    .line 19
    .line 20
    check-cast p2, Lpw3;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lhb5;

    .line 27
    .line 28
    new-instance v2, Laf5;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, v3, p2}, Laf5;-><init>(ILpw3;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lnk4;->zza()Landroid/os/Parcel;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2, v2}, Liv4;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v0}, Liv4;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p0}, Liv4;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    invoke-virtual {p1, p0, p2}, Lnk4;->zzc(ILandroid/os/Parcel;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_0
    check-cast p2, Lpw3;

    .line 56
    .line 57
    check-cast p1, La75;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Ly65;

    .line 64
    .line 65
    new-instance p2, Ls65;

    .line 66
    .line 67
    iget-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lw65;

    .line 70
    .line 71
    iget-object v1, p0, Lui3;->q:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 74
    .line 75
    invoke-direct {p2, v0, v1}, Ls65;-><init>(Lw65;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lui3;->p:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1}, Lgu4;->F()Landroid/os/Parcel;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p2}, Lku4;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 90
    .line 91
    .line 92
    const/16 p0, 0x1c

    .line 93
    .line 94
    invoke-virtual {p1, p0, v0}, Lgu4;->G(ILandroid/os/Parcel;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public b(ILjava/lang/Throwable;[B)V
    .locals 9

    .line 1
    iget-object p3, p0, Lui3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p3, Lm75;

    .line 4
    .line 5
    invoke-virtual {p3}, Laz4;->v()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lui3;->q:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lua5;

    .line 11
    .line 12
    const/16 v1, 0xc8

    .line 13
    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0xcc

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x130

    .line 21
    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    move p1, v1

    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    .line 27
    iget-object p1, p3, Lib0;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lr45;

    .line 30
    .line 31
    iget-object p1, p1, Lr45;->f:La25;

    .line 32
    .line 33
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, La25;->n:Lx15;

    .line 37
    .line 38
    iget-wide v1, v0, Lua5;->n:J

    .line 39
    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string v1, "[sgtm] Upload succeeded for row_id"

    .line 45
    .line 46
    invoke-virtual {p1, p2, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lu75;->p:Lu75;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p3, Lib0;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lr45;

    .line 55
    .line 56
    iget-object v1, v1, Lr45;->f:La25;

    .line 57
    .line 58
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, La25;->i:Lx15;

    .line 62
    .line 63
    iget-wide v2, v0, Lua5;->n:J

    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "[sgtm] Upload failed for row_id. response, exception"

    .line 74
    .line 75
    invoke-virtual {v1, v4, v2, v3, p2}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-object p2, Le05;->u:Ld05;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p2, v1}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Ljava/lang/String;

    .line 86
    .line 87
    const-string v1, ","

    .line 88
    .line 89
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    sget-object p1, Lu75;->r:Lu75;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    sget-object p1, Lu75;->q:Lu75;

    .line 111
    .line 112
    :goto_0
    iget-object p0, p0, Lui3;->p:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    .line 116
    iget-object p2, p3, Lib0;->a:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p2, Lr45;

    .line 119
    .line 120
    invoke-virtual {p2}, Lr45;->o()Lo95;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-instance v3, Lpo4;

    .line 125
    .line 126
    iget-wide v5, v0, Lua5;->n:J

    .line 127
    .line 128
    iget v4, p1, Lu75;->n:I

    .line 129
    .line 130
    iget-wide v7, v0, Lua5;->s:J

    .line 131
    .line 132
    invoke-direct/range {v3 .. v8}, Lpo4;-><init>(IJJ)V

    .line 133
    .line 134
    .line 135
    move-wide v7, v5

    .line 136
    invoke-virtual {v2}, Laz4;->v()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Lj05;->w()V

    .line 140
    .line 141
    .line 142
    const/4 p2, 0x1

    .line 143
    invoke-virtual {v2, p2}, Lo95;->L(Z)Lvc5;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    new-instance v1, Li63;

    .line 151
    .line 152
    const/16 v5, 0x9

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    move-object v4, v3

    .line 156
    move-object v3, p2

    .line 157
    invoke-direct/range {v1 .. v6}, Li63;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v1}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    iget-object p2, p3, Lib0;->a:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p2, Lr45;

    .line 166
    .line 167
    iget-object p2, p2, Lr45;->f:La25;

    .line 168
    .line 169
    invoke-static {p2}, Lr45;->l(Lq55;)V

    .line 170
    .line 171
    .line 172
    iget-object p2, p2, La25;->n:Lx15;

    .line 173
    .line 174
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    const-string v0, "[sgtm] Updated status for row_id"

    .line 179
    .line 180
    invoke-virtual {p2, p3, p1, v0}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 188
    .line 189
    .line 190
    monitor-exit p0

    .line 191
    return-void

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    move-object p1, v0

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    throw p1
.end method

.method public c()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lc75;->w()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Luy3;->a:J

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lui3;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Loy3;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Loy3;->a(J)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ltz v0, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Loy3;->c:[Ljava/lang/Object;

    .line 31
    .line 32
    aget-object p0, p0, v0

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lui3;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Lui3;

    .line 12
    .line 13
    iget-object v1, p0, Lui3;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lxk4;

    .line 16
    .line 17
    invoke-virtual {v1}, Lxk4;->a()Lxk4;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lui3;-><init>(Lxk4;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    check-cast v3, Lxk4;

    .line 42
    .line 43
    iget-object v4, v0, Lui3;->q:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v3}, Lxk4;->a()Lxk4;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-object v0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public d(I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lui3;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lui3;->o:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lzf5;->E(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public e(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lui3;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lui3;->o:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lzf5;->H(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public f(IILog;)Landroid/graphics/Typeface;
    .locals 12

    .line 1
    iget-object v0, p0, Lui3;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    const/4 p1, 0x0

    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lui3;->q:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/util/TypedValue;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/util/TypedValue;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lui3;->q:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v2, v0

    .line 30
    check-cast v2, Landroid/content/Context;

    .line 31
    .line 32
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroid/util/TypedValue;

    .line 35
    .line 36
    sget-object v0, Lt73;->a:Ljava/lang/ThreadLocal;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :goto_0
    return-object p1

    .line 45
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-virtual {v4, v5, p0, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 51
    .line 52
    .line 53
    const-string v1, "ResourcesCompat"

    .line 54
    .line 55
    iget-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 56
    .line 57
    if-eqz v0, :cond_9

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const-string v0, "res/"

    .line 64
    .line 65
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v11, -0x3

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p3, v11}, Log;->a(I)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_3
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 78
    .line 79
    sget-object v8, Ls44;->b:Ls82;

    .line 80
    .line 81
    invoke-static {v4, v5, v6, v0, p2}, Ls44;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v8, v0}, Ls82;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/graphics/Typeface;

    .line 90
    .line 91
    const/16 v9, 0x11

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    new-instance p0, Landroid/os/Handler;

    .line 96
    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Lh7;

    .line 105
    .line 106
    invoke-direct {p1, v9, p3, v0}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    move-object p1, v0

    .line 113
    goto/16 :goto_7

    .line 114
    .line 115
    :cond_4
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v3, ".xml"

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0, v4}, Lon4;->G(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lgb1;

    .line 132
    .line 133
    .line 134
    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 135
    if-nez v3, :cond_5

    .line 136
    .line 137
    :try_start_1
    const-string p0, "Failed to find font-family tag"

    .line 138
    .line 139
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3, v11}, Log;->a(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .line 144
    .line 145
    goto/16 :goto_7

    .line 146
    .line 147
    :catch_0
    move-exception v0

    .line 148
    move-object p0, v0

    .line 149
    move-object p2, p3

    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :catch_1
    move-exception v0

    .line 153
    move-object p0, v0

    .line 154
    move-object p2, p3

    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_5
    :try_start_2
    iget v7, p0, Landroid/util/TypedValue;->assetCookie:I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 158
    .line 159
    const/4 v10, 0x1

    .line 160
    move v8, p2

    .line 161
    move-object v9, p3

    .line 162
    :try_start_3
    invoke-static/range {v2 .. v10}, Ls44;->a(Landroid/content/Context;Lgb1;Landroid/content/res/Resources;ILjava/lang/String;IILog;Z)Landroid/graphics/Typeface;

    .line 163
    .line 164
    .line 165
    move-result-object p1
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :catch_2
    move-exception v0

    .line 169
    move-object p2, v9

    .line 170
    :goto_1
    move-object p0, v0

    .line 171
    goto :goto_4

    .line 172
    :catch_3
    move-exception v0

    .line 173
    move-object p2, v9

    .line 174
    :goto_2
    move-object p0, v0

    .line 175
    goto :goto_5

    .line 176
    :catch_4
    move-exception v0

    .line 177
    move-object p2, p3

    .line 178
    goto :goto_1

    .line 179
    :catch_5
    move-exception v0

    .line 180
    move-object p2, p3

    .line 181
    goto :goto_2

    .line 182
    :cond_6
    move v7, p2

    .line 183
    move-object p2, p3

    .line 184
    :try_start_4
    iget p0, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 185
    .line 186
    move-object v3, v2

    .line 187
    sget-object v2, Ls44;->a:Lnt1;

    .line 188
    .line 189
    invoke-virtual/range {v2 .. v7}, Lnt1;->r(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    if-eqz p3, :cond_7

    .line 194
    .line 195
    invoke-static {v4, v5, v6, p0, v7}, Ls44;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v8, p0, p3}, Ls82;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    :cond_7
    if-eqz p3, :cond_8

    .line 203
    .line 204
    new-instance p0, Landroid/os/Handler;

    .line 205
    .line 206
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lh7;

    .line 214
    .line 215
    invoke-direct {v0, v9, p2, p3}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    .line 220
    .line 221
    :goto_3
    move-object p1, p3

    .line 222
    goto :goto_7

    .line 223
    :cond_8
    invoke-virtual {p2, v11}, Log;->a(I)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :catch_6
    move-exception v0

    .line 228
    goto :goto_1

    .line 229
    :catch_7
    move-exception v0

    .line 230
    goto :goto_2

    .line 231
    :goto_4
    const-string p3, "Failed to read xml resource "

    .line 232
    .line 233
    invoke-virtual {p3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-static {v1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :goto_5
    const-string p3, "Failed to parse xml resource "

    .line 242
    .line 243
    invoke-virtual {p3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    invoke-static {v1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .line 249
    .line 250
    :goto_6
    invoke-virtual {p2, v11}, Log;->a(I)V

    .line 251
    .line 252
    .line 253
    :goto_7
    return-object p1

    .line 254
    :cond_9
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 255
    .line 256
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v1, "Resource \""

    .line 267
    .line 268
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string p2, "\" ("

    .line 275
    .line 276
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string p2, ") is not a Font: "

    .line 283
    .line 284
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-direct {p1, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw p1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr3;

    .line 4
    .line 5
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lui3;->q:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lui3;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lui3;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lui3;->g()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public i(Lf22;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lui3;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Llq0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Llq0;->run()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Llq0;

    .line 11
    .line 12
    iget-object v1, p0, Lui3;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lr22;

    .line 15
    .line 16
    invoke-direct {v0, v1, p1}, Llq0;-><init>(Lr22;Lf22;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lui3;->q:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object p0, p0, Lui3;->p:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    iget-object p0, p0, Lui3;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-static {}, Lc75;->w()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Luy3;->a:J

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lui3;->q:Ljava/lang/Object;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, p0, Lui3;->p:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v3, p0, Lui3;->o:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Loy3;

    .line 26
    .line 27
    invoke-virtual {v3, v0, v1}, Loy3;->a(J)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-gez v4, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lui3;->o:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-virtual {v3, v0, v1, p1}, Loy3;->b(JLjava/lang/Object;)Loy3;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit v2

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :try_start_1
    iget-object p0, v3, Loy3;->c:[Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p1, p0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    monitor-exit v2

    .line 53
    return-void

    .line 54
    :goto_0
    monitor-exit v2

    .line 55
    throw p0
.end method

.method public l()Lic;
    .locals 15

    .line 1
    iget-object v0, p0, Lui3;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lui3;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lo75;

    .line 8
    .line 9
    iget-object v2, v1, Lo75;->f:Lcu3;

    .line 10
    .line 11
    iget-object v3, v1, Lo75;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v3}, Lc75;->W(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lrc5;->A()Lrc5;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, La13;

    .line 25
    .line 26
    const/16 v1, 0x11

    .line 27
    .line 28
    invoke-direct {v0, v4, v1, v4}, La13;-><init>(III)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lic;

    .line 32
    .line 33
    invoke-direct {v1, p0, v0}, Lic;-><init>(Lrc5;La13;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    const-class v3, Landroid/os/Process;

    .line 38
    .line 39
    sget-object v5, Lui3;->r:Ljava/lang/Boolean;

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v7, 0x1c

    .line 47
    .line 48
    if-lt v5, v7, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lfx2;->w()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sput-object v3, Lui3;->r:Ljava/lang/Boolean;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :try_start_0
    const-string v5, "isIsolated"

    .line 62
    .line 63
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    check-cast v3, Ljava/lang/Boolean;

    .line 75
    .line 76
    sput-object v3, Lui3;->r:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    sput-object v3, Lui3;->r:Ljava/lang/Boolean;

    .line 82
    .line 83
    :cond_2
    :goto_0
    sget-object v3, Lui3;->r:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_11

    .line 90
    .line 91
    iget-object v3, v1, Lo75;->g:Lyc5;

    .line 92
    .line 93
    invoke-virtual {v3}, Lyc5;->b()Lpc5;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget-object v5, v3, Lpc5;->c:Lzm4;

    .line 98
    .line 99
    sget-object v7, Lnm4;->r:Lnm4;

    .line 100
    .line 101
    sget-object v8, Ll75;->a:Ldi;

    .line 102
    .line 103
    const-string v8, "#"

    .line 104
    .line 105
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    const/4 v9, 0x0

    .line 110
    if-gez v8, :cond_4

    .line 111
    .line 112
    const-string v8, "@"

    .line 113
    .line 114
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-nez v8, :cond_3

    .line 119
    .line 120
    move-object v8, v0

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const-string p0, "Invalid package name: "

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object v6

    .line 132
    :cond_4
    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    :goto_1
    iget-boolean v10, v3, Lpc5;->h:Z

    .line 137
    .line 138
    const/4 v11, 0x4

    .line 139
    const/4 v12, 0x5

    .line 140
    if-eqz v10, :cond_9

    .line 141
    .line 142
    iget-boolean v10, v3, Lpc5;->a:Z

    .line 143
    .line 144
    if-eqz v10, :cond_8

    .line 145
    .line 146
    iget-object v10, v3, Lpc5;->b:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_8

    .line 153
    .line 154
    invoke-virtual {v5}, Lzm4;->c()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_7

    .line 159
    .line 160
    iget-object v7, v3, Lpc5;->f:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-nez v10, :cond_5

    .line 167
    .line 168
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_5

    .line 173
    .line 174
    move v7, v12

    .line 175
    goto :goto_2

    .line 176
    :cond_5
    iget-object v7, v3, Lpc5;->g:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_6

    .line 183
    .line 184
    const/4 v7, 0x6

    .line 185
    goto :goto_2

    .line 186
    :cond_6
    move v7, v9

    .line 187
    goto :goto_2

    .line 188
    :cond_7
    move v7, v11

    .line 189
    goto :goto_2

    .line 190
    :cond_8
    move v7, v4

    .line 191
    goto :goto_2

    .line 192
    :cond_9
    const/16 v7, 0xe

    .line 193
    .line 194
    :goto_2
    const/4 v8, 0x7

    .line 195
    if-eqz v7, :cond_a

    .line 196
    .line 197
    new-instance v3, La13;

    .line 198
    .line 199
    invoke-direct {v3, v7}, La13;-><init>(I)V

    .line 200
    .line 201
    .line 202
    new-instance v5, Lba5;

    .line 203
    .line 204
    invoke-direct {v5, v6, v3}, Lba5;-><init>(Li95;La13;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :cond_a
    :try_start_1
    iget-object v7, v3, Lpc5;->e:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_c

    .line 216
    .line 217
    iget-object v7, v1, Lo75;->h:Lcu3;

    .line 218
    .line 219
    invoke-interface {v7}, Lcu3;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Lcr2;

    .line 224
    .line 225
    invoke-virtual {v7}, Lcr2;->b()Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-nez v10, :cond_b

    .line 230
    .line 231
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 232
    .line 233
    invoke-virtual {v1}, Lo75;->a()Lwd2;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    const-string v7, "Unable to get GMS application info, using defaults."

    .line 238
    .line 239
    new-array v9, v9, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-static {v3, v5, v6, v7, v9}, Lgp4;->b(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object v3, Li95;->c:Li95;

    .line 245
    .line 246
    new-instance v5, La13;

    .line 247
    .line 248
    invoke-direct {v5, v4, v8, v4}, La13;-><init>(III)V

    .line 249
    .line 250
    .line 251
    new-instance v7, Lba5;

    .line 252
    .line 253
    invoke-direct {v7, v3, v5}, Lba5;-><init>(Li95;La13;)V

    .line 254
    .line 255
    .line 256
    :goto_3
    move-object v5, v7

    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :catch_1
    move-exception v3

    .line 260
    goto/16 :goto_6

    .line 261
    .line 262
    :cond_b
    invoke-virtual {v7}, Lcr2;->a()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 267
    .line 268
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 269
    .line 270
    :cond_c
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    .line 271
    .line 272
    iget-object v10, v3, Lpc5;->d:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 287
    .line 288
    .line 289
    move-result v14

    .line 290
    add-int/2addr v13, v14

    .line 291
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    add-int/2addr v13, v14

    .line 300
    new-instance v14, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    new-instance v10, Lui3;

    .line 319
    .line 320
    invoke-direct {v10, v5, v0}, Lui3;-><init>(Lzm4;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance v5, Landroid/net/Uri$Builder;

    .line 324
    .line 325
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v13, "file"

    .line 329
    .line 330
    invoke-virtual {v5, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-virtual {v10}, Lui3;->m()Ljava/io/File;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 347
    .line 348
    .line 349
    move-result v13

    .line 350
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 351
    .line 352
    .line 353
    move-result v14

    .line 354
    add-int/2addr v13, v14

    .line 355
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v14

    .line 359
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 360
    .line 361
    .line 362
    move-result v14

    .line 363
    add-int/2addr v13, v14

    .line 364
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 365
    .line 366
    .line 367
    move-result v14

    .line 368
    add-int/2addr v13, v14

    .line 369
    new-instance v14, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    new-instance v9, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 403
    .line 404
    invoke-direct {v9, v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-virtual {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    .line 417
    .line 418
    :try_start_2
    invoke-interface {v2}, Lcu3;->get()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    check-cast v9, Lgd5;

    .line 423
    .line 424
    new-instance v10, Lep1;

    .line 425
    .line 426
    iget-object v3, v3, Lpc5;->k:Lk95;

    .line 427
    .line 428
    invoke-virtual {v3}, Lk95;->t()Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    invoke-direct {v10, v3}, Lep1;-><init>(Z)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v9, v5, v10}, Lgd5;->a(Landroid/net/Uri;Lfd5;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    check-cast v3, Li95;

    .line 440
    .line 441
    new-instance v5, La13;

    .line 442
    .line 443
    const/4 v9, 0x2

    .line 444
    invoke-direct {v5, v12, v9, v4}, La13;-><init>(III)V

    .line 445
    .line 446
    .line 447
    new-instance v9, Lba5;

    .line 448
    .line 449
    invoke-direct {v9, v3, v5}, Lba5;-><init>(Li95;La13;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lfo4; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    .line 451
    .line 452
    :try_start_3
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 453
    .line 454
    .line 455
    move-object v5, v9

    .line 456
    goto :goto_7

    .line 457
    :catchall_0
    move-exception v3

    .line 458
    goto :goto_5

    .line 459
    :catch_2
    move-exception v3

    .line 460
    :try_start_4
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 461
    .line 462
    invoke-virtual {v1}, Lo75;->a()Lwd2;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    const-string v10, "Failed to parse snapshot from shared storage for %s"

    .line 467
    .line 468
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v12

    .line 472
    invoke-static {v5, v9, v3, v10, v12}, Lgp4;->b(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    new-instance v3, La13;

    .line 476
    .line 477
    const/16 v5, 0x9

    .line 478
    .line 479
    invoke-direct {v3, v5}, La13;-><init>(I)V

    .line 480
    .line 481
    .line 482
    new-instance v5, Lba5;

    .line 483
    .line 484
    invoke-direct {v5, v6, v3}, Lba5;-><init>(Li95;La13;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 485
    .line 486
    .line 487
    :goto_4
    :try_start_5
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 488
    .line 489
    .line 490
    goto :goto_7

    .line 491
    :catch_3
    :try_start_6
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 492
    .line 493
    invoke-virtual {v1}, Lo75;->a()Lwd2;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    const-string v9, "Shared storage file not found for %s"

    .line 498
    .line 499
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    invoke-static {v3, v5, v6, v9, v10}, Lgp4;->b(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    new-instance v3, La13;

    .line 507
    .line 508
    const/16 v5, 0x8

    .line 509
    .line 510
    invoke-direct {v3, v5}, La13;-><init>(I)V

    .line 511
    .line 512
    .line 513
    new-instance v5, Lba5;

    .line 514
    .line 515
    invoke-direct {v5, v6, v3}, Lba5;-><init>(Li95;La13;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 516
    .line 517
    .line 518
    goto :goto_4

    .line 519
    :goto_5
    :try_start_7
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 520
    .line 521
    .line 522
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 523
    :goto_6
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 524
    .line 525
    invoke-virtual {v1}, Lo75;->a()Lwd2;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    const-string v10, "Failed to read shared file for %s"

    .line 534
    .line 535
    invoke-static {v5, v7, v3, v10, v9}, Lgp4;->b(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    sget-object v3, Li95;->c:Li95;

    .line 539
    .line 540
    new-instance v5, La13;

    .line 541
    .line 542
    const/16 v7, 0xa

    .line 543
    .line 544
    invoke-direct {v5, v4, v7, v4}, La13;-><init>(III)V

    .line 545
    .line 546
    .line 547
    new-instance v7, Lba5;

    .line 548
    .line 549
    invoke-direct {v7, v3, v5}, Lba5;-><init>(Li95;La13;)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_3

    .line 553
    .line 554
    :goto_7
    iget-object v3, v5, Lba5;->b:La13;

    .line 555
    .line 556
    iget-object v5, v5, Lba5;->a:Li95;

    .line 557
    .line 558
    if-eqz v5, :cond_d

    .line 559
    .line 560
    new-instance p0, Lic;

    .line 561
    .line 562
    invoke-direct {p0, v5, v3}, Lic;-><init>(Li95;La13;)V

    .line 563
    .line 564
    .line 565
    return-object p0

    .line 566
    :cond_d
    iget v3, v3, La13;->c:I

    .line 567
    .line 568
    :try_start_8
    invoke-interface {v2}, Lcu3;->get()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    check-cast v2, Lgd5;

    .line 573
    .line 574
    iget-object v5, p0, Lui3;->p:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v5, Landroid/net/Uri;

    .line 577
    .line 578
    invoke-static {}, Lrc5;->A()Lrc5;

    .line 579
    .line 580
    .line 581
    move-result-object v7

    .line 582
    invoke-virtual {v7, v8}, Lrn4;->s(I)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v7

    .line 586
    check-cast v7, Lxo4;

    .line 587
    .line 588
    sget-object v8, Lkn4;->a:Lkn4;

    .line 589
    .line 590
    sget v8, Lum4;->a:I

    .line 591
    .line 592
    sget-object v8, Lkn4;->b:Lkn4;

    .line 593
    .line 594
    invoke-virtual {v2, v5}, Lgd5;->b(Landroid/net/Uri;)Led5;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-static {v2}, Lhu4;->c(Led5;)Ljava/io/InputStream;

    .line 599
    .line 600
    .line 601
    move-result-object v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 602
    :try_start_9
    check-cast v7, Lqn4;

    .line 603
    .line 604
    invoke-virtual {v7, v2, v8}, Lqn4;->a(Ljava/io/InputStream;Lkn4;)Lrn4;

    .line 605
    .line 606
    .line 607
    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 608
    if-eqz v2, :cond_e

    .line 609
    .line 610
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 611
    .line 612
    .line 613
    :cond_e
    check-cast v5, Lrc5;

    .line 614
    .line 615
    new-instance v2, La13;

    .line 616
    .line 617
    invoke-direct {v2, v11, v3, v4}, La13;-><init>(III)V

    .line 618
    .line 619
    .line 620
    new-instance v3, Lic;

    .line 621
    .line 622
    invoke-direct {v3, v5, v2}, Lic;-><init>(Lrc5;La13;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    .line 623
    .line 624
    .line 625
    goto :goto_9

    .line 626
    :catchall_1
    move-exception v3

    .line 627
    if-eqz v2, :cond_f

    .line 628
    .line 629
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 630
    .line 631
    .line 632
    goto :goto_8

    .line 633
    :catchall_2
    move-exception v2

    .line 634
    :try_start_c
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 635
    .line 636
    .line 637
    :cond_f
    :goto_8
    throw v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 638
    :catch_4
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 639
    .line 640
    invoke-virtual {v1}, Lo75;->a()Lwd2;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    const-string v3, "Unable to retrieve flag snapshot for %s, using defaults."

    .line 649
    .line 650
    invoke-static {v2, v1, v6, v3, v0}, Lgp4;->b(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p0}, Lui3;->p()Z

    .line 654
    .line 655
    .line 656
    move-result p0

    .line 657
    if-eqz p0, :cond_10

    .line 658
    .line 659
    sget-object p0, Li95;->c:Li95;

    .line 660
    .line 661
    new-instance v0, La13;

    .line 662
    .line 663
    const/16 v1, 0x10

    .line 664
    .line 665
    invoke-direct {v0, v4, v1, v4}, La13;-><init>(III)V

    .line 666
    .line 667
    .line 668
    new-instance v3, Lic;

    .line 669
    .line 670
    invoke-direct {v3, p0, v0}, Lic;-><init>(Li95;La13;)V

    .line 671
    .line 672
    .line 673
    goto :goto_9

    .line 674
    :cond_10
    invoke-static {}, Lrc5;->A()Lrc5;

    .line 675
    .line 676
    .line 677
    move-result-object p0

    .line 678
    new-instance v0, La13;

    .line 679
    .line 680
    const/16 v1, 0xb

    .line 681
    .line 682
    invoke-direct {v0, v4, v1, v4}, La13;-><init>(III)V

    .line 683
    .line 684
    .line 685
    new-instance v3, Lic;

    .line 686
    .line 687
    invoke-direct {v3, p0, v0}, Lic;-><init>(Lrc5;La13;)V

    .line 688
    .line 689
    .line 690
    :goto_9
    return-object v3

    .line 691
    :cond_11
    invoke-static {}, Lrc5;->A()Lrc5;

    .line 692
    .line 693
    .line 694
    move-result-object p0

    .line 695
    new-instance v0, La13;

    .line 696
    .line 697
    const/16 v1, 0x12

    .line 698
    .line 699
    invoke-direct {v0, v4, v1, v4}, La13;-><init>(III)V

    .line 700
    .line 701
    .line 702
    new-instance v1, Lic;

    .line 703
    .line 704
    invoke-direct {v1, p0, v0}, Lic;-><init>(Lrc5;La13;)V

    .line 705
    .line 706
    .line 707
    return-object v1
.end method

.method public m()Ljava/io/File;
    .locals 5

    .line 1
    iget-object v0, p0, Lui3;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcu3;

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-interface {v0}, Lcu3;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcu3;

    .line 16
    .line 17
    invoke-interface {p0}, Lcu3;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    add-int/2addr v2, v3

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x3

    .line 45
    .line 46
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const-string v2, "/"

    .line 50
    .line 51
    const-string v4, ".pb"

    .line 52
    .line 53
    invoke-static {v3, v0, v2, p0, v4}, Lxw1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v1
.end method

.method public n(Lzm4;Ljava/util/Set;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    sget-object v0, Lwu4;->p:Lwu4;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-class v0, Lwu4;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v3, Lwu4;->p:Lwu4;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    new-instance v3, Lwu4;

    .line 31
    .line 32
    invoke-direct {v3, v2}, Lwu4;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lwu4;->p:Lwu4;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit v0

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_2
    sget-object v0, Lwu4;->p:Lwu4;

    .line 45
    .line 46
    new-instance v3, Lny4;

    .line 47
    .line 48
    const/16 v4, 0x17

    .line 49
    .line 50
    invoke-direct {v3, v4}, Lny4;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lwu4;->o:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1}, Lzm4;->l()[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, Lui3;->p:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    new-instance v3, Lpa5;

    .line 69
    .line 70
    invoke-direct {v3, p1}, Lpa5;-><init>([B)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p3, v3}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    :cond_3
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_b

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p0, Lui3;->q:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    .line 96
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    .line 98
    new-instance v5, Lra5;

    .line 99
    .line 100
    invoke-direct {v5, p3, p1}, Lra5;-><init>(Ljava/lang/String;[B)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    instance-of v4, v3, Lra5;

    .line 119
    .line 120
    if-eqz v4, :cond_6

    .line 121
    .line 122
    move-object v4, v3

    .line 123
    check-cast v4, Lra5;

    .line 124
    .line 125
    iget-object v5, v4, Lra5;->n:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_4

    .line 132
    .line 133
    invoke-virtual {v4, p1}, Lra5;->a([B)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_4
    new-instance v5, Lra5;

    .line 138
    .line 139
    invoke-direct {v5, p3, p1}, Lra5;-><init>(Ljava/lang/String;[B)V

    .line 140
    .line 141
    .line 142
    iget-object v6, v4, Lra5;->n:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    const/4 v7, 0x2

    .line 149
    if-gez v6, :cond_5

    .line 150
    .line 151
    new-array v6, v7, [Lra5;

    .line 152
    .line 153
    aput-object v5, v6, v2

    .line 154
    .line 155
    aput-object v4, v6, v1

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_5
    new-array v6, v7, [Lra5;

    .line 159
    .line 160
    aput-object v4, v6, v2

    .line 161
    .line 162
    aput-object v5, v6, v1

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_6
    move-object v4, v3

    .line 166
    check-cast v4, [Lra5;

    .line 167
    .line 168
    invoke-static {v4, p3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-ltz v5, :cond_7

    .line 173
    .line 174
    aget-object v0, v4, v5

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lra5;->a([B)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    not-int v5, v5

    .line 181
    array-length v6, v4

    .line 182
    add-int/lit8 v7, v6, 0x1

    .line 183
    .line 184
    sub-int/2addr v6, v5

    .line 185
    if-nez v6, :cond_8

    .line 186
    .line 187
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, [Lra5;

    .line 192
    .line 193
    move-object v6, v4

    .line 194
    goto :goto_5

    .line 195
    :cond_8
    new-array v7, v7, [Lra5;

    .line 196
    .line 197
    invoke-static {v4, v2, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v8, v5, 0x1

    .line 201
    .line 202
    invoke-static {v4, v5, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    .line 204
    .line 205
    move-object v6, v7

    .line 206
    :goto_5
    new-instance v4, Lra5;

    .line 207
    .line 208
    invoke-direct {v4, p3, p1}, Lra5;-><init>(Ljava/lang/String;[B)V

    .line 209
    .line 210
    .line 211
    aput-object v4, v6, v5

    .line 212
    .line 213
    :cond_9
    :goto_6
    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_a

    .line 218
    .line 219
    goto/16 :goto_3

    .line 220
    .line 221
    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    if-eq v4, v3, :cond_9

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_b
    return-void
.end method

.method public o(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lui3;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lui3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lui3;->q:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lui3;

    .line 11
    .line 12
    iput-object v0, v1, Lui3;->q:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lui3;->q:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p1, v0, Lui3;->p:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p2, v0, Lui3;->o:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lui3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lo75;

    .line 4
    .line 5
    iget-object p0, p0, Lo75;->g:Lyc5;

    .line 6
    .line 7
    invoke-virtual {p0}, Lyc5;->c()Lm95;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lm95;->v()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lm95;->A()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/util/AbstractCollection;

    .line 22
    .line 23
    sget-object v0, Lnm4;->r:Lnm4;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lui3;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lui3;->o:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x7b

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lui3;->p:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lui3;

    .line 33
    .line 34
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lui3;

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    :goto_0
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lui3;->p:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lui3;->o:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x3d

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    add-int/lit8 v2, v2, -0x1

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Lui3;

    .line 98
    .line 99
    const-string v1, ", "

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/16 p0, 0x7d

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lqo4;

    .line 4
    .line 5
    invoke-interface {v0}, Lqo4;->zza()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lui3;->p:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lqo4;

    .line 12
    .line 13
    invoke-interface {v1}, Lqo4;->zza()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lev4;

    .line 18
    .line 19
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lgt4;

    .line 22
    .line 23
    iget-object p0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Ldi2;

    .line 26
    .line 27
    iget-object p0, p0, Ldi2;->o:Landroid/content/Context;

    .line 28
    .line 29
    new-instance v1, Lk05;

    .line 30
    .line 31
    check-cast v0, Lwc5;

    .line 32
    .line 33
    invoke-direct {v1, v0, p0}, Lk05;-><init>(Lwc5;Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method
