.class public final synthetic Le92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lxi2;

.field public final synthetic p:Lyh2;


# direct methods
.method public synthetic constructor <init>(Lxi2;Lyh2;I)V
    .locals 0

    .line 1
    iput p3, p0, Le92;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Le92;->o:Lxi2;

    .line 4
    .line 5
    iput-object p2, p0, Le92;->p:Lyh2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Le92;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Le92;->p:Lyh2;

    .line 7
    .line 8
    iget-object p0, p0, Le92;->o:Lxi2;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget v0, Lu/sage/MainActivity;->C:I

    .line 14
    .line 15
    iget-object v0, p0, Lxi2;->b:Lii2;

    .line 16
    .line 17
    invoke-virtual {v0}, Lii2;->g()Lyh2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v2, v0, Lyh2;->s:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    iget-object v0, v3, Lyh2;->s:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lxi2;->c()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-object v1

    .line 37
    :pswitch_0
    sget v0, Lu/sage/MainActivity;->C:I

    .line 38
    .line 39
    iget-object v0, p0, Lxi2;->b:Lii2;

    .line 40
    .line 41
    invoke-virtual {v0}, Lii2;->g()Lyh2;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v2, v0, Lyh2;->s:Ljava/lang/String;

    .line 48
    .line 49
    :cond_2
    iget-object v0, v3, Lyh2;->s:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Lxi2;->c()V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-object v1

    .line 61
    :pswitch_1
    sget v0, Lu/sage/MainActivity;->C:I

    .line 62
    .line 63
    iget-object v0, p0, Lxi2;->b:Lii2;

    .line 64
    .line 65
    invoke-virtual {v0}, Lii2;->g()Lyh2;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v2, v0, Lyh2;->s:Ljava/lang/String;

    .line 72
    .line 73
    :cond_4
    iget-object v0, v3, Lyh2;->s:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0}, Lxi2;->c()V

    .line 82
    .line 83
    .line 84
    :cond_5
    return-object v1

    .line 85
    :pswitch_2
    sget v0, Lu/sage/MainActivity;->C:I

    .line 86
    .line 87
    iget-object v0, p0, Lxi2;->b:Lii2;

    .line 88
    .line 89
    invoke-virtual {v0}, Lii2;->g()Lyh2;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    iget-object v2, v0, Lyh2;->s:Ljava/lang/String;

    .line 96
    .line 97
    :cond_6
    iget-object v0, v3, Lyh2;->s:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {p0}, Lxi2;->c()V

    .line 106
    .line 107
    .line 108
    :cond_7
    return-object v1

    .line 109
    :pswitch_3
    sget v0, Lu/sage/MainActivity;->C:I

    .line 110
    .line 111
    iget-object v0, p0, Lxi2;->b:Lii2;

    .line 112
    .line 113
    invoke-virtual {v0}, Lii2;->g()Lyh2;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    iget-object v2, v0, Lyh2;->s:Ljava/lang/String;

    .line 120
    .line 121
    :cond_8
    iget-object v0, v3, Lyh2;->s:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_9

    .line 128
    .line 129
    invoke-virtual {p0}, Lxi2;->c()V

    .line 130
    .line 131
    .line 132
    :cond_9
    return-object v1

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
