.class public final Lcx0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(ILdh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcx0;->r:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lcx0;->r:I

    .line 2
    .line 3
    sget-object v0, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    check-cast p1, Lqi0;

    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p2, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 14
    .line 15
    .line 16
    check-cast p3, Ldh0;

    .line 17
    .line 18
    new-instance p0, Lcx0;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-direct {p0, v1, p3, p1}, Lcx0;-><init>(ILdh0;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcx0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_0
    check-cast p2, Lgo2;

    .line 29
    .line 30
    iget-wide p0, p2, Lgo2;->a:J

    .line 31
    .line 32
    check-cast p3, Ldh0;

    .line 33
    .line 34
    new-instance p0, Lcx0;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, v1, p3, p1}, Lcx0;-><init>(ILdh0;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcx0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lcx0;->r:I

    .line 2
    .line 3
    sget-object v0, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
