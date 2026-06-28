.class public abstract Lez3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lra3;

.field public static volatile b:[Lra3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lra3;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lra3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lez3;->a:Lra3;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Lra3;

    .line 16
    .line 17
    sput-object v0, Lez3;->b:[Lra3;

    .line 18
    .line 19
    return-void
.end method
