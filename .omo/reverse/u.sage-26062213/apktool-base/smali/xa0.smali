.class public final Lxa0;
.super Lcf0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final f:Lwa0;

.field public final g:Lka0;


# direct methods
.method public constructor <init>(Lwa0;Ljava/lang/String;Lka0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcf0;-><init>(Llk2;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxa0;->f:Lwa0;

    .line 5
    .line 6
    iput-object p3, p0, Lxa0;->g:Lka0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lqi2;
    .locals 0

    .line 1
    invoke-super {p0}, Lcf0;->a()Lqi2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lva0;

    .line 6
    .line 7
    return-object p0
.end method

.method public final b()Lqi2;
    .locals 2

    .line 1
    new-instance v0, Lva0;

    .line 2
    .line 3
    iget-object v1, p0, Lxa0;->f:Lwa0;

    .line 4
    .line 5
    iget-object p0, p0, Lxa0;->g:Lka0;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lva0;-><init>(Lwa0;Lka0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
