.class public Lle3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lke3;


# instance fields
.field public final n:Lnp3;


# direct methods
.method public constructor <init>(Lnp3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lle3;->n:Lnp3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lkm1;)Ljava/net/Socket;
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    :goto_0
    move-object v4, p2

    .line 20
    move v5, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    const/4 p3, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v0, p0, Lle3;->n:Lnp3;

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    move-object v6, p4

    .line 29
    invoke-interface/range {v0 .. v6}, Lnp3;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILkm1;)Ljava/net/Socket;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final createSocket(Lkm1;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lle3;->n:Lnp3;

    .line 2
    .line 3
    invoke-interface {p0}, Lnp3;->createSocket()Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    if-ne p0, p1, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_1
    instance-of v0, p1, Lle3;

    .line 10
    .line 11
    iget-object p0, p0, Lle3;->n:Lnp3;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p1, Lle3;

    .line 16
    .line 17
    iget-object p1, p1, Lle3;->n:Lnp3;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lle3;->n:Lnp3;

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

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lle3;->n:Lnp3;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lnp3;->isSecure(Ljava/net/Socket;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
