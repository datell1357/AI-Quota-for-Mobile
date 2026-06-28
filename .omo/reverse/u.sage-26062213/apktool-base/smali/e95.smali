.class public final Le95;
.super Lzq4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Le95;->p:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lzq4;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lqd1;Ljava/util/List;)Lls4;
    .locals 0

    .line 1
    iget p1, p0, Le95;->p:I

    .line 2
    .line 3
    sget-object p2, Lls4;->f:Lvs4;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-object p2

    .line 9
    :pswitch_0
    new-instance p0, Leq4;

    .line 10
    .line 11
    const-wide/16 p1, 0x0

    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 18
    .line 19
    .line 20
    :pswitch_1
    return-object p0

    .line 21
    :pswitch_2
    return-object p2

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
