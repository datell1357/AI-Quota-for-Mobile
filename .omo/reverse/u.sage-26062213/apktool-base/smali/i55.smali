.class public final Li55;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lvc5;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lo55;


# direct methods
.method public synthetic constructor <init>(Lo55;Lvc5;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput p4, p0, Li55;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Li55;->b:Lvc5;

    .line 4
    .line 5
    iput-object p3, p0, Li55;->c:Landroid/os/Bundle;

    .line 6
    .line 7
    iput-object p1, p0, Li55;->d:Lo55;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Li55;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Li55;->c:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v2, p0, Li55;->b:Lvc5;

    .line 6
    .line 7
    iget-object p0, p0, Li55;->d:Lo55;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 13
    .line 14
    invoke-virtual {v0}, Lpb5;->V()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Lpb5;->d0(Landroid/os/Bundle;Lvc5;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 25
    .line 26
    invoke-virtual {v0}, Lpb5;->V()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 30
    .line 31
    invoke-virtual {p0, v1, v2}, Lpb5;->d0(Landroid/os/Bundle;Lvc5;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
