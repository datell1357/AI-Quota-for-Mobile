.class public final enum Ly84;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final enum r:Ly84;

.field public static final enum s:Ly84;

.field public static final enum t:Ly84;

.field public static final enum u:Ly84;

.field public static final enum v:Ly84;

.field public static final synthetic w:[Ly84;

.field public static final synthetic x:Lt11;


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:I

.field public final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ly84;

    .line 2
    .line 3
    const/16 v5, 0x3e9

    .line 4
    .line 5
    const-string v6, "claude_usage"

    .line 6
    .line 7
    const-string v1, "CLAUDE"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "Claude"

    .line 11
    .line 12
    const v4, 0x7f080141

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Ly84;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ly84;->r:Ly84;

    .line 19
    .line 20
    new-instance v1, Ly84;

    .line 21
    .line 22
    const/16 v6, 0x3ec

    .line 23
    .line 24
    const-string v7, "gemini_usage"

    .line 25
    .line 26
    const-string v2, "GEMINI"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    const-string v4, "Gemini"

    .line 30
    .line 31
    const v5, 0x7f080136

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v1 .. v7}, Ly84;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Ly84;->s:Ly84;

    .line 38
    .line 39
    new-instance v2, Ly84;

    .line 40
    .line 41
    const/16 v7, 0x3eb

    .line 42
    .line 43
    const-string v8, "antigravity_usage"

    .line 44
    .line 45
    const-string v3, "ANTIGRAVITY"

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    const-string v5, "Antigravity"

    .line 49
    .line 50
    const v6, 0x7f0800ca

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v2 .. v8}, Ly84;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Ly84;->t:Ly84;

    .line 57
    .line 58
    new-instance v3, Ly84;

    .line 59
    .line 60
    const/16 v8, 0x3ed

    .line 61
    .line 62
    const-string v9, "codex_usage"

    .line 63
    .line 64
    const-string v4, "CODEX"

    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    const-string v6, "Codex"

    .line 68
    .line 69
    const v7, 0x7f08010f

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v3 .. v9}, Ly84;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v3, Ly84;->u:Ly84;

    .line 76
    .line 77
    new-instance v4, Ly84;

    .line 78
    .line 79
    const/16 v9, 0x3ea

    .line 80
    .line 81
    const-string v10, "copilot_usage"

    .line 82
    .line 83
    const-string v5, "COPILOT"

    .line 84
    .line 85
    const/4 v6, 0x4

    .line 86
    const-string v7, "Copilot"

    .line 87
    .line 88
    const v8, 0x7f080142

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v4 .. v10}, Ly84;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v4, Ly84;->v:Ly84;

    .line 95
    .line 96
    filled-new-array {v0, v1, v2, v3, v4}, [Ly84;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Ly84;->w:[Ly84;

    .line 101
    .line 102
    new-instance v1, Lt11;

    .line 103
    .line 104
    invoke-direct {v1, v0}, Lt11;-><init>([Ljava/lang/Enum;)V

    .line 105
    .line 106
    .line 107
    sput-object v1, Ly84;->x:Lt11;

    .line 108
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ly84;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Ly84;->o:I

    .line 7
    .line 8
    iput p5, p0, Ly84;->p:I

    .line 9
    .line 10
    iput-object p6, p0, Ly84;->q:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly84;
    .locals 1

    .line 1
    const-class v0, Ly84;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ly84;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ly84;
    .locals 1

    .line 1
    sget-object v0, Ly84;->w:[Ly84;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ly84;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Lts1;
    .locals 2

    .line 1
    sget-object v0, Lts1;->b:Lts1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lts1;->c:Lts1;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    return-object v0

    .line 30
    :cond_2
    sget-object p0, Lts1;->d:Lts1;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    return-object v0
.end method
