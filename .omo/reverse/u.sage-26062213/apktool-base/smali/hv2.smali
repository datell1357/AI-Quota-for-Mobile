.class public final Lhv2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lle0;


# static fields
.field public static final n:Lhv2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhv2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhv2;->n:Lhv2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final connectSocket(ILjava/net/Socket;Lem1;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lul1;)Ljava/net/Socket;
    .locals 0

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p2, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-object p2

    .line 10
    :catch_0
    move-exception p0

    .line 11
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    :catch_1
    throw p0
.end method

.method public final createSocket(Lul1;)Ljava/net/Socket;
    .locals 0

    .line 1
    new-instance p0, Ljava/net/Socket;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
