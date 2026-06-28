.class public final Lt23;
.super Ly73;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:J

.field public final q:Ld23;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLd23;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt23;->o:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lt23;->p:J

    .line 7
    .line 8
    iput-object p4, p0, Lt23;->q:Ld23;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a0()Lfz;
    .locals 0

    .line 1
    iget-object p0, p0, Lt23;->q:Ld23;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lt23;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final j()Lpb2;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lt23;->o:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lpb2;->b:Lw43;

    .line 7
    .line 8
    :try_start_0
    invoke-static {p0}, Lon4;->v(Ljava/lang/String;)Lpb2;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    :cond_0
    return-object v0
.end method
