.class public final synthetic Lf10;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lm10;


# direct methods
.method public synthetic constructor <init>(Lm10;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf10;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lf10;->o:Lm10;

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
    .locals 2

    .line 1
    iget v0, p0, Lf10;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lf10;->o:Lm10;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lm10;->a:Llm0;

    .line 9
    .line 10
    invoke-interface {p0}, Llm0;->b()La81;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Lyq;

    .line 15
    .line 16
    const/16 v1, 0xe

    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lyq;-><init>(La81;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lqj0;->D(La81;)La81;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    iget-object p0, p0, Lm10;->a:Llm0;

    .line 27
    .line 28
    invoke-interface {p0}, Llm0;->b()La81;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lyq;

    .line 33
    .line 34
    const/16 v1, 0xc

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lyq;-><init>(La81;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lqj0;->D(La81;)La81;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :pswitch_1
    iget-object p0, p0, Lm10;->a:Llm0;

    .line 45
    .line 46
    invoke-interface {p0}, Llm0;->b()La81;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance v0, Lyq;

    .line 51
    .line 52
    const/16 v1, 0xd

    .line 53
    .line 54
    invoke-direct {v0, p0, v1}, Lyq;-><init>(La81;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lqj0;->D(La81;)La81;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :pswitch_2
    iget-object p0, p0, Lm10;->a:Llm0;

    .line 63
    .line 64
    invoke-interface {p0}, Llm0;->b()La81;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance v0, Lyq;

    .line 69
    .line 70
    const/16 v1, 0xf

    .line 71
    .line 72
    invoke-direct {v0, p0, v1}, Lyq;-><init>(La81;I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lqj0;->D(La81;)La81;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
