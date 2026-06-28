.class public final Lu74;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lfi0;


# instance fields
.field public final n:Lu74;

.field public final o:Lfn0;


# direct methods
.method public constructor <init>(Lu74;Lfn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu74;->n:Lu74;

    .line 5
    .line 6
    iput-object p2, p0, Lu74;->o:Lfn0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge F(Lhi0;)Lhi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge K(Lgi0;)Lfi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->r(Lfi0;Lgi0;)Lfi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final R(Ldf1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge Y(Lgi0;)Lhi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->z(Lfi0;Lgi0;)Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final a(Lfn0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu74;->o:Lfn0;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lu74;->n:Lu74;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lu74;->a(Lfn0;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    const-string p0, "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details."

    .line 14
    .line 15
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getKey()Lgi0;
    .locals 0

    .line 1
    sget-object p0, Lbx3;->q:Lbx3;

    .line 2
    .line 3
    return-object p0
.end method
