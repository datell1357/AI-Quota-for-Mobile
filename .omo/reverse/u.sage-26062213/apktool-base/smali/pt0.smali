.class public final synthetic Lpt0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln22;


# instance fields
.field public final synthetic n:Z

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Lyh2;


# direct methods
.method public synthetic constructor <init>(Lyh2;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lpt0;->n:Z

    .line 5
    .line 6
    iput-object p2, p0, Lpt0;->o:Ljava/util/List;

    .line 7
    .line 8
    iput-object p1, p0, Lpt0;->p:Lyh2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final B(Lp22;Lf22;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lpt0;->n:Z

    .line 2
    .line 3
    iget-object v0, p0, Lpt0;->o:Ljava/util/List;

    .line 4
    .line 5
    iget-object p0, p0, Lpt0;->p:Lyh2;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p1, Lf22;->ON_START:Lf22;

    .line 19
    .line 20
    if-ne p2, p1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object p1, Lf22;->ON_STOP:Lf22;

    .line 32
    .line 33
    if-ne p2, p1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method
