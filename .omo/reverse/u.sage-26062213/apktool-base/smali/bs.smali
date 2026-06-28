.class public final Lbs;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lb81;

.field public final synthetic p:Lps;


# direct methods
.method public synthetic constructor <init>(Lb81;Lps;I)V
    .locals 0

    .line 1
    iput p3, p0, Lbs;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lbs;->o:Lb81;

    .line 4
    .line 5
    iput-object p2, p0, Lbs;->p:Lps;

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
    .locals 12

    .line 1
    iget v0, p0, Lbs;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lbs;->p:Lps;

    .line 6
    .line 7
    iget-object v3, p0, Lbs;->o:Lb81;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v5, Lri0;->n:Lri0;

    .line 12
    .line 13
    const/high16 v6, -0x80000000

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    instance-of v0, p2, Los;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move-object v0, p2

    .line 26
    check-cast v0, Los;

    .line 27
    .line 28
    iget v10, v0, Los;->r:I

    .line 29
    .line 30
    and-int v11, v10, v6

    .line 31
    .line 32
    if-eqz v11, :cond_0

    .line 33
    .line 34
    sub-int/2addr v10, v6

    .line 35
    iput v10, v0, Los;->r:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Los;

    .line 39
    .line 40
    invoke-direct {v0, p0, p2}, Los;-><init>(Lbs;Ldh0;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p0, v0, Los;->q:Ljava/lang/Object;

    .line 44
    .line 45
    iget p2, v0, Los;->r:I

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    if-ne p2, v7, :cond_1

    .line 50
    .line 51
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v1, v9

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    check-cast p1, Lhg2;

    .line 64
    .line 65
    sget-object p0, Lps;->i:Lrx2;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lhg2;->c(Lrx2;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    :try_start_0
    iget-object p1, v2, Lps;->a:Lpi1;

    .line 76
    .line 77
    const-class p2, Ld84;

    .line 78
    .line 79
    invoke-virtual {p1, p0, p2}, Lpi1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Ld84;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    move-object v9, p0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    sget-object p0, Lez3;->a:Lra3;

    .line 88
    .line 89
    new-array p1, v8, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lra3;->g([Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    iput v7, v0, Los;->r:I

    .line 98
    .line 99
    invoke-interface {v3, v9, v0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v5, :cond_4

    .line 104
    .line 105
    move-object v1, v5

    .line 106
    :cond_4
    :goto_2
    return-object v1

    .line 107
    :pswitch_0
    instance-of v0, p2, Las;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    move-object v0, p2

    .line 112
    check-cast v0, Las;

    .line 113
    .line 114
    iget v10, v0, Las;->r:I

    .line 115
    .line 116
    and-int v11, v10, v6

    .line 117
    .line 118
    if-eqz v11, :cond_5

    .line 119
    .line 120
    sub-int/2addr v10, v6

    .line 121
    iput v10, v0, Las;->r:I

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    new-instance v0, Las;

    .line 125
    .line 126
    invoke-direct {v0, p0, p2}, Las;-><init>(Lbs;Ldh0;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    iget-object p0, v0, Las;->q:Ljava/lang/Object;

    .line 130
    .line 131
    iget p2, v0, Las;->r:I

    .line 132
    .line 133
    if-eqz p2, :cond_7

    .line 134
    .line 135
    if-ne p2, v7, :cond_6

    .line 136
    .line 137
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move-object v1, v9

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    check-cast p1, Lhg2;

    .line 150
    .line 151
    sget-object p0, Lps;->k:Lrx2;

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Lhg2;->c(Lrx2;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Ljava/lang/Boolean;

    .line 158
    .line 159
    if-eqz p0, :cond_8

    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    goto :goto_4

    .line 166
    :cond_8
    invoke-virtual {v2}, Lps;->b()Ly84;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    sget-object p1, Ly84;->r:Ly84;

    .line 171
    .line 172
    if-ne p0, p1, :cond_9

    .line 173
    .line 174
    move v8, v7

    .line 175
    :cond_9
    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    iput v7, v0, Las;->r:I

    .line 180
    .line 181
    invoke-interface {v3, p0, v0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    if-ne p0, v5, :cond_a

    .line 186
    .line 187
    move-object v1, v5

    .line 188
    :cond_a
    :goto_5
    return-object v1

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
