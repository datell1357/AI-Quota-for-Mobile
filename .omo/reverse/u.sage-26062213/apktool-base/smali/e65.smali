.class public final Le65;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lr45;


# direct methods
.method public constructor <init>(Lf65;Lr45;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le65;->a:Lr45;

    return-void
.end method

.method public constructor <init>(Lr45;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le65;->a:Lr45;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Le65;->a:Lr45;

    .line 2
    .line 3
    iget-object p0, p0, Lr45;->f:La25;

    .line 4
    .line 5
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, La25;->F()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p0, p0, Le65;->a:Lr45;

    .line 2
    .line 3
    iget-object v0, p0, Lr45;->g:Lj45;

    .line 4
    .line 5
    iget-object v1, p0, Lr45;->e:Lf35;

    .line 6
    .line 7
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lj45;->v()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lr45;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_2

    .line 76
    .line 77
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, v1, Lf35;->w:Lmu0;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lmu0;->i(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, v1, Lf35;->x:Ly25;

    .line 86
    .line 87
    iget-object p0, p0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 88
    .line 89
    invoke-interface {p0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p1, v0, v1}, Ly25;->b(J)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public c()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le65;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Le65;->a:Lr45;

    .line 9
    .line 10
    iget-object v0, p0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object v2, p0, Lr45;->e:Lf35;

    .line 17
    .line 18
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v2, Lf35;->x:Ly25;

    .line 22
    .line 23
    invoke-virtual {v2}, Ly25;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sub-long/2addr v0, v2

    .line 28
    iget-object p0, p0, Lr45;->d:Lds4;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    sget-object v3, Le05;->i0:Ld05;

    .line 32
    .line 33
    invoke-virtual {p0, v2, v3}, Lds4;->D(Ljava/lang/String;Ld05;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    cmp-long p0, v0, v2

    .line 38
    .line 39
    if-lez p0, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object p0, p0, Le65;->a:Lr45;

    .line 2
    .line 3
    iget-object p0, p0, Lr45;->e:Lf35;

    .line 4
    .line 5
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lf35;->x:Ly25;

    .line 9
    .line 10
    invoke-virtual {p0}, Ly25;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long p0, v0, v2

    .line 17
    .line 18
    if-lez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method
