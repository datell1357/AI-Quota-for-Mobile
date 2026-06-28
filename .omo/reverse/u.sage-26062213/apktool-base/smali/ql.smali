.class public final Lql;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpn2;


# static fields
.field public static final a:Lql;

.field public static final b:La51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lql;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lql;->a:Lql;

    .line 7
    .line 8
    const-string v0, "identifier"

    .line 9
    .line 10
    invoke-static {v0}, La51;->a(Ljava/lang/String;)La51;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lql;->b:La51;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lik0;

    .line 2
    .line 3
    check-cast p2, Lqn2;

    .line 4
    .line 5
    check-cast p1, Lxn;

    .line 6
    .line 7
    iget-object p0, p1, Lxn;->a:Ljava/lang/String;

    .line 8
    .line 9
    sget-object p1, Lql;->b:La51;

    .line 10
    .line 11
    invoke-interface {p2, p1, p0}, Lqn2;->a(La51;Ljava/lang/Object;)Lqn2;

    .line 12
    .line 13
    .line 14
    return-void
.end method
