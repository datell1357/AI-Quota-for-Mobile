.class public final synthetic Luk3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:Lqi0;

.field public final synthetic o:Ln8;

.field public final synthetic p:Z

.field public final synthetic q:Laj3;

.field public final synthetic r:Lpg2;


# direct methods
.method public synthetic constructor <init>(Ln8;Lqi0;Lpg2;Laj3;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Luk3;->n:Lqi0;

    .line 5
    .line 6
    iput-object p1, p0, Luk3;->o:Ln8;

    .line 7
    .line 8
    iput-boolean p5, p0, Luk3;->p:Z

    .line 9
    .line 10
    iput-object p4, p0, Luk3;->q:Laj3;

    .line 11
    .line 12
    iput-object p3, p0, Luk3;->r:Lpg2;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lfl3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Luk3;->q:Laj3;

    .line 5
    .line 6
    iget-boolean v3, p0, Luk3;->p:Z

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v4, v1}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    iget-object v2, p0, Luk3;->n:Lqi0;

    .line 14
    .line 15
    invoke-static {v2, v4, v4, v0, v1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Luk3;->r:Lpg2;

    .line 19
    .line 20
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ly84;

    .line 25
    .line 26
    xor-int/lit8 v1, v3, 0x1

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object p0, p0, Luk3;->o:Ln8;

    .line 33
    .line 34
    const-string v2, "rolling_window_enabled"

    .line 35
    .line 36
    invoke-virtual {p0, v0, v2, v1}, Ln8;->i(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lt64;->a:Lt64;

    .line 40
    .line 41
    return-object p0
.end method
