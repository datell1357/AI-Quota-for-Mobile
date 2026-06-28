.class public final Lcom/google/android/gms/common/util/GmsVersion;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final VERSION_HALLOUMI:I = 0x3e8fa0

.field public static final VERSION_JARLSBERG:I = 0x419ce0

.field public static final VERSION_KENAFA:I = 0x432380

.field public static final VERSION_LONGHORN:I = 0x4c4b40

.field public static final VERSION_MANCHEGO:I = 0x5b8d80

.field public static final VERSION_ORLA:I = 0x6acfc0

.field public static final VERSION_PARMESAN:I = 0x6ddd00

.field public static final VERSION_QUESO:I = 0x7270e0

.field public static final VERSION_REBLOCHON:I = 0x7704c0

.field public static final VERSION_SAGA:I = 0x7a1200


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isAtLeastFenacho(I)Z
    .locals 1

    .line 1
    const v0, 0x30d400

    .line 2
    .line 3
    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method
