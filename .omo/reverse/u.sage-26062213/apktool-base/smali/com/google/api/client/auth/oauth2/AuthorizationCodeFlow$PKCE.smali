.class Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCE"
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private challengeMethod:Ljava/lang/String;

.field private final verifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->generateVerifier()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->verifier:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->generateChallenge(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private generateChallenge(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SHA-256"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/api/client/util/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->challenge:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "S256"

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->challengeMethod:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->challenge:Ljava/lang/String;

    .line 32
    .line 33
    const-string p1, "plain"

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->challengeMethod:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method private static generateVerifier()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/api/client/util/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->challenge:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getChallengeMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->challengeMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVerifier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$PKCE;->verifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
