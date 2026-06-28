.class public final Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    }
.end annotation


# instance fields
.field private installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static load(Lcom/google/api/client/json/JsonFactory;Ljava/io/Reader;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->fromReader(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    move-result-object p0

    return-object p0
.end method

.method public getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 11
    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    move v3, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v3, v1

    .line 17
    :goto_1
    if-eq v0, v3, :cond_2

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_2
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_3
    return-object v0
.end method

.method public getInstalled()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWeb()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 2
    .line 3
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    move-result-object p0

    return-object p0
.end method

.method public setInstalled(Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 2
    .line 3
    return-object p0
.end method

.method public setWeb(Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 2
    .line 3
    return-object p0
.end method
