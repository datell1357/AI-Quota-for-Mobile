.class public final Lyo0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lnj1;
.implements Loj1;


# instance fields
.field public final a:Lrz1;

.field public final b:Landroid/content/Context;

.field public final c:Ln03;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Ln03;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    new-instance v0, Lrz1;

    .line 2
    .line 3
    new-instance v1, Lfa0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2, p1, p2}, Lfa0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lrz1;-><init>(Ln03;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lyo0;->a:Lrz1;

    .line 16
    .line 17
    iput-object p3, p0, Lyo0;->d:Ljava/util/Set;

    .line 18
    .line 19
    iput-object p5, p0, Lyo0;->e:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    iput-object p4, p0, Lyo0;->c:Ln03;

    .line 22
    .line 23
    iput-object p1, p0, Lyo0;->b:Landroid/content/Context;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Lef5;
    .locals 2

    .line 1
    iget-object v0, p0, Lyo0;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lw80;->D(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lxo0;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lxo0;-><init>(Lyo0;I)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lyo0;->e:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-static {p0, v0}, Lmt1;->m(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lef5;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyo0;->d:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lyo0;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lw80;->D(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v0, Lxo0;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lxo0;-><init>(Lyo0;I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lyo0;->e:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    invoke-static {p0, v0}, Lmt1;->m(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lef5;

    .line 35
    .line 36
    .line 37
    return-void
.end method
