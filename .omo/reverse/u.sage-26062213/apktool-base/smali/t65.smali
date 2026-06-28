.class public final Lt65;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:J

.field public final synthetic q:J

.field public final synthetic r:Landroid/os/Bundle;

.field public final synthetic s:Z

.field public final synthetic t:Z

.field public final synthetic u:Z

.field public final synthetic v:Lm75;


# direct methods
.method public constructor <init>(Lm75;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lt65;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lt65;->o:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p4, p0, Lt65;->p:J

    .line 9
    .line 10
    iput-wide p6, p0, Lt65;->q:J

    .line 11
    .line 12
    iput-object p8, p0, Lt65;->r:Landroid/os/Bundle;

    .line 13
    .line 14
    iput-boolean p9, p0, Lt65;->s:Z

    .line 15
    .line 16
    iput-boolean p10, p0, Lt65;->t:Z

    .line 17
    .line 18
    iput-boolean p11, p0, Lt65;->u:Z

    .line 19
    .line 20
    iput-object p1, p0, Lt65;->v:Lm75;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-boolean v9, p0, Lt65;->t:Z

    .line 2
    .line 3
    iget-boolean v10, p0, Lt65;->u:Z

    .line 4
    .line 5
    iget-object v0, p0, Lt65;->v:Lm75;

    .line 6
    .line 7
    iget-object v1, p0, Lt65;->n:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lt65;->o:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v3, p0, Lt65;->p:J

    .line 12
    .line 13
    iget-wide v5, p0, Lt65;->q:J

    .line 14
    .line 15
    iget-object v7, p0, Lt65;->r:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-boolean v8, p0, Lt65;->s:Z

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v10}, Lm75;->E(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;ZZZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
