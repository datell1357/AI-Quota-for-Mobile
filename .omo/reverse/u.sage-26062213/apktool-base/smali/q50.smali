.class public final Lq50;
.super Ln84;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/String;

.field public final g:Ly84;

.field public final h:Lxr;

.field public final i:Ln1;

.field public final j:Lps;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iput p2, p0, Lq50;->e:I

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
    const-string p2, "ClaudeUsageDataFetcher"

    .line 13
    .line 14
    iput-object p2, p0, Lq50;->f:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p2, Lp50;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lp50;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lq50;->h:Lxr;

    .line 22
    .line 23
    new-instance p2, Ljf;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p2, p1, v0}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lq50;->i:Ln1;

    .line 30
    .line 31
    new-instance p2, Lr50;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lr50;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lq50;->j:Lps;

    .line 37
    .line 38
    sget-object p1, Ly84;->r:Ly84;

    .line 39
    .line 40
    iput-object p1, p0, Lq50;->g:Ly84;

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    invoke-direct {p0, p1}, Ln84;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const-string p2, "CopilotUsageDataFetcher"

    .line 47
    .line 48
    iput-object p2, p0, Lq50;->f:Ljava/lang/String;

    .line 49
    .line 50
    new-instance p2, Lvh0;

    .line 51
    .line 52
    invoke-direct {p2, p1}, Lvh0;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lq50;->h:Lxr;

    .line 56
    .line 57
    new-instance p2, Ljf;

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    invoke-direct {p2, p1, v0}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lq50;->i:Ln1;

    .line 64
    .line 65
    new-instance p2, Lwh0;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Lwh0;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lq50;->j:Lps;

    .line 71
    .line 72
    sget-object p1, Ly84;->v:Ly84;

    .line 73
    .line 74
    iput-object p1, p0, Lq50;->g:Ly84;

    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_1
    invoke-direct {p0, p1}, Ln84;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const-string p2, "CodexUsageDataFetcher"

    .line 81
    .line 82
    iput-object p2, p0, Lq50;->f:Ljava/lang/String;

    .line 83
    .line 84
    new-instance p2, Lf70;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Lf70;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Lq50;->h:Lxr;

    .line 90
    .line 91
    new-instance p2, Ljf;

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    invoke-direct {p2, p1, v0}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Lq50;->i:Ln1;

    .line 98
    .line 99
    new-instance p2, Lg70;

    .line 100
    .line 101
    invoke-direct {p2, p1}, Lg70;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    iput-object p2, p0, Lq50;->j:Lps;

    .line 105
    .line 106
    sget-object p1, Ly84;->u:Ly84;

    .line 107
    .line 108
    iput-object p1, p0, Lq50;->g:Ly84;

    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b()Ln1;
    .locals 1

    .line 1
    iget v0, p0, Lq50;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lq50;->i:Ln1;

    .line 7
    .line 8
    check-cast p0, Ljf;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lq50;->i:Ln1;

    .line 12
    .line 13
    check-cast p0, Ljf;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lq50;->i:Ln1;

    .line 17
    .line 18
    check-cast p0, Ljf;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lq50;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lq50;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lq50;->f:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    iget-object p0, p0, Lq50;->f:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lxr;
    .locals 1

    .line 1
    iget v0, p0, Lq50;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lq50;->h:Lxr;

    .line 7
    .line 8
    check-cast p0, Lvh0;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lq50;->h:Lxr;

    .line 12
    .line 13
    check-cast p0, Lf70;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lq50;->h:Lxr;

    .line 17
    .line 18
    check-cast p0, Lp50;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ly84;
    .locals 1

    .line 1
    iget v0, p0, Lq50;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lq50;->g:Ly84;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lq50;->g:Ly84;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    iget-object p0, p0, Lq50;->g:Ly84;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lps;
    .locals 1

    .line 1
    iget v0, p0, Lq50;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lq50;->j:Lps;

    .line 7
    .line 8
    check-cast p0, Lwh0;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lq50;->j:Lps;

    .line 12
    .line 13
    check-cast p0, Lg70;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lq50;->j:Lps;

    .line 17
    .line 18
    check-cast p0, Lr50;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
