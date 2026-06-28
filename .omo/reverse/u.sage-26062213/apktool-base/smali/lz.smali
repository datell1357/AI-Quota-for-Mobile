.class public abstract Llz;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lds2;

.field public static final b:Lds2;

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Lgg4;->E:F

    .line 2
    .line 3
    sget v1, Lgg4;->F:F

    .line 4
    .line 5
    new-instance v2, Lds2;

    .line 6
    .line 7
    const/high16 v3, 0x41000000    # 8.0f

    .line 8
    .line 9
    invoke-direct {v2, v0, v3, v1, v3}, Lds2;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    sput-object v2, Llz;->a:Lds2;

    .line 13
    .line 14
    const/high16 v0, 0x41800000    # 16.0f

    .line 15
    .line 16
    invoke-static {v0, v3, v1, v3}, Lis0;->e(FFFF)Lds2;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lds2;

    .line 20
    .line 21
    const/high16 v2, 0x41400000    # 12.0f

    .line 22
    .line 23
    invoke-direct {v1, v2, v3, v2, v3}, Lds2;-><init>(FFFF)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Llz;->b:Lds2;

    .line 27
    .line 28
    invoke-static {v2, v3, v0, v3}, Lis0;->e(FFFF)Lds2;

    .line 29
    .line 30
    .line 31
    const/high16 v0, 0x42680000    # 58.0f

    .line 32
    .line 33
    sput v0, Llz;->c:F

    .line 34
    .line 35
    return-void
.end method
