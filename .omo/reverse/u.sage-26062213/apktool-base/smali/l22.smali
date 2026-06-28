.class public final synthetic Ll22;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln22;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/io/Serializable;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Ll22;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Ll22;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ll22;->p:Ljava/io/Serializable;

    .line 6
    .line 7
    iput-object p3, p0, Ll22;->q:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final B(Lp22;Lf22;)V
    .locals 8

    .line 1
    iget p1, p0, Ll22;->n:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Ll22;->q:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Ll22;->p:Ljava/io/Serializable;

    .line 7
    .line 8
    iget-object p0, p0, Ll22;->o:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lxb2;

    .line 15
    .line 16
    check-cast v2, Lg22;

    .line 17
    .line 18
    check-cast v1, Ljc2;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lxb2;->a:Ljava/lang/Runnable;

    .line 24
    .line 25
    iget-object v4, p0, Lxb2;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    sget-object v5, Lf22;->Companion:Ld22;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x4

    .line 37
    const/4 v7, 0x3

    .line 38
    if-eq v5, v0, :cond_2

    .line 39
    .line 40
    if-eq v5, v7, :cond_1

    .line 41
    .line 42
    if-eq v5, v6, :cond_0

    .line 43
    .line 44
    move-object v5, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object v5, Lf22;->ON_RESUME:Lf22;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v5, Lf22;->ON_START:Lf22;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v5, Lf22;->ON_CREATE:Lf22;

    .line 53
    .line 54
    :goto_0
    if-ne p2, v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    sget-object v5, Lf22;->ON_DESTROY:Lf22;

    .line 64
    .line 65
    if-ne p2, v5, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lxb2;->b(Ljc2;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eq p0, v0, :cond_7

    .line 76
    .line 77
    if-eq p0, v7, :cond_6

    .line 78
    .line 79
    if-eq p0, v6, :cond_5

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    sget-object v3, Lf22;->ON_PAUSE:Lf22;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    sget-object v3, Lf22;->ON_STOP:Lf22;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    move-object v3, v5

    .line 89
    :goto_1
    if-ne p2, v3, :cond_8

    .line 90
    .line 91
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 95
    .line 96
    .line 97
    :cond_8
    :goto_2
    return-void

    .line 98
    :pswitch_0
    check-cast p0, Lw22;

    .line 99
    .line 100
    check-cast v2, Lw33;

    .line 101
    .line 102
    check-cast v1, Lpe1;

    .line 103
    .line 104
    sget-object p1, Lm22;->a:[I

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    aget p1, p1, p2

    .line 111
    .line 112
    const/4 p2, 0x1

    .line 113
    if-eq p1, p2, :cond_b

    .line 114
    .line 115
    if-eq p1, v0, :cond_9

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_9
    iget-object p0, v2, Lw33;->n:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lzp;

    .line 121
    .line 122
    if-eqz p0, :cond_a

    .line 123
    .line 124
    invoke-virtual {p0}, Lzp;->a()V

    .line 125
    .line 126
    .line 127
    :cond_a
    iput-object v3, v2, Lw33;->n:Ljava/lang/Object;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_b
    invoke-interface {v1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    iput-object p0, v2, Lw33;->n:Ljava/lang/Object;

    .line 135
    .line 136
    :goto_3
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
