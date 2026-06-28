.class public final Lhf5;
.super Lte5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lve5;


# static fields
.field public static final t:Lqo3;


# instance fields
.field public final s:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqo3;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lqo3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhf5;->t:Lqo3;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Exception;Lqf5;)V
    .locals 1

    .line 1
    const-string v0, "<missing root>"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p4}, Lte5;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lqf5;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lhf5;->s:Ljava/lang/Exception;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lhf5;->s:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Lnf5;
    .locals 0

    .line 1
    sget-object p0, Lmf5;->e:Lnf5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q(Ljava/lang/String;Lnf5;Lqf5;)Lrf5;
    .locals 1

    .line 1
    sget-object v0, Lye5;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0, p3}, Lhf5;->t(Ljava/lang/String;Lnf5;ZLqf5;)Lif5;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final t(Ljava/lang/String;Lnf5;ZLqf5;)Lif5;
    .locals 7

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    sget-object v0, Lye5;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    :cond_0
    new-instance v1, Lif5;

    .line 6
    .line 7
    move-object v3, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-direct/range {v1 .. v6}, Lif5;-><init>(Ljava/lang/String;Lve5;Lnf5;ZLqf5;)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method
