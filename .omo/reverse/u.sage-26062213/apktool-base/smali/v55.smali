.class public final enum Lv55;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final enum o:Lv55;

.field public static final enum p:Lv55;

.field public static final synthetic q:[Lv55;


# instance fields
.field public final n:[Lx55;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lv55;

    .line 2
    .line 3
    sget-object v1, Lx55;->o:Lx55;

    .line 4
    .line 5
    sget-object v2, Lx55;->p:Lx55;

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Lx55;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "STORAGE"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v0, v2, v3, v1}, Lv55;-><init>(Ljava/lang/String;I[Lx55;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lv55;->o:Lv55;

    .line 18
    .line 19
    new-instance v1, Lv55;

    .line 20
    .line 21
    sget-object v2, Lx55;->q:Lx55;

    .line 22
    .line 23
    filled-new-array {v2}, [Lx55;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "DMA"

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v1, v3, v4, v2}, Lv55;-><init>(Ljava/lang/String;I[Lx55;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lv55;->p:Lv55;

    .line 34
    .line 35
    filled-new-array {v0, v1}, [Lv55;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lv55;->q:[Lv55;

    .line 40
    .line 41
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[Lx55;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lv55;->n:[Lx55;

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lv55;
    .locals 1

    .line 1
    sget-object v0, Lv55;->q:[Lv55;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lv55;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lv55;

    .line 8
    .line 9
    return-object v0
.end method
