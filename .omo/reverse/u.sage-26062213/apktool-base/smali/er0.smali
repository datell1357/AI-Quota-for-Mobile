.class public final Ler0;
.super Ljava/util/zip/InflaterInputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public n:Z


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ler0;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ler0;->n:Z

    .line 8
    .line 9
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
