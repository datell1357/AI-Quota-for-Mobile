.class public final synthetic Lsr1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ldv2;

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(ILdv2;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lsr1;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lsr1;->o:I

    .line 8
    .line 9
    iput-object p2, p0, Lsr1;->p:Ldv2;

    .line 10
    .line 11
    iput p3, p0, Lsr1;->q:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ldv2;III)V
    .locals 0

    .line 14
    iput p4, p0, Lsr1;->n:I

    iput-object p1, p0, Lsr1;->p:Ldv2;

    iput p2, p0, Lsr1;->o:I

    iput p3, p0, Lsr1;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lsr1;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget v2, p0, Lsr1;->q:I

    .line 6
    .line 7
    iget v3, p0, Lsr1;->o:I

    .line 8
    .line 9
    iget-object p0, p0, Lsr1;->p:Ldv2;

    .line 10
    .line 11
    check-cast p1, Lcv2;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0, v3, v2}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    iget v0, p0, Ldv2;->n:I

    .line 21
    .line 22
    sub-int/2addr v3, v0

    .line 23
    int-to-float v0, v3

    .line 24
    const/high16 v3, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr v0, v3

    .line 27
    invoke-static {v0}, Lis0;->V(F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v4, p0, Ldv2;->o:I

    .line 32
    .line 33
    sub-int/2addr v2, v4

    .line 34
    int-to-float v2, v2

    .line 35
    div-float/2addr v2, v3

    .line 36
    invoke-static {v2}, Lis0;->V(F)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {p1, p0, v0, v2}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :pswitch_1
    invoke-static {p1, p0, v3, v2}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
