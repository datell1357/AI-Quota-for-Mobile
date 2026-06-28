.class public final Lsc4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:I

.field public final b:Lpe1;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILpe1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p2, p0, Lsc4;->a:I

    .line 8
    .line 9
    iput-object p3, p0, Lsc4;->b:Lpe1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lsc4;->a:I

    .line 2
    .line 3
    const-string v0, "SAGE"

    .line 4
    .line 5
    invoke-static {p0, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lez3;->a:Lra3;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "WebAppInterface.r: Full Result JSON: "

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    new-array v0, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0}, Lra3;->l([Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0xc8

    .line 26
    .line 27
    invoke-static {v0, p1}, Lzs3;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    new-array v0, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lsc4;->b:Lpe1;

    .line 36
    .line 37
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method
