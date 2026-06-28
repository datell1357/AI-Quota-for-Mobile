.class public final Lt4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgv0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lt4;->a:I

    iput-object p1, p0, Lt4;->b:Ljava/lang/Object;

    iput-object p2, p0, Lt4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lt4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lpg2;Lpg2;Lpg2;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lt4;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lt4;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lt4;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lt4;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lt4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lt4;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lt4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lt4;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lgc3;

    .line 13
    .line 14
    iget-object v0, p0, Lgc3;->o:Lkg2;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v1, Llc3;

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lgc3;->n:Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {v1}, Llc3;->c()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void

    .line 44
    :pswitch_0
    check-cast p0, Lp22;

    .line 45
    .line 46
    invoke-interface {p0}, Lp22;->getLifecycle()Lh22;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast v2, Ll22;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lh22;->b(Lo22;)V

    .line 53
    .line 54
    .line 55
    check-cast v1, Lw33;

    .line 56
    .line 57
    iget-object p0, v1, Lw33;->n:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lzp;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lzp;->a()V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :pswitch_1
    check-cast p0, Lut0;

    .line 68
    .line 69
    check-cast v2, Lyh2;

    .line 70
    .line 71
    invoke-virtual {p0}, Llk2;->b()Lei2;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v2}, Lei2;->c(Lyh2;)V

    .line 76
    .line 77
    .line 78
    check-cast v1, Lgp3;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lgp3;->remove(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_2
    check-cast p0, Lgp3;

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Lgp3;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    check-cast v1, Lhe;

    .line 90
    .line 91
    iget-object p0, v1, Lhe;->d:Lkg2;

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_3
    check-cast p0, Lpg2;

    .line 98
    .line 99
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Ltu1;

    .line 104
    .line 105
    if-eqz p0, :cond_3

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-interface {p0, v0}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    sget-object p0, Lez3;->a:Lra3;

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    check-cast v2, Lpg2;

    .line 123
    .line 124
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Landroid/webkit/WebView;

    .line 129
    .line 130
    if-eqz p0, :cond_4

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 133
    .line 134
    .line 135
    :cond_4
    check-cast v1, Lpg2;

    .line 136
    .line 137
    invoke-interface {v1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Landroid/webkit/WebView;

    .line 142
    .line 143
    if-eqz p0, :cond_5

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 146
    .line 147
    .line 148
    :cond_5
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
