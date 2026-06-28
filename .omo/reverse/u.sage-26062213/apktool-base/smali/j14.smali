.class public final Lj14;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Le34;

.field public final b:Lws2;

.field public final synthetic c:Ln14;


# direct methods
.method public constructor <init>(Ln14;Le34;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj14;->c:Ln14;

    .line 5
    .line 6
    iput-object p2, p0, Lj14;->a:Le34;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lj14;->b:Lws2;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;
    .locals 8

    .line 1
    iget-object v0, p0, Lj14;->b:Lws2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Li14;

    .line 8
    .line 9
    iget-object v2, p0, Lj14;->c:Ln14;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Li14;

    .line 14
    .line 15
    new-instance v3, Lm14;

    .line 16
    .line 17
    iget-object v4, v2, Ln14;->a:Lib0;

    .line 18
    .line 19
    invoke-virtual {v4}, Lib0;->l()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-interface {p4, v4}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, v2, Ln14;->a:Lib0;

    .line 28
    .line 29
    invoke-virtual {v5}, Lib0;->l()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-interface {p4, v5}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lj14;->a:Le34;

    .line 38
    .line 39
    iget-object v7, v6, Le34;->a:Lpe1;

    .line 40
    .line 41
    invoke-interface {v7, v5}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lbf;

    .line 46
    .line 47
    invoke-virtual {v5}, Lbf;->d()V

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v2, v4, v5, v6}, Lm14;-><init>(Ln14;Ljava/lang/Object;Lbf;Le34;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0, v3, p1, p4}, Li14;-><init>(Lj14;Lm14;Lpe1;Lpe1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, v2, Ln14;->j:Lgp3;

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Lgp3;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_0
    iput-object p4, v1, Li14;->p:Lpe1;

    .line 65
    .line 66
    iput-object p1, v1, Li14;->o:Lpe1;

    .line 67
    .line 68
    invoke-virtual {v2}, Ln14;->f()Lk14;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0, p2, p3}, Li14;->a(Lk14;Ljava/lang/Object;Lbf;)V

    .line 73
    .line 74
    .line 75
    return-object v1
.end method
