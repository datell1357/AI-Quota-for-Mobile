.class public final Lii;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lfx1;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lii;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lii;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget v0, p0, Lii;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lii;->o:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lyr0;

    .line 9
    .line 10
    new-instance v0, Lxr0;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lxr0;-><init>(Lyr0;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lzx0;

    .line 17
    .line 18
    check-cast p0, Lcc;

    .line 19
    .line 20
    iget-object p0, p0, Lcc;->o:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {p0}, Lca;->w([Ljava/lang/Object;)Lg1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Lzx0;-><init>(Ljava/util/Iterator;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1
    check-cast p0, [Ljava/lang/Object;

    .line 33
    .line 34
    new-instance v0, Lg1;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, v1, p0}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
