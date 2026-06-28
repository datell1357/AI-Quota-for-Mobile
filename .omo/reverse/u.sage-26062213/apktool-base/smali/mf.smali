.class public final Lmf;
.super Ln84;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/String;

.field public final g:Ly84;

.field public final h:Ljava/lang/String;

.field public final i:Lxr;

.field public final j:Ln1;

.field public final k:Lps;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iput p2, p0, Lmf;->e:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Ln84;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "AntigravityUsageDataFetcher"

    .line 13
    .line 14
    iput-object p2, p0, Lmf;->f:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p2, Llf;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Llf;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lmf;->i:Lxr;

    .line 22
    .line 23
    new-instance p2, Ljf;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {p2, p1, v0}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lmf;->j:Ln1;

    .line 30
    .line 31
    new-instance p2, Lnf;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lnf;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lmf;->k:Lps;

    .line 37
    .line 38
    sget-object p1, Ly84;->t:Ly84;

    .line 39
    .line 40
    iput-object p1, p0, Lmf;->g:Ly84;

    .line 41
    .line 42
    const-string p1, "antigravity/2.0.0 android/unknown"

    .line 43
    .line 44
    iput-object p1, p0, Lmf;->h:Ljava/lang/String;

    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    invoke-direct {p0, p1}, Ln84;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    const-string p2, "GeminiUsageDataFetcher"

    .line 51
    .line 52
    iput-object p2, p0, Lmf;->f:Ljava/lang/String;

    .line 53
    .line 54
    new-instance p2, Lgg1;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Lgg1;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lmf;->i:Lxr;

    .line 60
    .line 61
    new-instance p2, Ljf;

    .line 62
    .line 63
    const/4 v0, 0x4

    .line 64
    invoke-direct {p2, p1, v0}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Lmf;->j:Ln1;

    .line 68
    .line 69
    new-instance p2, Lhg1;

    .line 70
    .line 71
    invoke-direct {p2, p1}, Lhg1;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p0, Lmf;->k:Lps;

    .line 75
    .line 76
    sget-object p1, Ly84;->s:Ly84;

    .line 77
    .line 78
    iput-object p1, p0, Lmf;->g:Ly84;

    .line 79
    .line 80
    const-string p1, "gemini-cli"

    .line 81
    .line 82
    iput-object p1, p0, Lmf;->h:Ljava/lang/String;

    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b()Ln1;
    .locals 1

    .line 1
    iget v0, p0, Lmf;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmf;->j:Ln1;

    .line 7
    .line 8
    check-cast p0, Ljf;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lmf;->j:Ln1;

    .line 12
    .line 13
    check-cast p0, Ljf;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lmf;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmf;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lmf;->f:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lxr;
    .locals 1

    .line 1
    iget v0, p0, Lmf;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmf;->i:Lxr;

    .line 7
    .line 8
    check-cast p0, Lgg1;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lmf;->i:Lxr;

    .line 12
    .line 13
    check-cast p0, Llf;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ly84;
    .locals 1

    .line 1
    iget v0, p0, Lmf;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmf;->g:Ly84;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lmf;->g:Ly84;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lps;
    .locals 1

    .line 1
    iget v0, p0, Lmf;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmf;->k:Lps;

    .line 7
    .line 8
    check-cast p0, Lhg1;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lmf;->k:Lps;

    .line 12
    .line 13
    check-cast p0, Lnf;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lmf;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmf;->h:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lmf;->h:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
