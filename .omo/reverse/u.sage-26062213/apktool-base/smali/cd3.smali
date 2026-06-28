.class public abstract Lcd3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lxh1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lei0;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lei0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lz82;

    .line 9
    .line 10
    const/16 v2, 0x1b

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lz82;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lxh1;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcd3;->a:Lxh1;

    .line 21
    .line 22
    return-void
.end method
