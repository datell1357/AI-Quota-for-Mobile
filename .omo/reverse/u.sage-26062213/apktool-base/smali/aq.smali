.class public final Laq;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgv0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Laq;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Laq;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Laq;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Laq;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Laq;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Laq;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lqe4;

    .line 11
    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    iget v0, p0, Lqe4;->t:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Lqe4;->t:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Llb4;->a:Ljava/lang/reflect/Field;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {v1, v0}, Lfb4;->c(Landroid/view/View;Llo2;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0}, Llb4;->g(Landroid/view/View;Lb70;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lqe4;->u:Lqr1;

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    check-cast p0, Ln14;

    .line 38
    .line 39
    check-cast v1, Lj14;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lj14;->b:Lws2;

    .line 45
    .line 46
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Li14;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, v0, Li14;->n:Lm14;

    .line 55
    .line 56
    iget-object p0, p0, Ln14;->j:Lgp3;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lgp3;->remove(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void

    .line 62
    :pswitch_1
    check-cast p0, Ln14;

    .line 63
    .line 64
    check-cast v1, Ln14;

    .line 65
    .line 66
    iget-object p0, p0, Ln14;->k:Lgp3;

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lgp3;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_2
    check-cast p0, Lvp;

    .line 73
    .line 74
    check-cast v1, Lcb0;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lvp;->b(Lnq0;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_3
    check-cast p0, Ltr3;

    .line 81
    .line 82
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lyh2;

    .line 103
    .line 104
    move-object v2, v1

    .line 105
    check-cast v2, Lwa0;

    .line 106
    .line 107
    invoke-virtual {v2}, Llk2;->b()Lei2;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2, v0}, Lei2;->c(Lyh2;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    return-void

    .line 116
    :pswitch_4
    check-cast p0, Lr12;

    .line 117
    .line 118
    iget-object p0, p0, Lr12;->p:Llg2;

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Llg2;->k(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_5
    check-cast p0, Lrq1;

    .line 125
    .line 126
    check-cast v1, Lpq1;

    .line 127
    .line 128
    iget-object p0, p0, Lrq1;->a:Lug2;

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lug2;->k(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_6
    check-cast p0, Lyh2;

    .line 135
    .line 136
    iget-object p0, p0, Lyh2;->u:Lai2;

    .line 137
    .line 138
    iget-object p0, p0, Lai2;->j:Lr22;

    .line 139
    .line 140
    check-cast v1, Lpt0;

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Lr22;->b(Lo22;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_7
    check-cast p0, Lvp;

    .line 147
    .line 148
    check-cast v1, Lra0;

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Lvp;->b(Lnq0;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
