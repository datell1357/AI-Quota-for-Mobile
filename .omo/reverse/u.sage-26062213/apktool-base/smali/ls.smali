.class public final Lls;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:J


# direct methods
.method public synthetic constructor <init>(JLdh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lls;->r:I

    .line 2
    .line 3
    iput-wide p1, p0, Lls;->t:J

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lls;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lbg3;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lls;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lls;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lls;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lhg2;

    .line 23
    .line 24
    check-cast p2, Ldh0;

    .line 25
    .line 26
    invoke-virtual {p0, p2, p1}, Lls;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lls;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lls;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 3

    .line 1
    iget v0, p0, Lls;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lls;

    .line 7
    .line 8
    iget-wide v1, p0, Lls;->t:J

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    invoke-direct {v0, v1, v2, p1, p0}, Lls;-><init>(JLdh0;I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, v0, Lls;->s:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lls;

    .line 18
    .line 19
    iget-wide v1, p0, Lls;->t:J

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-direct {v0, v1, v2, p1, p0}, Lls;-><init>(JLdh0;I)V

    .line 23
    .line 24
    .line 25
    iput-object p2, v0, Lls;->s:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lls;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-wide v2, p0, Lls;->t:J

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lls;->s:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lbg3;

    .line 16
    .line 17
    iget-object p0, p0, Lbg3;->a:Ldg3;

    .line 18
    .line 19
    iget-object p1, p0, Ldg3;->k:Ljf3;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, v2, v3, v0}, Ldg3;->d(Ljf3;JI)J

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    iget-object p0, p0, Lls;->s:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lhg2;

    .line 29
    .line 30
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lps;->i:Lrx2;

    .line 34
    .line 35
    sget-object p1, Lps;->n:Lrx2;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/Long;

    .line 38
    .line 39
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
