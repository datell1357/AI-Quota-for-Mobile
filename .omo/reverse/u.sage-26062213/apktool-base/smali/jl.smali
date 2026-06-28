.class public final Ljl;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Ljl;

.field public static final b:La51;

.field public static final c:La51;

.field public static final d:La51;

.field public static final e:La51;

.field public static final f:La51;

.field public static final g:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljl;->a:Ljl;

    .line 7
    .line 8
    const-string v0, "batteryLevel"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Ljl;->b:La51;

    .line 15
    .line 16
    const-string v0, "batteryVelocity"

    .line 17
    .line 18
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Ljl;->c:La51;

    .line 23
    .line 24
    const-string v0, "proximityOn"

    .line 25
    .line 26
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Ljl;->d:La51;

    .line 31
    .line 32
    const-string v0, "orientation"

    .line 33
    .line 34
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Ljl;->e:La51;

    .line 39
    .line 40
    const-string v0, "ramUsed"

    .line 41
    .line 42
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Ljl;->f:La51;

    .line 47
    .line 48
    const-string v0, "diskUsed"

    .line 49
    .line 50
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Ljl;->g:La51;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lbk0;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lpn;

    .line 7
    .line 8
    iget-object p0, p0, Lpn;->a:Ljava/lang/Double;

    .line 9
    .line 10
    sget-object v0, Ljl;->b:La51;

    .line 11
    .line 12
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 13
    .line 14
    .line 15
    check-cast p1, Lpn;

    .line 16
    .line 17
    iget p0, p1, Lpn;->b:I

    .line 18
    .line 19
    sget-object v0, Ljl;->c:La51;

    .line 20
    .line 21
    invoke-interface {p2, v0, p0}, Lqn2;->e(La51;I)Lqn2;

    .line 22
    .line 23
    .line 24
    sget-object p0, Ljl;->d:La51;

    .line 25
    .line 26
    iget-boolean v0, p1, Lpn;->c:Z

    .line 27
    .line 28
    invoke-interface {p2, p0, v0}, Lqn2;->d(La51;Z)Lqn2;

    .line 29
    .line 30
    .line 31
    sget-object p0, Ljl;->e:La51;

    .line 32
    .line 33
    iget v0, p1, Lpn;->d:I

    .line 34
    .line 35
    invoke-interface {p2, p0, v0}, Lqn2;->e(La51;I)Lqn2;

    .line 36
    .line 37
    .line 38
    sget-object p0, Ljl;->f:La51;

    .line 39
    .line 40
    iget-wide v0, p1, Lpn;->e:J

    .line 41
    .line 42
    invoke-interface {p2, p0, v0, v1}, Lqn2;->g(La51;J)Lqn2;

    .line 43
    .line 44
    .line 45
    sget-object p0, Ljl;->g:La51;

    .line 46
    .line 47
    iget-wide v0, p1, Lpn;->f:J

    .line 48
    .line 49
    invoke-interface {p2, p0, v0, v1}, Lqn2;->g(La51;J)Lqn2;

    .line 50
    .line 51
    .line 52
    return-void
.end method
