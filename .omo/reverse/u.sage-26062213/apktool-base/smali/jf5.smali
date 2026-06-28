.class public final Ljf5;
.super Lwe5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final t:Ljf5;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljf5;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Lte5;->b(Ljava/util/UUID;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    sget-object v4, Lmf5;->e:Lnf5;

    .line 12
    .line 13
    invoke-static {}, Lye5;->c()Lqf5;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v1, "<skip trace>"

    .line 18
    .line 19
    invoke-direct/range {v0 .. v5}, Lwe5;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lnf5;Lqf5;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Ljf5;->t:Ljf5;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final c()Lnf5;
    .locals 0

    .line 1
    sget-object p0, Lmf5;->e:Lnf5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q(Ljava/lang/String;Lnf5;Lqf5;)Lrf5;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "Can\'t create child trace for no trace!"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
