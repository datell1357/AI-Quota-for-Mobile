.class public abstract Lko1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Li3;

.field public static final b:Li3;

.field public static final c:Li3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li3;

    .line 2
    .line 3
    const-string v1, "GET"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Li3;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lko1;->a:Li3;

    .line 9
    .line 10
    new-instance v0, Li3;

    .line 11
    .line 12
    sget-object v1, Lpl2;->b:Lpl2;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Li3;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lko1;->b:Li3;

    .line 18
    .line 19
    new-instance v0, Li3;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Li3;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lko1;->c:Li3;

    .line 26
    .line 27
    return-void
.end method
