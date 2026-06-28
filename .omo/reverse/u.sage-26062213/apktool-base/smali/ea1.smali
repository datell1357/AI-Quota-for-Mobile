.class public final Lea1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:Lea1;

.field public static final c:Lea1;

.field public static final d:Lea1;


# instance fields
.field public final a:Lug2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lea1;

    .line 2
    .line 3
    invoke-direct {v0}, Lea1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lea1;->b:Lea1;

    .line 7
    .line 8
    new-instance v0, Lea1;

    .line 9
    .line 10
    invoke-direct {v0}, Lea1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lea1;->c:Lea1;

    .line 14
    .line 15
    new-instance v0, Lea1;

    .line 16
    .line 17
    invoke-direct {v0}, Lea1;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lea1;->d:Lea1;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lug2;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [Lkq;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lea1;->a:Lug2;

    .line 14
    .line 15
    return-void
.end method
