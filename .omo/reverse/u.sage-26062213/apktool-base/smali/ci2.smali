.class public final synthetic Lci2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Z

.field public final synthetic p:Lef1;


# direct methods
.method public synthetic constructor <init>(Lpe1;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lci2;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p2, p0, Lci2;->o:Z

    .line 8
    .line 9
    iput-object p1, p0, Lci2;->p:Lef1;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(ZLdf1;II)V
    .locals 0

    .line 12
    iput p4, p0, Lci2;->n:I

    iput-boolean p1, p0, Lci2;->o:Z

    iput-object p2, p0, Lci2;->p:Lef1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lci2;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-boolean v2, p0, Lci2;->o:Z

    .line 5
    .line 6
    sget-object v3, Lt64;->a:Lt64;

    .line 7
    .line 8
    iget-object v4, p0, Lci2;->p:Lef1;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v4, Lka0;

    .line 14
    .line 15
    check-cast p1, Lag1;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 p0, 0x181

    .line 23
    .line 24
    invoke-static {p0}, Lqj0;->f0(I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {v2, v4, p1, p0}, Lgy3;->a(ZLka0;Lag1;I)V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :pswitch_0
    move-object v6, v4

    .line 33
    check-cast v6, Lpe1;

    .line 34
    .line 35
    move-object v10, p1

    .line 36
    check-cast v10, Lag1;

    .line 37
    .line 38
    check-cast p2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    and-int/lit8 p2, p1, 0x3

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    if-eq p2, v0, :cond_0

    .line 48
    .line 49
    move p2, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    and-int/2addr p1, v1

    .line 53
    invoke-virtual {v10, p1, p2}, Lag1;->N(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    sget-object p1, Lwa2;->a:Lis3;

    .line 60
    .line 61
    invoke-virtual {v10, p1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lua2;

    .line 66
    .line 67
    iget-object p1, p1, Lua2;->a:Ly70;

    .line 68
    .line 69
    iget-wide p1, p1, Ly70;->F:J

    .line 70
    .line 71
    invoke-static {p1, p2, v10}, Lzf5;->u(JLag1;)Lgv3;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const/4 v11, 0x0

    .line 76
    iget-boolean v5, p0, Lci2;->o:Z

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    invoke-static/range {v5 .. v11}, Ljv3;->a(ZLpe1;Lnd2;ZLgv3;Lag1;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v10}, Lag1;->Q()V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-object v3

    .line 88
    :pswitch_1
    check-cast v4, Ldf1;

    .line 89
    .line 90
    check-cast p1, Lag1;

    .line 91
    .line 92
    check-cast p2, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-static {v2, v4, p1, p0}, Ldm0;->h(ZLdf1;Lag1;I)V

    .line 102
    .line 103
    .line 104
    return-object v3

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
