.class public final Lw91;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ldh;

.field public final b:Lq9;

.field public final c:Llg2;

.field public final d:Llg2;

.field public e:Z


# direct methods
.method public constructor <init>(Ldh;Lq9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw91;->a:Ldh;

    .line 5
    .line 6
    iput-object p2, p0, Lw91;->b:Lq9;

    .line 7
    .line 8
    sget-object p1, Lud3;->a:Llg2;

    .line 9
    .line 10
    new-instance p1, Llg2;

    .line 11
    .line 12
    invoke-direct {p1}, Llg2;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lw91;->c:Llg2;

    .line 16
    .line 17
    new-instance p1, Llg2;

    .line 18
    .line 19
    invoke-direct {p1}, Llg2;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lw91;->d:Llg2;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lw91;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v1, Lh9;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v9, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-class v4, Lw91;

    .line 11
    .line 12
    const-string v5, "invalidateNodes"

    .line 13
    .line 14
    const-string v6, "invalidateNodes()V"

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    move-object v3, p0

    .line 18
    invoke-direct/range {v1 .. v9}, Lh9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 19
    .line 20
    .line 21
    iget-object p0, v3, Lw91;->b:Lq9;

    .line 22
    .line 23
    iget-object p0, p0, Lq9;->C0:Ldg2;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ldg2;->g(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, v1}, Ldg2;->a(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 p0, 0x1

    .line 36
    iput-boolean p0, v3, Lw91;->e:Z

    .line 37
    .line 38
    :cond_1
    return-void
.end method
