.class public final Lbl;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Lbl;

.field public static final b:La51;

.field public static final c:La51;

.field public static final d:La51;

.field public static final e:La51;

.field public static final f:La51;

.field public static final g:La51;

.field public static final h:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbl;->a:Lbl;

    .line 7
    .line 8
    const-string v0, "execution"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lbl;->b:La51;

    .line 15
    .line 16
    const-string v0, "customAttributes"

    .line 17
    .line 18
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lbl;->c:La51;

    .line 23
    .line 24
    const-string v0, "internalKeys"

    .line 25
    .line 26
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lbl;->d:La51;

    .line 31
    .line 32
    const-string v0, "background"

    .line 33
    .line 34
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lbl;->e:La51;

    .line 39
    .line 40
    const-string v0, "currentProcessDetails"

    .line 41
    .line 42
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lbl;->f:La51;

    .line 47
    .line 48
    const-string v0, "appProcessDetails"

    .line 49
    .line 50
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lbl;->g:La51;

    .line 55
    .line 56
    const-string v0, "uiOrientation"

    .line 57
    .line 58
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lbl;->h:La51;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lak0;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Len;

    .line 7
    .line 8
    iget-object p0, p0, Len;->a:Lfn;

    .line 9
    .line 10
    sget-object v0, Lbl;->b:La51;

    .line 11
    .line 12
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 13
    .line 14
    .line 15
    check-cast p1, Len;

    .line 16
    .line 17
    iget-object p0, p1, Len;->b:Ljava/util/List;

    .line 18
    .line 19
    sget-object v0, Lbl;->c:La51;

    .line 20
    .line 21
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lbl;->d:La51;

    .line 25
    .line 26
    iget-object v0, p1, Len;->c:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 29
    .line 30
    .line 31
    sget-object p0, Lbl;->e:La51;

    .line 32
    .line 33
    iget-object v0, p1, Len;->d:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 36
    .line 37
    .line 38
    sget-object p0, Lbl;->f:La51;

    .line 39
    .line 40
    iget-object v0, p1, Len;->e:Lzj0;

    .line 41
    .line 42
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 43
    .line 44
    .line 45
    sget-object p0, Lbl;->g:La51;

    .line 46
    .line 47
    iget-object v0, p1, Len;->f:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p2, p0, v0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 50
    .line 51
    .line 52
    sget-object p0, Lbl;->h:La51;

    .line 53
    .line 54
    iget p1, p1, Len;->g:I

    .line 55
    .line 56
    invoke-interface {p2, p0, p1}, Lqn2;->e(La51;I)Lqn2;

    .line 57
    .line 58
    .line 59
    return-void
.end method
