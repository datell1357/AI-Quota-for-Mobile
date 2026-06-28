.class public final Lbu;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public synthetic r:Z

.field public synthetic s:Ljava/lang/String;


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    check-cast p3, Ldh0;

    .line 10
    .line 11
    new-instance p1, Lbu;

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-direct {p1, v0, p3}, Lbv3;-><init>(ILdh0;)V

    .line 15
    .line 16
    .line 17
    iput-boolean p0, p1, Lbu;->r:Z

    .line 18
    .line 19
    iput-object p2, p1, Lbu;->s:Ljava/lang/String;

    .line 20
    .line 21
    sget-object p0, Lt64;->a:Lt64;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lbu;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbu;->r:Z

    .line 2
    .line 3
    iget-object p0, p0, Lbu;->s:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Ljs2;

    .line 13
    .line 14
    invoke-direct {v0, p1, p0}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
