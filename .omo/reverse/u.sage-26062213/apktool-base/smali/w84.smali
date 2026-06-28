.class public final synthetic Lw84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:F

.field public final synthetic o:F

.field public final synthetic p:Z

.field public final synthetic q:Lnd2;

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:J


# direct methods
.method public synthetic constructor <init>(FFZLnd2;JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lw84;->n:F

    .line 5
    .line 6
    iput p2, p0, Lw84;->o:F

    .line 7
    .line 8
    iput-boolean p3, p0, Lw84;->p:Z

    .line 9
    .line 10
    iput-object p4, p0, Lw84;->q:Lnd2;

    .line 11
    .line 12
    iput-wide p5, p0, Lw84;->r:J

    .line 13
    .line 14
    iput-wide p7, p0, Lw84;->s:J

    .line 15
    .line 16
    iput-wide p9, p0, Lw84;->t:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 11
    .line 12
    .line 13
    move-result v11

    .line 14
    iget v0, p0, Lw84;->n:F

    .line 15
    .line 16
    iget v1, p0, Lw84;->o:F

    .line 17
    .line 18
    iget-boolean v2, p0, Lw84;->p:Z

    .line 19
    .line 20
    iget-object v3, p0, Lw84;->q:Lnd2;

    .line 21
    .line 22
    iget-wide v4, p0, Lw84;->r:J

    .line 23
    .line 24
    iget-wide v6, p0, Lw84;->s:J

    .line 25
    .line 26
    iget-wide v8, p0, Lw84;->t:J

    .line 27
    .line 28
    invoke-static/range {v0 .. v11}, Lkt4;->f(FFZLnd2;JJJLag1;I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lt64;->a:Lt64;

    .line 32
    .line 33
    return-object p0
.end method
