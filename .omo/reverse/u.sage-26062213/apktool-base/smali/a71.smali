.class public final La71;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Li41;


# instance fields
.field public final synthetic a:I

.field public final b:Lij3;

.field public final c:Lk03;


# direct methods
.method public synthetic constructor <init>(Lij3;Lk03;I)V
    .locals 0

    .line 12
    iput p3, p0, La71;->a:I

    iput-object p1, p0, La71;->b:Lij3;

    iput-object p2, p0, La71;->c:Lk03;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk03;Lij3;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, La71;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, La71;->c:Lk03;

    .line 8
    .line 9
    iput-object p2, p0, La71;->b:Lij3;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, La71;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La71;->b:Lij3;

    .line 4
    .line 5
    iget-object p0, p0, La71;->c:Lk03;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljh;

    .line 15
    .line 16
    iget-object v0, v1, Lij3;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lhi0;

    .line 19
    .line 20
    new-instance v1, Lx53;

    .line 21
    .line 22
    invoke-direct {v1, p0, v0}, Lx53;-><init>(Ljh;Lhi0;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    iget-object v0, v1, Lij3;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/content/Context;

    .line 29
    .line 30
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lq94;

    .line 35
    .line 36
    new-instance v1, Lyy2;

    .line 37
    .line 38
    invoke-direct {v1, v0, p0}, Lyy2;-><init>(Landroid/content/Context;Lq94;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_1
    iget-object v0, v1, Lij3;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroid/content/Context;

    .line 45
    .line 46
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lhi0;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object v1, Lw13;->Q:Lw13;

    .line 59
    .line 60
    new-instance v2, Ldd1;

    .line 61
    .line 62
    new-instance v3, Lt3;

    .line 63
    .line 64
    const/16 v4, 0x16

    .line 65
    .line 66
    invoke-direct {v3, v4}, Lt3;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const/16 v4, 0xd

    .line 70
    .line 71
    invoke-direct {v2, v4, v3}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v3, Lws0;

    .line 79
    .line 80
    const/4 v4, 0x4

    .line 81
    invoke-direct {v3, v0, v4}, Lws0;-><init>(Landroid/content/Context;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2, p0, v3}, Lmj1;->n(Loi3;Ldd1;Lbh0;Lne1;)Lfn0;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
