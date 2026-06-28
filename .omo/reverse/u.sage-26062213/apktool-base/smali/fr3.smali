.class public final Lfr3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldh0;
.implements Lsi0;


# instance fields
.field public final n:Ldh0;

.field public final o:Lhi0;


# direct methods
.method public constructor <init>(Ldh0;Lhi0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfr3;->n:Ldh0;

    .line 5
    .line 6
    iput-object p2, p0, Lfr3;->o:Lhi0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()Lsi0;
    .locals 1

    .line 1
    iget-object p0, p0, Lfr3;->n:Ldh0;

    .line 2
    .line 3
    instance-of v0, p0, Lsi0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lsi0;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final e()Lhi0;
    .locals 0

    .line 1
    iget-object p0, p0, Lfr3;->o:Lhi0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfr3;->n:Ldh0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ldh0;->g(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
