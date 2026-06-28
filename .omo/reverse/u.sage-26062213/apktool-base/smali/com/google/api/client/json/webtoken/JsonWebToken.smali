.class public Lcom/google/api/client/json/webtoken/JsonWebToken;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;,
        Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    }
.end annotation


# instance fields
.field private final header:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

.field private final payload:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/webtoken/JsonWebToken$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)V
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
    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->header:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->payload:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->header:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->payload:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/api/client/util/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/api/client/util/Objects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "header"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->header:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/Objects$ToStringHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "payload"

    .line 14
    .line 15
    iget-object p0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->payload:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/google/api/client/util/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/Objects$ToStringHelper;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/google/api/client/util/Objects$ToStringHelper;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
