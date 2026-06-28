.class public final Lus;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lb81;

.field public final synthetic p:Lpt;


# direct methods
.method public synthetic constructor <init>(Lb81;Lpt;I)V
    .locals 0

    .line 1
    iput p3, p0, Lus;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lus;->o:Lb81;

    .line 4
    .line 5
    iput-object p2, p0, Lus;->p:Lpt;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lus;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lus;->p:Lpt;

    .line 6
    .line 7
    iget-object v3, p0, Lus;->o:Lb81;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v6, Lri0;->n:Lri0;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const/high16 v8, -0x80000000

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    instance-of v0, p2, Lat;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    check-cast v0, Lat;

    .line 26
    .line 27
    iget v9, v0, Lat;->r:I

    .line 28
    .line 29
    and-int v10, v9, v8

    .line 30
    .line 31
    if-eqz v10, :cond_0

    .line 32
    .line 33
    sub-int/2addr v9, v8

    .line 34
    iput v9, v0, Lat;->r:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lat;

    .line 38
    .line 39
    invoke-direct {v0, p0, p2}, Lat;-><init>(Lus;Ldh0;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, v0, Lat;->q:Ljava/lang/Object;

    .line 43
    .line 44
    iget p2, v0, Lat;->r:I

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    if-ne p2, v7, :cond_1

    .line 49
    .line 50
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v1, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    check-cast p1, Lw3;

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Lpt;->a(Lw3;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    xor-int/2addr p0, v7

    .line 69
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iput v7, v0, Lat;->r:I

    .line 74
    .line 75
    invoke-interface {v3, p0, v0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-ne p0, v6, :cond_3

    .line 80
    .line 81
    move-object v1, v6

    .line 82
    :cond_3
    :goto_1
    return-object v1

    .line 83
    :pswitch_0
    instance-of v0, p2, Lts;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    move-object v0, p2

    .line 88
    check-cast v0, Lts;

    .line 89
    .line 90
    iget v9, v0, Lts;->r:I

    .line 91
    .line 92
    and-int v10, v9, v8

    .line 93
    .line 94
    if-eqz v10, :cond_4

    .line 95
    .line 96
    sub-int/2addr v9, v8

    .line 97
    iput v9, v0, Lts;->r:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    new-instance v0, Lts;

    .line 101
    .line 102
    invoke-direct {v0, p0, p2}, Lts;-><init>(Lus;Ldh0;)V

    .line 103
    .line 104
    .line 105
    :goto_2
    iget-object p0, v0, Lts;->q:Ljava/lang/Object;

    .line 106
    .line 107
    iget p2, v0, Lts;->r:I

    .line 108
    .line 109
    if-eqz p2, :cond_6

    .line 110
    .line 111
    if-ne p2, v7, :cond_5

    .line 112
    .line 113
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move-object v1, v4

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    check-cast p1, Lw3;

    .line 126
    .line 127
    invoke-virtual {v2, p1}, Lpt;->a(Lw3;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    iput v7, v0, Lts;->r:I

    .line 136
    .line 137
    invoke-interface {v3, p0, v0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    if-ne p0, v6, :cond_7

    .line 142
    .line 143
    move-object v1, v6

    .line 144
    :cond_7
    :goto_3
    return-object v1

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
