.class public final synthetic Lva2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Le54;

.field public final synthetic p:Lka0;


# direct methods
.method public synthetic constructor <init>(Le54;Lka0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lva2;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lva2;->o:Le54;

    .line 4
    .line 5
    iput-object p2, p0, Lva2;->p:Lka0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lva2;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lva2;->p:Lka0;

    .line 8
    .line 9
    iget-object p0, p0, Lva2;->o:Le54;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    check-cast p1, Lag1;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    move v0, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v3

    .line 30
    :goto_0
    and-int/2addr p2, v5

    .line 31
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Le54;->j:Lay3;

    .line 38
    .line 39
    invoke-static {p0, v4, p1, v3}, Llx3;->a(Lay3;Lka0;Lag1;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lag1;->Q()V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-object v1

    .line 47
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 48
    .line 49
    if-eq v0, v2, :cond_2

    .line 50
    .line 51
    move v3, v5

    .line 52
    :cond_2
    and-int/2addr p2, v5

    .line 53
    invoke-virtual {p1, p2, v3}, Lag1;->N(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    new-instance p2, Lva2;

    .line 60
    .line 61
    invoke-direct {p2, p0, v4, v5}, Lva2;-><init>(Le54;Lka0;I)V

    .line 62
    .line 63
    .line 64
    const p0, -0xe658f05

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p2, p1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/4 p2, 0x6

    .line 72
    invoke-static {p0, p1, p2}, Lex2;->a(Lka0;Lag1;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {p1}, Lag1;->Q()V

    .line 77
    .line 78
    .line 79
    :goto_2
    return-object v1

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
