.class public final Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/CredentialStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->userId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getCredentialStore()Lcom/google/api/client/auth/oauth2/CredentialStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public makePersistent(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->userId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Lcom/google/api/client/auth/oauth2/CredentialStore;->store(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onTokenErrorResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->makePersistent(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTokenResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/CredentialStoreRefreshListener;->makePersistent(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
