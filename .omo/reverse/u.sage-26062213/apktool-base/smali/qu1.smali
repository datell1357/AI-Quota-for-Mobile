.class public final Lqu1;
.super Lg34;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg34;

.field public final synthetic c:Lg34;


# direct methods
.method public synthetic constructor <init>(Lg34;Lg34;I)V
    .locals 0

    .line 1
    iput p3, p0, Lqu1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqu1;->b:Lg34;

    .line 4
    .line 5
    iput-object p2, p0, Lqu1;->c:Lg34;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Lww1;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lqu1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lqu1;->c:Lg34;

    .line 4
    .line 5
    iget-object p0, p0, Lqu1;->b:Lg34;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "time"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lww1;->j()V

    .line 15
    .line 16
    .line 17
    move-object v0, v3

    .line 18
    :goto_0
    invoke-virtual {p1}, Lww1;->s0()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const-string v6, "offset"

    .line 23
    .line 24
    if-eq v5, v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lww1;->j0()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lww1;->y0()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Lnu1;->s(Ljava/lang/Object;)Ljava/time/LocalTime;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1, p1}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lku1;->s(Ljava/lang/Object;)Ljava/time/ZoneOffset;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lww1;->B()V

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v4, p1}, Lmu1;->a(Ljava/io/Serializable;Ljava/lang/String;Lww1;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lnu1;->m(Ljava/lang/Object;)Ljava/time/LocalTime;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v0, v6, p1}, Lmu1;->a(Ljava/io/Serializable;Ljava/lang/String;Lww1;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lku1;->B(Ljava/lang/Object;)Ljava/time/ZoneOffset;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Lpu1;->o(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :pswitch_0
    invoke-virtual {p1}, Lww1;->j()V

    .line 87
    .line 88
    .line 89
    move-object v0, v3

    .line 90
    :goto_1
    invoke-virtual {p1}, Lww1;->s0()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const-string v6, "date"

    .line 95
    .line 96
    if-eq v5, v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {p1}, Lww1;->j0()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_4

    .line 107
    .line 108
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Lww1;->y0()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v1, p1}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lnu1;->s(Ljava/lang/Object;)Ljava/time/LocalTime;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {p0, p1}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v3}, Lnu1;->r(Ljava/lang/Object;)Ljava/time/LocalDate;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {p1}, Lww1;->B()V

    .line 137
    .line 138
    .line 139
    invoke-static {v3, v6, p1}, Lmu1;->a(Ljava/io/Serializable;Ljava/lang/String;Lww1;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v3}, Lnu1;->i(Ljava/lang/Object;)Ljava/time/LocalDate;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v0, v4, p1}, Lmu1;->a(Ljava/io/Serializable;Ljava/lang/String;Lww1;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Lnu1;->m(Ljava/lang/Object;)Ljava/time/LocalTime;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p0, p1}, Lnu1;->k(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lbx1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lqu1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lqu1;->c:Lg34;

    .line 4
    .line 5
    iget-object p0, p0, Lqu1;->b:Lg34;

    .line 6
    .line 7
    const-string v2, "time"

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lpu1;->n(Ljava/lang/Object;)Ljava/time/OffsetTime;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1}, Lbx1;->r()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Lbx1;->F(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lpu1;->i(Ljava/time/OffsetTime;)Ljava/time/LocalTime;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, p1, v0}, Lg34;->c(Lbx1;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "offset"

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lbx1;->F(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lpu1;->s(Ljava/time/OffsetTime;)Ljava/time/ZoneOffset;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p1, p0}, Lg34;->c(Lbx1;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lbx1;->B()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_0
    invoke-static {p2}, Lku1;->j(Ljava/lang/Object;)Ljava/time/LocalDateTime;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1}, Lbx1;->r()V

    .line 50
    .line 51
    .line 52
    const-string v0, "date"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lbx1;->F(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Lnu1;->j(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, p1, v0}, Lg34;->c(Lbx1;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Lbx1;->F(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Lpu1;->h(Ljava/time/LocalDateTime;)Ljava/time/LocalTime;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1, p1, p0}, Lg34;->c(Lbx1;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lbx1;->B()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
