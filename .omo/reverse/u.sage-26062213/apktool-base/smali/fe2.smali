.class public final enum Lfe2;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final enum n:Lfe2;

.field public static final enum o:Lfe2;

.field public static final enum p:Lfe2;

.field public static final enum q:Lfe2;

.field public static final synthetic r:[Lfe2;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lfe2;

    .line 2
    .line 3
    const-string v1, "DefaultSpatial"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lfe2;

    .line 10
    .line 11
    const-string v2, "FastSpatial"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lfe2;->n:Lfe2;

    .line 18
    .line 19
    new-instance v2, Lfe2;

    .line 20
    .line 21
    const-string v3, "SlowSpatial"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lfe2;

    .line 28
    .line 29
    const-string v4, "DefaultEffects"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lfe2;->o:Lfe2;

    .line 36
    .line 37
    new-instance v4, Lfe2;

    .line 38
    .line 39
    const-string v5, "FastEffects"

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v4, Lfe2;->p:Lfe2;

    .line 46
    .line 47
    new-instance v5, Lfe2;

    .line 48
    .line 49
    const-string v6, "SlowEffects"

    .line 50
    .line 51
    const/4 v7, 0x5

    .line 52
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    sput-object v5, Lfe2;->q:Lfe2;

    .line 56
    .line 57
    filled-new-array/range {v0 .. v5}, [Lfe2;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lfe2;->r:[Lfe2;

    .line 62
    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfe2;
    .locals 1

    .line 1
    const-class v0, Lfe2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfe2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lfe2;
    .locals 1

    .line 1
    sget-object v0, Lfe2;->r:[Lfe2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfe2;

    .line 8
    .line 9
    return-object v0
.end method
