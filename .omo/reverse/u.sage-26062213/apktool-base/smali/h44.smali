.class public Lh44;
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
    .locals 4

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
    const/4 p0, 0x5

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lww1;->Z()I

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const v1, 0xffff

    .line 20
    .line 21
    .line 22
    if-gt v0, v1, :cond_1

    .line 23
    .line 24
    const/16 v1, -0x8000

    .line 25
    .line 26
    if-lt v0, v1, :cond_1

    .line 27
    .line 28
    int-to-short p0, v0

    .line 29
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    new-instance v1, Lfw1;

    .line 35
    .line 36
    const-string v2, "Lossy conversion from "

    .line 37
    .line 38
    const-string v3, " to short; at path "

    .line 39
    .line 40
    invoke-static {v2, v0, v3}, Lxw1;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {p1, v2}, Lww1;->K(Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v1, p1, p0}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    new-instance v0, Lfw1;

    .line 62
    .line 63
    invoke-direct {v0, p1, p0}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public final c(Lbx1;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lbx1;->L()Lbx1;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-long v0, p0

    .line 14
    invoke-virtual {p1, v0, v1}, Lbx1;->i0(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
