.class public final Lvf2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxs1;


# instance fields
.field public final a:Lwl3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lxl3;->a(II)Lwl3;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lvf2;->a:Lwl3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lvf2;->a:Lwl3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lws1;Ldh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lvf2;->a:Lwl3;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwl3;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lri0;->n:Lri0;

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 13
    .line 14
    return-object p0
.end method

.method public final c(Lws1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lvf2;->a:Lwl3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lwl3;->q(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
