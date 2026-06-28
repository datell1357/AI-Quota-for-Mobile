.class public Lr34;
.super Lg34;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lww1;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lww1;->s0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lww1;->o0()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lpz1;

    .line 15
    .line 16
    invoke-virtual {p1}, Lww1;->q0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lpz1;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public final c(Lbx1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lpz1;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lbx1;->j0(Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
