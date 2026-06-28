.class public final synthetic Ld92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ly84;

.field public final synthetic p:Lu/sage/MainActivity;

.field public final synthetic q:Lxi2;


# direct methods
.method public synthetic constructor <init>(Ly84;Lu/sage/MainActivity;Lxi2;I)V
    .locals 0

    .line 1
    iput p4, p0, Ld92;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Ld92;->o:Ly84;

    .line 4
    .line 5
    iput-object p2, p0, Ld92;->p:Lu/sage/MainActivity;

    .line 6
    .line 7
    iput-object p3, p0, Ld92;->q:Lxi2;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Ld92;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Ld92;->q:Lxi2;

    .line 6
    .line 7
    iget-object v3, p0, Ld92;->p:Lu/sage/MainActivity;

    .line 8
    .line 9
    iget-object p0, p0, Ld92;->o:Ly84;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget v0, Lu/sage/MainActivity;->C:I

    .line 15
    .line 16
    sget-object v0, Lez3;->a:Lra3;

    .line 17
    .line 18
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Lu/sage/MainActivity;->j(Ly84;)Lpt;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v4, Lp43;->b:Lp43;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Lpt;->n(Lv43;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ltv4;->w(Lp22;)Li22;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v3, Lp4;

    .line 44
    .line 45
    const/4 v4, 0x7

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-direct {v3, v2, p0, v5, v4}, Lp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x3

    .line 51
    invoke-static {v0, v5, v5, v3, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_0
    sget v0, Lu/sage/MainActivity;->C:I

    .line 56
    .line 57
    sget-object v0, Lwe3;->c:Lwe3;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-string v0, "settings/"

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v3}, Lu/sage/MainActivity;->i()Ln8;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v3, "SettingsScreen"

    .line 80
    .line 81
    invoke-virtual {v0, p0, v3}, Ln8;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2, p0}, Lxi2;->b(Lxi2;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
