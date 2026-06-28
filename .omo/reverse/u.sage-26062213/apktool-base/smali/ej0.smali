.class public final synthetic Lej0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lij0;

.field public final synthetic p:Led0;


# direct methods
.method public synthetic constructor <init>(Lij0;Led0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lej0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lej0;->o:Lij0;

    .line 4
    .line 5
    iput-object p2, p0, Lej0;->p:Led0;

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
    iget v0, p0, Lej0;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lej0;->p:Led0;

    .line 4
    .line 5
    iget-object p0, p0, Lej0;->o:Lij0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lij0;->a(Led0;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0, v1}, Lij0;->a(Led0;)V

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
