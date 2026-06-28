.class final Lwz1;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Lx02;

.field public final c:Lzx;

.field public final d:Lhr2;


# direct methods
.method public constructor <init>(Lx02;Lzx;Lhr2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwz1;->b:Lx02;

    .line 5
    .line 6
    iput-object p2, p0, Lwz1;->c:Lzx;

    .line 7
    .line 8
    iput-object p3, p0, Lwz1;->d:Lhr2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 2

    .line 1
    new-instance v0, Lzz1;

    .line 2
    .line 3
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lwz1;->b:Lx02;

    .line 7
    .line 8
    iput-object v1, v0, Lzz1;->B:Lx02;

    .line 9
    .line 10
    iget-object v1, p0, Lwz1;->c:Lzx;

    .line 11
    .line 12
    iput-object v1, v0, Lzz1;->C:Lzx;

    .line 13
    .line 14
    iget-object p0, p0, Lwz1;->d:Lhr2;

    .line 15
    .line 16
    iput-object p0, v0, Lzz1;->D:Lhr2;

    .line 17
    .line 18
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lwz1;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lwz1;

    .line 10
    .line 11
    iget-object v0, p1, Lwz1;->b:Lx02;

    .line 12
    .line 13
    iget-object v1, p0, Lwz1;->b:Lx02;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lwz1;->c:Lzx;

    .line 23
    .line 24
    iget-object v1, p1, Lwz1;->c:Lzx;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object p0, p0, Lwz1;->d:Lhr2;

    .line 34
    .line 35
    iget-object p1, p1, Lwz1;->d:Lhr2;

    .line 36
    .line 37
    if-eq p0, p1, :cond_4

    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 1

    .line 1
    check-cast p1, Lzz1;

    .line 2
    .line 3
    iget-object v0, p0, Lwz1;->b:Lx02;

    .line 4
    .line 5
    iput-object v0, p1, Lzz1;->B:Lx02;

    .line 6
    .line 7
    iget-object v0, p0, Lwz1;->c:Lzx;

    .line 8
    .line 9
    iput-object v0, p1, Lzz1;->C:Lzx;

    .line 10
    .line 11
    iget-object p0, p0, Lwz1;->d:Lhr2;

    .line 12
    .line 13
    iput-object p0, p1, Lzz1;->D:Lhr2;

    .line 14
    .line 15
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lwz1;->b:Lx02;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lwz1;->c:Lzx;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {v2, v0, v1}, Lxw1;->n(IZI)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object p0, p0, Lwz1;->d:Lhr2;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    add-int/2addr p0, v0

    .line 30
    return p0
.end method
