.class public abstract Lcom/google/api/client/googleapis/notifications/TypedNotificationCallback;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/googleapis/notifications/UnparsedNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/client/googleapis/notifications/UnparsedNotificationCallback;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getObjectParser()Lcom/google/api/client/util/ObjectParser;
.end method

.method public abstract onNotification(Lcom/google/api/client/googleapis/notifications/StoredChannel;Lcom/google/api/client/googleapis/notifications/TypedNotification;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/notifications/StoredChannel;",
            "Lcom/google/api/client/googleapis/notifications/TypedNotification<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public final onNotification(Lcom/google/api/client/googleapis/notifications/StoredChannel;Lcom/google/api/client/googleapis/notifications/UnparsedNotification;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/api/client/googleapis/notifications/TypedNotification;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/google/api/client/googleapis/notifications/TypedNotification;-><init>(Lcom/google/api/client/googleapis/notifications/UnparsedNotification;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/notifications/UnparsedNotification;->getContentType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/google/api/client/http/HttpMediaType;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/notifications/TypedNotificationCallback;->getDataClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Class;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/notifications/TypedNotificationCallback;->getObjectParser()Lcom/google/api/client/util/ObjectParser;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/notifications/UnparsedNotification;->getContentStream()Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {v3, p2, v1, v2}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v0, p2}, Lcom/google/api/client/googleapis/notifications/TypedNotification;->setContent(Ljava/lang/Object;)Lcom/google/api/client/googleapis/notifications/TypedNotification;

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/googleapis/notifications/TypedNotificationCallback;->onNotification(Lcom/google/api/client/googleapis/notifications/StoredChannel;Lcom/google/api/client/googleapis/notifications/TypedNotification;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
