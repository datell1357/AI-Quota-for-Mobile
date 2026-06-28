.class public abstract Ldc5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Loe5;

.field public static final b:Ljava/lang/Object;

.field public static volatile c:Lrp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Loe5;

    .line 2
    .line 3
    invoke-static {}, Laa5;->u()Laa5;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Loe5;-><init>(Laa5;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ldc5;->a:Loe5;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Ldc5;->b:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-object v0, Ldc5;->c:Lrp;

    .line 21
    .line 22
    return-void
.end method
