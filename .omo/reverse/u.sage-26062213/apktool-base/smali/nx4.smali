.class public final Lnx4;
.super Lmy4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Landroid/os/Bundle;

.field public final synthetic t:Luy4;


# direct methods
.method public constructor <init>(Luy4;Landroid/os/Bundle;I)V
    .locals 1

    .line 1
    iput p3, p0, Lnx4;->r:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p3, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lnx4;->s:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lnx4;->t:Luy4;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iput-object p2, p0, Lnx4;->s:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lnx4;->t:Luy4;

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lnx4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnx4;->t:Luy4;

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
    iget-object p0, p0, Lnx4;->s:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lhw4;->setDefaultEventParameters(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lnx4;->t:Luy4;

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
    iget-object v1, p0, Lnx4;->s:Landroid/os/Bundle;

    .line 33
    .line 34
    iget-wide v2, p0, Lmy4;->n:J

    .line 35
    .line 36
    invoke-interface {v0, v1, v2, v3}, Lhw4;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
