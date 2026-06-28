.class public final Lfv1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final d:Lfv1;


# instance fields
.field public final a:Lpv1;

.field public final b:Lb21;

.field public final c:Lps0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfv1;

    .line 2
    .line 3
    invoke-direct {v0}, Lfv1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfv1;->d:Lfv1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lpv1;

    .line 2
    .line 3
    invoke-direct {v0}, Lpv1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfv1;->a:Lpv1;

    .line 10
    .line 11
    sget-object v0, Lpi3;->a:Lb21;

    .line 12
    .line 13
    iput-object v0, p0, Lfv1;->b:Lb21;

    .line 14
    .line 15
    new-instance v0, Lps0;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lps0;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lfv1;->c:Lps0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Llx1;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfv1;->a:Lpv1;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Lvi2;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lvi2;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lkotlinx/serialization/json/internal/a;

    .line 15
    .line 16
    sget-object v2, Lrh4;->p:Lrh4;

    .line 17
    .line 18
    invoke-interface {p1}, Llx1;->d()Lgi3;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v1, p0, v2, v0, v3}, Lkotlinx/serialization/json/internal/a;-><init>(Lfv1;Lrh4;Lvi2;Lgi3;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/a;->a(Llx1;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0}, Lvi2;->e()B

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    if-ne p1, v1, :cond_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p1, "Expected EOF after parsing, but had "

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget p1, v0, Lvi2;->b:I

    .line 46
    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " instead"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/4 p1, 0x0

    .line 66
    const/4 p2, 0x6

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-static {v0, p0, p1, v1, p2}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method public final b(Llx1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld90;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v2, v1}, Ld90;-><init>(CI)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ld40;->c:Ld40;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, v1, Ld40;->a:Lvh;

    .line 15
    .line 16
    invoke-virtual {v2}, Lvh;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move-object v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2}, Lvh;->removeLast()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    check-cast v2, [C

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget v3, v1, Ld40;->b:I

    .line 34
    .line 35
    array-length v4, v2

    .line 36
    sub-int/2addr v3, v4

    .line 37
    iput v3, v1, Ld40;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    move-object v4, v2

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_1
    monitor-exit v1

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x80

    .line 47
    .line 48
    new-array v4, v1, [C

    .line 49
    .line 50
    :cond_2
    iput-object v4, v0, Ld90;->p:Ljava/lang/Object;

    .line 51
    .line 52
    :try_start_1
    new-instance v1, Lkotlinx/serialization/json/internal/b;

    .line 53
    .line 54
    sget-object v2, Lrh4;->p:Lrh4;

    .line 55
    .line 56
    sget-object v3, Lrh4;->u:Lt11;

    .line 57
    .line 58
    invoke-virtual {v3}, Lt11;->a()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    new-array v3, v3, [Lkotlinx/serialization/json/internal/b;

    .line 63
    .line 64
    iget-object v4, p0, Lfv1;->a:Lpv1;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v4, Lsb0;

    .line 70
    .line 71
    invoke-direct {v4, v0}, Lsb0;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v4, p0, v2, v3}, Lkotlinx/serialization/json/internal/b;-><init>(Lsb0;Lfv1;Lrh4;[Lkotlinx/serialization/json/internal/b;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1, p2}, Lkotlinx/serialization/json/internal/b;->p(Llx1;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ld90;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    invoke-virtual {v0}, Ld90;->m()V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    invoke-virtual {v0}, Ld90;->m()V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :goto_2
    monitor-exit v1

    .line 94
    throw p0
.end method
