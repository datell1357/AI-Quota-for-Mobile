.class public final Lv85;
.super Let4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lo95;


# direct methods
.method public synthetic constructor <init>(Lo95;Lr45;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv85;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lv85;->f:Lo95;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Let4;-><init>(Ls55;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lv85;->e:I

    .line 2
    .line 3
    iget-object p0, p0, Lv85;->f:Lo95;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lr45;

    .line 11
    .line 12
    iget-object p0, p0, Lr45;->f:La25;

    .line 13
    .line 14
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, La25;->i:Lx15;

    .line 18
    .line 19
    const-string v0, "Tasks have been queued for a long time"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {p0}, Laz4;->v()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lo95;->M()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lr45;

    .line 38
    .line 39
    iget-object v0, v0, Lr45;->f:La25;

    .line 40
    .line 41
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, La25;->n:Lx15;

    .line 45
    .line 46
    const-string v1, "Inactivity, disconnecting from the service"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lo95;->D()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
