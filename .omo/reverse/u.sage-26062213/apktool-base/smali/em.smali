.class public final Lem;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Lem;

.field public static final b:La51;

.field public static final c:La51;

.field public static final d:La51;

.field public static final e:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lem;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lem;->a:Lem;

    .line 7
    .line 8
    const-string v0, "processName"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lem;->b:La51;

    .line 15
    .line 16
    const-string v0, "pid"

    .line 17
    .line 18
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lem;->c:La51;

    .line 23
    .line 24
    const-string v0, "importance"

    .line 25
    .line 26
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lem;->d:La51;

    .line 31
    .line 32
    const-string v0, "defaultProcess"

    .line 33
    .line 34
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lem;->e:La51;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lzy2;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    sget-object p0, Lem;->b:La51;

    .line 6
    .line 7
    iget-object v0, p1, Lzy2;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lem;->c:La51;

    .line 13
    .line 14
    iget v0, p1, Lzy2;->b:I

    .line 15
    .line 16
    invoke-interface {p2, p0, v0}, Lqn2;->e(La51;I)Lqn2;

    .line 17
    .line 18
    .line 19
    sget-object p0, Lem;->d:La51;

    .line 20
    .line 21
    iget v0, p1, Lzy2;->c:I

    .line 22
    .line 23
    invoke-interface {p2, p0, v0}, Lqn2;->e(La51;I)Lqn2;

    .line 24
    .line 25
    .line 26
    sget-object p0, Lem;->e:La51;

    .line 27
    .line 28
    iget-boolean p1, p1, Lzy2;->d:Z

    .line 29
    .line 30
    invoke-interface {p2, p0, p1}, Lqn2;->d(La51;Z)Lqn2;

    .line 31
    .line 32
    .line 33
    return-void
.end method
