.class public final Ltx4;
.super Lmy4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Luy4;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Luy4;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ltx4;->r:I

    .line 3
    .line 4
    iput-object p2, p0, Ltx4;->t:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ltx4;->s:Luy4;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Luy4;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ltx4;->r:I

    .line 17
    iput-object p2, p0, Ltx4;->t:Ljava/lang/Object;

    iput-object p1, p0, Ltx4;->s:Luy4;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Luy4;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p3, p0, Ltx4;->r:I

    iput-object p2, p0, Ltx4;->t:Ljava/lang/Object;

    iput-object p1, p0, Ltx4;->s:Luy4;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Ltx4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltx4;->s:Luy4;

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
    iget-object p0, p0, Ltx4;->t:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lpy4;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lhw4;->registerOnMeasurementEventListener(Ltw4;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Ltx4;->s:Luy4;

    .line 25
    .line 26
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Lhw4;

    .line 34
    .line 35
    iget-object p0, p0, Ltx4;->t:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Exception;

    .line 38
    .line 39
    new-instance v4, Lyn2;

    .line 40
    .line 41
    invoke-direct {v4, p0}, Lyn2;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v5, Lyn2;

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    invoke-direct {v5, p0}, Lyn2;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v6, Lyn2;

    .line 51
    .line 52
    invoke-direct {v6, p0}, Lyn2;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    const-string v3, "Error with data collection. Data lost."

    .line 57
    .line 58
    invoke-interface/range {v1 .. v6}, Lhw4;->logHealthData(ILjava/lang/String;Lkn1;Lkn1;Lkn1;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p0, Ltx4;->s:Luy4;

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
    iget-object v1, p0, Ltx4;->t:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lw85;

    .line 75
    .line 76
    new-instance v2, Lzx4;

    .line 77
    .line 78
    invoke-direct {v2, p0, v1}, Lzx4;-><init>(Ltx4;Lw85;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v2}, Lhw4;->retrieveAndUploadBatches(Lqw4;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_2
    iget-object v0, p0, Ltx4;->s:Luy4;

    .line 86
    .line 87
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lhw4;

    .line 94
    .line 95
    iget-object v1, p0, Ltx4;->t:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iget-wide v2, p0, Lmy4;->n:J

    .line 104
    .line 105
    invoke-interface {v0, v1, v2, v3}, Lhw4;->setMeasurementEnabled(ZJ)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
