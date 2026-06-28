.class public final Lgl;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Lgl;

.field public static final b:La51;

.field public static final c:La51;

.field public static final d:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgl;->a:Lgl;

    .line 7
    .line 8
    const-string v0, "name"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lgl;->b:La51;

    .line 15
    .line 16
    const-string v0, "importance"

    .line 17
    .line 18
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lgl;->c:La51;

    .line 23
    .line 24
    const-string v0, "frames"

    .line 25
    .line 26
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lgl;->d:La51;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lxj0;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Ljn;

    .line 7
    .line 8
    iget-object p0, p0, Ljn;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lgl;->b:La51;

    .line 11
    .line 12
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljn;

    .line 16
    .line 17
    iget p0, p1, Ljn;->b:I

    .line 18
    .line 19
    sget-object v0, Lgl;->c:La51;

    .line 20
    .line 21
    invoke-interface {p2, v0, p0}, Lqn2;->e(La51;I)Lqn2;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lgl;->d:La51;

    .line 25
    .line 26
    iget-object p1, p1, Ljn;->c:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p2, p0, p1}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 29
    .line 30
    .line 31
    return-void
.end method
