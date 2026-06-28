.class public final synthetic Lot0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Z

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lyh2;Ljava/util/List;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lot0;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lot0;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p3, p0, Lot0;->o:Z

    .line 10
    .line 11
    iput-object p2, p0, Lot0;->q:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lfo3;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lot0;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lot0;->o:Z

    iput-object p2, p0, Lot0;->p:Ljava/lang/Object;

    iput-object p3, p0, Lot0;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lot0;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lot0;->q:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lot0;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iget-boolean p0, p0, Lot0;->o:Z

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    check-cast v1, Lfo3;

    .line 15
    .line 16
    check-cast p1, Lph3;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-static {p1, p0}, Lnh3;->a(Lph3;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance p0, Lvc3;

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    invoke-direct {p0, v0, v1}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lnh3;->a:[Lkx1;

    .line 31
    .line 32
    sget-object v0, Lah3;->u:Loh3;

    .line 33
    .line 34
    new-instance v1, Lo2;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v1, v3, p0}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v2}, Lnh3;->b(Lph3;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lt64;->a:Lt64;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_0
    check-cast v2, Lyh2;

    .line 50
    .line 51
    check-cast v1, Ljava/util/List;

    .line 52
    .line 53
    check-cast p1, Lhv0;

    .line 54
    .line 55
    new-instance p1, Lpt0;

    .line 56
    .line 57
    invoke-direct {p1, v2, v1, p0}, Lpt0;-><init>(Lyh2;Ljava/util/List;Z)V

    .line 58
    .line 59
    .line 60
    iget-object p0, v2, Lyh2;->u:Lai2;

    .line 61
    .line 62
    iget-object p0, p0, Lai2;->j:Lr22;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lr22;->a(Lo22;)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Laq;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v0, v2, p1}, Laq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
