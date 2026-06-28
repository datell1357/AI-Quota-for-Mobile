.class public Lcom/google/api/client/testing/json/MockJsonGenerator;
.super Lcom/google/api/client/json/JsonGenerator;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private final factory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/JsonGenerator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/testing/json/MockJsonGenerator;->factory:Lcom/google/api/client/json/JsonFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/testing/json/MockJsonGenerator;->factory:Lcom/google/api/client/json/JsonFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public writeBoolean(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public writeEndArray()V
    .locals 0

    .line 1
    return-void
.end method

.method public writeEndObject()V
    .locals 0

    .line 1
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public writeNull()V
    .locals 0

    .line 1
    return-void
.end method

.method public writeNumber(D)V
    .locals 0

    .line 1
    return-void
.end method

.method public writeNumber(F)V
    .locals 0

    .line 2
    return-void
.end method

.method public writeNumber(I)V
    .locals 0

    .line 3
    return-void
.end method

.method public writeNumber(J)V
    .locals 0

    .line 4
    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 0

    .line 5
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 0

    .line 6
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 0

    .line 7
    return-void
.end method

.method public writeStartArray()V
    .locals 0

    .line 1
    return-void
.end method

.method public writeStartObject()V
    .locals 0

    .line 1
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
