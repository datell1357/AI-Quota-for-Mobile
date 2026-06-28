.class public final synthetic Lzg4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Lv42;

.field public final synthetic o:Z

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lhh4;


# direct methods
.method public synthetic constructor <init>(Lv42;ZLjava/lang/String;Lhh4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzg4;->n:Lv42;

    .line 5
    .line 6
    iput-boolean p2, p0, Lzg4;->o:Z

    .line 7
    .line 8
    iput-object p3, p0, Lzg4;->p:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lzg4;->q:Lhh4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    instance-of v0, p1, Lwg4;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lwg4;

    .line 8
    .line 9
    iget p1, p1, Lwg4;->n:I

    .line 10
    .line 11
    iget-object v0, p0, Lzg4;->n:Lv42;

    .line 12
    .line 13
    iget-object v0, v0, Lv42;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/16 v1, -0x100

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean p1, p0, Lzg4;->o:Z

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lzg4;->p:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p0, p0, Lzg4;->q:Lhh4;

    .line 29
    .line 30
    iget-object v0, p0, Lhh4;->e:Lmd0;

    .line 31
    .line 32
    iget-object v0, v0, Lmd0;->m:Lqv3;

    .line 33
    .line 34
    iget-object p0, p0, Lhh4;->a:Log4;

    .line 35
    .line 36
    invoke-virtual {p0}, Log4;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v1, 0x1d

    .line 46
    .line 47
    if-lt v0, v1, :cond_1

    .line 48
    .line 49
    invoke-static {p1}, Lix;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Lo04;->b(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-static {p1}, Lix;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "asyncTraceEnd"

    .line 62
    .line 63
    :try_start_0
    sget-object v1, Lix;->q:Ljava/lang/reflect/Method;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    const-class v1, Landroid/os/Trace;

    .line 68
    .line 69
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    const-class v3, Ljava/lang/String;

    .line 72
    .line 73
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 74
    .line 75
    filled-new-array {v2, v3, v4}, [Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    sput-object v1, Lix;->q:Ljava/lang/reflect/Method;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    sget-object v1, Lix;->q:Ljava/lang/reflect/Method;

    .line 89
    .line 90
    sget-wide v2, Lix;->n:J

    .line 91
    .line 92
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    filled-new-array {v2, p1, p0}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const/4 p1, 0x0

    .line 105
    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    invoke-static {v0, p0}, Lix;->z(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_2
    sget-object p0, Lt64;->a:Lt64;

    .line 113
    .line 114
    return-object p0
.end method
