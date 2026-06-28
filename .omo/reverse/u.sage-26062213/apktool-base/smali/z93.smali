.class public abstract Lz93;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ldd1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ltv1;

    .line 2
    .line 3
    invoke-direct {v0}, Ltv1;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lzl;->a:Lzl;

    .line 7
    .line 8
    const-class v2, Lz93;

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Ltv1;->a(Ljava/lang/Class;Lpn2;)Ln01;

    .line 11
    .line 12
    .line 13
    const-class v2, Lwo;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Ltv1;->a(Ljava/lang/Class;Lpn2;)Ln01;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ldd1;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v1, v2, v0}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lz93;->a:Ldd1;

    .line 25
    .line 26
    return-void
.end method
