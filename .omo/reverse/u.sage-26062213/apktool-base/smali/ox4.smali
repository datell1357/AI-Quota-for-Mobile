.class public final Lox4;
.super Lmy4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Luy4;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Luy4;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lox4;->r:I

    .line 3
    .line 4
    iput-object p2, p0, Lox4;->s:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lox4;->t:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lox4;->v:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lox4;->u:Luy4;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Luy4;Ljava/lang/String;Ljava/lang/String;Ldw4;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lox4;->r:I

    .line 20
    iput-object p2, p0, Lox4;->s:Ljava/lang/String;

    iput-object p3, p0, Lox4;->t:Ljava/lang/String;

    iput-object p4, p0, Lox4;->v:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lox4;->u:Luy4;

    .line 21
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method

.method public constructor <init>(Luy4;Ljx4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lox4;->r:I

    .line 22
    iput-object p2, p0, Lox4;->v:Ljava/lang/Object;

    iput-object p3, p0, Lox4;->s:Ljava/lang/String;

    iput-object p4, p0, Lox4;->t:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lox4;->u:Luy4;

    const/4 p2, 0x1

    .line 23
    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Lox4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lox4;->u:Luy4;

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
    move-object v1, v0

    .line 15
    check-cast v1, Lhw4;

    .line 16
    .line 17
    iget-object v0, p0, Lox4;->v:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Ljx4;

    .line 21
    .line 22
    iget-object v3, p0, Lox4;->s:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Lox4;->t:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v5, p0, Lmy4;->n:J

    .line 27
    .line 28
    invoke-interface/range {v1 .. v6}, Lhw4;->setCurrentScreenByScionActivityInfo(Ljx4;Ljava/lang/String;Ljava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lox4;->u:Luy4;

    .line 33
    .line 34
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lhw4;

    .line 41
    .line 42
    iget-object v1, p0, Lox4;->s:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lox4;->t:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p0, p0, Lox4;->v:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Ldw4;

    .line 49
    .line 50
    invoke-interface {v0, v1, v2, p0}, Lhw4;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lmw4;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    iget-object v0, p0, Lox4;->u:Luy4;

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
    iget-object v1, p0, Lox4;->s:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, p0, Lox4;->t:Ljava/lang/String;

    .line 67
    .line 68
    iget-object p0, p0, Lox4;->v:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-interface {v0, v1, v2, p0}, Lhw4;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Lox4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lox4;->v:Ljava/lang/Object;

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
