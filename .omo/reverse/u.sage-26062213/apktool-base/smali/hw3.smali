.class public final Lhw3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lai3;


# instance fields
.field public final synthetic a:I

.field public final b:Lai3;

.field public final c:Lpe1;


# direct methods
.method public synthetic constructor <init>(Lai3;Lpe1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lhw3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhw3;->b:Lai3;

    .line 4
    .line 5
    iput-object p2, p0, Lhw3;->c:Lpe1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Lhw3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lg14;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lg14;-><init>(Lhw3;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lx51;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lx51;-><init>(Lhw3;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
