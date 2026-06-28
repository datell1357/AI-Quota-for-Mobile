.class public final Lb71;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Li41;


# instance fields
.field public final synthetic a:I

.field public final b:Lk03;

.field public final c:Lk03;

.field public final d:Lk03;


# direct methods
.method public constructor <init>(Lij3;Lk03;Lk03;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb71;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lb71;->d:Lk03;

    .line 16
    iput-object p2, p0, Lb71;->b:Lk03;

    .line 17
    iput-object p3, p0, Lb71;->c:Lk03;

    return-void
.end method

.method public constructor <init>(Lk03;Lk03;Lk03;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lb71;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lb71;->b:Lk03;

    .line 8
    .line 9
    iput-object p2, p0, Lb71;->c:Lk03;

    .line 10
    .line 11
    iput-object p3, p0, Lb71;->d:Lk03;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lb71;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb71;->d:Lk03;

    .line 4
    .line 5
    iget-object v2, p0, Lb71;->c:Lk03;

    .line 6
    .line 7
    iget-object p0, p0, Lb71;->b:Lk03;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lhi0;

    .line 17
    .line 18
    invoke-interface {v2}, Lm03;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Liz3;

    .line 23
    .line 24
    invoke-interface {v1}, Lm03;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Llm0;

    .line 29
    .line 30
    new-instance v2, Lqk3;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0, v1}, Lqk3;-><init>(Lhi0;Liz3;Llm0;)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :pswitch_0
    check-cast v1, Lij3;

    .line 37
    .line 38
    iget-object v0, v1, Lij3;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/content/Context;

    .line 41
    .line 42
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lhi0;

    .line 47
    .line 48
    invoke-interface {v2}, Lm03;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lhj3;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v2, Ldd1;

    .line 64
    .line 65
    new-instance v3, Lv;

    .line 66
    .line 67
    const/16 v4, 0x8

    .line 68
    .line 69
    invoke-direct {v3, v4, v1}, Lv;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/16 v4, 0xd

    .line 73
    .line 74
    invoke-direct {v2, v4, v3}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance v3, Lws0;

    .line 82
    .line 83
    const/4 v4, 0x5

    .line 84
    invoke-direct {v3, v0, v4}, Lws0;-><init>(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2, p0, v3}, Lmj1;->n(Loi3;Ldd1;Lbh0;Lne1;)Lfn0;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
