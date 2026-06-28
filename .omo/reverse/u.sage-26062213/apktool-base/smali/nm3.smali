.class public final Lnm3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lb21;

.field public static final b:Lpr3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb21;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnm3;->a:Lb21;

    .line 9
    .line 10
    new-instance v0, Lpr3;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lpr3;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lnm3;->b:Lpr3;

    .line 17
    .line 18
    return-void
.end method

.method public static a()Lrr3;
    .locals 5

    .line 1
    new-instance v0, Lrr3;

    .line 2
    .line 3
    const-wide/16 v1, 0x1388

    .line 4
    .line 5
    const-wide v3, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lrr3;-><init>(JJ)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
