.class public Lcom/google/api/client/http/OpenCensusUtils;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

.field private static final idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile isRecordEvent:Z

.field private static final logger:Ljava/util/logging/Logger;

.field static volatile propagationTextFormat:Lex3;

.field static volatile propagationTextFormatSetter:Ldx3;

.field private static final tracer:Lu04;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/api/client/http/OpenCensusUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Sent."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-class v1, Lcom/google/api/client/http/HttpRequest;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ".execute"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

    .line 39
    .line 40
    sget-object v0, Lw04;->a:Lq04;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object v0, Lu04;->a:Lt04;

    .line 46
    .line 47
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->tracer:Lu04;

    .line 48
    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    sput-boolean v0, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent:Z

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    sput-object v1, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lex3;

    .line 61
    .line 62
    sput-object v1, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Ldx3;

    .line 63
    .line 64
    :try_start_0
    new-instance v1, Ly60;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v1, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lex3;

    .line 70
    .line 71
    new-instance v1, Lcom/google/api/client/http/OpenCensusUtils$1;

    .line 72
    .line 73
    invoke-direct {v1}, Lcom/google/api/client/http/OpenCensusUtils$1;-><init>()V

    .line 74
    .line 75
    .line 76
    sput-object v1, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Ldx3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    sget-object v2, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    .line 81
    .line 82
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 83
    .line 84
    const-string v4, "Cannot initialize default OpenCensus HTTP propagation text format."

    .line 85
    .line 86
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    :try_start_1
    sget-object v1, Lw04;->a:Lq04;

    .line 90
    .line 91
    iget-object v1, v1, Lq04;->a:Lwu4;

    .line 92
    .line 93
    iget-object v1, v1, Lwu4;->o:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Ldc3;

    .line 96
    .line 97
    sget-object v2, Lcom/google/api/client/http/OpenCensusUtils;->SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

    .line 98
    .line 99
    sget-object v3, Llp1;->o:Lhp1;

    .line 100
    .line 101
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v0, v2}, Lw80;->m(I[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v2}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const-string v2, "spanNames"

    .line 116
    .line 117
    invoke-static {v0, v2}, Lse0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, v1, Ldc3;->a:Ljava/util/HashSet;

    .line 121
    .line 122
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :try_start_2
    iget-object v1, v1, Ldc3;->a:Ljava/util/HashSet;

    .line 124
    .line 125
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    monitor-exit v2

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 133
    :catch_1
    move-exception v0

    .line 134
    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    .line 135
    .line 136
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 137
    .line 138
    const-string v3, "Cannot register default OpenCensus span names for collection."

    .line 139
    .line 140
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEndSpanOptions(Ljava/lang/Integer;)Lq01;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lks3;->d:Lks3;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_7

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/16 v0, 0x190

    .line 21
    .line 22
    if-eq p0, v0, :cond_6

    .line 23
    .line 24
    const/16 v0, 0x191

    .line 25
    .line 26
    if-eq p0, v0, :cond_5

    .line 27
    .line 28
    const/16 v0, 0x193

    .line 29
    .line 30
    if-eq p0, v0, :cond_4

    .line 31
    .line 32
    const/16 v0, 0x194

    .line 33
    .line 34
    if-eq p0, v0, :cond_3

    .line 35
    .line 36
    const/16 v0, 0x19c

    .line 37
    .line 38
    if-eq p0, v0, :cond_2

    .line 39
    .line 40
    const/16 v0, 0x1f4

    .line 41
    .line 42
    if-eq p0, v0, :cond_1

    .line 43
    .line 44
    sget-object p0, Lks3;->d:Lks3;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lks3;->j:Lks3;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object p0, Lks3;->i:Lks3;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    sget-object p0, Lks3;->f:Lks3;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sget-object p0, Lks3;->g:Lks3;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    sget-object p0, Lks3;->h:Lks3;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    sget-object p0, Lks3;->e:Lks3;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    sget-object p0, Lks3;->c:Lks3;

    .line 66
    .line 67
    :goto_0
    new-instance v0, Lzn;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1, p0}, Lzn;-><init>(ZLks3;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public static getTracer()Lu04;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->tracer:Lu04;

    .line 2
    .line 3
    return-object v0
.end method

.method public static isRecordEvent()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent:Z

    .line 2
    .line 3
    return v0
.end method

.method public static propagateTracingContext(Lfq3;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    const-string v3, "span should not be null."

    .line 9
    .line 10
    invoke-static {v2, v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    :cond_1
    const-string v1, "headers should not be null."

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lex3;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Ldx3;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget-object v0, Lnw;->c:Lnw;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lex3;

    .line 38
    .line 39
    iget-object p0, p0, Lfq3;->a:Lgq3;

    .line 40
    .line 41
    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Ldx3;

    .line 42
    .line 43
    invoke-virtual {v0, p0, p1, v1}, Lex3;->a(Lgq3;Lcom/google/api/client/http/HttpHeaders;Ldx3;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public static recordMessageEvent(Lfq3;JLoc2;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    const-string p2, "span should not be null."

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/google/api/client/http/OpenCensusUtils;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 14
    .line 15
    .line 16
    const-string p1, "type"

    .line 17
    .line 18
    invoke-static {p3, p1}, Lse0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p0, Lnw;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static recordReceivedMessageEvent(Lfq3;J)V
    .locals 1

    .line 1
    sget-object v0, Loc2;->o:Loc2;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/OpenCensusUtils;->recordMessageEvent(Lfq3;JLoc2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static recordSentMessageEvent(Lfq3;J)V
    .locals 1

    .line 1
    sget-object v0, Loc2;->n:Loc2;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/OpenCensusUtils;->recordMessageEvent(Lfq3;JLoc2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setIsRecordEvent(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setPropagationTextFormat(Lex3;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lex3;

    .line 2
    .line 3
    return-void
.end method

.method public static setPropagationTextFormatSetter(Ldx3;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Ldx3;

    .line 2
    .line 3
    return-void
.end method
