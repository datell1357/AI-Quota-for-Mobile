.class public final Lar0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lhi0;


# instance fields
.field public final n:Lhi0;


# direct methods
.method public constructor <init>(Lhi0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lar0;->n:Lhi0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final F(Lhi0;)Lhi0;
    .locals 2

    .line 1
    iget-object v0, p0, Lar0;->n:Lhi0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lhi0;->F(Lhi0;)Lhi0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lm94;->b:I

    .line 8
    .line 9
    sget-object v0, Lji0;->o:Lii0;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lar0;->K(Lgi0;)Lfi0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lji0;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lhi0;->K(Lgi0;)Lfi0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lji0;

    .line 22
    .line 23
    instance-of v1, p0, Lbr0;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    if-eq p0, v0, :cond_0

    .line 28
    .line 29
    check-cast p0, Lbr0;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lbr0;->q:I

    .line 33
    .line 34
    :cond_0
    new-instance p0, Lar0;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lar0;-><init>(Lhi0;)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public final K(Lgi0;)Lfi0;
    .locals 0

    .line 1
    iget-object p0, p0, Lar0;->n:Lhi0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lhi0;->K(Lgi0;)Lfi0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final R(Ldf1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lar0;->n:Lhi0;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lhi0;->R(Ldf1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final Y(Lgi0;)Lhi0;
    .locals 2

    .line 1
    iget-object v0, p0, Lar0;->n:Lhi0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lhi0;->Y(Lgi0;)Lhi0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lm94;->b:I

    .line 8
    .line 9
    sget-object v0, Lji0;->o:Lii0;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lar0;->K(Lgi0;)Lfi0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lji0;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lhi0;->K(Lgi0;)Lfi0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lji0;

    .line 22
    .line 23
    instance-of v1, p0, Lbr0;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    if-eq p0, v0, :cond_0

    .line 28
    .line 29
    check-cast p0, Lbr0;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lbr0;->q:I

    .line 33
    .line 34
    :cond_0
    new-instance p0, Lar0;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lar0;-><init>(Lhi0;)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lar0;->n:Lhi0;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lar0;->n:Lhi0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ForwardingCoroutineContext(delegate="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lar0;->n:Lhi0;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
