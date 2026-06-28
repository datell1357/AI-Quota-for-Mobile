.class public final Lag3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:Ldg3;

.field public s:Lv33;

.field public t:J

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ldg3;

.field public final synthetic x:Lv33;

.field public final synthetic y:J


# direct methods
.method public constructor <init>(Ldg3;Lv33;JLdh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lag3;->w:Ldg3;

    .line 2
    .line 3
    iput-object p2, p0, Lag3;->x:Lv33;

    .line 4
    .line 5
    iput-wide p3, p0, Lag3;->y:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lbg3;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lag3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lag3;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lag3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 6

    .line 1
    new-instance v0, Lag3;

    .line 2
    .line 3
    iget-object v2, p0, Lag3;->x:Lv33;

    .line 4
    .line 5
    iget-wide v3, p0, Lag3;->y:J

    .line 6
    .line 7
    iget-object v1, p0, Lag3;->w:Ldg3;

    .line 8
    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lag3;-><init>(Ldg3;Lv33;JLdh0;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, v0, Lag3;->v:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lag3;->u:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lhr2;->o:Lhr2;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-ne v0, v3, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lag3;->t:J

    .line 12
    .line 13
    iget-object v4, p0, Lag3;->s:Lv33;

    .line 14
    .line 15
    iget-object v5, p0, Lag3;->r:Ldg3;

    .line 16
    .line 17
    iget-object p0, p0, Lag3;->v:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Ldg3;

    .line 20
    .line 21
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lag3;->v:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lbg3;

    .line 37
    .line 38
    new-instance v0, Lh12;

    .line 39
    .line 40
    iget-object v5, p0, Lag3;->w:Ldg3;

    .line 41
    .line 42
    invoke-direct {v0, v3, v5, p1}, Lh12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v5, Ldg3;->c:Lto0;

    .line 46
    .line 47
    iget-object v4, p0, Lag3;->x:Lv33;

    .line 48
    .line 49
    iget-wide v6, v4, Lv33;->n:J

    .line 50
    .line 51
    iget-object v8, v5, Ldg3;->d:Lhr2;

    .line 52
    .line 53
    iget-wide v9, p0, Lag3;->y:J

    .line 54
    .line 55
    if-ne v8, v2, :cond_2

    .line 56
    .line 57
    invoke-static {v9, v10}, Lra4;->b(J)F

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v9, v10}, Lra4;->c(J)F

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    :goto_0
    invoke-virtual {v5, v8}, Ldg3;->e(F)F

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    iput-object v5, p0, Lag3;->v:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object v5, p0, Lag3;->r:Ldg3;

    .line 73
    .line 74
    iput-object v4, p0, Lag3;->s:Lv33;

    .line 75
    .line 76
    iput-wide v6, p0, Lag3;->t:J

    .line 77
    .line 78
    iput v3, p0, Lag3;->u:I

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v9, p1, Lto0;->b:Lku0;

    .line 84
    .line 85
    new-instance v10, Lso0;

    .line 86
    .line 87
    invoke-direct {v10, v8, p1, v0, v1}, Lso0;-><init>(FLto0;Lh12;Ldh0;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v9, v10, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget-object p0, Lri0;->n:Lri0;

    .line 95
    .line 96
    if-ne p1, p0, :cond_3

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    move-object p0, v5

    .line 100
    move-wide v0, v6

    .line 101
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p0, p1}, Ldg3;->e(F)F

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    iget-object p1, v5, Ldg3;->d:Lhr2;

    .line 112
    .line 113
    const/4 v5, 0x0

    .line 114
    if-ne p1, v2, :cond_4

    .line 115
    .line 116
    const/4 p1, 0x2

    .line 117
    invoke-static {v0, v1, p0, v5, p1}, Lra4;->a(JFFI)J

    .line 118
    .line 119
    .line 120
    move-result-wide p0

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    invoke-static {v0, v1, v5, p0, v3}, Lra4;->a(JFFI)J

    .line 123
    .line 124
    .line 125
    move-result-wide p0

    .line 126
    :goto_2
    iput-wide p0, v4, Lv33;->n:J

    .line 127
    .line 128
    sget-object p0, Lt64;->a:Lt64;

    .line 129
    .line 130
    return-object p0
.end method
