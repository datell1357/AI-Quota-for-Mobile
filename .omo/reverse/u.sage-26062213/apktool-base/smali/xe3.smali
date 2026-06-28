.class public abstract Lxe3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic a:[Lkx1;

.field public static final b:Lqx2;

.field public static final c:Lqx2;

.field public static final d:Lqx2;

.field public static final e:Lqx2;

.field public static final f:Lqx2;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ltz2;

    .line 2
    .line 3
    const-class v1, Lxe3;

    .line 4
    .line 5
    const-string v2, "claudeScriptDataStore"

    .line 6
    .line 7
    const-string v3, "getClaudeScriptDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

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
    const-string v3, "copilotScriptDataStore"

    .line 16
    .line 17
    const-string v5, "getCopilotScriptDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 18
    .line 19
    invoke-direct {v2, v1, v3, v5, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ltz2;

    .line 23
    .line 24
    const-string v5, "antigravityScriptDataStore"

    .line 25
    .line 26
    const-string v6, "getAntigravityScriptDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 27
    .line 28
    invoke-direct {v3, v1, v5, v6, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Ltz2;

    .line 32
    .line 33
    const-string v6, "geminiScriptDataStore"

    .line 34
    .line 35
    const-string v7, "getGeminiScriptDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 36
    .line 37
    invoke-direct {v5, v1, v6, v7, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Ltz2;

    .line 41
    .line 42
    const-string v7, "codexScriptDataStore"

    .line 43
    .line 44
    const-string v8, "getCodexScriptDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 45
    .line 46
    invoke-direct {v6, v1, v7, v8, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    new-array v1, v1, [Lkx1;

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    aput-object v0, v1, v7

    .line 54
    .line 55
    aput-object v2, v1, v4

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    aput-object v3, v1, v0

    .line 59
    .line 60
    const/4 v0, 0x3

    .line 61
    aput-object v5, v1, v0

    .line 62
    .line 63
    const/4 v0, 0x4

    .line 64
    aput-object v6, v1, v0

    .line 65
    .line 66
    sput-object v1, Lxe3;->a:[Lkx1;

    .line 67
    .line 68
    const-string v0, "script_data"

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    const/16 v2, 0xe

    .line 72
    .line 73
    invoke-static {v0, v1, v1, v2}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lxe3;->b:Lqx2;

    .line 78
    .line 79
    const-string v0, "script_data_copilot"

    .line 80
    .line 81
    invoke-static {v0, v1, v1, v2}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lxe3;->c:Lqx2;

    .line 86
    .line 87
    const-string v0, "script_data_antigravity"

    .line 88
    .line 89
    invoke-static {v0, v1, v1, v2}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lxe3;->d:Lqx2;

    .line 94
    .line 95
    const-string v0, "script_data_gemini"

    .line 96
    .line 97
    invoke-static {v0, v1, v1, v2}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lxe3;->e:Lqx2;

    .line 102
    .line 103
    const-string v0, "script_data_codex"

    .line 104
    .line 105
    invoke-static {v0, v1, v1, v2}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lxe3;->f:Lqx2;

    .line 110
    .line 111
    return-void
.end method
