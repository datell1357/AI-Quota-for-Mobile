.class public final Lfo0;
.super Lbx3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final t:Lfo0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfo0;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lbx3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lfo0;->t:Lfo0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final h(Lvm1;Lul1;)Z
    .locals 3

    .line 1
    const-string v0, "http.request"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lom1;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "Connection"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lim1;->getHeaders(Ljava/lang/String;)[Lgj1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v1, v0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Lov;

    .line 21
    .line 22
    new-instance v2, Ltu;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ltu;-><init>([Lgj1;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lov;-><init>(Ljj1;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v1}, Lov;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lov;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "Close"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :cond_1
    invoke-super {p0, p1, p2}, Lbx3;->h(Lvm1;Lul1;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method
