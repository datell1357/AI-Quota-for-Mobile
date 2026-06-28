.class public final synthetic Lqk4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmv4;


# direct methods
.method public synthetic constructor <init>(Lmv4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqk4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqk4;->b:Lmv4;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lqk4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lqk4;->b:Lmv4;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lp65;

    .line 9
    .line 10
    iget-object p0, p0, Lmv4;->d:Lpc4;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lp65;-><init>(Lpc4;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lp65;

    .line 17
    .line 18
    iget-object p0, p0, Lmv4;->c:Lui3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lp65;-><init>(Lui3;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
