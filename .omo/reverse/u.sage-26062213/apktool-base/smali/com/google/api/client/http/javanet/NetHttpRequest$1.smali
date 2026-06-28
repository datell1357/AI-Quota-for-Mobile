.class Lcom/google/api/client/http/javanet/NetHttpRequest$1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/http/javanet/NetHttpRequest;->writeContentToOutputStream(Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/http/javanet/NetHttpRequest;

.field final synthetic val$content:Lcom/google/api/client/util/StreamingContent;

.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$outputWriter:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/javanet/NetHttpRequest;Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;Ljava/io/OutputStream;Lcom/google/api/client/util/StreamingContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->this$0:Lcom/google/api/client/http/javanet/NetHttpRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$outputWriter:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$out:Ljava/io/OutputStream;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$content:Lcom/google/api/client/util/StreamingContent;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$outputWriter:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$out:Ljava/io/OutputStream;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$content:Lcom/google/api/client/util/StreamingContent;

    .line 6
    .line 7
    invoke-interface {v0, v1, p0}, Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;->write(Ljava/io/OutputStream;Lcom/google/api/client/util/StreamingContent;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
