.class public final Lzo4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Lzo4;


# instance fields
.field public final a:Ldh1;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzo4;

    .line 2
    .line 3
    invoke-direct {v0}, Lzo4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzo4;->c:Lzo4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lzo4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ldh1;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, v1, v2}, Ldh1;-><init>(IZ)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lzo4;->a:Ldh1;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcp4;
    .locals 4

    .line 1
    iget-object v0, p0, Lzo4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_5

    .line 8
    .line 9
    iget-object p0, p0, Lzo4;->a:Ldh1;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v1, Ldp4;->a:Lbx3;

    .line 15
    .line 16
    const-class v1, Lrn4;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    sget v1, Lum4;->a:I

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lra3;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lra3;->d(Ljava/lang/Class;)Lbp4;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget v1, p0, Lbp4;->d:I

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    and-int/2addr v1, v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    move v1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-nez v1, :cond_3

    .line 45
    .line 46
    sget v1, Lum4;->a:I

    .line 47
    .line 48
    sget v1, Lwo4;->a:I

    .line 49
    .line 50
    sget v1, Lio4;->a:I

    .line 51
    .line 52
    sget-object v1, Ldp4;->a:Lbx3;

    .line 53
    .line 54
    invoke-virtual {p0}, Lbp4;->a()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    if-eq v2, v3, :cond_2

    .line 61
    .line 62
    sget-object v2, Lln4;->a:Lls3;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    :goto_1
    sget v3, Lmo4;->a:I

    .line 67
    .line 68
    invoke-static {p0, v1, v2}, Luo4;->y(Lbp4;Lbx3;Lls3;)Luo4;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    sget v1, Lum4;->a:I

    .line 74
    .line 75
    sget-object v1, Ldp4;->a:Lbx3;

    .line 76
    .line 77
    sget-object v2, Lln4;->a:Lls3;

    .line 78
    .line 79
    iget-object p0, p0, Lbp4;->a:Lsm4;

    .line 80
    .line 81
    new-instance v2, Lvo4;

    .line 82
    .line 83
    invoke-direct {v2, v1, p0}, Lvo4;-><init>(Lbx3;Lsm4;)V

    .line 84
    .line 85
    .line 86
    move-object p0, v2

    .line 87
    :goto_2
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcp4;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_4
    return-object p0

    .line 97
    :cond_5
    check-cast v1, Lcp4;

    .line 98
    .line 99
    return-object v1
.end method
