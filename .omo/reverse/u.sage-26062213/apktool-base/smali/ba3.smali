.class public final synthetic Lba3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lkj0;

.field public final synthetic p:Lxo;


# direct methods
.method public synthetic constructor <init>(Lkj0;Lxo;I)V
    .locals 0

    .line 1
    iput p3, p0, Lba3;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lba3;->o:Lkj0;

    .line 4
    .line 5
    iput-object p2, p0, Lba3;->p:Lxo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lba3;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lba3;->p:Lxo;

    .line 4
    .line 5
    iget-object p0, p0, Lba3;->o:Lkj0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lkj0;->a(Lxo;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0, v1}, Lkj0;->a(Lxo;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
