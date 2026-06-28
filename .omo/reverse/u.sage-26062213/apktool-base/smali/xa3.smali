.class public final Lxa3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lym1;

.field public final c:I

.field public final d:Lqd0;

.field public final e:Ljava/util/LinkedList;

.field public final f:Ljava/util/LinkedList;

.field public g:I


# direct methods
.method public constructor <init>(Lym1;Lqd0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lxa3;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lxa3;->a:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    iput-object p1, p0, Lxa3;->b:Lym1;

    .line 13
    .line 14
    iput-object p2, p0, Lxa3;->d:Lqd0;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lqd0;->a(Lym1;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lxa3;->c:I

    .line 21
    .line 22
    new-instance p1, Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lxa3;->e:Ljava/util/LinkedList;

    .line 28
    .line 29
    new-instance p1, Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lxa3;->f:Ljava/util/LinkedList;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lxa3;->g:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lfv;
    .locals 3

    .line 1
    iget-object v0, p0, Lxa3;->e:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lxa3;->e:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lfv;

    .line 30
    .line 31
    iget-object v2, v1, Lfv;->d:Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v1, Lfv;->d:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {p1, v2}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_2
    iget-object p1, p0, Lxa3;->d:Lqd0;

    .line 48
    .line 49
    iget-object v0, p0, Lxa3;->b:Lym1;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Lqd0;->a(Lym1;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget v0, p0, Lxa3;->g:I

    .line 56
    .line 57
    sub-int/2addr p1, v0

    .line 58
    const/4 v0, 0x0

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lxa3;->e:Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lxa3;->e:Ljava/util/LinkedList;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lfv;

    .line 76
    .line 77
    iput-object v0, p1, Lfv;->e:Lya3;

    .line 78
    .line 79
    iput-object v0, p1, Lfv;->d:Ljava/lang/Object;

    .line 80
    .line 81
    iget-object v0, p1, Lfv;->b:Ldo0;

    .line 82
    .line 83
    :try_start_0
    invoke-virtual {v0}, Ldo0;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-object p1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iget-object p0, p0, Lxa3;->a:Lorg/apache/commons/logging/Log;

    .line 89
    .line 90
    const-string v1, "I/O error closing connection"

    .line 91
    .line 92
    invoke-interface {p0, v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_3
    return-object v0
.end method
