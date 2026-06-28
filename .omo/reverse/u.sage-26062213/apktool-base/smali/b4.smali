.class public final synthetic Lb4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:Ly3;

.field public final synthetic o:Lne1;

.field public final synthetic p:Lqi0;

.field public final synthetic q:Lpg2;

.field public final synthetic r:Ln8;

.field public final synthetic s:Ln1;

.field public final synthetic t:Lps;

.field public final synthetic u:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ly3;Ljava/lang/String;Lne1;Lqi0;Lpg2;Ln8;Ln1;Lps;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb4;->n:Ly3;

    .line 5
    .line 6
    iput-object p3, p0, Lb4;->o:Lne1;

    .line 7
    .line 8
    iput-object p4, p0, Lb4;->p:Lqi0;

    .line 9
    .line 10
    iput-object p5, p0, Lb4;->q:Lpg2;

    .line 11
    .line 12
    iput-object p6, p0, Lb4;->r:Ln8;

    .line 13
    .line 14
    iput-object p7, p0, Lb4;->s:Ln1;

    .line 15
    .line 16
    iput-object p8, p0, Lb4;->t:Lps;

    .line 17
    .line 18
    iput-object p9, p0, Lb4;->u:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v2, p0, Lb4;->n:Ly3;

    .line 2
    .line 3
    iget-object v0, v2, Ly3;->a:Ly84;

    .line 4
    .line 5
    sget-object v1, Ly84;->s:Ly84;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lez3;->a:Lra3;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    iget-object p0, p0, Lb4;->q:Lpg2;

    .line 23
    .line 24
    invoke-interface {p0, v0}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lb4;->o:Lne1;

    .line 29
    .line 30
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    new-instance v0, Lr4;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    iget-object v1, p0, Lb4;->r:Ln8;

    .line 38
    .line 39
    iget-object v3, p0, Lb4;->s:Ln1;

    .line 40
    .line 41
    iget-object v4, p0, Lb4;->t:Lps;

    .line 42
    .line 43
    iget-object v5, p0, Lb4;->u:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct/range {v0 .. v7}, Lr4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    iget-object p0, p0, Lb4;->p:Lqi0;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {p0, v2, v2, v0, v1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 53
    .line 54
    .line 55
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 56
    .line 57
    return-object p0
.end method
