.class public final Lnc3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln22;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:Lmc3;

.field public p:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmc3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnc3;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lnc3;->o:Lmc3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final B(Lp22;Lf22;)V
    .locals 1

    .line 1
    sget-object v0, Lf22;->ON_DESTROY:Lf22;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lnc3;->p:Z

    .line 7
    .line 8
    invoke-interface {p1}, Lp22;->getLifecycle()Lh22;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lh22;->b(Lo22;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final b(Lh22;Luc3;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lnc3;->p:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lnc3;->p:Z

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lh22;->a(Lo22;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lnc3;->o:Lmc3;

    .line 18
    .line 19
    iget-object p1, p1, Lmc3;->b:Lrp;

    .line 20
    .line 21
    iget-object p1, p1, Lrp;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lmc1;

    .line 24
    .line 25
    iget-object p0, p0, Lnc3;->n:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, p0, p1}, Luc3;->c(Ljava/lang/String;Ltc3;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "Already attached to lifecycleOwner"

    .line 32
    .line 33
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method
