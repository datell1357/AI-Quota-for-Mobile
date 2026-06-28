.class public final Lea5;
.super Let4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ls55;I)V
    .locals 0

    .line 1
    iput p3, p0, Lea5;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lea5;->f:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Let4;-><init>(Ls55;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lea5;->e:I

    .line 2
    .line 3
    iget-object p0, p0, Lea5;->f:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lpb5;

    .line 9
    .line 10
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lj45;->v()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lpb5;->q:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iput-wide v1, p0, Lpb5;->I:J

    .line 36
    .line 37
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, La25;->n:Lx15;

    .line 42
    .line 43
    const-string v2, "Sending trigger URI notification to app"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/content/Intent;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lpb5;->l:Lr45;

    .line 62
    .line 63
    iget-object v0, v0, Lr45;->a:Landroid/content/Context;

    .line 64
    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v3, 0x22

    .line 68
    .line 69
    if-ge v2, v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Ld80;->g()Landroid/app/BroadcastOptions;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Ld80;->h(Landroid/app/BroadcastOptions;)Landroid/app/BroadcastOptions;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Ld80;->k(Landroid/app/BroadcastOptions;)Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Ld80;->p(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lpb5;->H()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_0
    check-cast p0, Lqa5;

    .line 95
    .line 96
    invoke-virtual {p0}, Lqa5;->A()V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lr45;

    .line 102
    .line 103
    iget-object v0, v0, Lr45;->f:La25;

    .line 104
    .line 105
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v0, La25;->n:Lx15;

    .line 109
    .line 110
    const-string v1, "Starting upload from DelayedRunnable"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lta5;->b:Lpb5;

    .line 116
    .line 117
    invoke-virtual {p0}, Lpb5;->q()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_1
    check-cast p0, Lx23;

    .line 122
    .line 123
    iget-object v0, p0, Lx23;->q:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Lia5;

    .line 126
    .line 127
    invoke-virtual {v0}, Laz4;->v()V

    .line 128
    .line 129
    .line 130
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lr45;

    .line 133
    .line 134
    iget-object v1, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 135
    .line 136
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0, v3, v3, v1, v2}, Lx23;->i(ZZJ)Z

    .line 142
    .line 143
    .line 144
    iget-object p0, v0, Lr45;->n:Lbx4;

    .line 145
    .line 146
    invoke-static {p0}, Lr45;->i(Laz4;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 150
    .line 151
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    invoke-virtual {p0, v0, v1}, Lbx4;->y(J)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
