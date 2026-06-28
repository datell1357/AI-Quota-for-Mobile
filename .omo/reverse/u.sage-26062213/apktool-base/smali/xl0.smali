.class public final Lxl0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public n:Lm03;

.field public o:Lsk0;

.field public p:Lm03;

.field public q:Lt21;

.field public r:Lm03;

.field public s:Lm03;


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lxl0;->r:Lm03;

    .line 2
    .line 3
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lob3;

    .line 8
    .line 9
    invoke-virtual {p0}, Lob3;->close()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
