.class public final synthetic Lsw0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:F

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLs33;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsw0;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lsw0;->o:F

    .line 8
    .line 9
    iput-object p2, p0, Lsw0;->p:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ln14;F)V
    .locals 1

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lsw0;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsw0;->p:Ljava/lang/Object;

    iput p2, p0, Lsw0;->o:F

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lsw0;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget v3, p0, Lsw0;->o:F

    .line 6
    .line 7
    iget-object p0, p0, Lsw0;->p:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Ln14;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-virtual {p0}, Ln14;->g()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v0, p0, Ln14;->h:Lus2;

    .line 25
    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Lus2;->g()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    const-wide/high16 v8, -0x8000000000000000L

    .line 33
    .line 34
    cmp-long p1, v6, v8

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v4, v5}, Lus2;->h(J)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Ln14;->a:Lib0;

    .line 42
    .line 43
    iget-object p1, p1, Lib0;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lws2;

    .line 46
    .line 47
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1, v6}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {v0}, Lus2;->g()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    sub-long/2addr v4, v6

    .line 57
    const/4 p1, 0x0

    .line 58
    cmpg-float p1, v3, p1

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    long-to-double v4, v4

    .line 64
    float-to-double v6, v3

    .line 65
    div-double/2addr v4, v6

    .line 66
    invoke-static {v4, v5}, Lis0;->W(D)J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    :goto_0
    invoke-virtual {p0, v4, v5}, Ln14;->n(J)V

    .line 71
    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    move v1, v2

    .line 76
    :cond_2
    invoke-virtual {p0, v1, v4, v5}, Ln14;->h(ZJ)V

    .line 77
    .line 78
    .line 79
    :cond_3
    sget-object p0, Lt64;->a:Lt64;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_0
    check-cast p0, Ls33;

    .line 83
    .line 84
    check-cast p1, Lbx0;

    .line 85
    .line 86
    invoke-interface {p1}, Lwg1;->o0()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v4, "waiting"

    .line 91
    .line 92
    invoke-static {v0, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-interface {p1}, Lbx0;->i()Lhr2;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-nez v4, :cond_5

    .line 101
    .line 102
    :cond_4
    move p1, v1

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-interface {p1}, Lbx0;->i()Lhr2;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget v4, Ldx0;->a:I

    .line 112
    .line 113
    sget-object v4, Lhr2;->o:Lhr2;

    .line 114
    .line 115
    const/high16 v5, 0x41f00000    # 30.0f

    .line 116
    .line 117
    if-ne p1, v4, :cond_6

    .line 118
    .line 119
    cmpg-float p1, v3, v5

    .line 120
    .line 121
    if-gtz p1, :cond_4

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    cmpl-float p1, v3, v5

    .line 125
    .line 126
    if-lez p1, :cond_4

    .line 127
    .line 128
    const/high16 p1, 0x42b40000    # 90.0f

    .line 129
    .line 130
    cmpg-float p1, v3, p1

    .line 131
    .line 132
    if-gtz p1, :cond_4

    .line 133
    .line 134
    :goto_1
    move p1, v2

    .line 135
    :goto_2
    iget-boolean v3, p0, Ls33;->n:Z

    .line 136
    .line 137
    if-nez v3, :cond_7

    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    :cond_7
    move v1, v2

    .line 144
    :cond_8
    iput-boolean v1, p0, Ls33;->n:Z

    .line 145
    .line 146
    xor-int/lit8 p0, v1, 0x1

    .line 147
    .line 148
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
