.class public final Lmk;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Lmk;

.field public static final b:La51;

.field public static final c:La51;

.field public static final d:La51;

.field public static final e:La51;

.field public static final f:La51;

.field public static final g:La51;

.field public static final h:La51;

.field public static final i:La51;

.field public static final j:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmk;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmk;->a:Lmk;

    .line 7
    .line 8
    const-string v0, "eventTimeMs"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lmk;->b:La51;

    .line 15
    .line 16
    const-string v0, "eventCode"

    .line 17
    .line 18
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lmk;->c:La51;

    .line 23
    .line 24
    const-string v0, "complianceData"

    .line 25
    .line 26
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lmk;->d:La51;

    .line 31
    .line 32
    const-string v0, "eventUptimeMs"

    .line 33
    .line 34
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lmk;->e:La51;

    .line 39
    .line 40
    const-string v0, "sourceExtension"

    .line 41
    .line 42
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lmk;->f:La51;

    .line 47
    .line 48
    const-string v0, "sourceExtensionJsonProto3"

    .line 49
    .line 50
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lmk;->g:La51;

    .line 55
    .line 56
    const-string v0, "timezoneOffsetSeconds"

    .line 57
    .line 58
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lmk;->h:La51;

    .line 63
    .line 64
    const-string v0, "networkConnectionInfo"

    .line 65
    .line 66
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lmk;->i:La51;

    .line 71
    .line 72
    const-string v0, "experimentIds"

    .line 73
    .line 74
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lmk;->j:La51;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ln72;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lno;

    .line 7
    .line 8
    iget-wide v0, p0, Lno;->a:J

    .line 9
    .line 10
    sget-object p0, Lmk;->b:La51;

    .line 11
    .line 12
    invoke-interface {p2, p0, v0, v1}, Lqn2;->g(La51;J)Lqn2;

    .line 13
    .line 14
    .line 15
    check-cast p1, Lno;

    .line 16
    .line 17
    iget-object p0, p1, Lno;->b:Ljava/lang/Integer;

    .line 18
    .line 19
    sget-object v0, Lmk;->c:La51;

    .line 20
    .line 21
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lmk;->d:La51;

    .line 25
    .line 26
    iget-object v0, p1, Lno;->c:Lf90;

    .line 27
    .line 28
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 29
    .line 30
    .line 31
    sget-object p0, Lmk;->e:La51;

    .line 32
    .line 33
    iget-wide v0, p1, Lno;->d:J

    .line 34
    .line 35
    invoke-interface {p2, p0, v0, v1}, Lqn2;->g(La51;J)Lqn2;

    .line 36
    .line 37
    .line 38
    sget-object p0, Lmk;->f:La51;

    .line 39
    .line 40
    iget-object v0, p1, Lno;->e:[B

    .line 41
    .line 42
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 43
    .line 44
    .line 45
    sget-object p0, Lmk;->g:La51;

    .line 46
    .line 47
    iget-object v0, p1, Lno;->f:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 50
    .line 51
    .line 52
    sget-object p0, Lmk;->h:La51;

    .line 53
    .line 54
    iget-wide v0, p1, Lno;->g:J

    .line 55
    .line 56
    invoke-interface {p2, p0, v0, v1}, Lqn2;->g(La51;J)Lqn2;

    .line 57
    .line 58
    .line 59
    sget-object p0, Lmk;->i:La51;

    .line 60
    .line 61
    iget-object v0, p1, Lno;->h:Lil2;

    .line 62
    .line 63
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 64
    .line 65
    .line 66
    sget-object p0, Lmk;->j:La51;

    .line 67
    .line 68
    iget-object p1, p1, Lno;->i:Lz31;

    .line 69
    .line 70
    invoke-interface {p2, p0, p1}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 71
    .line 72
    .line 73
    return-void
.end method
