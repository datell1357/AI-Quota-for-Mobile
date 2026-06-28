.class public final Lur0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lw70;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lvr0;


# direct methods
.method public synthetic constructor <init>(Lvr0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lur0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lur0;->o:Lvr0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    iget v0, p0, Lur0;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lur0;->o:Lvr0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lb93;->b:Llc0;

    .line 9
    .line 10
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lx83;

    .line 15
    .line 16
    sget-object v0, Lwa2;->a:Lis3;

    .line 17
    .line 18
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lua2;

    .line 23
    .line 24
    iget-object p0, p0, Lua2;->a:Ly70;

    .line 25
    .line 26
    iget-wide v0, p0, Ly70;->f:J

    .line 27
    .line 28
    return-wide v0

    .line 29
    :pswitch_0
    iget-object v0, p0, Lvr0;->G:Lw70;

    .line 30
    .line 31
    invoke-interface {v0}, Lw70;->a()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-wide/16 v2, 0x10

    .line 36
    .line 37
    cmp-long v4, v0, v2

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lb93;->b:Llc0;

    .line 43
    .line 44
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lx83;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-wide v0, v0, Lx83;->a:J

    .line 53
    .line 54
    cmp-long v2, v0, v2

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lbg0;->a:Llc0;

    .line 60
    .line 61
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lt70;

    .line 66
    .line 67
    iget-wide v0, p0, Lt70;->a:J

    .line 68
    .line 69
    :goto_0
    return-wide v0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
