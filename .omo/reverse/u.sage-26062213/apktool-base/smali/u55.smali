.class public final enum Lu55;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final enum o:Lu55;

.field public static final enum p:Lu55;

.field public static final enum q:Lu55;

.field public static final enum r:Lu55;

.field public static final synthetic s:[Lu55;


# instance fields
.field public final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lu55;

    .line 2
    .line 3
    const-string v1, "UNINITIALIZED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "uninitialized"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lu55;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lu55;->o:Lu55;

    .line 12
    .line 13
    new-instance v1, Lu55;

    .line 14
    .line 15
    const-string v2, "POLICY"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const-string v4, "eu_consent_policy"

    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4}, Lu55;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lu55;->p:Lu55;

    .line 24
    .line 25
    new-instance v2, Lu55;

    .line 26
    .line 27
    const-string v3, "DENIED"

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    const-string v5, "denied"

    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v5}, Lu55;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lu55;->q:Lu55;

    .line 36
    .line 37
    new-instance v3, Lu55;

    .line 38
    .line 39
    const-string v4, "GRANTED"

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    const-string v6, "granted"

    .line 43
    .line 44
    invoke-direct {v3, v4, v5, v6}, Lu55;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lu55;->r:Lu55;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2, v3}, [Lu55;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lu55;->s:[Lu55;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lu55;->n:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lu55;
    .locals 1

    .line 1
    sget-object v0, Lu55;->s:[Lu55;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lu55;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lu55;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu55;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
