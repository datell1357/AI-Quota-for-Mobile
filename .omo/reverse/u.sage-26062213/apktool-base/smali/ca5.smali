.class public final Lca5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final n:J

.field public final o:J

.field public final synthetic p:Lpc4;


# direct methods
.method public constructor <init>(Lpc4;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lca5;->p:Lpc4;

    .line 8
    .line 9
    iput-wide p2, p0, Lca5;->n:J

    .line 10
    .line 11
    iput-wide p4, p0, Lca5;->o:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lca5;->p:Lpc4;

    .line 2
    .line 3
    iget-object v0, v0, Lpc4;->p:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lia5;

    .line 6
    .line 7
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr45;

    .line 10
    .line 11
    iget-object v0, v0, Lr45;->g:Lj45;

    .line 12
    .line 13
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lo9;

    .line 17
    .line 18
    const/16 v2, 0x13

    .line 19
    .line 20
    invoke-direct {v1, v2, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
