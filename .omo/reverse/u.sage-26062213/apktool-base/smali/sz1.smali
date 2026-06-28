.class public final Lsz1;
.super Ljava/io/InputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Ljava/io/InputStream;

.field public final o:Lgr0;

.field public p:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lgr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsz1;->n:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lsz1;->o:Lgr0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsz1;->b()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lsz1;->p:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsz1;->p:Ljava/io/InputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lsz1;->o:Lgr0;

    .line 6
    .line 7
    iget v0, v0, Lgr0;->a:I

    .line 8
    .line 9
    iget-object v1, p0, Lsz1;->n:Ljava/io/InputStream;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    new-instance v0, Lfr0;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lfr0;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iput-object v0, p0, Lsz1;->p:Ljava/io/InputStream;

    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsz1;->n:Ljava/io/InputStream;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lsz1;->p:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final read()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsz1;->b()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lsz1;->p:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final read([B)I
    .locals 0

    .line 11
    invoke-virtual {p0}, Lsz1;->b()V

    .line 12
    iget-object p0, p0, Lsz1;->p:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 13
    invoke-virtual {p0}, Lsz1;->b()V

    .line 14
    iget-object p0, p0, Lsz1;->p:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsz1;->b()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lsz1;->p:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method
