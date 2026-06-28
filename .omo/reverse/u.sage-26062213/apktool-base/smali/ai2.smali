.class public final Lai2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lyh2;

.field public final b:Lqi2;

.field public final c:Landroid/os/Bundle;

.field public d:Lg22;

.field public final e:Lji2;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/os/Bundle;

.field public final h:Lwc3;

.field public i:Z

.field public final j:Lr22;

.field public k:Lg22;

.field public final l:Lzc3;

.field public final m:Lnv3;


# direct methods
.method public constructor <init>(Lyh2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai2;->a:Lyh2;

    .line 5
    .line 6
    iget-object v0, p1, Lyh2;->o:Lqi2;

    .line 7
    .line 8
    iput-object v0, p0, Lai2;->b:Lqi2;

    .line 9
    .line 10
    iget-object v0, p1, Lyh2;->p:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-object v0, p0, Lai2;->c:Landroid/os/Bundle;

    .line 13
    .line 14
    iget-object v0, p1, Lyh2;->q:Lg22;

    .line 15
    .line 16
    iput-object v0, p0, Lai2;->d:Lg22;

    .line 17
    .line 18
    iget-object v0, p1, Lyh2;->r:Lji2;

    .line 19
    .line 20
    iput-object v0, p0, Lai2;->e:Lji2;

    .line 21
    .line 22
    iget-object v0, p1, Lyh2;->s:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lai2;->f:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p1, Lyh2;->t:Landroid/os/Bundle;

    .line 27
    .line 28
    iput-object v0, p0, Lai2;->g:Landroid/os/Bundle;

    .line 29
    .line 30
    new-instance v0, Lxc3;

    .line 31
    .line 32
    new-instance v1, Lvc3;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, v2, p1}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p1, v1}, Lxc3;-><init>(Lyc3;Lvc3;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lwc3;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lwc3;-><init>(Lxc3;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lai2;->h:Lwc3;

    .line 47
    .line 48
    new-instance v0, Lt52;

    .line 49
    .line 50
    const/16 v1, 0x9

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lnv3;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lnv3;-><init>(Lne1;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lr22;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-direct {v0, p1, v2}, Lr22;-><init>(Lp22;Z)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lai2;->j:Lr22;

    .line 67
    .line 68
    sget-object p1, Lg22;->o:Lg22;

    .line 69
    .line 70
    iput-object p1, p0, Lai2;->k:Lg22;

    .line 71
    .line 72
    invoke-virtual {v1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lzc3;

    .line 77
    .line 78
    iput-object p1, p0, Lai2;->l:Lzc3;

    .line 79
    .line 80
    new-instance p1, Lt52;

    .line 81
    .line 82
    const/16 v0, 0xa

    .line 83
    .line 84
    invoke-direct {p1, v0}, Lt52;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lnv3;

    .line 88
    .line 89
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lai2;->m:Lnv3;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object p0, p0, Lai2;->c:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [Ljs2;

    .line 9
    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Ljs2;

    .line 15
    .line 16
    invoke-static {v0}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lai2;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lai2;->h:Lwc3;

    .line 6
    .line 7
    invoke-virtual {v0}, Lwc3;->a()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lai2;->i:Z

    .line 12
    .line 13
    iget-object v1, p0, Lai2;->e:Lji2;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lai2;->a:Lyh2;

    .line 18
    .line 19
    invoke-static {v1}, Lpc3;->b(Lyc3;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lai2;->g:Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lwc3;->b(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lai2;->d:Lg22;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lai2;->k:Lg22;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lai2;->j:Lr22;

    .line 40
    .line 41
    if-ge v0, v1, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Lai2;->d:Lg22;

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Lr22;->g(Lg22;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p0, p0, Lai2;->k:Lg22;

    .line 50
    .line 51
    invoke-virtual {v2, p0}, Lr22;->g(Lg22;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lyh2;

    .line 7
    .line 8
    invoke-static {v1}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Li50;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "("

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lai2;->f:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x29

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " destination="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lai2;->b:Lqi2;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
