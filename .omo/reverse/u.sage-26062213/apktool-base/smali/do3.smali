.class public final synthetic Ldo3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ldo3;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Ldo3;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ldo3;->p:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ldo3;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Ldo3;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Ldo3;->o:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lpe1;

    .line 13
    .line 14
    check-cast v2, Ly84;

    .line 15
    .line 16
    invoke-interface {p0, v2}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    check-cast p0, Lfo3;

    .line 21
    .line 22
    check-cast v2, Lm41;

    .line 23
    .line 24
    iget-object v0, v2, Lm41;->a:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_5

    .line 31
    .line 32
    iget-object v0, v2, Lm41;->b:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    sub-int/2addr v3, v4

    .line 43
    const/4 v5, 0x0

    .line 44
    if-ltz v3, :cond_3

    .line 45
    .line 46
    move v6, v5

    .line 47
    :goto_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    move-object v8, v7

    .line 52
    check-cast v8, Ll41;

    .line 53
    .line 54
    iget-object v8, v8, Ll41;->a:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {v8, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-ne v8, v4, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    if-eq v6, v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    :goto_1
    if-eq v5, v3, :cond_2

    .line 71
    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v5, v6

    .line 76
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-ge v5, p0, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    sub-int/2addr p0, v4

    .line 87
    if-gt v5, p0, :cond_4

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    if-eq p0, v5, :cond_4

    .line 93
    .line 94
    add-int/lit8 p0, p0, -0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    iget-object p0, v2, Lm41;->c:Lc33;

    .line 98
    .line 99
    if-eqz p0, :cond_5

    .line 100
    .line 101
    iget-object v0, p0, Lc33;->a:Lec0;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, p0, v2}, Lec0;->s(Lc33;Ljava/lang/Object;)Lau1;

    .line 107
    .line 108
    .line 109
    :cond_5
    return-object v1

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
