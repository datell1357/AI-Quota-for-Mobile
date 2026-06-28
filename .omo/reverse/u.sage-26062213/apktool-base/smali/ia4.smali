.class public interface abstract Lia4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public abstract a()Z
.end method

.method public abstract c(Lbf;Lbf;Lbf;)J
.end method

.method public abstract m(JLbf;Lbf;Lbf;)Lbf;
.end method

.method public abstract p(JLbf;Lbf;Lbf;)Lbf;
.end method

.method public q(Lbf;Lbf;Lbf;)Lbf;
    .locals 6

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lia4;->c(Lbf;Lbf;Lbf;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    move-object v0, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Lia4;->m(JLbf;Lbf;Lbf;)Lbf;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
