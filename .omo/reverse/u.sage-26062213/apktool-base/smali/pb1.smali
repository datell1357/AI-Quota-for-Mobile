.class public final Lpb1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final o:Lpb1;

.field public static final p:Lpb1;

.field public static final q:Lpb1;

.field public static final r:Lpb1;


# instance fields
.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lpb1;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lpb1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lpb1;

    .line 9
    .line 10
    const/16 v2, 0xc8

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lpb1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lpb1;

    .line 16
    .line 17
    const/16 v3, 0x12c

    .line 18
    .line 19
    invoke-direct {v2, v3}, Lpb1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lpb1;

    .line 23
    .line 24
    const/16 v4, 0x190

    .line 25
    .line 26
    invoke-direct {v3, v4}, Lpb1;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lpb1;

    .line 30
    .line 31
    const/16 v5, 0x1f4

    .line 32
    .line 33
    invoke-direct {v4, v5}, Lpb1;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lpb1;

    .line 37
    .line 38
    const/16 v6, 0x258

    .line 39
    .line 40
    invoke-direct {v5, v6}, Lpb1;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sput-object v5, Lpb1;->o:Lpb1;

    .line 44
    .line 45
    new-instance v6, Lpb1;

    .line 46
    .line 47
    const/16 v7, 0x2bc

    .line 48
    .line 49
    invoke-direct {v6, v7}, Lpb1;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v7, Lpb1;

    .line 53
    .line 54
    const/16 v8, 0x320

    .line 55
    .line 56
    invoke-direct {v7, v8}, Lpb1;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v8, Lpb1;

    .line 60
    .line 61
    const/16 v9, 0x384

    .line 62
    .line 63
    invoke-direct {v8, v9}, Lpb1;-><init>(I)V

    .line 64
    .line 65
    .line 66
    sput-object v3, Lpb1;->p:Lpb1;

    .line 67
    .line 68
    sput-object v4, Lpb1;->q:Lpb1;

    .line 69
    .line 70
    sput-object v6, Lpb1;->r:Lpb1;

    .line 71
    .line 72
    filled-new-array/range {v0 .. v8}, [Lpb1;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lpb1;->n:I

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-gt v0, p1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x3e9

    .line 11
    .line 12
    if-ge p1, v1, :cond_0

    .line 13
    .line 14
    move p0, v0

    .line 15
    :cond_0
    if-nez p0, :cond_1

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Font weight can be in range [1, 1000]. Current value: "

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lbr1;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lpb1;

    .line 2
    .line 3
    iget p0, p0, Lpb1;->n:I

    .line 4
    .line 5
    iget p1, p1, Lpb1;->n:I

    .line 6
    .line 7
    invoke-static {p0, p1}, Lnt1;->l(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lpb1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lpb1;

    .line 12
    .line 13
    iget p1, p1, Lpb1;->n:I

    .line 14
    .line 15
    iget p0, p0, Lpb1;->n:I

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lpb1;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "FontWeight(weight="

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    iget p0, p0, Lpb1;->n:I

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Lxw1;->q(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
