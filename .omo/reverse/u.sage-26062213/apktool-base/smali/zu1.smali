.class public final Lzu1;
.super Lwu1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final u:Lbv1;

.field public final v:Lav1;

.field public final w:Lo40;

.field public final x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbv1;Lav1;Lo40;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li72;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzu1;->u:Lbv1;

    .line 5
    .line 6
    iput-object p2, p0, Lzu1;->v:Lav1;

    .line 7
    .line 8
    iput-object p3, p0, Lzu1;->w:Lo40;

    .line 9
    .line 10
    iput-object p4, p0, Lzu1;->x:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final r()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lzu1;->w:Lo40;

    .line 2
    .line 3
    invoke-static {p1}, Lbv1;->a0(Li72;)Lo40;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lzu1;->u:Lbv1;

    .line 8
    .line 9
    iget-object v2, p0, Lzu1;->v:Lav1;

    .line 10
    .line 11
    iget-object p0, p0, Lzu1;->x:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0, p0}, Lbv1;->p0(Lav1;Lo40;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v2, Lav1;->n:Lom2;

    .line 23
    .line 24
    new-instance v3, Lb42;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, v4}, Lb42;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3, v4}, Li72;->e(Li72;I)Z

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lbv1;->a0(Li72;)Lo40;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, v2, p1, p0}, Lbv1;->p0(Lav1;Lo40;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {v1, v2, p0}, Lbv1;->C(Lav1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v1, p0}, Lbv1;->p(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
