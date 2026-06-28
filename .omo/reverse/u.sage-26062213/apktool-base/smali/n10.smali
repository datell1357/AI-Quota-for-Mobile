.class public abstract Ln10;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic a:[Lkx1;

.field public static final b:Lqx2;

.field public static final c:Lqx2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ltz2;

    .line 2
    .line 3
    const-class v1, Ln10;

    .line 4
    .line 5
    const-string v2, "claudeCalendarSyncDataStore"

    .line 6
    .line 7
    const-string v3, "getClaudeCalendarSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ltz2;

    .line 14
    .line 15
    const-string v3, "codexCalendarSyncDataStore"

    .line 16
    .line 17
    const-string v5, "getCodexCalendarSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 18
    .line 19
    invoke-direct {v2, v1, v3, v5, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Lkx1;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v0, v1, v3

    .line 27
    .line 28
    aput-object v2, v1, v4

    .line 29
    .line 30
    sput-object v1, Ln10;->a:[Lkx1;

    .line 31
    .line 32
    const-string v0, "calendar_sync"

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/16 v2, 0xe

    .line 36
    .line 37
    invoke-static {v0, v1, v1, v2}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Ln10;->b:Lqx2;

    .line 42
    .line 43
    const-string v0, "calendar_sync_codex"

    .line 44
    .line 45
    invoke-static {v0, v1, v1, v2}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Ln10;->c:Lqx2;

    .line 50
    .line 51
    return-void
.end method
