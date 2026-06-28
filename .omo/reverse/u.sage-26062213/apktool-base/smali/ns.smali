.class public final Lns;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Z

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ldh0;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lns;->s:Z

    .line 2
    .line 3
    iput-object p2, p0, Lns;->t:Ljava/lang/String;

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
    check-cast p1, Lhg2;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lns;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lns;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lns;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    new-instance v0, Lns;

    .line 2
    .line 3
    iget-boolean v1, p0, Lns;->s:Z

    .line 4
    .line 5
    iget-object p0, p0, Lns;->t:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1}, Lns;-><init>(ZLjava/lang/String;Ldh0;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, v0, Lns;->r:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lns;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lhg2;

    .line 4
    .line 5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lns;->s:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lps;->o:Lrx2;

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lns;->t:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    sget-object p1, Lps;->p:Lrx2;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p0, Lps;->o:Lrx2;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lhg2;->d(Lrx2;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lps;->p:Lrx2;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lhg2;->d(Lrx2;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 40
    .line 41
    return-object p0
.end method
