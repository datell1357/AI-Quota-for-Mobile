.class public final Lae3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lj41;


# instance fields
.field public final synthetic a:I

.field public final b:Lm03;

.field public final c:Lm03;

.field public final d:Lj41;


# direct methods
.method public synthetic constructor <init>(Lm03;Lm03;Lj41;I)V
    .locals 0

    .line 1
    iput p4, p0, Lae3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lae3;->b:Lm03;

    .line 4
    .line 5
    iput-object p2, p0, Lae3;->c:Lm03;

    .line 6
    .line 7
    iput-object p3, p0, Lae3;->d:Lj41;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lae3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lae3;->d:Lj41;

    .line 4
    .line 5
    iget-object v2, p0, Lae3;->c:Lm03;

    .line 6
    .line 7
    iget-object p0, p0, Lae3;->b:Lm03;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v4, Lpr3;

    .line 13
    .line 14
    const/16 v0, 0xc

    .line 15
    .line 16
    invoke-direct {v4, v0}, Lpr3;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lpr3;

    .line 20
    .line 21
    const/16 v0, 0x9

    .line 22
    .line 23
    invoke-direct {v5, v0}, Lpr3;-><init>(I)V

    .line 24
    .line 25
    .line 26
    check-cast p0, Lbq0;

    .line 27
    .line 28
    invoke-virtual {p0}, Lbq0;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    move-object v6, p0

    .line 33
    check-cast v6, Laq0;

    .line 34
    .line 35
    check-cast v2, Lz74;

    .line 36
    .line 37
    invoke-virtual {v2}, Lz74;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    move-object v7, p0

    .line 42
    check-cast v7, Led0;

    .line 43
    .line 44
    check-cast v1, Ldg4;

    .line 45
    .line 46
    invoke-virtual {v1}, Ldg4;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    move-object v8, p0

    .line 51
    check-cast v8, Lqd1;

    .line 52
    .line 53
    new-instance v3, Ly14;

    .line 54
    .line 55
    invoke-direct/range {v3 .. v8}, Ly14;-><init>(Lpr3;Lpr3;Laq0;Led0;Lqd1;)V

    .line 56
    .line 57
    .line 58
    return-object v3

    .line 59
    :pswitch_0
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/content/Context;

    .line 64
    .line 65
    invoke-interface {v2}, Lm03;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lob3;

    .line 70
    .line 71
    check-cast v1, Lg31;

    .line 72
    .line 73
    invoke-virtual {v1}, Lg31;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lyo;

    .line 78
    .line 79
    new-instance v2, Leh;

    .line 80
    .line 81
    const/16 v3, 0x11

    .line 82
    .line 83
    invoke-direct {v2, p0, v0, v1, v3}, Leh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
