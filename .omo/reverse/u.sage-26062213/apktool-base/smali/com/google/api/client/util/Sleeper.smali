.class public interface abstract Lcom/google/api/client/util/Sleeper;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final DEFAULT:Lcom/google/api/client/util/Sleeper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/util/Sleeper$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/api/client/util/Sleeper$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/api/client/util/Sleeper;->DEFAULT:Lcom/google/api/client/util/Sleeper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract sleep(J)V
.end method
