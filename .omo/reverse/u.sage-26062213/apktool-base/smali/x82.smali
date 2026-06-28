.class public final synthetic Lx82;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public final synthetic n:Lu/sage/MainActivity;

.field public final synthetic o:Ly84;

.field public final synthetic p:Lxi2;


# direct methods
.method public synthetic constructor <init>(Lu/sage/MainActivity;Ly84;Lxi2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx82;->n:Lu/sage/MainActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lx82;->o:Ly84;

    .line 7
    .line 8
    iput-object p3, p0, Lx82;->p:Lxi2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lae;

    .line 2
    .line 3
    check-cast p2, Lyh2;

    .line 4
    .line 5
    move-object v4, p3

    .line 6
    check-cast v4, Lag1;

    .line 7
    .line 8
    check-cast p4, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget p3, Lu/sage/MainActivity;->C:I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lx82;->n:Lu/sage/MainActivity;

    .line 22
    .line 23
    invoke-virtual {v4, p1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object v1, p0, Lx82;->o:Ly84;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-virtual {v4, p3}, Lag1;->d(I)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    or-int/2addr p2, p3

    .line 38
    invoke-virtual {v4}, Lag1;->K()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    sget-object p4, Lrb0;->a:Lbx3;

    .line 43
    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    if-ne p3, p4, :cond_1

    .line 47
    .line 48
    :cond_0
    new-instance p3, Lp4;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-direct {p3, p1, v1, p2, v0}, Lp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    check-cast p3, Ldf1;

    .line 59
    .line 60
    sget-object p2, Lt64;->a:Lt64;

    .line 61
    .line 62
    invoke-static {p3, v4, p2}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lu/sage/MainActivity;->j(Ly84;)Lpt;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object p0, p0, Lx82;->p:Lxi2;

    .line 70
    .line 71
    invoke-virtual {v4, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v4, v2}, Lag1;->d(I)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    or-int/2addr p3, v2

    .line 84
    invoke-virtual {v4}, Lag1;->K()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-nez p3, :cond_2

    .line 89
    .line 90
    if-ne v2, p4, :cond_3

    .line 91
    .line 92
    :cond_2
    new-instance v2, Lh4;

    .line 93
    .line 94
    const/16 p3, 0x13

    .line 95
    .line 96
    invoke-direct {v2, p3, p0, v1}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    check-cast v2, Lne1;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    invoke-virtual {v4, p3}, Lag1;->d(I)Z

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    invoke-virtual {v4, p1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    or-int/2addr p3, v3

    .line 117
    invoke-virtual {v4, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    or-int/2addr p3, v3

    .line 122
    invoke-virtual {v4}, Lag1;->K()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-nez p3, :cond_4

    .line 127
    .line 128
    if-ne v3, p4, :cond_5

    .line 129
    .line 130
    :cond_4
    new-instance v3, Ld92;

    .line 131
    .line 132
    const/4 p3, 0x0

    .line 133
    invoke-direct {v3, v1, p1, p0, p3}, Ld92;-><init>(Ly84;Lu/sage/MainActivity;Lxi2;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    check-cast v3, Lne1;

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    invoke-static/range {v0 .. v5}, Lkt4;->m(Lpt;Ly84;Lne1;Lne1;Lag1;I)V

    .line 143
    .line 144
    .line 145
    return-object p2
.end method
