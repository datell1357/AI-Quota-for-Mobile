.class public final Lcom/google/api/client/json/gson/GsonFactory$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/gson/GsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private readLeniency:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/api/client/json/gson/GsonFactory$Builder;->readLeniency:Z

    .line 6
    .line 7
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/api/client/json/gson/GsonFactory$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonFactory$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/api/client/json/gson/GsonFactory$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/api/client/json/gson/GsonFactory$Builder;->readLeniency:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Lcom/google/api/client/json/gson/GsonFactory;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/gson/GsonFactory;-><init>(Lcom/google/api/client/json/gson/GsonFactory$Builder;Lcom/google/api/client/json/gson/GsonFactory$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setReadLeniency(Z)Lcom/google/api/client/json/gson/GsonFactory$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/json/gson/GsonFactory$Builder;->readLeniency:Z

    .line 2
    .line 3
    return-object p0
.end method
