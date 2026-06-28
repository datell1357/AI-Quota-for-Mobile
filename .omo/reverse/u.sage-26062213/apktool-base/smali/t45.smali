.class public final Lt45;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lo55;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p3, p0, Lt45;->a:I

    iput-object p2, p0, Lt45;->c:Ljava/lang/Object;

    iput-object p1, p0, Lt45;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpb5;Lvc5;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lt45;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lt45;->c:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lt45;->b:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Lui3;Lrc5;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lt45;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt45;->c:Ljava/lang/Object;

    iput-object p2, p0, Lt45;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lt45;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lt45;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lt45;->c:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lui3;

    .line 12
    .line 13
    check-cast v2, Lrc5;

    .line 14
    .line 15
    iget-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lo75;

    .line 18
    .line 19
    new-instance v3, Lpc4;

    .line 20
    .line 21
    const/16 v4, 0x19

    .line 22
    .line 23
    invoke-direct {v3, v4}, Lpc4;-><init>(I)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v4, v0, Lo75;->f:Lcu3;

    .line 27
    .line 28
    invoke-interface {v4}, Lcu3;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lgd5;

    .line 33
    .line 34
    iget-object v5, p0, Lui3;->p:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Landroid/net/Uri;

    .line 37
    .line 38
    new-instance v6, Lpc4;

    .line 39
    .line 40
    invoke-direct {v6, v2}, Lpc4;-><init>(Lsm4;)V

    .line 41
    .line 42
    .line 43
    filled-new-array {v3}, [Lpc4;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, v6, Lpc4;->p:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v4, v5, v6}, Lgd5;->a(Landroid/net/Uri;Lfd5;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v2

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception v2

    .line 59
    :goto_0
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 60
    .line 61
    invoke-virtual {v0}, Lo75;->a()Lwd2;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object p0, p0, Lui3;->q:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Ljava/lang/String;

    .line 68
    .line 69
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v4, "Failed to update snapshot for %s flags may be stale."

    .line 74
    .line 75
    invoke-static {v3, v0, v2, v4, p0}, Lgp4;->b(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-object v1

    .line 79
    :pswitch_0
    check-cast p0, Lvc5;

    .line 80
    .line 81
    iget-object v0, p0, Lvc5;->n:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    check-cast v2, Lpb5;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v3, Lx55;->p:Lx55;

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ly55;->i(Lx55;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lvc5;->F:Ljava/lang/String;

    .line 104
    .line 105
    const/16 v4, 0x64

    .line 106
    .line 107
    invoke-static {v4, v0}, Ly55;->c(ILjava/lang/String;)Ly55;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, v3}, Ly55;->i(Lx55;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_0
    invoke-virtual {v2, p0}, Lpb5;->c0(Lvc5;)Lm25;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Lm25;->F()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_3

    .line 127
    :cond_1
    :goto_2
    invoke-virtual {v2}, Lpb5;->c()La25;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    iget-object p0, p0, La25;->n:Lx15;

    .line 132
    .line 133
    const-string v0, "Analytics storage consent denied. Returning null app instance id"

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    return-object v1

    .line 139
    :pswitch_1
    check-cast v2, Lo55;

    .line 140
    .line 141
    iget-object v0, v2, Lo55;->c:Lpb5;

    .line 142
    .line 143
    invoke-virtual {v0}, Lpb5;->V()V

    .line 144
    .line 145
    .line 146
    check-cast p0, Lvc5;

    .line 147
    .line 148
    new-instance v0, Lms4;

    .line 149
    .line 150
    iget-object v1, v2, Lo55;->c:Lpb5;

    .line 151
    .line 152
    iget-object p0, p0, Lvc5;->n:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, p0}, Lpb5;->p0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-direct {v0, p0}, Lms4;-><init>(Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    :pswitch_2
    check-cast v2, Lo55;

    .line 163
    .line 164
    iget-object v0, v2, Lo55;->c:Lpb5;

    .line 165
    .line 166
    invoke-virtual {v0}, Lpb5;->V()V

    .line 167
    .line 168
    .line 169
    iget-object v0, v2, Lo55;->c:Lpb5;

    .line 170
    .line 171
    iget-object v0, v0, Lpb5;->c:Lat4;

    .line 172
    .line 173
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 174
    .line 175
    .line 176
    check-cast p0, Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, p0}, Lat4;->s0(Ljava/lang/String;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
