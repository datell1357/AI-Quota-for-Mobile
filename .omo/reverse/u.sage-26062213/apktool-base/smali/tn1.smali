.class public final Ltn1;
.super Ljava/io/InputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lxj3;

.field public o:Z


# direct methods
.method public constructor <init>(Lxj3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ltn1;->o:Z

    .line 6
    .line 7
    const-string v0, "Session input buffer"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ltn1;->n:Lxj3;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object p0, p0, Ltn1;->n:Lxj3;

    .line 2
    .line 3
    instance-of v0, p0, Lty;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lty;

    .line 8
    .line 9
    invoke-interface {p0}, Lty;->length()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltn1;->o:Z

    .line 3
    .line 4
    return-void
.end method

.method public final read()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltn1;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Ltn1;->n:Lxj3;

    .line 8
    .line 9
    invoke-interface {p0}, Lxj3;->read()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final read([BII)I
    .locals 1

    .line 14
    iget-boolean v0, p0, Ltn1;->o:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Ltn1;->n:Lxj3;

    invoke-interface {p0, p1, p2, p3}, Lxj3;->read([BII)I

    move-result p0

    return p0
.end method
