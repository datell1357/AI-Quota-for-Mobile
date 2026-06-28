.class public final Lhe3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lge3;


# instance fields
.field public final n:Lrb3;


# direct methods
.method public constructor <init>(Lrb3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhe3;->n:Lrb3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lkm1;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lhe3;->n:Lrb3;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lke3;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lkm1;)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILkm1;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lhe3;->n:Lrb3;

    .line 2
    .line 3
    const/4 p4, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lrb3;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final createSocket(Lkm1;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lhe3;->n:Lrb3;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lke3;->createSocket(Lkm1;)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lhe3;->n:Lrb3;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lke3;->isSecure(Ljava/net/Socket;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
