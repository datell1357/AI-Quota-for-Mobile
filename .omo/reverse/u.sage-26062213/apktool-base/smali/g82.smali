.class public final Lg82;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:Lk82;

.field public final synthetic p:J

.field public final synthetic q:J

.field public final synthetic r:Lfv2;


# direct methods
.method public constructor <init>(Lk82;JJLfv2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg82;->o:Lk82;

    .line 2
    .line 3
    iput-wide p2, p0, Lg82;->p:J

    .line 4
    .line 5
    iput-wide p4, p0, Lg82;->q:J

    .line 6
    .line 7
    iput-object p6, p0, Lg82;->r:Lfv2;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lg82;->o:Lk82;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk82;->y0()Lf82;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v1, Lf82;->n:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Lk82;->y0()Lf82;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-wide v2, p0, Lg82;->p:J

    .line 15
    .line 16
    iput-wide v2, v1, Lf82;->o:J

    .line 17
    .line 18
    invoke-virtual {v0}, Lk82;->y0()Lf82;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-wide v2, p0, Lg82;->q:J

    .line 23
    .line 24
    iput-wide v2, v1, Lf82;->p:J

    .line 25
    .line 26
    iget-object p0, p0, Lg82;->r:Lfv2;

    .line 27
    .line 28
    iget-object p0, p0, Lfv2;->n:Leb2;

    .line 29
    .line 30
    invoke-interface {p0}, Leb2;->f()Lpe1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lk82;->y0()Lf82;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p0, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 44
    .line 45
    return-object p0
.end method
