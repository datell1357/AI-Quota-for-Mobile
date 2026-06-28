.class public final synthetic Lgi2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Ls33;

.field public final synthetic o:Ls33;

.field public final synthetic p:Lii2;

.field public final synthetic q:Z

.field public final synthetic r:Lvh;


# direct methods
.method public synthetic constructor <init>(Ls33;Ls33;Lii2;ZLvh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgi2;->n:Ls33;

    .line 5
    .line 6
    iput-object p2, p0, Lgi2;->o:Ls33;

    .line 7
    .line 8
    iput-object p3, p0, Lgi2;->p:Lii2;

    .line 9
    .line 10
    iput-boolean p4, p0, Lgi2;->q:Z

    .line 11
    .line 12
    iput-object p5, p0, Lgi2;->r:Lvh;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lyh2;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgi2;->n:Ls33;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Ls33;->n:Z

    .line 10
    .line 11
    iget-object v0, p0, Lgi2;->o:Ls33;

    .line 12
    .line 13
    iput-boolean v1, v0, Ls33;->n:Z

    .line 14
    .line 15
    iget-object v0, p0, Lgi2;->p:Lii2;

    .line 16
    .line 17
    iget-boolean v1, p0, Lgi2;->q:Z

    .line 18
    .line 19
    iget-object p0, p0, Lgi2;->r:Lvh;

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, p0}, Lii2;->q(Lyh2;ZLvh;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lt64;->a:Lt64;

    .line 25
    .line 26
    return-object p0
.end method
