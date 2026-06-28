.class public final Lp0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final d:Lp0;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lp0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp0;

    .line 2
    .line 3
    invoke-direct {v0}, Lp0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp0;->d:Lp0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lp0;->a:Ljava/lang/Runnable;

    .line 6
    .line 7
    iput-object v0, p0, Lp0;->b:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lp0;->a:Ljava/lang/Runnable;

    .line 12
    iput-object p2, p0, Lp0;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
