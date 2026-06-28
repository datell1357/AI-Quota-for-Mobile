.class public final Lee;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:Lge;

.field public final synthetic p:Ldv2;

.field public final synthetic q:J


# direct methods
.method public constructor <init>(Lge;Ldv2;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee;->o:Lge;

    .line 2
    .line 3
    iput-object p2, p0, Lee;->p:Ldv2;

    .line 4
    .line 5
    iput-wide p3, p0, Lee;->q:J

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcv2;

    .line 2
    .line 3
    iget-object v0, p0, Lee;->o:Lge;

    .line 4
    .line 5
    iget-object v0, v0, Lge;->D:Lhe;

    .line 6
    .line 7
    iget-object v1, v0, Lhe;->b:Lcw;

    .line 8
    .line 9
    iget-object v0, p0, Lee;->p:Ldv2;

    .line 10
    .line 11
    iget v2, v0, Ldv2;->n:I

    .line 12
    .line 13
    iget v3, v0, Ldv2;->o:I

    .line 14
    .line 15
    int-to-long v4, v2

    .line 16
    const/16 v2, 0x20

    .line 17
    .line 18
    shl-long/2addr v4, v2

    .line 19
    int-to-long v2, v3

    .line 20
    const-wide v6, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v2, v6

    .line 26
    or-long/2addr v2, v4

    .line 27
    sget-object v6, Lhy1;->n:Lhy1;

    .line 28
    .line 29
    iget-wide v4, p0, Lee;->q:J

    .line 30
    .line 31
    invoke-virtual/range {v1 .. v6}, Lcw;->a(JJLhy1;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-static {p1, v0, v1, v2}, Lcv2;->i(Lcv2;Ldv2;J)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lt64;->a:Lt64;

    .line 39
    .line 40
    return-object p0
.end method
