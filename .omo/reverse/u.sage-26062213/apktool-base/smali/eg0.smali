.class public final Leg0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lt74;

.field public final synthetic u:Lfg0;

.field public final synthetic v:Lgy;

.field public final synthetic w:J

.field public final synthetic x:Ltu1;


# direct methods
.method public constructor <init>(Lt74;Lfg0;Lgy;JLtu1;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leg0;->t:Lt74;

    .line 2
    .line 3
    iput-object p2, p0, Leg0;->u:Lfg0;

    .line 4
    .line 5
    iput-object p3, p0, Leg0;->v:Lgy;

    .line 6
    .line 7
    iput-wide p4, p0, Leg0;->w:J

    .line 8
    .line 9
    iput-object p6, p0, Leg0;->x:Ltu1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p7}, Lbv3;-><init>(ILdh0;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p2, p1}, Leg0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Leg0;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Leg0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 8

    .line 1
    new-instance v0, Leg0;

    .line 2
    .line 3
    iget-wide v4, p0, Leg0;->w:J

    .line 4
    .line 5
    iget-object v6, p0, Leg0;->x:Ltu1;

    .line 6
    .line 7
    iget-object v1, p0, Leg0;->t:Lt74;

    .line 8
    .line 9
    iget-object v2, p0, Leg0;->u:Lfg0;

    .line 10
    .line 11
    iget-object v3, p0, Leg0;->v:Lgy;

    .line 12
    .line 13
    move-object v7, p1

    .line 14
    invoke-direct/range {v0 .. v7}, Leg0;-><init>(Lt74;Lfg0;Lgy;JLtu1;Ldh0;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, v0, Leg0;->s:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Leg0;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Leg0;->s:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lbg3;

    .line 25
    .line 26
    iget-wide v2, p0, Leg0;->w:J

    .line 27
    .line 28
    iget-object v0, p0, Leg0;->u:Lfg0;

    .line 29
    .line 30
    iget-object v4, p0, Leg0;->v:Lgy;

    .line 31
    .line 32
    invoke-static {v0, v4, v2, v3}, Lfg0;->G0(Lfg0;Lgy;J)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Leg0;->t:Lt74;

    .line 37
    .line 38
    iput v2, v3, Lt74;->e:F

    .line 39
    .line 40
    new-instance v2, Lmd;

    .line 41
    .line 42
    iget-object v5, p0, Leg0;->x:Ltu1;

    .line 43
    .line 44
    invoke-direct {v2, v0, v3, v5, p1}, Lmd;-><init>(Lfg0;Lt74;Ltu1;Lbg3;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lpp;

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    invoke-direct {p1, v0, v3, v4, v5}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    iput v1, p0, Leg0;->r:I

    .line 54
    .line 55
    invoke-virtual {v3, v2, p1, p0}, Lt74;->a(Lmd;Lpp;Lfh0;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget-object p1, Lri0;->n:Lri0;

    .line 60
    .line 61
    if-ne p0, p1, :cond_2

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_2
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 65
    .line 66
    return-object p0
.end method
