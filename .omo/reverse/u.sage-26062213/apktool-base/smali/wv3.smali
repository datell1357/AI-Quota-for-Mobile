.class public final synthetic Lwv3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lwv3;->n:I

    .line 2
    .line 3
    iput p1, p0, Lwv3;->p:I

    .line 4
    .line 5
    iput-object p3, p0, Lwv3;->o:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 11
    iput p3, p0, Lwv3;->n:I

    iput-object p2, p0, Lwv3;->o:Ljava/lang/Object;

    iput p1, p0, Lwv3;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lwv3;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lwv3;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iget p0, p0, Lwv3;->p:I

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Ljava/util/Collection;

    .line 15
    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1, p0, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_0
    check-cast v4, Ljava/lang/String;

    .line 28
    .line 29
    check-cast p1, Ljb3;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string v0, "UPDATE workspec SET stop_reason=? WHERE id=?"

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    int-to-long v5, p0

    .line 41
    :try_start_0
    invoke-interface {p1, v3, v5, v6}, Lpb3;->h(IJ)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v2, v4}, Lpb3;->P(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lpb3;->c0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :pswitch_1
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    check-cast p1, Ljb3;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string v0, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    .line 67
    .line 68
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :try_start_1
    invoke-interface {p1, v3, v4}, Lpb3;->P(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    int-to-long v3, p0

    .line 76
    invoke-interface {p1, v2, v3, v4}, Lpb3;->h(IJ)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Lpb3;->c0()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :pswitch_2
    check-cast v4, Ljava/lang/String;

    .line 92
    .line 93
    check-cast p1, Ljb3;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    .line 99
    .line 100
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :try_start_2
    invoke-interface {p1, v3, v4}, Lpb3;->P(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    int-to-long v0, p0

    .line 108
    invoke-interface {p1, v2, v0, v1}, Lpb3;->h(IJ)V

    .line 109
    .line 110
    .line 111
    const-string p0, "work_spec_id"

    .line 112
    .line 113
    invoke-static {p1, p0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    const-string v0, "generation"

    .line 118
    .line 119
    invoke-static {p1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const-string v1, "system_id"

    .line 124
    .line 125
    invoke-static {p1, v1}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-interface {p1}, Lpb3;->c0()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_0

    .line 134
    .line 135
    invoke-interface {p1, p0}, Lpb3;->o(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-interface {p1, v0}, Lpb3;->getLong(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    long-to-int v0, v2

    .line 144
    invoke-interface {p1, v1}, Lpb3;->getLong(I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v1

    .line 148
    long-to-int v1, v1

    .line 149
    new-instance v2, Lvv3;

    .line 150
    .line 151
    invoke-direct {v2, v0, p0, v1}, Lvv3;-><init>(ILjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catchall_2
    move-exception p0

    .line 156
    goto :goto_1

    .line 157
    :cond_0
    const/4 v2, 0x0

    .line 158
    :goto_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 159
    .line 160
    .line 161
    return-object v2

    .line 162
    :goto_1
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
