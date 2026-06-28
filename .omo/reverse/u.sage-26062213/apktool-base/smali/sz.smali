.class public final synthetic Lsz;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:J

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLzr2;Lka0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsz;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lsz;->o:J

    .line 8
    .line 9
    iput-object p3, p0, Lsz;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lsz;->q:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnd2;JLjava/util/List;I)V
    .locals 0

    .line 14
    const/4 p5, 0x1

    iput p5, p0, Lsz;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsz;->p:Ljava/lang/Object;

    iput-wide p2, p0, Lsz;->o:J

    iput-object p4, p0, Lsz;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lsz;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lsz;->q:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lsz;->p:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v5, v4

    .line 14
    check-cast v5, Lnd2;

    .line 15
    .line 16
    move-object v8, v3

    .line 17
    check-cast v8, Ljava/util/List;

    .line 18
    .line 19
    move-object v9, p1

    .line 20
    check-cast v9, Lag1;

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lqj0;->f0(I)I

    .line 28
    .line 29
    .line 30
    move-result v10

    .line 31
    iget-wide v6, p0, Lsz;->o:J

    .line 32
    .line 33
    invoke-static/range {v5 .. v10}, Lzf5;->e(Lnd2;JLjava/util/List;Lag1;I)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_0
    check-cast v4, Lzr2;

    .line 38
    .line 39
    check-cast v3, Lka0;

    .line 40
    .line 41
    move-object v9, p1

    .line 42
    check-cast v9, Lag1;

    .line 43
    .line 44
    check-cast p2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    and-int/lit8 p2, p1, 0x3

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    if-eq p2, v0, :cond_0

    .line 54
    .line 55
    move p2, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p2, 0x0

    .line 58
    :goto_0
    and-int/2addr p1, v2

    .line 59
    invoke-virtual {v9, p1, p2}, Lag1;->N(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    sget-object p1, Lwa2;->a:Lis3;

    .line 66
    .line 67
    invoke-virtual {v9, p1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lua2;

    .line 72
    .line 73
    iget-object p1, p1, Lua2;->b:Le54;

    .line 74
    .line 75
    iget-object v7, p1, Le54;->m:Lay3;

    .line 76
    .line 77
    new-instance p1, Ll4;

    .line 78
    .line 79
    invoke-direct {p1, v0, v4, v3}, Ll4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const p2, 0x18e49c83

    .line 83
    .line 84
    .line 85
    invoke-static {p2, p1, v9}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    const/16 v10, 0x180

    .line 90
    .line 91
    iget-wide v5, p0, Lsz;->o:J

    .line 92
    .line 93
    invoke-static/range {v5 .. v10}, Lw80;->a(JLay3;Ldf1;Lag1;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v9}, Lag1;->Q()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-object v1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
