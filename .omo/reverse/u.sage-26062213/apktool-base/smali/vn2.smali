.class public final Lvn2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# instance fields
.field public final a:Lqz1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt52;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lt52;-><init>(Lvn2;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lv12;->n:Lv12;

    .line 10
    .line 11
    invoke-static {v1, v0}, Ldm0;->C(Lv12;Lne1;)Lqz1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lvn2;->a:Lqz1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lvn2;->d()Lgi3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lvn0;->A(Lgi3;)Lxb0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lvn2;->d()Lgi3;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p1, p0}, Lxb0;->h(Lgi3;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne p0, v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lxb0;->p(Lgi3;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lt64;->a:Lt64;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p1, Lmi3;

    .line 27
    .line 28
    const-string v0, "Unexpected index "

    .line 29
    .line 30
    invoke-static {p0, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lvn2;->d()Lgi3;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lkotlinx/serialization/json/internal/b;->a(Lgi3;)Lkotlinx/serialization/json/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lvn2;->d()Lgi3;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->s(Lgi3;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    iget-object p0, p0, Lvn2;->a:Lqz1;

    .line 2
    .line 3
    invoke-interface {p0}, Lqz1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgi3;

    .line 8
    .line 9
    return-object p0
.end method
