.class public abstract Lvx2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lga2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lpf4;->p:Llf4;

    .line 2
    .line 3
    sget-object v1, Lpf4;->r:Lnf4;

    .line 4
    .line 5
    invoke-static {}, Lay2;->v()Lay2;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lga2;

    .line 10
    .line 11
    invoke-direct {v3, v0, v1, v2}, Lga2;-><init>(Lpf4;Lpf4;Lay2;)V

    .line 12
    .line 13
    .line 14
    sput-object v3, Lvx2;->a:Lga2;

    .line 15
    .line 16
    return-void
.end method
