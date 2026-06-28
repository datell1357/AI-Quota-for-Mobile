.class public final synthetic Lbb5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqi;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lbb5;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lbb5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget v0, p0, Lbb5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lbb5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/io/IOException;

    .line 9
    .line 10
    check-cast p1, Ljava/io/IOException;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_0
    check-cast p0, Lce5;

    .line 17
    .line 18
    check-cast p1, Lje5;

    .line 19
    .line 20
    iget-object p0, p0, Lce5;->e:Lhg;

    .line 21
    .line 22
    invoke-virtual {p0}, Lhg;->u()Ls0;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_1
    check-cast p0, Lgb5;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lgb5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_2
    check-cast p0, Lyc5;

    .line 39
    .line 40
    check-cast p1, Ljava/lang/Void;

    .line 41
    .line 42
    iget-object p0, p0, Lyc5;->e:Lcu3;

    .line 43
    .line 44
    invoke-interface {p0}, Lcu3;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 49
    .line 50
    invoke-static {p0}, Ltf1;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_3
    check-cast p0, Lui3;

    .line 56
    .line 57
    check-cast p1, Lrc5;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v0, Lt45;

    .line 63
    .line 64
    invoke-direct {v0, p0, p1}, Lt45;-><init>(Lui3;Lrc5;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lui3;->o:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lo75;

    .line 70
    .line 71
    invoke-virtual {p0}, Lo75;->a()Lwd2;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-instance p1, La34;

    .line 76
    .line 77
    invoke-direct {p1, v0}, La34;-><init>(Ljava/util/concurrent/Callable;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lwd2;->execute(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_4
    check-cast p0, Lqb5;

    .line 85
    .line 86
    check-cast p1, Lt85;

    .line 87
    .line 88
    iget p1, p1, Lt85;->n:I

    .line 89
    .line 90
    const/16 v0, 0x733d

    .line 91
    .line 92
    if-eq p1, v0, :cond_0

    .line 93
    .line 94
    const/16 v0, 0x7361

    .line 95
    .line 96
    if-eq p1, v0, :cond_0

    .line 97
    .line 98
    const/16 v0, 0x7362

    .line 99
    .line 100
    if-eq p1, v0, :cond_0

    .line 101
    .line 102
    const/16 v0, 0x7363

    .line 103
    .line 104
    if-eq p1, v0, :cond_0

    .line 105
    .line 106
    const/16 v0, 0x7364

    .line 107
    .line 108
    if-eq p1, v0, :cond_0

    .line 109
    .line 110
    const/16 v0, 0x7365

    .line 111
    .line 112
    if-eq p1, v0, :cond_0

    .line 113
    .line 114
    const/16 v0, 0x7366

    .line 115
    .line 116
    if-eq p1, v0, :cond_0

    .line 117
    .line 118
    const/16 v0, 0x7367

    .line 119
    .line 120
    if-eq p1, v0, :cond_0

    .line 121
    .line 122
    const/16 v0, 0x7368

    .line 123
    .line 124
    if-ne p1, v0, :cond_1

    .line 125
    .line 126
    :cond_0
    iget-object p1, p0, Lqb5;->h:Lui3;

    .line 127
    .line 128
    invoke-virtual {p1}, Lui3;->p()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_1

    .line 133
    .line 134
    invoke-virtual {p0}, Lqb5;->b()V

    .line 135
    .line 136
    .line 137
    :cond_1
    sget-object p0, Lap1;->o:Lap1;

    .line 138
    .line 139
    return-object p0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
