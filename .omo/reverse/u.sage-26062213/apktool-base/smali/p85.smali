.class public final Lp85;
.super Lrn4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field private static final zzl:Lp85;

.field private static volatile zzm:Lxo4;


# instance fields
.field private zzb:I

.field private zze:Ljava/lang/String;

.field private zzf:Lzm4;

.field private zzg:Ljava/lang/String;

.field private zzh:Ldo4;

.field private zzi:Ldo4;

.field private zzj:Z

.field private zzk:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp85;

    .line 2
    .line 3
    invoke-direct {v0}, Lp85;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp85;->zzl:Lp85;

    .line 7
    .line 8
    const-class v1, Lp85;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lrn4;->o(Ljava/lang/Class;Lrn4;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lrn4;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lp85;->zze:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lzm4;->o:Lym4;

    .line 9
    .line 10
    iput-object v1, p0, Lp85;->zzf:Lzm4;

    .line 11
    .line 12
    iput-object v0, p0, Lp85;->zzg:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v0, Lap4;->r:Lap4;

    .line 15
    .line 16
    iput-object v0, p0, Lp85;->zzh:Ldo4;

    .line 17
    .line 18
    iput-object v0, p0, Lp85;->zzi:Ldo4;

    .line 19
    .line 20
    return-void
.end method

.method public static z()Ln85;
    .locals 1

    .line 1
    sget-object v0, Lp85;->zzl:Lp85;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrn4;->j()Lpn4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln85;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final synthetic A(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lp85;->zzb:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lp85;->zzb:I

    .line 9
    .line 10
    iput-object p1, p0, Lp85;->zze:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public final synthetic B(Lym4;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lp85;->zzb:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lp85;->zzb:I

    .line 9
    .line 10
    iput-object p1, p0, Lp85;->zzf:Lzm4;

    .line 11
    .line 12
    return-void
.end method

.method public final synthetic C(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lp85;->zzb:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lp85;->zzb:I

    .line 9
    .line 10
    iput-object p1, p0, Lp85;->zzg:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public final D(Ls85;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp85;->zzh:Ldo4;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ltm4;

    .line 5
    .line 6
    iget-boolean v1, v1, Ltm4;->n:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lto4;->d(Ldo4;)Ldo4;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lp85;->zzh:Ldo4;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lp85;->zzh:Ldo4;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp85;->zzi:Ldo4;

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    check-cast v1, Ltm4;

    .line 8
    .line 9
    iget-boolean v1, v1, Ltm4;->n:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lto4;->d(Ldo4;)Ldo4;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lp85;->zzi:Ldo4;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lp85;->zzi:Ldo4;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final synthetic F(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lp85;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lp85;->zzb:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lp85;->zzj:Z

    .line 8
    .line 9
    return-void
.end method

.method public final synthetic G(J)V
    .locals 1

    .line 1
    iget v0, p0, Lp85;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lp85;->zzb:I

    .line 6
    .line 7
    iput-wide p1, p0, Lp85;->zzk:J

    .line 8
    .line 9
    return-void
.end method

.method public final s(I)Ljava/lang/Object;
    .locals 9

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    if-eq p1, p0, :cond_6

    .line 7
    .line 8
    const/4 p0, 0x3

    .line 9
    if-eq p1, p0, :cond_5

    .line 10
    .line 11
    const/4 p0, 0x4

    .line 12
    if-eq p1, p0, :cond_4

    .line 13
    .line 14
    const/4 p0, 0x5

    .line 15
    if-eq p1, p0, :cond_3

    .line 16
    .line 17
    const/4 p0, 0x6

    .line 18
    if-ne p1, p0, :cond_2

    .line 19
    .line 20
    sget-object p0, Lp85;->zzm:Lxo4;

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    const-class p1, Lp85;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    sget-object p0, Lp85;->zzm:Lxo4;

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    new-instance p0, Lqn4;

    .line 32
    .line 33
    sget-object v0, Lp85;->zzl:Lp85;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lqn4;-><init>(Lrn4;)V

    .line 36
    .line 37
    .line 38
    sput-object p0, Lp85;->zzm:Lxo4;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p1

    .line 45
    return-object p0

    .line 46
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0

    .line 48
    :cond_1
    return-object p0

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    throw p0

    .line 51
    :cond_3
    sget-object p0, Lp85;->zzl:Lp85;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_4
    new-instance p0, Ln85;

    .line 55
    .line 56
    sget-object p1, Lp85;->zzl:Lp85;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lpn4;-><init>(Lrn4;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_5
    new-instance p0, Lp85;

    .line 63
    .line 64
    invoke-direct {p0}, Lp85;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_6
    const-string v0, "zzb"

    .line 69
    .line 70
    const-string v1, "zzg"

    .line 71
    .line 72
    const-string v2, "zze"

    .line 73
    .line 74
    const-string v3, "zzf"

    .line 75
    .line 76
    const-string v4, "zzh"

    .line 77
    .line 78
    const-class v5, Ls85;

    .line 79
    .line 80
    const-string v6, "zzi"

    .line 81
    .line 82
    const-string v7, "zzj"

    .line 83
    .line 84
    const-string v8, "zzk"

    .line 85
    .line 86
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    sget-object p1, Lp85;->zzl:Lp85;

    .line 91
    .line 92
    const-string v0, "\u0004\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001\u1008\u0002\u0002\u1008\u0000\u0003\u100a\u0001\u0004\u001b\u0005\u001a\u0008\u1007\u0003\t\u1002\u0004"

    .line 93
    .line 94
    new-instance v1, Lbp4;

    .line 95
    .line 96
    invoke-direct {v1, p1, v0, p0}, Lbp4;-><init>(Lsm4;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_7
    const/4 p0, 0x1

    .line 101
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lp85;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final u()Z
    .locals 0

    .line 1
    iget p0, p0, Lp85;->zzb:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x2

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final v()Lzm4;
    .locals 0

    .line 1
    iget-object p0, p0, Lp85;->zzf:Lzm4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final w()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lp85;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final x()Ldo4;
    .locals 0

    .line 1
    iget-object p0, p0, Lp85;->zzh:Ldo4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final y()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp85;->zzk:J

    .line 2
    .line 3
    return-wide v0
.end method
