.class public final Lcy4;
.super Lmy4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Z

.field public final synthetic v:Luy4;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Luy4;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcy4;->r:I

    .line 22
    iput-object p2, p0, Lcy4;->s:Ljava/lang/String;

    iput-object p3, p0, Lcy4;->t:Ljava/lang/String;

    iput-object p4, p0, Lcy4;->w:Ljava/lang/Object;

    iput-boolean p5, p0, Lcy4;->u:Z

    iput-object p1, p0, Lcy4;->v:Luy4;

    .line 23
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method

.method public constructor <init>(Luy4;Ljava/lang/String;Ljava/lang/String;ZLdw4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcy4;->r:I

    .line 3
    .line 4
    iput-object p2, p0, Lcy4;->s:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcy4;->t:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcy4;->u:Z

    .line 9
    .line 10
    iput-object p5, p0, Lcy4;->w:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcy4;->v:Luy4;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget v0, p0, Lcy4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v7, p0, Lmy4;->n:J

    .line 7
    .line 8
    iget-wide v9, p0, Lmy4;->o:J

    .line 9
    .line 10
    iget-object v0, p0, Lcy4;->v:Luy4;

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
    move-object v1, v0

    .line 19
    check-cast v1, Lhw4;

    .line 20
    .line 21
    iget-object v2, p0, Lcy4;->s:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcy4;->t:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Lcy4;->w:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v4, v0

    .line 28
    check-cast v4, Landroid/os/Bundle;

    .line 29
    .line 30
    iget-boolean v5, p0, Lcy4;->u:Z

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    invoke-interface/range {v1 .. v10}, Lhw4;->logEventWithElapsedTime(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJJ)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcy4;->v:Luy4;

    .line 38
    .line 39
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lhw4;

    .line 46
    .line 47
    iget-object v1, p0, Lcy4;->s:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p0, Lcy4;->t:Ljava/lang/String;

    .line 50
    .line 51
    iget-boolean v3, p0, Lcy4;->u:Z

    .line 52
    .line 53
    iget-object p0, p0, Lcy4;->w:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Ldw4;

    .line 56
    .line 57
    invoke-interface {v0, v1, v2, v3, p0}, Lhw4;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLmw4;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Lcy4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcy4;->w:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ldw4;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Ldw4;->i(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
