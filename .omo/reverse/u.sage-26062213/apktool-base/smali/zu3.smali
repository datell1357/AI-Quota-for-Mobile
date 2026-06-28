.class public final synthetic Lzu3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Lw33;

.field public final synthetic o:F

.field public final synthetic p:Lre;

.field public final synthetic q:Lwe;

.field public final synthetic r:Lpe1;


# direct methods
.method public synthetic constructor <init>(Lw33;FLre;Lwe;Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzu3;->n:Lw33;

    .line 5
    .line 6
    iput p2, p0, Lzu3;->o:F

    .line 7
    .line 8
    iput-object p3, p0, Lzu3;->p:Lre;

    .line 9
    .line 10
    iput-object p4, p0, Lzu3;->q:Lwe;

    .line 11
    .line 12
    iput-object p5, p0, Lzu3;->r:Lpe1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object p1, p0, Lzu3;->n:Lw33;

    .line 8
    .line 9
    iget-object p1, p1, Lw33;->n:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lue;

    .line 16
    .line 17
    iget v3, p0, Lzu3;->o:F

    .line 18
    .line 19
    iget-object v4, p0, Lzu3;->p:Lre;

    .line 20
    .line 21
    iget-object v5, p0, Lzu3;->q:Lwe;

    .line 22
    .line 23
    iget-object v6, p0, Lzu3;->r:Lpe1;

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Lk75;->t(Lue;JFLre;Lwe;Lpe1;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lt64;->a:Lt64;

    .line 29
    .line 30
    return-object p0
.end method
