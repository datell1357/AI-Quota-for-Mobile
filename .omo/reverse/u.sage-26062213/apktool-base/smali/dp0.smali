.class public final Ldp0;
.super Ln1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lzj3;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ldp0;->d:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Ln1;-><init>(Lzj3;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public synthetic constructor <init>(Lzj3;I)V
    .locals 1

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Ldp0;->d:I

    invoke-direct {p0, p1, p2}, Ln1;-><init>(Lzj3;I)V

    return-void
.end method


# virtual methods
.method public final i(Le1;)V
    .locals 3

    .line 1
    iget v0, p0, Ldp0;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ln1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Ln1;->b:Ljava/io/Serializable;

    .line 6
    .line 7
    iget-object p0, p0, Ln1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lom1;

    .line 13
    .line 14
    check-cast p0, Lmj1;

    .line 15
    .line 16
    check-cast v2, Lb40;

    .line 17
    .line 18
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v2, p1}, Lmj1;->q(Lb40;Ld73;)Lb40;

    .line 26
    .line 27
    .line 28
    check-cast v1, Lzj3;

    .line 29
    .line 30
    invoke-interface {v1, v2}, Lzj3;->e(Lb40;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast p1, Lom1;

    .line 35
    .line 36
    check-cast p0, Lmj1;

    .line 37
    .line 38
    check-cast v2, Lb40;

    .line 39
    .line 40
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v2, p1}, Lmj1;->q(Lb40;Ld73;)Lb40;

    .line 48
    .line 49
    .line 50
    check-cast v1, Lzj3;

    .line 51
    .line 52
    invoke-interface {v1, v2}, Lzj3;->e(Lb40;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
