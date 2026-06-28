.class public final synthetic Lyp;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Z

.field public final synthetic p:I

.field public final synthetic q:Lef1;


# direct methods
.method public synthetic constructor <init>(ZLdf1;I)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lyp;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lyp;->o:Z

    iput-object p2, p0, Lyp;->q:Lef1;

    iput p3, p0, Lyp;->p:I

    return-void
.end method

.method public synthetic constructor <init>(ZLne1;II)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lyp;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lyp;->o:Z

    .line 8
    .line 9
    iput-object p2, p0, Lyp;->q:Lef1;

    .line 10
    .line 11
    iput p4, p0, Lyp;->p:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lyp;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lyp;->p:I

    .line 7
    .line 8
    iget-object v4, p0, Lyp;->q:Lef1;

    .line 9
    .line 10
    iget-boolean p0, p0, Lyp;->o:Z

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v4, Ldf1;

    .line 16
    .line 17
    check-cast p1, Lag1;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    or-int/lit8 p2, v3, 0x1

    .line 25
    .line 26
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p0, v4, p1, p2}, Lfl4;->c(ZLdf1;Lag1;I)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_0
    check-cast v4, Lne1;

    .line 35
    .line 36
    check-cast p1, Lag1;

    .line 37
    .line 38
    check-cast p2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lqj0;->f0(I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p0, v4, p1, p2, v3}, Ln44;->C(ZLne1;Lag1;II)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
