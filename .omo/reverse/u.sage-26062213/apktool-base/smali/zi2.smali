.class public final synthetic Lzi2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Lbg2;

.field public final synthetic o:Lwa0;

.field public final synthetic p:Lpe1;

.field public final synthetic q:Lpe1;

.field public final synthetic r:Lpe1;

.field public final synthetic s:Ltr3;

.field public final synthetic t:Lpg2;


# direct methods
.method public synthetic constructor <init>(Lbg2;Lwa0;Lpe1;Lpe1;Lpe1;Ltr3;Lpg2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzi2;->n:Lbg2;

    .line 5
    .line 6
    iput-object p2, p0, Lzi2;->o:Lwa0;

    .line 7
    .line 8
    iput-object p3, p0, Lzi2;->p:Lpe1;

    .line 9
    .line 10
    iput-object p4, p0, Lzi2;->q:Lpe1;

    .line 11
    .line 12
    iput-object p5, p0, Lzi2;->r:Lpe1;

    .line 13
    .line 14
    iput-object p6, p0, Lzi2;->s:Ltr3;

    .line 15
    .line 16
    iput-object p7, p0, Lzi2;->t:Lpg2;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lbe;

    .line 2
    .line 3
    iget-object v0, p0, Lzi2;->s:Ltr3;

    .line 4
    .line 5
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Lk14;->b()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-interface {p1}, Lk14;->b()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lyh2;

    .line 27
    .line 28
    iget-object v0, v0, Lyh2;->s:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lzi2;->n:Lbg2;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lbg2;->b(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ltz v3, :cond_0

    .line 37
    .line 38
    iget-object v0, v2, Lbg2;->c:[F

    .line 39
    .line 40
    aget v1, v0, v3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v2, v0, v1}, Lbg2;->d(Ljava/lang/String;F)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {p1}, Lk14;->c()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lyh2;

    .line 51
    .line 52
    iget-object v0, v0, Lyh2;->s:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {p1}, Lk14;->b()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lyh2;

    .line 59
    .line 60
    iget-object v3, v3, Lyh2;->s:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    iget-object v0, p0, Lzi2;->o:Lwa0;

    .line 70
    .line 71
    iget-object v0, v0, Lwa0;->c:Lws2;

    .line 72
    .line 73
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/high16 v3, 0x3f800000    # 1.0f

    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lzi2;->t:Lpg2;

    .line 88
    .line 89
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    add-float/2addr v1, v3

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    :goto_1
    sub-float/2addr v1, v3

    .line 105
    :goto_2
    invoke-interface {p1}, Lk14;->c()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lyh2;

    .line 110
    .line 111
    iget-object v0, v0, Lyh2;->s:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v2, v0, v1}, Lbg2;->d(Ljava/lang/String;F)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lng0;

    .line 117
    .line 118
    iget-object v2, p0, Lzi2;->p:Lpe1;

    .line 119
    .line 120
    invoke-interface {v2, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lo11;

    .line 125
    .line 126
    iget-object v3, p0, Lzi2;->q:Lpe1;

    .line 127
    .line 128
    invoke-interface {v3, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Ly31;

    .line 133
    .line 134
    iget-object p0, p0, Lzi2;->r:Lpe1;

    .line 135
    .line 136
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Lrn3;

    .line 141
    .line 142
    invoke-direct {v0, v2, v3, v1, p0}, Lng0;-><init>(Lo11;Ly31;FLrn3;)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_4
    sget-object p0, Lo11;->b:Lo11;

    .line 147
    .line 148
    sget-object p1, Ly31;->b:Ly31;

    .line 149
    .line 150
    new-instance v0, Lng0;

    .line 151
    .line 152
    sget-object v2, Lfd;->w:Lfd;

    .line 153
    .line 154
    new-instance v3, Lrn3;

    .line 155
    .line 156
    invoke-direct {v3, v2}, Lrn3;-><init>(Ldf1;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, p0, p1, v1, v3}, Lng0;-><init>(Lo11;Ly31;FLrn3;)V

    .line 160
    .line 161
    .line 162
    return-object v0
.end method
