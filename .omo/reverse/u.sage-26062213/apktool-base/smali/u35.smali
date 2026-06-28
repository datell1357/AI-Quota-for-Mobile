.class public final Lu35;
.super Lrn4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field private static final zzm:Lu35;

.field private static volatile zzn:Lxo4;


# instance fields
.field private zzb:I

.field private zze:Ldo4;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:J

.field private zzi:I

.field private zzj:J

.field private zzk:J

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu35;

    .line 2
    .line 3
    invoke-direct {v0}, Lu35;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu35;->zzm:Lu35;

    .line 7
    .line 8
    const-class v1, Lu35;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lrn4;->o(Ljava/lang/Class;Lrn4;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrn4;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lap4;->r:Lap4;

    .line 5
    .line 6
    iput-object v0, p0, Lu35;->zze:Ldo4;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lu35;->zzf:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static J()Ls35;
    .locals 1

    .line 1
    sget-object v0, Lu35;->zzm:Lu35;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrn4;->j()Lpn4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ls35;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final A()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu35;->zzg:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final B()Z
    .locals 0

    .line 1
    iget p0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x4

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

.method public final C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu35;->zzh:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final D()Z
    .locals 0

    .line 1
    iget p0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

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

.method public final E()I
    .locals 0

    .line 1
    iget p0, p0, Lu35;->zzi:I

    .line 2
    .line 3
    return p0
.end method

.method public final F()Z
    .locals 0

    .line 1
    iget p0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x20

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

.method public final G()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu35;->zzk:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final H()Z
    .locals 0

    .line 1
    iget p0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x40

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

.method public final I()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu35;->zzl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final synthetic K(ILc45;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu35;->u()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lu35;->zze:Ldo4;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic L(Lc45;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lu35;->u()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lu35;->zze:Ldo4;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final synthetic M(Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu35;->u()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lu35;->zze:Ldo4;

    .line 5
    .line 6
    invoke-static {p1, p0}, Lsm4;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final N()V
    .locals 1

    .line 1
    sget-object v0, Lap4;->r:Lap4;

    .line 2
    .line 3
    iput-object v0, p0, Lu35;->zze:Ldo4;

    .line 4
    .line 5
    return-void
.end method

.method public final synthetic O(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu35;->u()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lu35;->zze:Ldo4;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic P(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lu35;->zzb:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lu35;->zzb:I

    .line 9
    .line 10
    iput-object p1, p0, Lu35;->zzf:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public final synthetic Q(J)V
    .locals 1

    .line 1
    iget v0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lu35;->zzb:I

    .line 6
    .line 7
    iput-wide p1, p0, Lu35;->zzg:J

    .line 8
    .line 9
    return-void
.end method

.method public final synthetic R(J)V
    .locals 1

    .line 1
    iget v0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lu35;->zzb:I

    .line 6
    .line 7
    iput-wide p1, p0, Lu35;->zzh:J

    .line 8
    .line 9
    return-void
.end method

.method public final synthetic S(J)V
    .locals 1

    .line 1
    iget v0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lu35;->zzb:I

    .line 6
    .line 7
    iput-wide p1, p0, Lu35;->zzj:J

    .line 8
    .line 9
    return-void
.end method

.method public final synthetic T(J)V
    .locals 1

    .line 1
    iget v0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lu35;->zzb:I

    .line 6
    .line 7
    iput-wide p1, p0, Lu35;->zzk:J

    .line 8
    .line 9
    return-void
.end method

.method public final s(I)Ljava/lang/Object;
    .locals 10

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
    sget-object p0, Lu35;->zzn:Lxo4;

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    const-class p1, Lu35;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    sget-object p0, Lu35;->zzn:Lxo4;

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    new-instance p0, Lqn4;

    .line 32
    .line 33
    sget-object v0, Lu35;->zzm:Lu35;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lqn4;-><init>(Lrn4;)V

    .line 36
    .line 37
    .line 38
    sput-object p0, Lu35;->zzn:Lxo4;

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
    sget-object p0, Lu35;->zzm:Lu35;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_4
    new-instance p0, Ls35;

    .line 55
    .line 56
    sget-object p1, Lu35;->zzm:Lu35;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lpn4;-><init>(Lrn4;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_5
    new-instance p0, Lu35;

    .line 63
    .line 64
    invoke-direct {p0}, Lu35;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_6
    const-string v0, "zzb"

    .line 69
    .line 70
    const-string v1, "zze"

    .line 71
    .line 72
    const-class v2, Lc45;

    .line 73
    .line 74
    const-string v3, "zzf"

    .line 75
    .line 76
    const-string v4, "zzg"

    .line 77
    .line 78
    const-string v5, "zzh"

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
    const-string v9, "zzl"

    .line 87
    .line 88
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    sget-object p1, Lu35;->zzm:Lu35;

    .line 93
    .line 94
    const-string v0, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003\u0006\u1002\u0004\u0007\u1002\u0005\u0008\u1002\u0006"

    .line 95
    .line 96
    new-instance v1, Lbp4;

    .line 97
    .line 98
    invoke-direct {v1, p1, v0, p0}, Lbp4;-><init>(Lsm4;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_7
    const/4 p0, 0x1

    .line 103
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public final synthetic t(J)V
    .locals 1

    .line 1
    iget v0, p0, Lu35;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lu35;->zzb:I

    .line 6
    .line 7
    iput-wide p1, p0, Lu35;->zzl:J

    .line 8
    .line 9
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu35;->zze:Ldo4;

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
    iput-object v0, p0, Lu35;->zze:Ldo4;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final v()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lu35;->zze:Ldo4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final w()I
    .locals 0

    .line 1
    iget-object p0, p0, Lu35;->zze:Ldo4;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final x(I)Lc45;
    .locals 0

    .line 1
    iget-object p0, p0, Lu35;->zze:Ldo4;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lc45;

    .line 8
    .line 9
    return-object p0
.end method

.method public final y()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu35;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final z()Z
    .locals 0

    .line 1
    iget p0, p0, Lu35;->zzb:I

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
