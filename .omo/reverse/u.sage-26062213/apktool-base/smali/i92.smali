.class public final Li92;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lxi2;

.field public final synthetic t:Lu/sage/MainActivity;

.field public final synthetic u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lxi2;Lu/sage/MainActivity;Ljava/lang/String;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li92;->s:Lxi2;

    .line 2
    .line 3
    iput-object p2, p0, Li92;->t:Lu/sage/MainActivity;

    .line 4
    .line 5
    iput-object p3, p0, Li92;->u:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Li92;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Li92;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Li92;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 3

    .line 1
    new-instance v0, Li92;

    .line 2
    .line 3
    iget-object v1, p0, Li92;->t:Lu/sage/MainActivity;

    .line 4
    .line 5
    iget-object v2, p0, Li92;->u:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Li92;->s:Lxi2;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p1}, Li92;-><init>(Lxi2;Lu/sage/MainActivity;Ljava/lang/String;Ldh0;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, v0, Li92;->r:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Li92;->s:Lxi2;

    .line 2
    .line 3
    iget-object v1, p0, Li92;->r:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p1, v0, Lxi2;->b:Lii2;

    .line 11
    .line 12
    iget-object p1, p1, Lii2;->h:Lb23;

    .line 13
    .line 14
    iget-object p1, p1, Lb23;->n:Lwr3;

    .line 15
    .line 16
    invoke-virtual {p1}, Lwr3;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Iterable;

    .line 21
    .line 22
    instance-of v2, p1, Ljava/util/Collection;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move-object v2, p1

    .line 27
    check-cast v2, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lyh2;

    .line 53
    .line 54
    iget-object v2, v2, Lyh2;->o:Lqi2;

    .line 55
    .line 56
    iget-object v2, v2, Lqi2;->o:Lgg;

    .line 57
    .line 58
    iget-object v2, v2, Lgg;->e:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v2, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-static {v0, v1}, Lxi2;->d(Lxi2;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_0
    iget-object p1, p0, Li92;->u:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v2, Lao0;

    .line 75
    .line 76
    const/4 v3, 0x7

    .line 77
    invoke-direct {v2, p1, v3}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lxi2;->a(Ljava/lang/String;Lpe1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :goto_1
    sget-object v0, Lez3;->a:Lra3;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lra3;->g([Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Li92;->t:Lu/sage/MainActivity;

    .line 96
    .line 97
    invoke-virtual {p0}, Lu/sage/MainActivity;->i()Ln8;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-nez p1, :cond_3

    .line 106
    .line 107
    const-string p1, "Unknown error"

    .line 108
    .line 109
    :cond_3
    const/4 v0, 0x0

    .line 110
    const-string v1, "navigation"

    .line 111
    .line 112
    invoke-virtual {p0, v0, v1, p1}, Ln8;->c(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    sget-object p0, Lt64;->a:Lt64;

    .line 116
    .line 117
    return-object p0
.end method
