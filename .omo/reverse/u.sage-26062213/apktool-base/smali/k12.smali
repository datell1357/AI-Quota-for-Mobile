.class public final Lk12;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ln12;

.field public final synthetic u:I


# direct methods
.method public constructor <init>(Ln12;ILdh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk12;->t:Ln12;

    .line 2
    .line 3
    iput p2, p0, Lk12;->u:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljf3;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lk12;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lk12;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lk12;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    new-instance v0, Lk12;

    .line 2
    .line 3
    iget-object v1, p0, Lk12;->t:Ln12;

    .line 4
    .line 5
    iget p0, p0, Lk12;->u:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1}, Lk12;-><init>(Ln12;ILdh0;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, v0, Lk12;->s:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lk12;->r:I

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
    iget-object p1, p0, Lk12;->s:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Ljf3;

    .line 25
    .line 26
    new-instance v0, Lh12;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lk12;->t:Ln12;

    .line 30
    .line 31
    invoke-direct {v0, v2, p1, v3}, Lh12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v3, Ln12;->f:Lws2;

    .line 35
    .line 36
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lf12;

    .line 41
    .line 42
    iget-object p1, p1, Lf12;->i:Las0;

    .line 43
    .line 44
    iput v1, p0, Lk12;->r:I

    .line 45
    .line 46
    iget v1, p0, Lk12;->u:I

    .line 47
    .line 48
    const/16 v2, 0x64

    .line 49
    .line 50
    invoke-static {v0, v1, v2, p1, p0}, Ln44;->M(Lh12;IILas0;Lfh0;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object p1, Lri0;->n:Lri0;

    .line 55
    .line 56
    if-ne p0, p1, :cond_2

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 60
    .line 61
    return-object p0
.end method
