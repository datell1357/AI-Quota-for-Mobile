.class public final Lra3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lr20;
.implements Lcf;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lro4;
.implements Lyb5;
.implements Lcu3;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FFLbf;)V
    .locals 5

    const/16 v0, 0x9

    iput v0, p0, Lra3;->n:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p3}, Lbf;->b()I

    move-result v0

    new-array v1, v0, [Ly71;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 77
    new-instance v3, Ly71;

    invoke-virtual {p3, v2}, Lbf;->a(I)F

    move-result v4

    invoke-direct {v3, p1, p2, v4}, Ly71;-><init>(FFF)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iput-object v1, p0, Lra3;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lra3;->n:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lra3;->o:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lra3;->o:Ljava/lang/Object;

    .line 26
    .line 27
    return-void

    .line 28
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lt82;

    .line 32
    .line 33
    invoke-direct {p1}, Lt82;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lra3;->o:Ljava/lang/Object;

    .line 37
    .line 38
    return-void

    .line 39
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/lang/ThreadLocal;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lra3;->o:Ljava/lang/Object;

    .line 48
    .line 49
    return-void

    .line 50
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroid/graphics/Region;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lra3;->o:Ljava/lang/Object;

    .line 63
    .line 64
    return-void

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_3
        0x7 -> :sswitch_2
        0xb -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 68
    iput p1, p0, Lra3;->n:I

    iput-object p2, p0, Lra3;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Lra3;->n:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lra3;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;Landroid/os/Parcelable;I)V
    .locals 0

    .line 65
    iput p3, p0, Lra3;->n:I

    iput-object p2, p0, Lra3;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/AppMeasurementReceiver;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lra3;->n:I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lra3;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfc3;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lra3;->n:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lra3;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgi4;)V
    .locals 9

    const/4 v0, 0x6

    iput v0, p0, Lra3;->n:I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    .line 74
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lra3;->o:Ljava/lang/Object;

    return-void
.end method

.method public static varargs c([Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lez3;->b:[Lra3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    array-length v4, p0

    .line 10
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs f([Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lez3;->b:[Lra3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    array-length v4, p0

    .line 10
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lra3;->f([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs g([Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lez3;->b:[Lra3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    array-length v4, p0

    .line 10
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lra3;->g([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs h([Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lez3;->b:[Lra3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    array-length v4, p0

    .line 10
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lra3;->h([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs l([Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lez3;->b:[Lra3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    array-length v4, p0

    .line 10
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lra3;->l([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs m([Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lez3;->b:[Lra3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    array-length v4, p0

    .line 10
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lra3;->m([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs n([Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lez3;->b:[Lra3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    array-length v4, p0

    .line 10
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lra3;->n([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static p(Ljava/lang/String;)Lra3;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ly55;->e(C)Lu55;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    sget-object p0, Lu55;->o:Lu55;

    .line 26
    .line 27
    :goto_1
    new-instance v0, Lra3;

    .line 28
    .line 29
    const/16 v1, 0x10

    .line 30
    .line 31
    invoke-direct {v0, v1, p0}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 1
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lt82;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Lra4;->b(J)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1, p2}, Lra4;->c(J)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1, p2}, Lra4;->f(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "maximumVelocity should be a positive value. You specified="

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lt82;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lta4;

    .line 42
    .line 43
    invoke-static {p1, p2}, Lra4;->b(J)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lta4;->c(F)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object p0, p0, Lt82;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lta4;

    .line 54
    .line 55
    invoke-static {p1, p2}, Lra4;->c(J)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lta4;->c(F)F

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {v0, p0}, Lis0;->g(FF)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    return-wide p0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lra3;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    .line 11
    .line 12
    check-cast p1, Ll45;

    .line 13
    .line 14
    check-cast p2, Lpw3;

    .line 15
    .line 16
    new-instance v0, Laf5;

    .line 17
    .line 18
    invoke-direct {v0, v2, p2}, Laf5;-><init>(ILpw3;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lhb5;

    .line 26
    .line 27
    invoke-virtual {p1}, Lnk4;->zza()Landroid/os/Parcel;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2, v0}, Liv4;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p0}, Liv4;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x4

    .line 38
    invoke-virtual {p1, p0, p2}, Lnk4;->zzc(ILandroid/os/Parcel;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :sswitch_0
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Landroid/accounts/Account;

    .line 45
    .line 46
    check-cast p1, Ll45;

    .line 47
    .line 48
    check-cast p2, Lpw3;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lhb5;

    .line 55
    .line 56
    new-instance v0, Lzk4;

    .line 57
    .line 58
    invoke-direct {v0, v1, p2}, Lzk4;-><init>(ILpw3;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lnk4;->zza()Landroid/os/Parcel;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2, v0}, Liv4;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p2, p0}, Liv4;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x6

    .line 72
    invoke-virtual {p1, p0, p2}, Lnk4;->zzc(ILandroid/os/Parcel;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :sswitch_1
    check-cast p1, Lzy4;

    .line 77
    .line 78
    check-cast p2, Lpw3;

    .line 79
    .line 80
    new-instance v0, Lle5;

    .line 81
    .line 82
    invoke-direct {v0, v1, p2}, Lle5;-><init>(ILpw3;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lh05;

    .line 90
    .line 91
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Lcom/google/android/gms/auth/blockstore/StoreBytesData;

    .line 94
    .line 95
    invoke-virtual {p1}, Lok4;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    sget v1, Lkv4;->a:I

    .line 100
    .line 101
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p2, p0}, Lkv4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 109
    .line 110
    .line 111
    const/16 p0, 0xa

    .line 112
    .line 113
    invoke-virtual {p1, p0, p2}, Lok4;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :sswitch_2
    check-cast p1, Lzy4;

    .line 118
    .line 119
    check-cast p2, Lpw3;

    .line 120
    .line 121
    new-instance v0, Lle5;

    .line 122
    .line 123
    invoke-direct {v0, v2, p2}, Lle5;-><init>(ILpw3;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lh05;

    .line 131
    .line 132
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p0, Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;

    .line 135
    .line 136
    invoke-virtual {p1}, Lok4;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    sget v1, Lkv4;->a:I

    .line 141
    .line 142
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p2, p0}, Lkv4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 150
    .line 151
    .line 152
    const/16 p0, 0xd

    .line 153
    .line 154
    invoke-virtual {p1, p0, p2}, Lok4;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :sswitch_3
    check-cast p2, Lpw3;

    .line 159
    .line 160
    check-cast p1, La75;

    .line 161
    .line 162
    sget v0, Lw65;->a:I

    .line 163
    .line 164
    new-instance v0, Ln65;

    .line 165
    .line 166
    invoke-direct {v0, p2}, Ln65;-><init>(Lpw3;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Ly65;

    .line 174
    .line 175
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p0, Ll85;

    .line 178
    .line 179
    invoke-virtual {p0}, Lsm4;->a()[B

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p1}, Lgu4;->F()Landroid/os/Parcel;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {p2, v0}, Lku4;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 191
    .line 192
    .line 193
    const/16 p0, 0x1f

    .line 194
    .line 195
    invoke-virtual {p1, p0, p2}, Lgu4;->G(ILandroid/os/Parcel;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :sswitch_4
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    .line 202
    .line 203
    check-cast p1, Lyt4;

    .line 204
    .line 205
    check-cast p2, Lpw3;

    .line 206
    .line 207
    new-instance v0, Lju4;

    .line 208
    .line 209
    invoke-direct {v0, v1, p2}, Lju4;-><init>(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Lcu4;

    .line 217
    .line 218
    invoke-virtual {p1}, Lnk4;->zza()Landroid/os/Parcel;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-static {p2, v0}, Liv4;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 223
    .line 224
    .line 225
    invoke-static {p2, p0}, Liv4;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v2, p2}, Lnk4;->zzc(ILandroid/os/Parcel;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :sswitch_5
    check-cast p2, Lpw3;

    .line 233
    .line 234
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p0, Loj4;

    .line 237
    .line 238
    check-cast p1, Lpj4;

    .line 239
    .line 240
    new-instance v0, Lnj4;

    .line 241
    .line 242
    invoke-direct {v0, p0, p2}, Lnj4;-><init>(Loj4;Lpw3;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    check-cast p2, Lik4;

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iget-object p0, p0, Loj4;->a:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    sget v2, Lbk4;->a:I

    .line 266
    .line 267
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v1, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 278
    .line 279
    .line 280
    const/4 p0, 0x2

    .line 281
    invoke-virtual {p2, p0, v1}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_5
        0xf -> :sswitch_4
        0x13 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lra3;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, [Lro4;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    invoke-interface {v2, p1}, Lro4;->b(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v0
.end method

.method public d(Ljava/lang/Class;)Lbp4;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lra3;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Lro4;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lro4;->b(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, p1}, Lro4;->d(Ljava/lang/Class;)Lbp4;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "No factory is available for message type: "

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lp61;->s(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lm75;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "auto"

    .line 12
    .line 13
    const-string p2, "_err"

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lm75;->z(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string p0, "Unexpected call on client side"

    .line 23
    .line 24
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lhg;

    .line 4
    .line 5
    iget-object p0, p0, Lhg;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    sget-object v0, Lo75;->j:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "com.google.android.gms"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Lfy2;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lfy2;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catch_0
    sget-object p0, Lg;->n:Lg;

    .line 32
    .line 33
    return-object p0
.end method

.method public get(I)Ls71;
    .locals 1

    iget v0, p0, Lra3;->n:I

    packed-switch v0, :pswitch_data_0

    .line 34
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    check-cast p0, Ls71;

    return-object p0

    .line 35
    :pswitch_0
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    check-cast p0, [Ly71;

    aget-object p0, p0, p1

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lorg/json/JSONObject;)Lmk3;
    .locals 3

    .line 1
    const-string v0, "settings_version"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Could not determine SettingsJsonTransform for settings version "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ". Using default settings values."

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const-string v2, "FirebaseCrashlytics"

    .line 31
    .line 32
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    new-instance v0, Lqv3;

    .line 36
    .line 37
    const/16 v1, 0x1b

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lqv3;-><init>(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lqz0;

    .line 44
    .line 45
    const/16 v1, 0x1d

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lqz0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lls3;

    .line 53
    .line 54
    invoke-interface {v0, p0, p1}, Lrk3;->g(Lls3;Lorg/json/JSONObject;)Lmk3;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public j(Ln30;Lne1;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lra3;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lib0;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v2, "Called runAndWatch on a manager that has been disposed of"

    .line 13
    .line 14
    invoke-static {v2}, Lix2;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v2, v0, Lra3;->o:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lib0;

    .line 20
    .line 21
    instance-of v3, v2, Ldn3;

    .line 22
    .line 23
    if-eqz v3, :cond_7

    .line 24
    .line 25
    check-cast v2, Ldn3;

    .line 26
    .line 27
    iget-object v3, v2, Ldn3;->f:Lyh3;

    .line 28
    .line 29
    if-eqz v3, :cond_7

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_7

    .line 36
    .line 37
    new-instance v3, Ldf2;

    .line 38
    .line 39
    invoke-direct {v3}, Ldf2;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v4, v2, Ldn3;->f:Lyh3;

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v5, "promote must only be called when a manager is managing subscriptions for one channel and needs to start managing them for a second"

    .line 48
    .line 49
    invoke-static {v5}, Lix2;->b(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iget-object v5, v2, Ldn3;->d:Llg2;

    .line 53
    .line 54
    iget-object v6, v3, Ldf2;->c:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    iget-object v5, v2, Ldn3;->b:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v7, Laf2;

    .line 64
    .line 65
    invoke-direct {v7, v5, v4}, Laf2;-><init>(Ljava/lang/Object;Lyh3;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_2
    iget-object v7, v5, Llg2;->b:[Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v5, v5, Llg2;->a:[J

    .line 75
    .line 76
    array-length v8, v5

    .line 77
    add-int/lit8 v8, v8, -0x2

    .line 78
    .line 79
    if-ltz v8, :cond_6

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    :goto_2
    aget-wide v11, v5, v10

    .line 83
    .line 84
    not-long v13, v11

    .line 85
    const/4 v15, 0x7

    .line 86
    shl-long/2addr v13, v15

    .line 87
    and-long/2addr v13, v11

    .line 88
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    and-long/2addr v13, v15

    .line 94
    cmp-long v13, v13, v15

    .line 95
    .line 96
    if-eqz v13, :cond_5

    .line 97
    .line 98
    sub-int v13, v10, v8

    .line 99
    .line 100
    not-int v13, v13

    .line 101
    ushr-int/lit8 v13, v13, 0x1f

    .line 102
    .line 103
    const/16 v14, 0x8

    .line 104
    .line 105
    rsub-int/lit8 v13, v13, 0x8

    .line 106
    .line 107
    const/4 v15, 0x0

    .line 108
    :goto_3
    if-ge v15, v13, :cond_4

    .line 109
    .line 110
    const-wide/16 v16, 0xff

    .line 111
    .line 112
    and-long v16, v11, v16

    .line 113
    .line 114
    const-wide/16 v18, 0x80

    .line 115
    .line 116
    cmp-long v16, v16, v18

    .line 117
    .line 118
    if-gez v16, :cond_3

    .line 119
    .line 120
    shl-int/lit8 v16, v10, 0x3

    .line 121
    .line 122
    add-int v16, v16, v15

    .line 123
    .line 124
    aget-object v9, v7, v16

    .line 125
    .line 126
    move/from16 v16, v14

    .line 127
    .line 128
    new-instance v14, Laf2;

    .line 129
    .line 130
    invoke-direct {v14, v9, v4}, Laf2;-><init>(Ljava/lang/Object;Lyh3;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_3
    move/from16 v16, v14

    .line 138
    .line 139
    :goto_4
    shr-long v11, v11, v16

    .line 140
    .line 141
    add-int/lit8 v15, v15, 0x1

    .line 142
    .line 143
    move/from16 v14, v16

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    move v9, v14

    .line 147
    if-ne v13, v9, :cond_6

    .line 148
    .line 149
    :cond_5
    if-eq v10, v8, :cond_6

    .line 150
    .line 151
    add-int/lit8 v10, v10, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    :goto_5
    invoke-virtual {v3}, Ldf2;->j()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ldn3;->k()V

    .line 158
    .line 159
    .line 160
    iput-object v3, v0, Lra3;->o:Ljava/lang/Object;

    .line 161
    .line 162
    :cond_7
    iget-object v0, v0, Lra3;->o:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lib0;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lib0;->o(Lyh3;)Lpe1;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3, v2}, Lpo3;->u(Lpe1;)Lpo3;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v1}, Lib0;->i(Lyh3;)V

    .line 182
    .line 183
    .line 184
    :try_start_0
    invoke-virtual {v2}, Lpo3;->j()Lpo3;

    .line 185
    .line 186
    .line 187
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lne1;->a()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    :try_start_2
    invoke-static {v1}, Lpo3;->q(Lpo3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lpo3;->c()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lib0;->j()V

    .line 199
    .line 200
    .line 201
    return-object v3

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    goto :goto_6

    .line 204
    :catchall_1
    move-exception v0

    .line 205
    :try_start_3
    invoke-static {v1}, Lpo3;->q(Lpo3;)V

    .line 206
    .line 207
    .line 208
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    :goto_6
    invoke-virtual {v2}, Lpo3;->c()V

    .line 210
    .line 211
    .line 212
    throw v0
.end method

.method public k(Lns1;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Region;

    .line 4
    .line 5
    iget v0, p1, Lns1;->a:I

    .line 6
    .line 7
    iget v1, p1, Lns1;->b:I

    .line 8
    .line 9
    iget v2, p1, Lns1;->c:I

    .line 10
    .line 11
    iget p1, p1, Lns1;->d:I

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Region;->set(IIII)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public o(Ljava/lang/String;Z)Lda5;
    .locals 1

    .line 1
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lsb5;

    .line 4
    .line 5
    new-instance v0, Lda5;

    .line 6
    .line 7
    invoke-direct {v0, p1, p0, p2}, Lda5;-><init>(Ljava/lang/String;Lsb5;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lpq3;

    .line 4
    .line 5
    invoke-virtual {p0}, Lpq3;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
