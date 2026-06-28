.class public final Lby4;
.super Lmy4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ldw4;

.field public final synthetic t:Luy4;


# direct methods
.method public constructor <init>(Luy4;Ldw4;I)V
    .locals 1

    .line 1
    iput p3, p0, Lby4;->r:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p3, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lby4;->s:Ldw4;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lby4;->t:Luy4;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iput-object p2, p0, Lby4;->s:Ldw4;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lby4;->t:Luy4;

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    iput-object p2, p0, Lby4;->s:Ldw4;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lby4;->t:Luy4;

    .line 35
    .line 36
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Luy4;Ldw4;IZ)V
    .locals 0

    .line 41
    iput p3, p0, Lby4;->r:I

    iput-object p2, p0, Lby4;->s:Ldw4;

    iput-object p1, p0, Lby4;->t:Luy4;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget v0, p0, Lby4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lby4;->t:Luy4;

    .line 7
    .line 8
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lhw4;

    .line 15
    .line 16
    iget-object p0, p0, Lby4;->s:Ldw4;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lhw4;->getCurrentScreenClass(Lmw4;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lby4;->t:Luy4;

    .line 23
    .line 24
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lhw4;

    .line 31
    .line 32
    iget-object p0, p0, Lby4;->s:Ldw4;

    .line 33
    .line 34
    invoke-interface {v0, p0}, Lhw4;->getCurrentScreenName(Lmw4;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lby4;->t:Luy4;

    .line 39
    .line 40
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lhw4;

    .line 47
    .line 48
    iget-object p0, p0, Lby4;->s:Ldw4;

    .line 49
    .line 50
    invoke-interface {v0, p0}, Lhw4;->generateEventId(Lmw4;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_2
    iget-object v0, p0, Lby4;->t:Luy4;

    .line 55
    .line 56
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lhw4;

    .line 63
    .line 64
    iget-object p0, p0, Lby4;->s:Ldw4;

    .line 65
    .line 66
    invoke-interface {v0, p0}, Lhw4;->getCachedAppInstanceId(Lmw4;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_3
    iget-object v0, p0, Lby4;->t:Luy4;

    .line 71
    .line 72
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lhw4;

    .line 79
    .line 80
    iget-object p0, p0, Lby4;->s:Ldw4;

    .line 81
    .line 82
    invoke-interface {v0, p0}, Lhw4;->getGmpAppId(Lmw4;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lby4;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lby4;->s:Ldw4;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ldw4;->i(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    invoke-virtual {p0, v1}, Ldw4;->i(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    invoke-virtual {p0, v1}, Ldw4;->i(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_2
    invoke-virtual {p0, v1}, Ldw4;->i(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_3
    invoke-virtual {p0, v1}, Ldw4;->i(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
