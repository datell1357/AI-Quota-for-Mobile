.class public final Lxi2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lii2;

.field public final c:Ldi2;

.field public final d:Landroid/app/Activity;

.field public e:Z

.field public final f:Lup;

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxi2;->a:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Lii2;

    .line 10
    .line 11
    new-instance v1, Lf92;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, p0, v2}, Lf92;-><init>(Lxi2;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lii2;-><init>(Lxi2;Lf92;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lxi2;->b:Lii2;

    .line 21
    .line 22
    new-instance v0, Ldi2;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p1, v1}, Ldi2;-><init>(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lxi2;->c:Ldi2;

    .line 29
    .line 30
    new-instance v0, Lz82;

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    invoke-direct {v0, v1}, Lz82;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lci3;->K(Ljava/lang/Object;Lpe1;)Lai3;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lai3;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Landroid/content/Context;

    .line 56
    .line 57
    instance-of v1, v1, Landroid/app/Activity;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    check-cast v0, Landroid/app/Activity;

    .line 64
    .line 65
    iput-object v0, p0, Lxi2;->d:Landroid/app/Activity;

    .line 66
    .line 67
    new-instance p1, Lup;

    .line 68
    .line 69
    invoke-direct {p1, v2, p0}, Lup;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lxi2;->f:Lup;

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lxi2;->g:Z

    .line 76
    .line 77
    iget-object p1, p0, Lxi2;->b:Lii2;

    .line 78
    .line 79
    iget-object p1, p1, Lii2;->t:Lmk2;

    .line 80
    .line 81
    new-instance v0, Lwi2;

    .line 82
    .line 83
    invoke-direct {v0, p1}, Lwi2;-><init>(Lmk2;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lmk2;->a(Llk2;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lxi2;->b:Lii2;

    .line 90
    .line 91
    iget-object p1, p1, Lii2;->t:Lmk2;

    .line 92
    .line 93
    new-instance v0, Lc6;

    .line 94
    .line 95
    iget-object v1, p0, Lxi2;->a:Landroid/content/Context;

    .line 96
    .line 97
    invoke-direct {v0, v1}, Lc6;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lmk2;->a(Llk2;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lf92;

    .line 104
    .line 105
    const/4 v0, 0x3

    .line 106
    invoke-direct {p1, p0, v0}, Lf92;-><init>(Lxi2;I)V

    .line 107
    .line 108
    .line 109
    new-instance p0, Lnv3;

    .line 110
    .line 111
    invoke-direct {p0, p1}, Lnv3;-><init>(Lne1;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static b(Lxi2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lxi2;->b:Lii2;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lii2;->n(Ljava/lang/String;Ljj2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static d(Lxi2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lxi2;->b:Lii2;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v0}, Lii2;->p(Ljava/lang/String;ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lii2;->b()Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lpe1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lxi2;->b:Lii2;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lgg4;->L(Lpe1;)Ljj2;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p0, p1, p2}, Lii2;->n(Ljava/lang/String;Ljj2;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object p0, p0, Lxi2;->b:Lii2;

    .line 2
    .line 3
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 4
    .line 5
    invoke-virtual {v0}, Lvh;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lii2;->h()Lqi2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lqi2;->o:Lgg;

    .line 20
    .line 21
    iget v0, v0, Lgg;->a:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0, v0, v1, v2}, Lii2;->o(IZZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lii2;->b()Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
