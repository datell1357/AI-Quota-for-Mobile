.class public final Lfj2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public final synthetic n:Lpg3;

.field public final synthetic o:Lyh2;

.field public final synthetic p:Lfc3;

.field public final synthetic q:Lpg2;

.field public final synthetic r:Ltr3;


# direct methods
.method public constructor <init>(Lpg3;Lyh2;Lgc3;Lpg2;Ltr3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfj2;->n:Lpg3;

    .line 5
    .line 6
    iput-object p2, p0, Lfj2;->o:Lyh2;

    .line 7
    .line 8
    iput-object p3, p0, Lfj2;->p:Lfc3;

    .line 9
    .line 10
    iput-object p4, p0, Lfj2;->q:Lpg2;

    .line 11
    .line 12
    iput-object p5, p0, Lfj2;->r:Ltr3;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lae;

    .line 2
    .line 3
    check-cast p2, Lyh2;

    .line 4
    .line 5
    check-cast p3, Lag1;

    .line 6
    .line 7
    check-cast p4, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    iget-object p4, p0, Lfj2;->n:Lpg3;

    .line 13
    .line 14
    iget-object p4, p4, Lpg3;->c:Lws2;

    .line 15
    .line 16
    invoke-virtual {p4}, Lws2;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    iget-object v0, p0, Lfj2;->o:Lyh2;

    .line 21
    .line 22
    invoke-static {p4, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    iget-object v0, p0, Lfj2;->q:Lpg2;

    .line 27
    .line 28
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    if-eqz p4, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object p4, p0, Lfj2;->r:Ltr3;

    .line 44
    .line 45
    invoke-interface {p4}, Ltr3;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    check-cast p4, Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-interface {p4, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    :cond_1
    invoke-interface {p4}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-interface {p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v1, v0

    .line 70
    check-cast v1, Lyh2;

    .line 71
    .line 72
    invoke-static {p2, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    .line 80
    :goto_0
    move-object p2, v0

    .line 81
    check-cast p2, Lyh2;

    .line 82
    .line 83
    :cond_3
    :goto_1
    const/4 p4, 0x0

    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    const p0, 0x650602c

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p0}, Lag1;->W(I)V

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-virtual {p3, p4}, Lag1;->p(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    const v0, -0x5aa2918b

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, v0}, Lag1;->W(I)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lqt0;

    .line 103
    .line 104
    invoke-direct {v0, p2, p1}, Lqt0;-><init>(Lyh2;Lae;)V

    .line 105
    .line 106
    .line 107
    const p1, -0x4b4ff5b3

    .line 108
    .line 109
    .line 110
    invoke-static {p1, v0, p3}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const/16 v0, 0x180

    .line 115
    .line 116
    iget-object p0, p0, Lfj2;->p:Lfc3;

    .line 117
    .line 118
    invoke-static {p2, p0, p1, p3, v0}, Lqj0;->j(Lyh2;Lfc3;Lka0;Lag1;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :goto_3
    sget-object p0, Lt64;->a:Lt64;

    .line 123
    .line 124
    return-object p0
.end method
