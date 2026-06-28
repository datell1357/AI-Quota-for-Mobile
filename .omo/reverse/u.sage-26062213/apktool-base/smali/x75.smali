.class public final Lx75;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:Lw75;

.field public final synthetic o:Lw75;

.field public final synthetic p:J

.field public final synthetic q:Z

.field public final synthetic r:Lf85;


# direct methods
.method public constructor <init>(Lf85;Lw75;Lw75;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lx75;->n:Lw75;

    .line 5
    .line 6
    iput-object p3, p0, Lx75;->o:Lw75;

    .line 7
    .line 8
    iput-wide p4, p0, Lx75;->p:J

    .line 9
    .line 10
    iput-boolean p6, p0, Lx75;->q:Z

    .line 11
    .line 12
    iput-object p1, p0, Lx75;->r:Lf85;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-boolean v5, p0, Lx75;->q:Z

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    iget-object v0, p0, Lx75;->r:Lf85;

    .line 5
    .line 6
    iget-object v1, p0, Lx75;->n:Lw75;

    .line 7
    .line 8
    iget-object v2, p0, Lx75;->o:Lw75;

    .line 9
    .line 10
    iget-wide v3, p0, Lx75;->p:J

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Lf85;->B(Lw75;Lw75;JZLandroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
