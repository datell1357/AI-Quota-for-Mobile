.class public final synthetic Ln4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lne1;

.field public final synthetic o:Lne1;

.field public final synthetic p:Ly84;

.field public final synthetic q:Z


# direct methods
.method public synthetic constructor <init>(Lne1;Lne1;Ly84;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln4;->n:Lne1;

    .line 5
    .line 6
    iput-object p2, p0, Ln4;->o:Lne1;

    .line 7
    .line 8
    iput-object p3, p0, Ln4;->p:Ly84;

    .line 9
    .line 10
    iput-boolean p4, p0, Ln4;->q:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0xc01

    .line 10
    .line 11
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-object v0, p0, Ln4;->n:Lne1;

    .line 16
    .line 17
    iget-object v1, p0, Ln4;->o:Lne1;

    .line 18
    .line 19
    iget-object v2, p0, Ln4;->p:Ly84;

    .line 20
    .line 21
    iget-boolean v3, p0, Ln4;->q:Z

    .line 22
    .line 23
    invoke-static/range {v0 .. v5}, Lix;->a(Lne1;Lne1;Ly84;ZLag1;I)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lt64;->a:Lt64;

    .line 27
    .line 28
    return-object p0
.end method
