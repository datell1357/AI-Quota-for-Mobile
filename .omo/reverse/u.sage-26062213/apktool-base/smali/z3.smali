.class public abstract Lz3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ly3;

.field public static final b:Ly3;

.field public static final c:Ly3;

.field public static final d:Ly3;

.field public static final e:Ly3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ly3;

    .line 2
    .line 3
    const-string v1, "https://claude.ai/"

    .line 4
    .line 5
    const-string v2, "https://claude.ai/login"

    .line 6
    .line 7
    const-string v3, "https://claude.ai"

    .line 8
    .line 9
    filled-new-array {v1, v3, v2}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Ly84;->r:Ly84;

    .line 18
    .line 19
    const-string v4, "Claude"

    .line 20
    .line 21
    invoke-direct {v0, v2, v4, v3, v1}, Ly3;-><init>(Ly84;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lz3;->a:Ly3;

    .line 25
    .line 26
    new-instance v0, Ly3;

    .line 27
    .line 28
    const-string v1, "https://github.com/"

    .line 29
    .line 30
    const-string v2, "https://github.com"

    .line 31
    .line 32
    const-string v3, "https://github.com/login"

    .line 33
    .line 34
    const-string v4, "https://github.com/login/"

    .line 35
    .line 36
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Ly84;->v:Ly84;

    .line 45
    .line 46
    const-string v4, "GitHub"

    .line 47
    .line 48
    invoke-direct {v0, v2, v4, v3, v1}, Ly3;-><init>(Ly84;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lz3;->b:Ly3;

    .line 52
    .line 53
    new-instance v0, Ly3;

    .line 54
    .line 55
    const-string v1, "https://accounts.google.com/"

    .line 56
    .line 57
    invoke-static {v1}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v2, Ly84;->t:Ly84;

    .line 62
    .line 63
    const-string v3, "Antigravity"

    .line 64
    .line 65
    const-string v4, "https://accounts.google.com/o/oauth2/v2/auth?client_id=1071006060591-tmhssin2h21lcre235vtolojh4g403ep.apps.googleusercontent.com&redirect_uri=http%3A%2F%2F127.0.0.1%3A8080%2Fcallback&response_type=code&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile&access_type=offline&prompt=consent"

    .line 66
    .line 67
    invoke-direct {v0, v2, v3, v4, v1}, Ly3;-><init>(Ly84;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lz3;->c:Ly3;

    .line 71
    .line 72
    new-instance v0, Ly3;

    .line 73
    .line 74
    const-string v1, "https://gemini.google.com"

    .line 75
    .line 76
    const-string v2, "https://gemini.google.com/app"

    .line 77
    .line 78
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v2, Ly84;->s:Ly84;

    .line 87
    .line 88
    const-string v3, "Gemini"

    .line 89
    .line 90
    const-string v4, "https://gemini.google.com/signin"

    .line 91
    .line 92
    invoke-direct {v0, v2, v3, v4, v1}, Ly3;-><init>(Ly84;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lz3;->d:Ly3;

    .line 96
    .line 97
    new-instance v0, Ly3;

    .line 98
    .line 99
    const-string v1, "https://chatgpt.com"

    .line 100
    .line 101
    const-string v2, "https://chatgpt.com/auth/login"

    .line 102
    .line 103
    const-string v3, "https://chatgpt.com/"

    .line 104
    .line 105
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sget-object v2, Ly84;->u:Ly84;

    .line 114
    .line 115
    const-string v4, "Codex"

    .line 116
    .line 117
    invoke-direct {v0, v2, v4, v3, v1}, Ly3;-><init>(Ly84;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 118
    .line 119
    .line 120
    sput-object v0, Lz3;->e:Ly3;

    .line 121
    .line 122
    return-void
.end method
