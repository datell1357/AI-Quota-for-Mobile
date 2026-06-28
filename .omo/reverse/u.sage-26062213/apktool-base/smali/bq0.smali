.class public final Lbq0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lj41;


# instance fields
.field public final a:Lm03;

.field public final b:Lm03;

.field public final c:Lae3;

.field public final d:Lm03;

.field public final e:Lm03;


# direct methods
.method public constructor <init>(Lm03;Lm03;Lae3;Lm03;Lm03;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbq0;->a:Lm03;

    .line 5
    .line 6
    iput-object p2, p0, Lbq0;->b:Lm03;

    .line 7
    .line 8
    iput-object p3, p0, Lbq0;->c:Lae3;

    .line 9
    .line 10
    iput-object p4, p0, Lbq0;->d:Lm03;

    .line 11
    .line 12
    iput-object p5, p0, Lbq0;->e:Lm03;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lbq0;->a:Lm03;

    .line 2
    .line 3
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iget-object v0, p0, Lbq0;->b:Lm03;

    .line 11
    .line 12
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Lvc2;

    .line 18
    .line 19
    iget-object v0, p0, Lbq0;->c:Lae3;

    .line 20
    .line 21
    invoke-virtual {v0}, Lae3;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v4, v0

    .line 26
    check-cast v4, Leh;

    .line 27
    .line 28
    iget-object v0, p0, Lbq0;->d:Lm03;

    .line 29
    .line 30
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v5, v0

    .line 35
    check-cast v5, Lob3;

    .line 36
    .line 37
    iget-object p0, p0, Lbq0;->e:Lm03;

    .line 38
    .line 39
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    move-object v6, p0

    .line 44
    check-cast v6, Lob3;

    .line 45
    .line 46
    new-instance v1, Laq0;

    .line 47
    .line 48
    invoke-direct/range {v1 .. v6}, Laq0;-><init>(Ljava/util/concurrent/Executor;Lvc2;Leh;Lob3;Lob3;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method
