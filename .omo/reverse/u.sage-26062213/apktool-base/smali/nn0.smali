.class public final synthetic Lnn0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ltr3;


# direct methods
.method public synthetic constructor <init>(Ltr3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnn0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lnn0;->o:Ltr3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lnn0;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lnn0;->o:Ltr3;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lo83;

    .line 11
    .line 12
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p1, p0}, Lo83;->c(F)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    move-object v2, p1

    .line 27
    check-cast v2, Lkx0;

    .line 28
    .line 29
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lt70;

    .line 34
    .line 35
    iget-wide v3, p0, Lt70;->a:J

    .line 36
    .line 37
    sget-wide p0, Lt70;->f:J

    .line 38
    .line 39
    invoke-static {v3, v4, p0, p1}, Lt70;->c(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_0

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    const/16 v7, 0x7e

    .line 48
    .line 49
    invoke-static/range {v2 .. v7}, Lkx0;->C(Lkx0;JJI)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object v1

    .line 53
    :pswitch_1
    check-cast p1, Ly02;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-instance v2, Lly;

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    invoke-direct {v2, v3, p0}, Lly;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v3, Lon0;

    .line 75
    .line 76
    invoke-direct {v3, p0}, Lon0;-><init>(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Lka0;

    .line 80
    .line 81
    const v4, 0x2fd4df92

    .line 82
    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    invoke-direct {p0, v4, v5, v3}, Lka0;-><init>(IZLef1;)V

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p1, v0, v3, v2, p0}, Ly02;->a(ILih1;Lpe1;Lka0;)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
