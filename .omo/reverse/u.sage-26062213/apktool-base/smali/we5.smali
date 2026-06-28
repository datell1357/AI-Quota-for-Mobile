.class public abstract Lwe5;
.super Lte5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final s:Lnf5;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lnf5;Lqf5;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p5}, Lte5;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lqf5;)V

    .line 13
    iget-boolean p1, p4, Lnf5;->c:Z

    .line 14
    invoke-static {p1}, Ln44;->U(Z)V

    iput-object p4, p0, Lwe5;->s:Lnf5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lte5;Lnf5;Lqf5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lte5;-><init>(Ljava/lang/String;Lte5;Lqf5;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p3, Lnf5;->c:Z

    .line 5
    .line 6
    invoke-static {p1}, Ln44;->U(Z)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lwe5;->s:Lnf5;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d()Lnf5;
    .locals 1

    .line 1
    iget-object v0, p0, Lwe5;->s:Lnf5;

    .line 2
    .line 3
    invoke-interface {p0}, Lrf5;->c()Lnf5;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lnf5;->a(Lnf5;Lnf5;)Lnf5;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
