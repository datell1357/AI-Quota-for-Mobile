.class public final Lek1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ldf1;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(ILdf1;)V
    .locals 0

    .line 1
    iput p1, p0, Lek1;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lek1;->a:Ldf1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(FLgy1;Lgy1;)F
    .locals 6

    .line 1
    iget p0, p0, Lek1;->b:I

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    const-wide v2, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Lgy1;->I()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    and-long/2addr v4, v2

    .line 20
    long-to-int p0, v4

    .line 21
    int-to-float p0, p0

    .line 22
    div-float/2addr p0, v1

    .line 23
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-long v4, p1

    .line 28
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long p0, p0

    .line 33
    shl-long/2addr v4, v0

    .line 34
    and-long/2addr p0, v2

    .line 35
    or-long/2addr p0, v4

    .line 36
    invoke-interface {p3, p2, p0, p1}, Lgy1;->y(Lgy1;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide p0

    .line 40
    shr-long/2addr p0, v0

    .line 41
    long-to-int p0, p0

    .line 42
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :pswitch_0
    invoke-interface {p2}, Lgy1;->I()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    shr-long/2addr v4, v0

    .line 52
    long-to-int p0, v4

    .line 53
    int-to-float p0, p0

    .line 54
    div-float/2addr p0, v1

    .line 55
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    int-to-long v4, p0

    .line 60
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    int-to-long p0, p0

    .line 65
    shl-long v0, v4, v0

    .line 66
    .line 67
    and-long/2addr p0, v2

    .line 68
    or-long/2addr p0, v0

    .line 69
    invoke-interface {p3, p2, p0, p1}, Lgy1;->y(Lgy1;J)J

    .line 70
    .line 71
    .line 72
    move-result-wide p0

    .line 73
    and-long/2addr p0, v2

    .line 74
    long-to-int p0, p0

    .line 75
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
