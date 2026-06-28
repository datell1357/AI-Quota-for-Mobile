.class public final Lhl;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Lhl;

.field public static final b:La51;

.field public static final c:La51;

.field public static final d:La51;

.field public static final e:La51;

.field public static final f:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhl;->a:Lhl;

    .line 7
    .line 8
    const-string v0, "pc"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lhl;->b:La51;

    .line 15
    .line 16
    const-string v0, "symbol"

    .line 17
    .line 18
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lhl;->c:La51;

    .line 23
    .line 24
    const-string v0, "file"

    .line 25
    .line 26
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lhl;->d:La51;

    .line 31
    .line 32
    const-string v0, "offset"

    .line 33
    .line 34
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lhl;->e:La51;

    .line 39
    .line 40
    const-string v0, "importance"

    .line 41
    .line 42
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lhl;->f:La51;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lwj0;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lln;

    .line 7
    .line 8
    iget-wide v0, p0, Lln;->a:J

    .line 9
    .line 10
    sget-object p0, Lhl;->b:La51;

    .line 11
    .line 12
    invoke-interface {p2, p0, v0, v1}, Lqn2;->g(La51;J)Lqn2;

    .line 13
    .line 14
    .line 15
    check-cast p1, Lln;

    .line 16
    .line 17
    iget-object p0, p1, Lln;->b:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Lhl;->c:La51;

    .line 20
    .line 21
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lhl;->d:La51;

    .line 25
    .line 26
    iget-object v0, p1, Lln;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 29
    .line 30
    .line 31
    sget-object p0, Lhl;->e:La51;

    .line 32
    .line 33
    iget-wide v0, p1, Lln;->d:J

    .line 34
    .line 35
    invoke-interface {p2, p0, v0, v1}, Lqn2;->g(La51;J)Lqn2;

    .line 36
    .line 37
    .line 38
    sget-object p0, Lhl;->f:La51;

    .line 39
    .line 40
    iget p1, p1, Lln;->e:I

    .line 41
    .line 42
    invoke-interface {p2, p0, p1}, Lqn2;->e(La51;I)Lqn2;

    .line 43
    .line 44
    .line 45
    return-void
.end method
