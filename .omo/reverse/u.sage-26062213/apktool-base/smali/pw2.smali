.class public final Lpw2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lu13;
.implements Lnw2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lpw2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lpw2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lpe1;Lfh0;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lpw2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lpw2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lou3;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lou3;->a(Ljava/lang/String;Lpe1;Lfh0;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p0, Lvw2;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lvw2;->a(Ljava/lang/String;Lpe1;Lfh0;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljb3;
    .locals 1

    .line 1
    iget v0, p0, Lpw2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lpw2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lou3;

    .line 9
    .line 10
    iget-object p0, p0, Lou3;->a:Lju3;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast p0, Lvw2;

    .line 14
    .line 15
    iget-object p0, p0, Lvw2;->a:Loe0;

    .line 16
    .line 17
    return-object p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
