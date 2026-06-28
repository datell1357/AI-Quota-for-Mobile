.class public abstract Lat1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lck1;

.field public static final b:Lab4;

.field public static final c:Lis3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lck1;

    .line 2
    .line 3
    sget-object v1, Lzs1;->u:Lzs1;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ly7;-><init>(Ldf1;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lat1;->a:Lck1;

    .line 9
    .line 10
    new-instance v0, Lab4;

    .line 11
    .line 12
    sget-object v1, Lys1;->u:Lys1;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ly7;-><init>(Ldf1;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lat1;->b:Lab4;

    .line 18
    .line 19
    new-instance v0, Ll6;

    .line 20
    .line 21
    const/16 v1, 0x13

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ldm0;->D(Lne1;)Lnv3;

    .line 27
    .line 28
    .line 29
    new-instance v0, Ll6;

    .line 30
    .line 31
    const/16 v1, 0x14

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lis3;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lh03;-><init>(Lne1;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lat1;->c:Lis3;

    .line 42
    .line 43
    return-void
.end method
