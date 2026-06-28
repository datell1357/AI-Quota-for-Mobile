.class public Lcom/google/api/client/json/rpc2/JsonRpcRequest;
.super Lcom/google/api/client/util/GenericData;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private id:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private final jsonrpc:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private params:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "2.0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->jsonrpc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/json/rpc2/JsonRpcRequest;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->clone()Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->clone()Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->id:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->method:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getParameters()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->params:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "2.0"

    .line 2
    .line 3
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/rpc2/JsonRpcRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    move-result-object p0

    return-object p0
.end method

.method public setId(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->id:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->method:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setParameters(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->params:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
