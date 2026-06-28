.class public abstract Liy;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc0;

.field public static final b:Lhy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt3;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lt3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Llc0;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Llc0;-><init>(Lpe1;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Liy;->a:Llc0;

    .line 14
    .line 15
    new-instance v0, Lhy;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Liy;->b:Lhy;

    .line 21
    .line 22
    return-void
.end method
