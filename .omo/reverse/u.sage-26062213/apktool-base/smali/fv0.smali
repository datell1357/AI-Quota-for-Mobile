.class public final Lfv0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lm53;


# instance fields
.field public final n:Lpe1;

.field public o:Lgv0;


# direct methods
.method public constructor <init>(Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfv0;->n:Lpe1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfv0;->n:Lpe1;

    .line 2
    .line 3
    sget-object v1, Lzf5;->e:Lhv0;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lgv0;

    .line 10
    .line 11
    iput-object v0, p0, Lfv0;->o:Lgv0;

    .line 12
    .line 13
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfv0;->o:Lgv0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lgv0;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lfv0;->o:Lgv0;

    .line 10
    .line 11
    return-void
.end method
