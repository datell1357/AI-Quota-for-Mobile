.class public final synthetic Lv02;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lw02;


# direct methods
.method public synthetic constructor <init>(Lw02;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv02;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lv02;->o:Lw02;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lv02;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lv02;->o:Lw02;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lw02;->C:Ls02;

    .line 9
    .line 10
    iget-object v0, v0, Ls02;->b:Ln12;

    .line 11
    .line 12
    invoke-virtual {v0}, Ln12;->h()Lf12;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lf12;->o:Lhr2;

    .line 17
    .line 18
    sget-object v2, Lhr2;->n:Lhr2;

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ln12;->h()Lf12;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lf12;->i()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const-wide v2, 0xffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    and-long/2addr v0, v2

    .line 36
    :goto_0
    long-to-int v0, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v0}, Ln12;->h()Lf12;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lf12;->i()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const/16 v2, 0x20

    .line 47
    .line 48
    shr-long/2addr v0, v2

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    iget-object p0, p0, Lw02;->C:Ls02;

    .line 51
    .line 52
    iget-object p0, p0, Ls02;->b:Ln12;

    .line 53
    .line 54
    invoke-virtual {p0}, Ln12;->h()Lf12;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget v1, v1, Lf12;->l:I

    .line 59
    .line 60
    neg-int v1, v1

    .line 61
    invoke-virtual {p0}, Ln12;->h()Lf12;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget p0, p0, Lf12;->p:I

    .line 66
    .line 67
    add-int/2addr v1, p0

    .line 68
    sub-int/2addr v0, v1

    .line 69
    int-to-float p0, v0

    .line 70
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_0
    iget-object p0, p0, Lw02;->C:Ls02;

    .line 76
    .line 77
    iget-object p0, p0, Ls02;->b:Ln12;

    .line 78
    .line 79
    invoke-virtual {p0}, Ln12;->d()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p0}, Ln12;->g()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p0}, Ln12;->i()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_1

    .line 92
    .line 93
    mul-int/lit16 v0, v0, 0x1f4

    .line 94
    .line 95
    add-int/2addr v0, v1

    .line 96
    int-to-float p0, v0

    .line 97
    const/high16 v0, 0x42c80000    # 100.0f

    .line 98
    .line 99
    add-float/2addr p0, v0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    mul-int/lit16 v0, v0, 0x1f4

    .line 102
    .line 103
    add-int/2addr v0, v1

    .line 104
    int-to-float p0, v0

    .line 105
    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :pswitch_1
    iget-object p0, p0, Lw02;->C:Ls02;

    .line 111
    .line 112
    iget-object p0, p0, Ls02;->b:Ln12;

    .line 113
    .line 114
    invoke-virtual {p0}, Ln12;->d()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p0}, Ln12;->g()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    mul-int/lit16 v0, v0, 0x1f4

    .line 123
    .line 124
    add-int/2addr v0, p0

    .line 125
    int-to-float p0, v0

    .line 126
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
