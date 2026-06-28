.class public final Lh83;
.super Lwu1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final u:Lyu1;


# direct methods
.method public constructor <init>(Lyu1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li72;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh83;->u:Lyu1;

    .line 5
    .line 6
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
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwu1;->q()Lbv1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lbv1;->M()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of v0, p1, Lc90;

    .line 10
    .line 11
    iget-object p0, p0, Lh83;->u:Lyu1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lc90;

    .line 16
    .line 17
    iget-object p1, p1, Lc90;->a:Ljava/lang/Throwable;

    .line 18
    .line 19
    invoke-static {p1}, Lgg4;->q(Ljava/lang/Throwable;)Lf83;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lo20;->g(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {p1}, Lcv1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lo20;->g(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
