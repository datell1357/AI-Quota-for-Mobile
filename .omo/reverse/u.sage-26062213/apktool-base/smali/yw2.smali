.class public final Lyw2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Lax2;


# direct methods
.method public constructor <init>(Lax2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyw2;->a:Lax2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lmw2;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lmw2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lv92;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Lsl1;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    iget-object p0, p0, Lyw2;->a:Lax2;

    .line 13
    .line 14
    iget-object v0, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 23
    .line 24
    const-string v0, "I/O exception shutting down connection"

    .line 25
    .line 26
    invoke-interface {p0, v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
