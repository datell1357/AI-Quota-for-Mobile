.class public final synthetic Lh92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lu/sage/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lu/sage/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh92;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lh92;->o:Lu/sage/MainActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lh92;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lh92;->o:Lu/sage/MainActivity;

    .line 7
    .line 8
    check-cast p1, Lfh;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget v0, Lu/sage/MainActivity;->C:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget v0, p1, Lfh;->a:I

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-ne v0, v3, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lsf5;->a()Lme5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lme5;->a()Lsf5;

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, Lfh;->b:Landroid/app/PendingIntent;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-eqz v0, :cond_2

    .line 47
    .line 48
    :try_start_0
    iget-object v0, p0, Lu/sage/MainActivity;->q:Lnv3;

    .line 49
    .line 50
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lk05;

    .line 55
    .line 56
    iget-object p0, p0, Lu/sage/MainActivity;->r:Li6;

    .line 57
    .line 58
    invoke-static {}, Lsf5;->a()Lme5;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lme5;->a()Lsf5;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p0, v3}, Lk05;->b(Lfh;Li6;Lsf5;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    sget-object p0, Lez3;->a:Lra3;

    .line 74
    .line 75
    new-array p1, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lra3;->n([Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    return-object v1

    .line 84
    :pswitch_0
    sget v0, Lu/sage/MainActivity;->C:I

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    iget v0, p1, Lfh;->a:I

    .line 100
    .line 101
    const/4 v3, 0x3

    .line 102
    if-ne v0, v3, :cond_4

    .line 103
    .line 104
    :try_start_1
    iget-object v0, p0, Lu/sage/MainActivity;->q:Lnv3;

    .line 105
    .line 106
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lk05;

    .line 111
    .line 112
    iget-object p0, p0, Lu/sage/MainActivity;->r:Li6;

    .line 113
    .line 114
    invoke-static {}, Lsf5;->a()Lme5;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lme5;->a()Lsf5;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {p1, p0, v3}, Lk05;->b(Lfh;Li6;Lsf5;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_1
    sget-object p0, Lez3;->a:Lra3;

    .line 130
    .line 131
    new-array p1, v2, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lra3;->n([Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_2
    return-object v1

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
