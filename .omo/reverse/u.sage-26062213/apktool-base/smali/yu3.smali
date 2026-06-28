.class public final synthetic Lyu3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Lw33;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lre;

.field public final synthetic q:Lbf;

.field public final synthetic r:Lwe;

.field public final synthetic s:F

.field public final synthetic t:Lpe1;


# direct methods
.method public synthetic constructor <init>(Lw33;Ljava/lang/Object;Lre;Lbf;Lwe;FLpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyu3;->n:Lw33;

    .line 5
    .line 6
    iput-object p2, p0, Lyu3;->o:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lyu3;->p:Lre;

    .line 9
    .line 10
    iput-object p4, p0, Lyu3;->q:Lbf;

    .line 11
    .line 12
    iput-object p5, p0, Lyu3;->r:Lwe;

    .line 13
    .line 14
    iput p6, p0, Lyu3;->s:F

    .line 15
    .line 16
    iput-object p7, p0, Lyu3;->t:Lpe1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    new-instance v0, Lue;

    .line 8
    .line 9
    iget-object p1, p0, Lyu3;->p:Lre;

    .line 10
    .line 11
    move-wide v4, v1

    .line 12
    invoke-interface {p1}, Lre;->d()Le34;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p1}, Lre;->e()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v9, Lxu3;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iget-object v10, p0, Lyu3;->r:Lwe;

    .line 24
    .line 25
    invoke-direct {v9, v1, v10}, Lxu3;-><init>(ILwe;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lyu3;->o:Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v3, p0, Lyu3;->q:Lbf;

    .line 31
    .line 32
    move-wide v7, v4

    .line 33
    invoke-direct/range {v0 .. v9}, Lue;-><init>(Ljava/lang/Object;Le34;Lbf;JLjava/lang/Object;JLne1;)V

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lyu3;->s:F

    .line 37
    .line 38
    iget-object v6, p0, Lyu3;->t:Lpe1;

    .line 39
    .line 40
    move-wide v1, v4

    .line 41
    move-object v5, v10

    .line 42
    move-object v4, p1

    .line 43
    invoke-static/range {v0 .. v6}, Lk75;->t(Lue;JFLre;Lwe;Lpe1;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lyu3;->n:Lw33;

    .line 47
    .line 48
    iput-object v0, p0, Lw33;->n:Ljava/lang/Object;

    .line 49
    .line 50
    sget-object p0, Lt64;->a:Lt64;

    .line 51
    .line 52
    return-object p0
.end method
