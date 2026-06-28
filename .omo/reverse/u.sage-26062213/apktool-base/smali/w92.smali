.class public final Lw92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltl1;


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final i:Lw92;


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lorg/apache/commons/logging/Log;

.field public final c:Lorg/apache/commons/logging/Log;

.field public final d:Lw13;

.field public final e:Ljm1;

.field public final f:Lmj1;

.field public final g:Lmj1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lw92;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    new-instance v0, Lw92;

    .line 9
    .line 10
    invoke-direct {v0}, Lw92;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lw92;->i:Lw92;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lrp0;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lw92;->a:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    const-string v0, "org.apache.http.headers"

    .line 13
    .line 14
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lw92;->b:Lorg/apache/commons/logging/Log;

    .line 19
    .line 20
    const-string v0, "org.apache.http.wire"

    .line 21
    .line 22
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lw92;->c:Lorg/apache/commons/logging/Log;

    .line 27
    .line 28
    sget-object v0, Lw13;->u:Lw13;

    .line 29
    .line 30
    iput-object v0, p0, Lw92;->d:Lw13;

    .line 31
    .line 32
    sget-object v0, Lip0;->c:Lip0;

    .line 33
    .line 34
    iput-object v0, p0, Lw92;->e:Ljm1;

    .line 35
    .line 36
    sget-object v0, Lmj1;->X:Lmj1;

    .line 37
    .line 38
    iput-object v0, p0, Lw92;->f:Lmj1;

    .line 39
    .line 40
    sget-object v0, Lmj1;->g0:Lmj1;

    .line 41
    .line 42
    iput-object v0, p0, Lw92;->g:Lmj1;

    .line 43
    .line 44
    return-void
.end method
