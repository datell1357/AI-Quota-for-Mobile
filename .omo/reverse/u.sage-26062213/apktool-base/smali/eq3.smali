.class public final enum Leq3;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic n:[Leq3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Leq3;

    .line 2
    .line 3
    const-string v1, "RECORD_EVENTS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    filled-new-array {v0}, [Leq3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Leq3;->n:[Leq3;

    .line 14
    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leq3;
    .locals 1

    .line 1
    const-class v0, Leq3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Leq3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Leq3;
    .locals 1

    .line 1
    sget-object v0, Leq3;->n:[Leq3;

    .line 2
    .line 3
    invoke-virtual {v0}, [Leq3;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Leq3;

    .line 8
    .line 9
    return-object v0
.end method
