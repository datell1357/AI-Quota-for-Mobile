.class public final Lq40;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leh3;


# instance fields
.field public B:Lt3;


# virtual methods
.method public final a0(Lph3;)V
    .locals 3

    .line 1
    sget-object v0, Lmj1;->c0:Lmj1;

    .line 2
    .line 3
    new-instance v1, Lp40;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lp40;-><init>(Lph3;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0, v1}, Lqj0;->b0(Lmd2;Ljava/lang/Object;Lpe1;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lq40;->B:Lt3;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final z0()V
    .locals 3

    .line 1
    sget-object v0, Lmj1;->c0:Lmj1;

    .line 2
    .line 3
    new-instance v1, Lt3;

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lt3;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Lqj0;->b0(Lmd2;Ljava/lang/Object;Lpe1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
