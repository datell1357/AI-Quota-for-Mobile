.class public abstract Lta2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lb21;

.field public static final b:Lbi0;

.field public static final c:Lbi0;

.field public static final d:[F

.field public static final e:[F

.field public static f:Lpa3;

.field public static g:Lpa3;

.field public static h:Lpa3;

.field public static i:Lpa3;

.field public static j:Lpa3;

.field public static k:Lpa3;

.field public static l:Lpa3;

.field public static m:Lpa3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb21;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lta2;->a:Lb21;

    .line 9
    .line 10
    new-instance v0, Lbi0;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const v2, 0x3e19999a    # 0.15f

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lbi0;-><init>(IF)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lta2;->b:Lbi0;

    .line 20
    .line 21
    new-instance v0, Lbi0;

    .line 22
    .line 23
    new-instance v0, Lbi0;

    .line 24
    .line 25
    new-instance v0, Lbi0;

    .line 26
    .line 27
    const/high16 v2, 0x3f000000    # 0.5f

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lbi0;-><init>(IF)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lta2;->c:Lbi0;

    .line 33
    .line 34
    new-instance v0, Lbi0;

    .line 35
    .line 36
    invoke-static {}, Lxa2;->a()[F

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/high16 v1, -0x3dcc0000    # -45.0f

    .line 41
    .line 42
    invoke-static {v0, v1}, Lxa2;->e([FF)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lta2;->d:[F

    .line 46
    .line 47
    invoke-static {}, Lxa2;->a()[F

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 52
    .line 53
    invoke-static {v0, v1}, Lxa2;->e([FF)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lta2;->e:[F

    .line 57
    .line 58
    invoke-static {}, Lxa2;->a()[F

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/high16 v1, -0x3cf90000    # -135.0f

    .line 63
    .line 64
    invoke-static {v0, v1}, Lxa2;->e([FF)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
