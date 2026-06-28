.class public final Lw02;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leh3;


# instance fields
.field public B:Lne1;

.field public C:Ls02;

.field public D:Lhr2;

.field public E:Z

.field public F:Lye3;

.field public final G:Lu02;

.field public H:Lu02;


# direct methods
.method public constructor <init>(Lne1;Ls02;Lhr2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw02;->B:Lne1;

    .line 5
    .line 6
    iput-object p2, p0, Lw02;->C:Ls02;

    .line 7
    .line 8
    iput-object p3, p0, Lw02;->D:Lhr2;

    .line 9
    .line 10
    iput-boolean p4, p0, Lw02;->E:Z

    .line 11
    .line 12
    new-instance p1, Lu02;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p0, p2}, Lu02;-><init>(Lw02;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lw02;->G:Lu02;

    .line 19
    .line 20
    invoke-virtual {p0}, Lw02;->G0()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final G0()V
    .locals 4

    .line 1
    new-instance v0, Lye3;

    .line 2
    .line 3
    new-instance v1, Lv02;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lv02;-><init>(Lw02;I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lv02;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p0, v3}, Lv02;-><init>(Lw02;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lye3;-><init>(Lne1;Lne1;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lw02;->F:Lye3;

    .line 19
    .line 20
    iget-boolean v0, p0, Lw02;->E:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lu02;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, p0, v1}, Lu02;-><init>(Lw02;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-object v0, p0, Lw02;->H:Lu02;

    .line 33
    .line 34
    return-void
.end method

.method public final a0(Lph3;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lnh3;->e(Lph3;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw02;->G:Lu02;

    .line 5
    .line 6
    sget-object v1, Llh3;->L:Loh3;

    .line 7
    .line 8
    invoke-interface {p1, v1, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lw02;->D:Lhr2;

    .line 12
    .line 13
    iget-object v1, p0, Lw02;->F:Lye3;

    .line 14
    .line 15
    const-string v2, "scrollAxisRange"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    sget-object v4, Lhr2;->n:Lhr2;

    .line 19
    .line 20
    if-ne v0, v4, :cond_1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v0, Llh3;->w:Loh3;

    .line 25
    .line 26
    sget-object v2, Lnh3;->a:[Lkx1;

    .line 27
    .line 28
    const/16 v4, 0xd

    .line 29
    .line 30
    aget-object v2, v2, v4

    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v3

    .line 40
    :cond_1
    if-eqz v1, :cond_4

    .line 41
    .line 42
    sget-object v0, Llh3;->v:Loh3;

    .line 43
    .line 44
    sget-object v2, Lnh3;->a:[Lkx1;

    .line 45
    .line 46
    const/16 v4, 0xc

    .line 47
    .line 48
    aget-object v2, v2, v4

    .line 49
    .line 50
    invoke-interface {p1, v0, v1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lw02;->H:Lu02;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    sget-object v1, Lah3;->f:Loh3;

    .line 58
    .line 59
    new-instance v2, Lo2;

    .line 60
    .line 61
    invoke-direct {v2, v3, v0}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v1, v2}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    new-instance v0, Lv02;

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-direct {v0, p0, v1}, Lv02;-><init>(Lw02;I)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lah3;->B:Loh3;

    .line 74
    .line 75
    new-instance v2, Lo2;

    .line 76
    .line 77
    new-instance v4, Lc8;

    .line 78
    .line 79
    const/16 v5, 0x16

    .line 80
    .line 81
    invoke-direct {v4, v5, v0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, v3, v4}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v1, v2}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lw02;->C:Ls02;

    .line 91
    .line 92
    iget-boolean v0, p0, Ls02;->c:Z

    .line 93
    .line 94
    iget-object p0, p0, Ls02;->a:Los0;

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    new-instance v0, Lk70;

    .line 100
    .line 101
    invoke-virtual {p0}, Los0;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Ljava/lang/Number;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    invoke-direct {v0, p0, v1}, Lk70;-><init>(II)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    new-instance v0, Lk70;

    .line 116
    .line 117
    invoke-virtual {p0}, Los0;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-direct {v0, v1, p0}, Lk70;-><init>(II)V

    .line 128
    .line 129
    .line 130
    :goto_1
    sget-object p0, Llh3;->f:Loh3;

    .line 131
    .line 132
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 133
    .line 134
    const/16 v2, 0x18

    .line 135
    .line 136
    aget-object v1, v1, v2

    .line 137
    .line 138
    invoke-interface {p1, p0, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v3
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
