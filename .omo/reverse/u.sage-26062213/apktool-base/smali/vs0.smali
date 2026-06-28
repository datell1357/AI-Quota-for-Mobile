.class public abstract Lvs0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic a:[Lkx1;

.field public static final b:Lqx2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ltz2;

    .line 2
    .line 3
    const-class v1, Lvs0;

    .line 4
    .line 5
    const-string v2, "developerDataStore"

    .line 6
    .line 7
    const-string v3, "getDeveloperDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-array v1, v4, [Lkx1;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v0, v1, v2

    .line 17
    .line 18
    sput-object v1, Lvs0;->a:[Lkx1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    const-string v2, "developer_data"

    .line 24
    .line 25
    invoke-static {v2, v0, v0, v1}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lvs0;->b:Lqx2;

    .line 30
    .line 31
    return-void
.end method

.method public static final a(Landroid/content/Context;)Llm0;
    .locals 2

    .line 1
    sget-object v0, Lvs0;->a:[Lkx1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    sget-object v1, Lvs0;->b:Lqx2;

    .line 7
    .line 8
    invoke-virtual {v1, p0, v0}, Lqx2;->a(Ljava/lang/Object;Lkx1;)Lpx2;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
