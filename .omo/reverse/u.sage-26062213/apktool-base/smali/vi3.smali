.class public abstract Lvi3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lnv3;

.field public static final b:Lnv3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt52;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lnv3;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lnv3;-><init>(Lne1;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lvi3;->a:Lnv3;

    .line 14
    .line 15
    new-instance v0, Lt52;

    .line 16
    .line 17
    const/16 v1, 0x1a

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lnv3;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lnv3;-><init>(Lne1;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lvi3;->b:Lnv3;

    .line 28
    .line 29
    return-void
.end method
