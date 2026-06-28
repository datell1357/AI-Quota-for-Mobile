.class public final Lpo2;
.super Lek2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final d:Lup;

.field public e:Z


# direct methods
.method public constructor <init>(Lup;Lqo2;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lup;->b:Z

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lek2;->a:Lon4;

    .line 7
    .line 8
    iput-boolean v0, p0, Lek2;->b:Z

    .line 9
    .line 10
    iput-object p1, p0, Lpo2;->d:Lup;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lpo2;->e:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object p0, p0, Lpo2;->d:Lup;

    .line 2
    .line 3
    iget v0, p0, Lup;->d:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lup;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lnq0;

    .line 12
    .line 13
    invoke-virtual {p0}, Lnq0;->g()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object p0, p0, Lpo2;->d:Lup;

    .line 2
    .line 3
    iget v0, p0, Lup;->d:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lup;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lka;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lka;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object p0, p0, Lup;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lxi2;

    .line 19
    .line 20
    invoke-virtual {p0}, Lxi2;->c()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_1
    iget-object p0, p0, Lup;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lhd1;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lhd1;->x(Z)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lhd1;->h:Lup;

    .line 33
    .line 34
    iget-boolean v0, v0, Lup;->b:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lhd1;->M()Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lhd1;->g:Luo2;

    .line 43
    .line 44
    invoke-virtual {p0}, Luo2;->b()Lso2;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lgk2;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_2
    iget-object p0, p0, Lup;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lnq0;

    .line 55
    .line 56
    invoke-virtual {p0}, Lnq0;->h()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lbk2;)V
    .locals 1

    .line 1
    new-instance v0, Lsp;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lsp;-><init>(Lbk2;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lpo2;->d:Lup;

    .line 7
    .line 8
    iget p1, p0, Lup;->d:I

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lup;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lnq0;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lnq0;->i(Lsp;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lbk2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsp;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lsp;-><init>(Lbk2;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lpo2;->d:Lup;

    .line 10
    .line 11
    iget p1, p0, Lup;->d:I

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    iget-object p0, p0, Lup;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lnq0;

    .line 20
    .line 21
    invoke-virtual {p0}, Lnq0;->j()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpo2;->e:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lpo2;->d:Lup;

    .line 6
    .line 7
    iget-boolean p1, p1, Lup;->b:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Lek2;->g(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
