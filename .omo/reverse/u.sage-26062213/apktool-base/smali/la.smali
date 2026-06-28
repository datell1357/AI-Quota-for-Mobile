.class public final Lla;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:Lxt0;

.field public final synthetic p:Lne1;

.field public final synthetic q:Lvt0;

.field public final synthetic r:Lhy1;


# direct methods
.method public constructor <init>(Lxt0;Lne1;Lvt0;Lhy1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lla;->o:Lxt0;

    .line 2
    .line 3
    iput-object p2, p0, Lla;->p:Lne1;

    .line 4
    .line 5
    iput-object p3, p0, Lla;->q:Lvt0;

    .line 6
    .line 7
    iput-object p4, p0, Lla;->r:Lhy1;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lla;->q:Lvt0;

    .line 2
    .line 3
    iget-object v1, p0, Lla;->r:Lhy1;

    .line 4
    .line 5
    iget-object v2, p0, Lla;->o:Lxt0;

    .line 6
    .line 7
    iget-object p0, p0, Lla;->p:Lne1;

    .line 8
    .line 9
    invoke-virtual {v2, p0, v0, v1}, Lxt0;->e(Lne1;Lvt0;Lhy1;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lt64;->a:Lt64;

    .line 13
    .line 14
    return-object p0
.end method
