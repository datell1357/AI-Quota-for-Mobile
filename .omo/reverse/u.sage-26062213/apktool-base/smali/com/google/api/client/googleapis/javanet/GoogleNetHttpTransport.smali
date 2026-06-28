.class public Lcom/google/api/client/googleapis/javanet/GoogleNetHttpTransport;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newTrustedTransport()Lcom/google/api/client/http/javanet/NetHttpTransport;
    .locals 1

    .line 58
    invoke-static {}, Lcom/google/api/client/googleapis/mtls/MtlsUtils;->getDefaultMtlsProvider()Lcom/google/api/client/googleapis/mtls/MtlsProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/googleapis/javanet/GoogleNetHttpTransport;->newTrustedTransport(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)Lcom/google/api/client/http/javanet/NetHttpTransport;

    move-result-object v0

    return-object v0
.end method

.method public static newTrustedTransport(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)Lcom/google/api/client/http/javanet/NetHttpTransport;
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/api/client/googleapis/mtls/MtlsProvider;->useMtlsClientCertificate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/api/client/googleapis/mtls/MtlsProvider;->getKeyStore()Ljava/security/KeyStore;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0}, Lcom/google/api/client/googleapis/mtls/MtlsProvider;->getKeyStorePassword()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    move-object p0, v0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    new-instance v1, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/google/api/client/googleapis/GoogleUtils;->getCertificateTrustStore()Ljava/security/KeyStore;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;Ljava/security/KeyStore;Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->build()Lcom/google/api/client/http/javanet/NetHttpTransport;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance p0, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/api/client/googleapis/GoogleUtils;->getCertificateTrustStore()Ljava/security/KeyStore;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;->build()Lcom/google/api/client/http/javanet/NetHttpTransport;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
