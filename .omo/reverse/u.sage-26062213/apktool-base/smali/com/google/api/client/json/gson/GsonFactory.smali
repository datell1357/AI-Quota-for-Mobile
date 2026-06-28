.class public Lcom/google/api/client/json/gson/GsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/gson/GsonFactory$Builder;,
        Lcom/google/api/client/json/gson/GsonFactory$InstanceHolder;
    }
.end annotation


# instance fields
.field private readLeniency:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/api/client/json/gson/GsonFactory;->readLeniency:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/json/gson/GsonFactory$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/api/client/json/gson/GsonFactory;->readLeniency:Z

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/api/client/json/gson/GsonFactory$Builder;->access$000(Lcom/google/api/client/json/gson/GsonFactory$Builder;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-boolean p1, p0, Lcom/google/api/client/json/gson/GsonFactory;->readLeniency:Z

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/api/client/json/gson/GsonFactory$Builder;Lcom/google/api/client/json/gson/GsonFactory$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/client/json/gson/GsonFactory;-><init>(Lcom/google/api/client/json/gson/GsonFactory$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/api/client/json/gson/GsonFactory$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/api/client/json/gson/GsonFactory$Builder;-><init>(Lcom/google/api/client/json/gson/GsonFactory$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/api/client/json/gson/GsonFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/json/gson/GsonFactory$InstanceHolder;->INSTANCE:Lcom/google/api/client/json/gson/GsonFactory;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .locals 1

    .line 12
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object p0

    return-object p0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/json/gson/GsonGenerator;

    .line 2
    .line 3
    new-instance v1, Lbx1;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lbx1;-><init>(Ljava/io/Writer;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/gson/GsonGenerator;-><init>(Lcom/google/api/client/json/gson/GsonFactory;Lbx1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .locals 2

    .line 18
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object p0

    return-object p0
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .locals 2

    .line 20
    new-instance v0, Lcom/google/api/client/json/gson/GsonParser;

    new-instance v1, Lww1;

    invoke-direct {v1, p1}, Lww1;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/gson/GsonParser;-><init>(Lcom/google/api/client/json/gson/GsonFactory;Lww1;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .locals 1

    .line 19
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object p0

    return-object p0
.end method

.method public getReadLeniency()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/api/client/json/gson/GsonFactory;->readLeniency:Z

    .line 2
    .line 3
    return p0
.end method
