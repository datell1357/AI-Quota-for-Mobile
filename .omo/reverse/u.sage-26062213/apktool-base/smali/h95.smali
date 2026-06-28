.class public final synthetic Lh95;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lo95;


# direct methods
.method public synthetic constructor <init>(Lo95;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh95;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lh95;->o:Lo95;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lh95;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lh95;->o:Lo95;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lr45;

    .line 12
    .line 13
    iget-object v2, p0, Lo95;->d:Ln05;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object p0, v0, Lr45;->f:La25;

    .line 18
    .line 19
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, La25;->f:Lx15;

    .line 23
    .line 24
    const-string v0, "Failed to send storage consent settings to service"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lo95;->L(Z)Lvc5;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v1}, Ln05;->e(Lvc5;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lo95;->I()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    iget-object v0, v0, Lr45;->f:La25;

    .line 46
    .line 47
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, La25;->f:Lx15;

    .line 51
    .line 52
    const-string v1, "Failed to send storage consent settings to the service"

    .line 53
    .line 54
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lr45;

    .line 61
    .line 62
    iget-object v2, p0, Lo95;->d:Ln05;

    .line 63
    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    iget-object p0, v0, Lr45;->f:La25;

    .line 67
    .line 68
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, La25;->f:Lx15;

    .line 72
    .line 73
    const-string v0, "Failed to send Dma consent settings to service"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lo95;->L(Z)Lvc5;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-interface {v2, v1}, Ln05;->n(Lvc5;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lo95;->I()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception p0

    .line 94
    iget-object v0, v0, Lr45;->f:La25;

    .line 95
    .line 96
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, La25;->f:Lx15;

    .line 100
    .line 101
    const-string v1, "Failed to send Dma consent settings to the service"

    .line 102
    .line 103
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Lo95;->B()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
