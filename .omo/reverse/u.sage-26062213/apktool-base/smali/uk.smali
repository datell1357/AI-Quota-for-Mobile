.class public final Luk;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Luk;

.field public static final b:La51;

.field public static final c:La51;

.field public static final d:La51;

.field public static final e:La51;

.field public static final f:La51;

.field public static final g:La51;

.field public static final h:La51;

.field public static final i:La51;

.field public static final j:La51;

.field public static final k:La51;

.field public static final l:La51;

.field public static final m:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Luk;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Luk;->a:Luk;

    .line 7
    .line 8
    const-string v0, "sdkVersion"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Luk;->b:La51;

    .line 15
    .line 16
    const-string v0, "gmpAppId"

    .line 17
    .line 18
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Luk;->c:La51;

    .line 23
    .line 24
    const-string v0, "platform"

    .line 25
    .line 26
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Luk;->d:La51;

    .line 31
    .line 32
    const-string v0, "installationUuid"

    .line 33
    .line 34
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Luk;->e:La51;

    .line 39
    .line 40
    const-string v0, "firebaseInstallationId"

    .line 41
    .line 42
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Luk;->f:La51;

    .line 47
    .line 48
    const-string v0, "firebaseAuthenticationToken"

    .line 49
    .line 50
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Luk;->g:La51;

    .line 55
    .line 56
    const-string v0, "appQualitySessionId"

    .line 57
    .line 58
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Luk;->h:La51;

    .line 63
    .line 64
    const-string v0, "buildVersion"

    .line 65
    .line 66
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Luk;->i:La51;

    .line 71
    .line 72
    const-string v0, "displayVersion"

    .line 73
    .line 74
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Luk;->j:La51;

    .line 79
    .line 80
    const-string v0, "session"

    .line 81
    .line 82
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Luk;->k:La51;

    .line 87
    .line 88
    const-string v0, "ndkPayload"

    .line 89
    .line 90
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Luk;->l:La51;

    .line 95
    .line 96
    const-string v0, "appExitInfo"

    .line 97
    .line 98
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Luk;->m:La51;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lkk0;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lom;

    .line 7
    .line 8
    iget-object p0, p0, Lom;->b:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Luk;->b:La51;

    .line 11
    .line 12
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 13
    .line 14
    .line 15
    check-cast p1, Lom;

    .line 16
    .line 17
    iget-object p0, p1, Lom;->c:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Luk;->c:La51;

    .line 20
    .line 21
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 22
    .line 23
    .line 24
    sget-object p0, Luk;->d:La51;

    .line 25
    .line 26
    iget v0, p1, Lom;->d:I

    .line 27
    .line 28
    invoke-interface {p2, p0, v0}, Lqn2;->e(La51;I)Lqn2;

    .line 29
    .line 30
    .line 31
    sget-object p0, Luk;->e:La51;

    .line 32
    .line 33
    iget-object v0, p1, Lom;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 36
    .line 37
    .line 38
    sget-object p0, Luk;->f:La51;

    .line 39
    .line 40
    iget-object v0, p1, Lom;->f:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 43
    .line 44
    .line 45
    sget-object p0, Luk;->g:La51;

    .line 46
    .line 47
    iget-object v0, p1, Lom;->g:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 50
    .line 51
    .line 52
    sget-object p0, Luk;->h:La51;

    .line 53
    .line 54
    iget-object v0, p1, Lom;->h:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 57
    .line 58
    .line 59
    sget-object p0, Luk;->i:La51;

    .line 60
    .line 61
    iget-object v0, p1, Lom;->i:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 64
    .line 65
    .line 66
    sget-object p0, Luk;->j:La51;

    .line 67
    .line 68
    iget-object v0, p1, Lom;->j:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 71
    .line 72
    .line 73
    sget-object p0, Luk;->k:La51;

    .line 74
    .line 75
    iget-object v0, p1, Lom;->k:Ljk0;

    .line 76
    .line 77
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 78
    .line 79
    .line 80
    sget-object p0, Luk;->l:La51;

    .line 81
    .line 82
    iget-object v0, p1, Lom;->l:Lpj0;

    .line 83
    .line 84
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 85
    .line 86
    .line 87
    sget-object p0, Luk;->m:La51;

    .line 88
    .line 89
    iget-object p1, p1, Lom;->m:Lmj0;

    .line 90
    .line 91
    invoke-interface {p2, p0, p1}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 92
    .line 93
    .line 94
    return-void
.end method
