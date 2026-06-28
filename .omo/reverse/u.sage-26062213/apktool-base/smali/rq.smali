.class public final synthetic Lrq;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ln1;


# direct methods
.method public synthetic constructor <init>(Ln1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lrq;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lrq;->o:Ln1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lrq;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lrq;->o:Ln1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ln1;->a()La81;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Lyq;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lyq;-><init>(La81;I)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lsq;

    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Lsq;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x2

    .line 24
    invoke-static {p0, v0}, Ln44;->R(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Lov0;

    .line 28
    .line 29
    invoke-direct {p0, v2, v0}, Lov0;-><init>(La81;Ldf1;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Ln1;->c()Llm0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Llm0;->b()La81;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v2, Lvq;

    .line 42
    .line 43
    invoke-direct {v2, v1, v0, p0}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lqj0;->D(La81;)La81;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
