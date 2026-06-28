.class public final synthetic Lld3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ldf1;

.field public final synthetic q:Lka0;

.field public final synthetic r:Ldf1;

.field public final synthetic s:Ldf1;

.field public final synthetic t:Ldf1;

.field public final synthetic u:Lhd4;


# direct methods
.method public synthetic constructor <init>(ILdf1;Lka0;Ldf1;Ldf1;Lhd4;Ldf1;I)V
    .locals 0

    .line 22
    const/4 p8, 0x1

    iput p8, p0, Lld3;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lld3;->o:I

    iput-object p2, p0, Lld3;->p:Ldf1;

    iput-object p3, p0, Lld3;->q:Lka0;

    iput-object p4, p0, Lld3;->r:Ldf1;

    iput-object p5, p0, Lld3;->s:Ldf1;

    iput-object p6, p0, Lld3;->u:Lhd4;

    iput-object p7, p0, Lld3;->t:Ldf1;

    return-void
.end method

.method public synthetic constructor <init>(ILdf1;Lka0;Ldf1;Ldf1;Lwg2;Ldf1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lld3;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lld3;->o:I

    .line 8
    .line 9
    iput-object p2, p0, Lld3;->p:Ldf1;

    .line 10
    .line 11
    iput-object p3, p0, Lld3;->q:Lka0;

    .line 12
    .line 13
    iput-object p4, p0, Lld3;->r:Ldf1;

    .line 14
    .line 15
    iput-object p5, p0, Lld3;->s:Ldf1;

    .line 16
    .line 17
    iput-object p6, p0, Lld3;->u:Lhd4;

    .line 18
    .line 19
    iput-object p7, p0, Lld3;->t:Ldf1;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lld3;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    move-object v10, p1

    .line 10
    check-cast v10, Lag1;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lqj0;->f0(I)I

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    iget v3, p0, Lld3;->o:I

    .line 22
    .line 23
    iget-object v4, p0, Lld3;->p:Ldf1;

    .line 24
    .line 25
    iget-object v5, p0, Lld3;->q:Lka0;

    .line 26
    .line 27
    iget-object v6, p0, Lld3;->r:Ldf1;

    .line 28
    .line 29
    iget-object v7, p0, Lld3;->s:Ldf1;

    .line 30
    .line 31
    iget-object v8, p0, Lld3;->u:Lhd4;

    .line 32
    .line 33
    iget-object v9, p0, Lld3;->t:Ldf1;

    .line 34
    .line 35
    invoke-static/range {v3 .. v11}, Ln44;->I(ILdf1;Lka0;Ldf1;Ldf1;Lhd4;Ldf1;Lag1;I)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_0
    iget-object v0, p0, Lld3;->u:Lhd4;

    .line 40
    .line 41
    move-object v8, v0

    .line 42
    check-cast v8, Lwg2;

    .line 43
    .line 44
    move-object v10, p1

    .line 45
    check-cast v10, Lag1;

    .line 46
    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    and-int/lit8 p2, p1, 0x3

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    if-eq p2, v0, :cond_0

    .line 57
    .line 58
    move p2, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 p2, 0x0

    .line 61
    :goto_0
    and-int/2addr p1, v2

    .line 62
    invoke-virtual {v10, p1, p2}, Lag1;->N(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    iget v3, p0, Lld3;->o:I

    .line 70
    .line 71
    iget-object v4, p0, Lld3;->p:Ldf1;

    .line 72
    .line 73
    iget-object v5, p0, Lld3;->q:Lka0;

    .line 74
    .line 75
    iget-object v6, p0, Lld3;->r:Ldf1;

    .line 76
    .line 77
    iget-object v7, p0, Lld3;->s:Ldf1;

    .line 78
    .line 79
    iget-object v9, p0, Lld3;->t:Ldf1;

    .line 80
    .line 81
    invoke-static/range {v3 .. v11}, Ln44;->I(ILdf1;Lka0;Ldf1;Ldf1;Lhd4;Ldf1;Lag1;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v10}, Lag1;->Q()V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-object v1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
