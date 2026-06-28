.class public final Lqy4;
.super Lmy4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Landroid/app/Activity;

.field public final synthetic t:Lty4;


# direct methods
.method public constructor <init>(Lty4;Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iput p3, p0, Lqy4;->r:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p3, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lqy4;->s:Landroid/app/Activity;

    .line 8
    .line 9
    iput-object p1, p0, Lqy4;->t:Lty4;

    .line 10
    .line 11
    iget-object p1, p1, Lty4;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Luy4;

    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iput-object p2, p0, Lqy4;->s:Landroid/app/Activity;

    .line 20
    .line 21
    iput-object p1, p0, Lqy4;->t:Lty4;

    .line 22
    .line 23
    iget-object p1, p1, Lty4;->o:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Luy4;

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    iput-object p2, p0, Lqy4;->s:Landroid/app/Activity;

    .line 32
    .line 33
    iput-object p1, p0, Lqy4;->t:Lty4;

    .line 34
    .line 35
    iget-object p1, p1, Lty4;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Luy4;

    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_2
    iput-object p2, p0, Lqy4;->s:Landroid/app/Activity;

    .line 44
    .line 45
    iput-object p1, p0, Lqy4;->t:Lty4;

    .line 46
    .line 47
    iget-object p1, p1, Lty4;->o:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Luy4;

    .line 50
    .line 51
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_3
    iput-object p2, p0, Lqy4;->s:Landroid/app/Activity;

    .line 56
    .line 57
    iput-object p1, p0, Lqy4;->t:Lty4;

    .line 58
    .line 59
    iget-object p1, p1, Lty4;->o:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Luy4;

    .line 62
    .line 63
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lqy4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqy4;->t:Lty4;

    .line 7
    .line 8
    iget-object v0, v0, Lty4;->o:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Luy4;

    .line 11
    .line 12
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lhw4;

    .line 19
    .line 20
    iget-object v1, p0, Lqy4;->s:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-static {v1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-wide v2, p0, Lmy4;->o:J

    .line 27
    .line 28
    invoke-interface {v0, v1, v2, v3}, Lhw4;->onActivityDestroyedByScionActivityInfo(Ljx4;J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lqy4;->t:Lty4;

    .line 33
    .line 34
    iget-object v0, v0, Lty4;->o:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Luy4;

    .line 37
    .line 38
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lhw4;

    .line 45
    .line 46
    iget-object v1, p0, Lqy4;->s:Landroid/app/Activity;

    .line 47
    .line 48
    invoke-static {v1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-wide v2, p0, Lmy4;->o:J

    .line 53
    .line 54
    invoke-interface {v0, v1, v2, v3}, Lhw4;->onActivityStoppedByScionActivityInfo(Ljx4;J)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    iget-object v0, p0, Lqy4;->t:Lty4;

    .line 59
    .line 60
    iget-object v0, v0, Lty4;->o:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Luy4;

    .line 63
    .line 64
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lhw4;

    .line 71
    .line 72
    iget-object v1, p0, Lqy4;->s:Landroid/app/Activity;

    .line 73
    .line 74
    invoke-static {v1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-wide v2, p0, Lmy4;->o:J

    .line 79
    .line 80
    invoke-interface {v0, v1, v2, v3}, Lhw4;->onActivityPausedByScionActivityInfo(Ljx4;J)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_2
    iget-object v0, p0, Lqy4;->t:Lty4;

    .line 85
    .line 86
    iget-object v0, v0, Lty4;->o:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Luy4;

    .line 89
    .line 90
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lhw4;

    .line 97
    .line 98
    iget-object v1, p0, Lqy4;->s:Landroid/app/Activity;

    .line 99
    .line 100
    invoke-static {v1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-wide v2, p0, Lmy4;->o:J

    .line 105
    .line 106
    invoke-interface {v0, v1, v2, v3}, Lhw4;->onActivityResumedByScionActivityInfo(Ljx4;J)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_3
    iget-object v0, p0, Lqy4;->t:Lty4;

    .line 111
    .line 112
    iget-object v0, v0, Lty4;->o:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Luy4;

    .line 115
    .line 116
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lhw4;

    .line 123
    .line 124
    iget-object v1, p0, Lqy4;->s:Landroid/app/Activity;

    .line 125
    .line 126
    invoke-static {v1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-wide v2, p0, Lmy4;->o:J

    .line 131
    .line 132
    invoke-interface {v0, v1, v2, v3}, Lhw4;->onActivityStartedByScionActivityInfo(Ljx4;J)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
