.class public final Lub0;
.super Lsb0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final p:Z


# direct methods
.method public constructor <init>(Ld90;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsb0;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lub0;->p:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lub0;->p:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Lsb0;->h(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lsb0;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ld90;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ld90;->q(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
