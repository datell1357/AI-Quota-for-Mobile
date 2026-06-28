.class public interface abstract Lcom/google/api/client/util/BackOff;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final STOP:J = -0x1L

.field public static final STOP_BACKOFF:Lcom/google/api/client/util/BackOff;

.field public static final ZERO_BACKOFF:Lcom/google/api/client/util/BackOff;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/util/BackOff$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/api/client/util/BackOff$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/api/client/util/BackOff;->ZERO_BACKOFF:Lcom/google/api/client/util/BackOff;

    .line 7
    .line 8
    new-instance v0, Lcom/google/api/client/util/BackOff$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/api/client/util/BackOff$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/api/client/util/BackOff;->STOP_BACKOFF:Lcom/google/api/client/util/BackOff;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract nextBackOffMillis()J
.end method

.method public abstract reset()V
.end method
