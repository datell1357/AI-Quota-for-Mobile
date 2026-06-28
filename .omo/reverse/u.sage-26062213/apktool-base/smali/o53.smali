.class public final Lo53;
.super Lh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lki0;


# instance fields
.field public final synthetic o:Lcc0;

.field public final synthetic p:Lp53;


# direct methods
.method public constructor <init>(Lcc0;Lp53;)V
    .locals 1

    .line 1
    sget-object v0, Lw13;->t:Lw13;

    .line 2
    .line 3
    iput-object p1, p0, Lo53;->o:Lcc0;

    .line 4
    .line 5
    iput-object p2, p0, Lo53;->p:Lp53;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lh0;-><init>(Lgi0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final L(Lhi0;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Lh4;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    iget-object v2, p0, Lo53;->o:Lcc0;

    .line 6
    .line 7
    iget-object p0, p0, Lo53;->p:Lp53;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lmt1;->W(Ljava/lang/Throwable;Lne1;)Z

    .line 13
    .line 14
    .line 15
    sget-object v0, Lw13;->t:Lw13;

    .line 16
    .line 17
    iget-object p0, p0, Lp53;->n:Lhi0;

    .line 18
    .line 19
    invoke-interface {p0, v0}, Lhi0;->K(Lgi0;)Lfi0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lki0;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0, p1, p2}, Lki0;->L(Lhi0;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    throw p2
.end method
