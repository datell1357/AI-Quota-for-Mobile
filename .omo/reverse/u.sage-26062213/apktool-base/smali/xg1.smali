.class public final Lxg1;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb24;


# static fields
.field public static final C:Lqz0;


# instance fields
.field public final B:Lwg1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqz0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lqz0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lxg1;->C:Lqz0;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lwg1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxg1;->B:Lwg1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lxg1;->C:Lqz0;

    .line 2
    .line 3
    return-object p0
.end method
