.class public abstract Lxl3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lsg0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lsg0;

    .line 2
    .line 3
    const-string v1, "NO_VALUE"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v1, v2}, Lsg0;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lxl3;->a:Lsg0;

    .line 10
    .line 11
    return-void
.end method

.method public static a(II)Lwl3;
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p1, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/16 v1, 0x10

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 15
    .line 16
    sget-object v0, Lvy;->n:Lvy;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    move-object p1, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    sget-object p1, Lvy;->o:Lvy;

    .line 23
    .line 24
    :goto_1
    const/4 v2, 0x0

    .line 25
    if-ltz p0, :cond_6

    .line 26
    .line 27
    if-gtz p0, :cond_4

    .line 28
    .line 29
    if-gtz v1, :cond_4

    .line 30
    .line 31
    if-ne p1, v0, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    const-string p0, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy "

    .line 35
    .line 36
    invoke-static {p1, p0}, Lq73;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_4
    :goto_2
    add-int/2addr v1, p0

    .line 41
    if-gez v1, :cond_5

    .line 42
    .line 43
    const v1, 0x7fffffff

    .line 44
    .line 45
    .line 46
    :cond_5
    new-instance v2, Lwl3;

    .line 47
    .line 48
    invoke-direct {v2, p0, v1, p1}, Lwl3;-><init>(IILvy;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_6
    const-string p1, "replay cannot be negative, but was "

    .line 53
    .line 54
    invoke-static {p0, p1}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_3
    return-object v2
.end method

.method public static final b([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    array-length p2, p0

    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 4
    .line 5
    and-int/2addr p1, p2

    .line 6
    aput-object p3, p0, p1

    .line 7
    .line 8
    return-void
.end method

.method public static final c(Ltl3;Lhi0;ILvy;)La81;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, -0x3

    .line 4
    if-ne p2, v0, :cond_1

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lvy;->n:Lvy;

    .line 7
    .line 8
    if-ne p3, v0, :cond_1

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    new-instance v0, Ls30;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lr30;-><init>(La81;Lhi0;ILvy;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
