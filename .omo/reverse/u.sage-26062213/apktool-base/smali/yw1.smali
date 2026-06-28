.class public final Lyw1;
.super Le83;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public p:I

.field public synthetic q:Lzn0;

.field public final synthetic r:Ld90;


# direct methods
.method public constructor <init>(Ld90;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyw1;->r:Ld90;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Le83;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lzn0;

    .line 2
    .line 3
    check-cast p2, Lt64;

    .line 4
    .line 5
    check-cast p3, Ldh0;

    .line 6
    .line 7
    new-instance p2, Lyw1;

    .line 8
    .line 9
    iget-object p0, p0, Lyw1;->r:Ld90;

    .line 10
    .line 11
    invoke-direct {p2, p0, p3}, Lyw1;-><init>(Ld90;Ldh0;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p2, Lyw1;->q:Lzn0;

    .line 15
    .line 16
    sget-object p0, Lt64;->a:Lt64;

    .line 17
    .line 18
    invoke-virtual {p2, p0}, Lyw1;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lyw1;->r:Ld90;

    .line 2
    .line 3
    iget-object v1, v0, Ld90;->p:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lvi2;

    .line 6
    .line 7
    iget v2, p0, Lyw1;->p:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v4, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lyw1;->q:Lzn0;

    .line 29
    .line 30
    invoke-virtual {v1}, Lvi2;->t()B

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne v2, v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ld90;->l(Z)Ltw1;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    const/4 v5, 0x0

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Ld90;->l(Z)Ltw1;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    const/4 v6, 0x6

    .line 50
    if-ne v2, v6, :cond_5

    .line 51
    .line 52
    iput v4, p0, Lyw1;->p:I

    .line 53
    .line 54
    invoke-static {v0, p1, p0}, Ld90;->a(Ld90;Lzn0;Ldr;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object p0, Lri0;->n:Lri0;

    .line 59
    .line 60
    if-ne p1, p0, :cond_4

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_4
    :goto_0
    check-cast p1, Lxv1;

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_5
    const/16 p0, 0x8

    .line 67
    .line 68
    if-ne v2, p0, :cond_6

    .line 69
    .line 70
    invoke-virtual {v0}, Ld90;->k()Lkv1;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_6
    const-string p0, "Can\'t begin reading element, unexpected token"

    .line 76
    .line 77
    invoke-static {v1, p0, v5, v3, v6}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    throw v3
.end method
