.class public final Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;


# instance fields
.field private final credentialDataStore:Lcom/google/api/client/util/store/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/client/util/store/DataStore<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/util/store/DataStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/store/DataStore<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;)V"
        }
    .end annotation

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
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->userId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/api/client/util/store/DataStore;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/util/store/DataStoreFactory;)V
    .locals 0

    .line 21
    invoke-static {p2}, Lcom/google/api/client/auth/oauth2/StoredCredential;->getDefaultDataStore(Lcom/google/api/client/util/store/DataStoreFactory;)Lcom/google/api/client/util/store/DataStore;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;-><init>(Ljava/lang/String;Lcom/google/api/client/util/store/DataStore;)V

    return-void
.end method


# virtual methods
.method public getCredentialDataStore()Lcom/google/api/client/util/store/DataStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/client/util/store/DataStore<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public makePersistent(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->userId:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Lcom/google/api/client/auth/oauth2/StoredCredential;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;-><init>(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lcom/google/api/client/util/store/DataStore;->set(Ljava/lang/String;Ljava/io/Serializable;)Lcom/google/api/client/util/store/DataStore;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onTokenErrorResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->makePersistent(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTokenResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;->makePersistent(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
