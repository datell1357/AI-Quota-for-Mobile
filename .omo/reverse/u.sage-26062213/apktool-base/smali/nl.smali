.class public final Lnl;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Lnl;

.field public static final b:La51;

.field public static final c:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnl;->a:Lnl;

    .line 7
    .line 8
    const-string v0, "rolloutId"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lnl;->b:La51;

    .line 15
    .line 16
    const-string v0, "variantId"

    .line 17
    .line 18
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lnl;->c:La51;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ldk0;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Ltn;

    .line 7
    .line 8
    iget-object p0, p0, Ltn;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lnl;->b:La51;

    .line 11
    .line 12
    invoke-interface {p2, v0, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 13
    .line 14
    .line 15
    check-cast p1, Ltn;

    .line 16
    .line 17
    iget-object p0, p1, Ltn;->b:Ljava/lang/String;

    .line 18
    .line 19
    sget-object p1, Lnl;->c:La51;

    .line 20
    .line 21
    invoke-interface {p2, p1, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 22
    .line 23
    .line 24
    return-void
.end method
