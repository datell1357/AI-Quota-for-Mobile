.class public final Lfe3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lke3;

.field public final c:I

.field public final d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILke3;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez p2, :cond_0

    .line 7
    .line 8
    const v2, 0xffff

    .line 9
    .line 10
    .line 11
    if-gt p2, v2, :cond_0

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v0

    .line 16
    :goto_0
    const-string v3, "Port is invalid"

    .line 17
    .line 18
    invoke-static {v3, v2}, Lw80;->l(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    const-string v2, "Socket factory"

    .line 22
    .line 23
    invoke-static {p3, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lfe3;->a:Ljava/lang/String;

    .line 33
    .line 34
    iput p2, p0, Lfe3;->c:I

    .line 35
    .line 36
    instance-of p1, p3, Lge3;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iput-boolean v1, p0, Lfe3;->d:Z

    .line 41
    .line 42
    iput-object p3, p0, Lfe3;->b:Lke3;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    instance-of p1, p3, Lrb3;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iput-boolean v1, p0, Lfe3;->d:Z

    .line 50
    .line 51
    new-instance p1, Lhe3;

    .line 52
    .line 53
    check-cast p3, Lrb3;

    .line 54
    .line 55
    invoke-direct {p1, p3}, Lhe3;-><init>(Lrb3;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lfe3;->b:Lke3;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iput-boolean v0, p0, Lfe3;->d:Z

    .line 62
    .line 63
    iput-object p3, p0, Lfe3;->b:Lke3;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnp3;I)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "Socket factory"

    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    const v2, 0xffff

    if-gt p3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 68
    :goto_0
    const-string v3, "Port is invalid"

    invoke-static {v3, v2}, Lw80;->l(Ljava/lang/String;Z)V

    .line 69
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfe3;->a:Ljava/lang/String;

    .line 70
    instance-of p1, p2, Lrb3;

    if-eqz p1, :cond_1

    .line 71
    new-instance p1, Lie3;

    check-cast p2, Lrb3;

    invoke-direct {p1, p2}, Lie3;-><init>(Lrb3;)V

    iput-object p1, p0, Lfe3;->b:Lke3;

    .line 72
    iput-boolean v1, p0, Lfe3;->d:Z

    goto :goto_1

    .line 73
    :cond_1
    new-instance p1, Lle3;

    invoke-direct {p1, p2}, Lle3;-><init>(Lnp3;)V

    iput-object p1, p0, Lfe3;->b:Lke3;

    .line 74
    iput-boolean v0, p0, Lfe3;->d:Z

    .line 75
    :goto_1
    iput p3, p0, Lfe3;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lfe3;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lfe3;

    .line 9
    .line 10
    iget-object v0, p0, Lfe3;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p1, Lfe3;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lfe3;->c:I

    .line 21
    .line 22
    iget v1, p1, Lfe3;->c:I

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    iget-boolean p0, p0, Lfe3;->d:Z

    .line 27
    .line 28
    iget-boolean p1, p1, Lfe3;->d:Z

    .line 29
    .line 30
    if-ne p0, p1, :cond_1

    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget v1, p0, Lfe3;->c:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lc75;->H(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lfe3;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-boolean p0, p0, Lfe3;->d:Z

    .line 16
    .line 17
    invoke-static {v0, p0}, Lc75;->H(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfe3;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lfe3;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x3a

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lfe3;->c:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lfe3;->e:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Lfe3;->e:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0
.end method
