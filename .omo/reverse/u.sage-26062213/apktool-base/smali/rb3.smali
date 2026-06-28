.class public Lrb3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldy1;
.implements Lge3;
.implements Lke3;
.implements Lnp3;


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lth4;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lth4;

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lth4;

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private volatile hostnameVerifier:Lth4;

.field private final nameResolver:Lhk1;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final supportedCipherSuites:[Ljava/lang/String;

.field private final supportedProtocols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le8;

    .line 2
    .line 3
    invoke-direct {v0}, Lk2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrb3;->ALLOW_ALL_HOSTNAME_VERIFIER:Lth4;

    .line 7
    .line 8
    new-instance v0, Loy;

    .line 9
    .line 10
    invoke-direct {v0}, Lk2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lrb3;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lth4;

    .line 14
    .line 15
    new-instance v0, Lvs3;

    .line 16
    .line 17
    invoke-direct {v0}, Lk2;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lrb3;->STRICT_HOSTNAME_VERIFIER:Lth4;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lth4;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lrb3;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lth4;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lth4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SSL socket factory"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lrb3;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 10
    .line 11
    iput-object p2, p0, Lrb3;->supportedProtocols:[Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lrb3;->supportedCipherSuites:[Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p4, Lrb3;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lth4;

    .line 19
    .line 20
    :goto_0
    iput-object p4, p0, Lrb3;->hostnameVerifier:Lth4;

    .line 21
    .line 22
    return-void
.end method

.method public static getSocketFactory()Lrb3;
    .locals 3

    .line 1
    new-instance v0, Lrb3;

    .line 2
    .line 3
    :try_start_0
    const-string v1, "TLS"

    .line 4
    .line 5
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    sget-object v2, Lrb3;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lth4;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lrb3;-><init>(Ljavax/net/ssl/SSLContext;Lth4;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lx60;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :catch_1
    move-exception v0

    .line 31
    new-instance v1, Lx60;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public static getSystemSocketFactory()Lrb3;
    .locals 7

    .line 1
    new-instance v0, Lrb3;

    .line 2
    .line 3
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    .line 9
    const-string v2, "https.protocols"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lht4;->v(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v4, " *, *"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    move-object v2, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    const-string v3, "https.cipherSuites"

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lht4;->v(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_1
    sget-object v3, Lrb3;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lth4;

    .line 48
    .line 49
    invoke-direct {v0, v1, v2, v5, v3}, Lrb3;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lth4;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method


# virtual methods
.method public connectSocket(ILjava/net/Socket;Lem1;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lul1;)Ljava/net/Socket;
    .locals 1

    .line 1
    const-string v0, "HTTP host"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p3, Lem1;->n:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "Remote address"

    .line 9
    .line 10
    invoke-static {p4, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p6}, Lrb3;->createSocket(Lul1;)Ljava/net/Socket;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    if-eqz p5, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p2, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    .line 27
    .line 28
    instance-of p1, p2, Ljavax/net/ssl/SSLSocket;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    move-object p1, p2

    .line 33
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 36
    .line 37
    .line 38
    :try_start_1
    iget-object p0, p0, Lrb3;->hostnameVerifier:Lth4;

    .line 39
    .line 40
    check-cast p0, Lk2;

    .line 41
    .line 42
    invoke-virtual {p0, p3, p1}, Lk2;->d(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    :catch_0
    move-exception p0

    .line 47
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    .line 49
    .line 50
    :catch_1
    throw p0

    .line 51
    :cond_2
    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getPort()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p2, p3, p1, p6}, Lrb3;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILul1;)Ljava/net/Socket;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :catch_2
    new-instance p0, Lwd0;

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p2, "Connect to "

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p2, " timed out"

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILkm1;)Ljava/net/Socket;
    .locals 3

    .line 85
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p4, :cond_1

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_2

    .line 86
    :cond_1
    :goto_0
    new-instance v2, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    :goto_1
    invoke-direct {v2, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 87
    :goto_2
    new-instance p4, Lhm1;

    new-instance p5, Lem1;

    .line 88
    invoke-direct {p5, p2, p3, v1}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    invoke-direct {p4, p5, v0, p3}, Lhm1;-><init>(Lem1;Ljava/net/InetAddress;I)V

    .line 90
    invoke-virtual {p0, p1, p4, v2, p6}, Lrb3;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lkm1;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lkm1;)Ljava/net/Socket;
    .locals 11

    .line 91
    const-string v0, "Remote address"

    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string v0, "HTTP parameters"

    invoke-static {p4, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    instance-of v0, p2, Lhm1;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p2

    check-cast v0, Lhm1;

    .line 95
    iget-object v0, v0, Lhm1;->n:Lem1;

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 96
    :cond_0
    new-instance v0, Lem1;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const-string v3, "https"

    invoke-direct {v0, v1, v2, v3}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :goto_1
    invoke-static {p4}, Lmt1;->H(Lkm1;)I

    move-result v0

    const/4 v1, 0x0

    .line 98
    check-cast p4, Lf1;

    const-string v2, "http.connection.timeout"

    invoke-virtual {p4, v1, v2}, Lf1;->e(ILjava/lang/String;)I

    move-result v5

    .line 99
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v10, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    .line 100
    invoke-virtual/range {v4 .. v10}, Lrb3;->connectSocket(ILjava/net/Socket;Lem1;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lul1;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILkm1;)Ljava/net/Socket;
    .locals 0

    const/4 p4, 0x0

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lrb3;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILul1;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILul1;)Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object p4, p0, Lrb3;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p4, p1, p2, p3, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 9
    .line 10
    iget-object p3, p0, Lrb3;->supportedProtocols:[Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p3, p0, Lrb3;->supportedCipherSuites:[Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lrb3;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object p0, p0, Lrb3;->hostnameVerifier:Lth4;

    .line 31
    .line 32
    check-cast p0, Lk2;

    .line 33
    .line 34
    invoke-virtual {p0, p2, p1}, Lk2;->d(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .line 41
    .line 42
    :catch_1
    throw p0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 0

    const/4 p4, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lrb3;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILul1;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lrb3;->createSocket(Lul1;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 0

    const/4 p4, 0x1

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lrb3;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Lkm1;)Ljava/net/Socket;
    .locals 0

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lrb3;->createSocket(Lul1;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Lul1;)Ljava/net/Socket;
    .locals 0

    .line 1
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getHostnameVerifier()Lth4;
    .locals 0

    .line 1
    iget-object p0, p0, Lrb3;->hostnameVerifier:Lth4;

    .line 2
    .line 3
    return-object p0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1

    .line 1
    const-string p0, "Socket"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of p0, p1, Ljavax/net/ssl/SSLSocket;

    .line 7
    .line 8
    const-string v0, "Socket not created by this factory"

    .line 9
    .line 10
    invoke-static {v0, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 p1, 0x1

    .line 18
    xor-int/2addr p0, p1

    .line 19
    const-string v0, "Socket is closed"

    .line 20
    .line 21
    invoke-static {v0, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return p1
.end method

.method public prepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setHostnameVerifier(Lth4;)V
    .locals 1

    .line 1
    const-string v0, "Hostname verifier"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lrb3;->hostnameVerifier:Lth4;

    .line 7
    .line 8
    return-void
.end method
