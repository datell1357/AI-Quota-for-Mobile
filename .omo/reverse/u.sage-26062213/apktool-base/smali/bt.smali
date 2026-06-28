.class public final Lbt;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic r:I

.field public synthetic s:Z

.field public synthetic t:Z


# direct methods
.method public synthetic constructor <init>(ILdh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lbt;->r:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p0, Lbt;->r:I

    .line 2
    .line 3
    sget-object v0, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    check-cast p3, Ldh0;

    .line 22
    .line 23
    new-instance p2, Lbt;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {p2, v1, p3, v2}, Lbt;-><init>(ILdh0;I)V

    .line 27
    .line 28
    .line 29
    iput-boolean p0, p2, Lbt;->s:Z

    .line 30
    .line 31
    iput-boolean p1, p2, Lbt;->t:Z

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lbt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    check-cast p2, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    check-cast p3, Ldh0;

    .line 49
    .line 50
    new-instance p2, Lbt;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {p2, v1, p3, v2}, Lbt;-><init>(ILdh0;I)V

    .line 54
    .line 55
    .line 56
    iput-boolean p0, p2, Lbt;->s:Z

    .line 57
    .line 58
    iput-boolean p1, p2, Lbt;->t:Z

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Lbt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lbt;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lbt;->s:Z

    .line 7
    .line 8
    iget-boolean p0, p0, Lbt;->t:Z

    .line 9
    .line 10
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljs2;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, v0, p0}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_0
    iget-boolean v0, p0, Lbt;->s:Z

    .line 28
    .line 29
    iget-boolean p0, p0, Lbt;->t:Z

    .line 30
    .line 31
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
