.class public final synthetic Lxp;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Z

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lnq0;ZI)V
    .locals 0

    .line 12
    iput p3, p0, Lxp;->n:I

    iput-object p1, p0, Lxp;->p:Ljava/lang/Object;

    iput-boolean p2, p0, Lxp;->o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLne1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lxp;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lxp;->o:Z

    .line 8
    .line 9
    iput-object p2, p0, Lxp;->p:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lxp;->n:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lxp;->o:Z

    .line 4
    .line 5
    iget-object p0, p0, Lxp;->p:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcb0;

    .line 11
    .line 12
    check-cast p1, Lw22;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcb0;->l(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lzp;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p1, p0, v1}, Lzp;-><init>(Lw22;Lnq0;I)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    check-cast p0, Lne1;

    .line 25
    .line 26
    check-cast p1, Lo83;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/high16 p0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    :goto_0
    invoke-virtual {p1, p0}, Lo83;->c(F)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lt64;->a:Lt64;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_1
    check-cast p0, Lra0;

    .line 50
    .line 51
    check-cast p1, Lw22;

    .line 52
    .line 53
    iget-object v0, p0, Lnq0;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lup;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lup;->e(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lnq0;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ltp;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lek2;->g(Z)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lzp;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, p1, p0, v1}, Lzp;-><init>(Lw22;Lnq0;I)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
