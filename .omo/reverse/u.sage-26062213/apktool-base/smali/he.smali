.class public final Lhe;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lbe;


# instance fields
.field public final a:Ln14;

.field public b:Lcw;

.field public final c:Lws2;

.field public final d:Lkg2;


# direct methods
.method public constructor <init>(Ln14;Lcw;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhe;->a:Ln14;

    .line 5
    .line 6
    iput-object p2, p0, Lhe;->b:Lcw;

    .line 7
    .line 8
    new-instance p1, Lrs1;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lrs1;-><init>(J)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lhe;->c:Lws2;

    .line 20
    .line 21
    sget-object p1, Ltd3;->a:[J

    .line 22
    .line 23
    new-instance p1, Lkg2;

    .line 24
    .line 25
    invoke-direct {p1}, Lkg2;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lhe;->d:Lkg2;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lhe;->a:Ln14;

    .line 2
    .line 3
    invoke-virtual {p0}, Ln14;->f()Lk14;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lk14;->b()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lhe;->a:Ln14;

    .line 2
    .line 3
    invoke-virtual {p0}, Ln14;->f()Lk14;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lk14;->c()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
