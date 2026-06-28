.class public final synthetic Lf92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lxi2;


# direct methods
.method public synthetic constructor <init>(Lxi2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf92;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lf92;->o:Lxi2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lf92;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lf92;->o:Lxi2;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lhj2;

    .line 11
    .line 12
    iget-object v1, p0, Lxi2;->a:Landroid/content/Context;

    .line 13
    .line 14
    iget-object p0, p0, Lxi2;->b:Lii2;

    .line 15
    .line 16
    iget-object p0, p0, Lii2;->t:Lmk2;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lxi2;->f:Lup;

    .line 29
    .line 30
    iget-boolean v2, p0, Lxi2;->g:Z

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget-object p0, p0, Lxi2;->b:Lii2;

    .line 36
    .line 37
    iget-object p0, p0, Lii2;->f:Lvh;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lvh;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    move v2, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    move v2, v3

    .line 54
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lyh2;

    .line 65
    .line 66
    iget-object v4, v4, Lyh2;->o:Lqi2;

    .line 67
    .line 68
    instance-of v4, v4, Lsi2;

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    if-ltz v2, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 78
    .line 79
    const-string v0, "Count overflow has happened."

    .line 80
    .line 81
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 86
    if-le v2, p0, :cond_4

    .line 87
    .line 88
    move v3, p0

    .line 89
    :cond_4
    invoke-virtual {v0, v3}, Lup;->e(Z)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :pswitch_1
    sget v0, Lu/sage/MainActivity;->C:I

    .line 94
    .line 95
    sget-object v0, Lue3;->c:Lue3;

    .line 96
    .line 97
    iget-object v0, v0, Lnq0;->a:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p0, v0}, Lxi2;->b(Lxi2;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :pswitch_2
    sget v0, Lu/sage/MainActivity;->C:I

    .line 106
    .line 107
    sget-object v0, Lse3;->c:Lse3;

    .line 108
    .line 109
    iget-object v0, v0, Lnq0;->a:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p0, v0}, Lxi2;->b(Lxi2;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
