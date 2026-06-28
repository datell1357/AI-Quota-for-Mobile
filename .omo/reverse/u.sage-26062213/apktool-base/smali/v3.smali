.class public abstract Lv3;
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
    const-class v1, Lv3;

    .line 4
    .line 5
    const-string v2, "claudeAccountDataStore"

    .line 6
    .line 7
    const-string v3, "getClaudeAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

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
    const-string v3, "copilotAccountDataStore"

    .line 16
    .line 17
    const-string v5, "getCopilotAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 18
    .line 19
    invoke-direct {v2, v1, v3, v5, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ltz2;

    .line 23
    .line 24
    const-string v5, "antigravityAccountDataStore"

    .line 25
    .line 26
    const-string v6, "getAntigravityAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 27
    .line 28
    invoke-direct {v3, v1, v5, v6, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Ltz2;

    .line 32
    .line 33
    const-string v6, "geminiAccountDataStore"

    .line 34
    .line 35
    const-string v7, "getGeminiAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 36
    .line 37
    invoke-direct {v5, v1, v6, v7, v4}, Ltz2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Ltz2;

    .line 41
    .line 42
    const-string v7, "codexAccountDataStore"

    .line 43
    .line 44
    const-string v8, "getCodexAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

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
    sput-object v1, Lv3;->a:[Lkx1;

    .line 67
    .line 68
    new-instance v0, Lt3;

    .line 69
    .line 70
    invoke-direct {v0, v7}, Lt3;-><init>(I)V

    .line 71
    .line 72
    .line 73
    const/16 v1, 0xa

    .line 74
    .line 75
    const-string v2, "account_data"

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-static {v2, v3, v0, v1}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lv3;->b:Lqx2;

    .line 83
    .line 84
    const-string v0, "account_data_copilot"

    .line 85
    .line 86
    const/16 v1, 0xe

    .line 87
    .line 88
    invoke-static {v0, v3, v3, v1}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Lv3;->c:Lqx2;

    .line 93
    .line 94
    const-string v0, "account_data_antigravity"

    .line 95
    .line 96
    invoke-static {v0, v3, v3, v1}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Lv3;->d:Lqx2;

    .line 101
    .line 102
    const-string v0, "account_data_gemini"

    .line 103
    .line 104
    invoke-static {v0, v3, v3, v1}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Lv3;->e:Lqx2;

    .line 109
    .line 110
    const-string v0, "account_data_codex"

    .line 111
    .line 112
    invoke-static {v0, v3, v3, v1}, Lon4;->H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lv3;->f:Lqx2;

    .line 117
    .line 118
    return-void
.end method

.method public static final a(Lw3;Ly84;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lw3;->i()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lw3;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lw3;->i()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lw3;->j()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_2
    return-object p1
.end method
