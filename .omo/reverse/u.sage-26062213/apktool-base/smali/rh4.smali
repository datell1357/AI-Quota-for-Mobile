.class public final enum Lrh4;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final enum p:Lrh4;

.field public static final enum q:Lrh4;

.field public static final enum r:Lrh4;

.field public static final enum s:Lrh4;

.field public static final synthetic t:[Lrh4;

.field public static final synthetic u:Lt11;


# instance fields
.field public final n:C

.field public final o:C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lrh4;

    .line 2
    .line 3
    const-string v1, "OBJ"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x7b

    .line 7
    .line 8
    const/16 v4, 0x7d

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lrh4;-><init>(Ljava/lang/String;ICC)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lrh4;->p:Lrh4;

    .line 14
    .line 15
    new-instance v1, Lrh4;

    .line 16
    .line 17
    const-string v2, "LIST"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/16 v6, 0x5b

    .line 21
    .line 22
    const/16 v7, 0x5d

    .line 23
    .line 24
    invoke-direct {v1, v2, v5, v6, v7}, Lrh4;-><init>(Ljava/lang/String;ICC)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lrh4;->q:Lrh4;

    .line 28
    .line 29
    new-instance v2, Lrh4;

    .line 30
    .line 31
    const-string v5, "MAP"

    .line 32
    .line 33
    const/4 v8, 0x2

    .line 34
    invoke-direct {v2, v5, v8, v3, v4}, Lrh4;-><init>(Ljava/lang/String;ICC)V

    .line 35
    .line 36
    .line 37
    sput-object v2, Lrh4;->r:Lrh4;

    .line 38
    .line 39
    new-instance v3, Lrh4;

    .line 40
    .line 41
    const-string v4, "POLY_OBJ"

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    invoke-direct {v3, v4, v5, v6, v7}, Lrh4;-><init>(Ljava/lang/String;ICC)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lrh4;->s:Lrh4;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2, v3}, [Lrh4;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lrh4;->t:[Lrh4;

    .line 54
    .line 55
    new-instance v1, Lt11;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lt11;-><init>([Ljava/lang/Enum;)V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lrh4;->u:Lt11;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ICC)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-char p3, p0, Lrh4;->n:C

    .line 5
    .line 6
    iput-char p4, p0, Lrh4;->o:C

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrh4;
    .locals 1

    .line 1
    const-class v0, Lrh4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lrh4;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lrh4;
    .locals 1

    .line 1
    sget-object v0, Lrh4;->t:[Lrh4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lrh4;

    .line 8
    .line 9
    return-object v0
.end method
