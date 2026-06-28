.class public final Lnp;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public B:Lvy3;

.field public final synthetic C:Lop;


# direct methods
.method public constructor <init>(Lop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnp;->C:Lop;

    .line 2
    .line 3
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final y0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lnp;->C:Lop;

    .line 2
    .line 3
    iput-object p0, v0, Lop;->b:Lnp;

    .line 4
    .line 5
    iget-object v1, v0, Lop;->c:Lz80;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v7, Lm;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v7, v1, p0, v0}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    move-object v2, p0

    .line 20
    invoke-static/range {v2 .. v7}, Lqj0;->T(Lmd2;JJLpe1;)Lvy3;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, v2, Lnp;->B:Lvy3;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final z0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnp;->C:Lop;

    .line 2
    .line 3
    iget-object v1, v0, Lop;->b:Lnp;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v1, p0, :cond_0

    .line 7
    .line 8
    iput-object v2, v0, Lop;->b:Lnp;

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lnp;->B:Lvy3;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lvy3;->b()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iput-object v2, p0, Lnp;->B:Lvy3;

    .line 18
    .line 19
    return-void
.end method
