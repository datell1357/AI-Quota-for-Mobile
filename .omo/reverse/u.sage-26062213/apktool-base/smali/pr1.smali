.class public abstract Lpr1;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb24;


# instance fields
.field public B:Lhd4;

.field public C:Lhd4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lc75;->g:Lj71;

    .line 5
    .line 6
    iput-object v0, p0, Lpr1;->B:Lhd4;

    .line 7
    .line 8
    iput-object v0, p0, Lpr1;->C:Lhd4;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    .line 1
    sget-object v0, Lc75;->g:Lj71;

    .line 2
    .line 3
    iput-object v0, p0, Lpr1;->B:Lhd4;

    .line 4
    .line 5
    return-void
.end method

.method public abstract G0(Lhd4;)Lhd4;
.end method

.method public H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpr1;->B:Lhd4;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lpr1;->G0(Lhd4;)Lhd4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lpr1;->C:Lhd4;

    .line 8
    .line 9
    new-instance v0, Lor1;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lor1;-><init>(Lpr1;I)V

    .line 13
    .line 14
    .line 15
    const-string v1, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    .line 16
    .line 17
    invoke-static {p0, v1, v0}, Lqj0;->d0(Lmd2;Ljava/lang/String;Lpe1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final n()Ljava/lang/Object;
    .locals 0

    .line 1
    const-string p0, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    .line 2
    .line 3
    return-object p0
.end method

.method public final y0()V
    .locals 2

    .line 1
    new-instance v0, Lor1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lor1;-><init>(Lpr1;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    .line 8
    .line 9
    invoke-static {p0, v1, v0}, Lqj0;->b0(Lmd2;Ljava/lang/Object;Lpe1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lpr1;->H0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpr1;->B:Lhd4;

    .line 2
    .line 3
    iput-object v0, p0, Lpr1;->C:Lhd4;

    .line 4
    .line 5
    new-instance v0, Lor1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lor1;-><init>(Lpr1;I)V

    .line 9
    .line 10
    .line 11
    const-string v1, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lqj0;->d0(Lmd2;Ljava/lang/String;Lpe1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
