.class public final Le01;
.super Ljava/io/InputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final n:Le01;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le01;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le01;->n:Le01;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final mark(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final read()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final read([B)I
    .locals 0

    .line 3
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 4
    const/4 p0, -0x1

    return p0
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    .line 2
    .line 3
    return-wide p0
.end method
