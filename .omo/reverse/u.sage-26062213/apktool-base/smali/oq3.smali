.class public final Loq3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lpq3;

.field public final synthetic p:Lpq0;


# direct methods
.method public synthetic constructor <init>(Lpq0;Lpq3;I)V
    .locals 0

    .line 1
    iput p3, p0, Loq3;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Loq3;->p:Lpq0;

    .line 4
    .line 5
    iput-object p2, p0, Loq3;->o:Lpq3;

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
    iget v0, p0, Loq3;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Loq3;->o:Lpq3;

    .line 4
    .line 5
    iget-object p0, p0, Loq3;->p:Lpq0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lpq0;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object p0, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    iget p0, v1, Lpq3;->a:I

    .line 30
    .line 31
    iget-object v0, v1, Lpq3;->c:Llc1;

    .line 32
    .line 33
    iget-object v0, v0, Llc1;->mView:Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v0, p0}, Lxw1;->a(Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
