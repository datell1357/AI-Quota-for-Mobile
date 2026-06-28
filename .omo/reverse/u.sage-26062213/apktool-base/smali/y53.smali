.class public final Ly53;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Li41;


# instance fields
.field public final synthetic a:I

.field public final b:Lk03;

.field public final c:Lk03;

.field public final d:Lk03;

.field public final e:Lk03;

.field public final f:Lk03;


# direct methods
.method public constructor <init>(Lij3;Lk03;Lk03;Lk03;Lk03;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ly53;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ly53;->f:Lk03;

    .line 20
    iput-object p2, p0, Ly53;->b:Lk03;

    .line 21
    iput-object p3, p0, Ly53;->c:Lk03;

    .line 22
    iput-object p4, p0, Ly53;->d:Lk03;

    .line 23
    iput-object p5, p0, Ly53;->e:Lk03;

    return-void
.end method

.method public constructor <init>(Lk03;Lk03;Lk03;Lk03;Lk03;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ly53;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ly53;->b:Lk03;

    .line 8
    .line 9
    iput-object p2, p0, Ly53;->c:Lk03;

    .line 10
    .line 11
    iput-object p3, p0, Ly53;->d:Lk03;

    .line 12
    .line 13
    iput-object p4, p0, Ly53;->e:Lk03;

    .line 14
    .line 15
    iput-object p5, p0, Ly53;->f:Lk03;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Ly53;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ly53;->e:Lk03;

    .line 4
    .line 5
    iget-object v2, p0, Ly53;->d:Lk03;

    .line 6
    .line 7
    iget-object v3, p0, Ly53;->c:Lk03;

    .line 8
    .line 9
    iget-object v4, p0, Ly53;->b:Lk03;

    .line 10
    .line 11
    iget-object p0, p0, Ly53;->f:Lk03;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lij3;

    .line 17
    .line 18
    iget-object p0, p0, Lij3;->b:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v6, p0

    .line 21
    check-cast v6, Le61;

    .line 22
    .line 23
    invoke-interface {v4}, Lm03;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    move-object v7, p0

    .line 28
    check-cast v7, Ln61;

    .line 29
    .line 30
    invoke-interface {v3}, Lm03;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    move-object v8, p0

    .line 35
    check-cast v8, Lgk3;

    .line 36
    .line 37
    invoke-interface {v2}, Lm03;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    move-object v9, p0

    .line 42
    check-cast v9, Lh21;

    .line 43
    .line 44
    invoke-interface {v1}, Lm03;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    move-object v10, p0

    .line 49
    check-cast v10, Lhi0;

    .line 50
    .line 51
    new-instance v5, Ltj3;

    .line 52
    .line 53
    invoke-direct/range {v5 .. v10}, Ltj3;-><init>(Le61;Ln61;Lgk3;Lh21;Lhi0;)V

    .line 54
    .line 55
    .line 56
    return-object v5

    .line 57
    :pswitch_0
    invoke-interface {v4}, Lm03;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v5, v0

    .line 62
    check-cast v5, Liz3;

    .line 63
    .line 64
    invoke-interface {v3}, Lm03;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v6, v0

    .line 69
    check-cast v6, Ln61;

    .line 70
    .line 71
    invoke-interface {v2}, Lm03;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    move-object v7, v0

    .line 76
    check-cast v7, Ljh;

    .line 77
    .line 78
    invoke-interface {v1}, Lm03;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v8, v0

    .line 83
    check-cast v8, Lx53;

    .line 84
    .line 85
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    move-object v9, p0

    .line 90
    check-cast v9, Lqk3;

    .line 91
    .line 92
    new-instance v4, Lw53;

    .line 93
    .line 94
    invoke-direct/range {v4 .. v9}, Lw53;-><init>(Liz3;Ln61;Ljh;Lx53;Lqk3;)V

    .line 95
    .line 96
    .line 97
    return-object v4

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
