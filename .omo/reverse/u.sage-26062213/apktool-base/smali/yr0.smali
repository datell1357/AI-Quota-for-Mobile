.class public final Lyr0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lai3;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Lef1;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ldf1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lyr0;->a:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lyr0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lyr0;->c:Lef1;

    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lpe1;I)V
    .locals 0

    .line 15
    iput p3, p0, Lyr0;->a:I

    iput-object p1, p0, Lyr0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lyr0;->c:Lef1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Lyr0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lug1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lug1;-><init>(Lyr0;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lx51;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lx51;-><init>(Lyr0;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_1
    new-instance v0, Lxr0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lxr0;-><init>(Lyr0;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
