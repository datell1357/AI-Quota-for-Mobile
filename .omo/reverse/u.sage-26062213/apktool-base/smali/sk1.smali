.class public final Lsk1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ly21;


# static fields
.field public static final f:Lkj1;


# instance fields
.field public final a:Lio2;

.field public final b:Lx21;

.field public final c:Leh;

.field public d:I

.field public final e:Llj1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lkj1;->o:Lkj1;

    .line 2
    .line 3
    const-string v0, "OkHttp-Response-Body"

    .line 4
    .line 5
    const-string v1, "Truncated"

    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [Ljava/lang/String;

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    rem-int/2addr v2, v1

    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, [Ljava/lang/String;

    .line 28
    .line 29
    array-length v3, v2

    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v4

    .line 32
    :goto_0
    if-ge v5, v3, :cond_1

    .line 33
    .line 34
    aget-object v6, v2, v5

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    aget-object v6, v0, v5

    .line 39
    .line 40
    invoke-static {v6}, Lzs3;->Y0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    aput-object v6, v2, v5

    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "Headers cannot be null"

    .line 54
    .line 55
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    array-length v0, v2

    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    invoke-static {v4, v0, v1}, Lzf5;->J(III)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-ltz v0, :cond_2

    .line 67
    .line 68
    :goto_1
    aget-object v1, v2, v4

    .line 69
    .line 70
    add-int/lit8 v3, v4, 0x1

    .line 71
    .line 72
    aget-object v3, v2, v3

    .line 73
    .line 74
    invoke-static {v1}, Lci4;->b(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v1}, Lci4;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-eq v4, v0, :cond_2

    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    new-instance v0, Lkj1;

    .line 86
    .line 87
    invoke-direct {v0, v2}, Lkj1;-><init>([Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lsk1;->f:Lkj1;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    const-string v0, "Expected alternating header names and values"

    .line 94
    .line 95
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public constructor <init>(Lio2;Lx21;Leh;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lsk1;->a:Lio2;

    .line 8
    .line 9
    iput-object p2, p0, Lsk1;->b:Lx21;

    .line 10
    .line 11
    iput-object p3, p0, Lsk1;->c:Leh;

    .line 12
    .line 13
    new-instance p1, Llj1;

    .line 14
    .line 15
    iget-object p2, p3, Leh;->p:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p2, Ld23;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p1, Llj1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    const-wide/32 p2, 0x40000

    .line 28
    .line 29
    .line 30
    iput-wide p2, p1, Llj1;->n:J

    .line 31
    .line 32
    iput-object p1, p0, Lsk1;->e:Llj1;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcn1;J)Lqk1;
    .locals 2

    .line 1
    iget v0, p0, Lsk1;->d:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lsk1;->d:I

    .line 8
    .line 9
    new-instance v0, Lqk1;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2, p3}, Lqk1;-><init>(Lsk1;Lcn1;J)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string p1, "state: "

    .line 16
    .line 17
    iget p0, p0, Lsk1;->d:I

    .line 18
    .line 19
    invoke-static {p0, p1}, Lq73;->h(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final b(Lkj1;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lsk1;->d:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lsk1;->c:Leh;

    .line 9
    .line 10
    iget-object v1, v0, Leh;->q:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lc23;

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 15
    .line 16
    .line 17
    const-string p2, "\r\n"

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lkj1;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    iget-object v3, v0, Leh;->q:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lc23;

    .line 30
    .line 31
    if-ge v2, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lkj1;->d(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 38
    .line 39
    .line 40
    const-string v4, ": "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Lkj1;->f(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v3, v4}, Lez;->e0(Ljava/lang/String;)Lez;

    .line 50
    .line 51
    .line 52
    invoke-interface {v3, p2}, Lez;->e0(Ljava/lang/String;)Lez;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v3, p2}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput p1, p0, Lsk1;->d:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    const-string p1, "state: "

    .line 66
    .line 67
    iget p0, p0, Lsk1;->d:I

    .line 68
    .line 69
    invoke-static {p0, p1}, Lq73;->h(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lsk1;->b:Lx21;

    .line 2
    .line 3
    invoke-interface {p0}, Lx21;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()Ljp3;
    .locals 0

    .line 1
    iget-object p0, p0, Lsk1;->c:Leh;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Lk63;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lsk1;->b:Lx21;

    .line 2
    .line 3
    invoke-interface {v0}, Lx21;->i()Lqa3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lqa3;->b:Ljava/net/Proxy;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p1, Lk63;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Lk63;->a:Lcn1;

    .line 32
    .line 33
    iget-object v3, v2, Lcn1;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "https"

    .line 36
    .line 37
    invoke-static {v3, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 44
    .line 45
    if-ne v0, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2}, Lcn1;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2}, Lcn1;->d()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 v0, 0x3f

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :goto_0
    const-string v0, " HTTP/1.1"

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object p1, p1, Lk63;->c:Lkj1;

    .line 94
    .line 95
    invoke-virtual {p0, p1, v0}, Lsk1;->b(Lkj1;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final h(Lw73;)Lyp3;
    .locals 10

    .line 1
    iget-object v0, p1, Lw73;->n:Lk63;

    .line 2
    .line 3
    invoke-static {p1}, Ldm1;->a(Lw73;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object p1, v0, Lk63;->a:Lcn1;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, v1}, Lsk1;->a(Lcn1;J)Lqk1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string v1, "Transfer-Encoding"

    .line 19
    .line 20
    iget-object v2, p1, Lw73;->s:Lkj1;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    move-object v1, v2

    .line 30
    :cond_1
    const-string v3, "chunked"

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v3, "state: "

    .line 37
    .line 38
    const/4 v4, 0x5

    .line 39
    const/4 v5, 0x4

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object p1, v0, Lk63;->a:Lcn1;

    .line 43
    .line 44
    iget v0, p0, Lsk1;->d:I

    .line 45
    .line 46
    if-ne v0, v5, :cond_2

    .line 47
    .line 48
    iput v4, p0, Lsk1;->d:I

    .line 49
    .line 50
    new-instance v0, Lpk1;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Lpk1;-><init>(Lsk1;Lcn1;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    iget p0, p0, Lsk1;->d:I

    .line 57
    .line 58
    invoke-static {p0, v3}, Lq73;->h(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_3
    invoke-static {p1}, Lhi4;->d(Lw73;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    const-wide/16 v8, -0x1

    .line 67
    .line 68
    cmp-long p1, v6, v8

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object p1, v0, Lk63;->a:Lcn1;

    .line 73
    .line 74
    invoke-virtual {p0, p1, v6, v7}, Lsk1;->a(Lcn1;J)Lqk1;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_4
    iget-object p1, v0, Lk63;->a:Lcn1;

    .line 80
    .line 81
    iget v0, p0, Lsk1;->d:I

    .line 82
    .line 83
    if-ne v0, v5, :cond_5

    .line 84
    .line 85
    iput v4, p0, Lsk1;->d:I

    .line 86
    .line 87
    iget-object v0, p0, Lsk1;->b:Lx21;

    .line 88
    .line 89
    invoke-interface {v0}, Lx21;->k()V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lrk1;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, p0, p1}, Lnk1;-><init>(Lsk1;Lcn1;)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_5
    iget p0, p0, Lsk1;->d:I

    .line 102
    .line 103
    invoke-static {p0, v3}, Lq73;->h(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v2
.end method

.method public final i()V
    .locals 0

    .line 1
    iget-object p0, p0, Lsk1;->c:Leh;

    .line 2
    .line 3
    iget-object p0, p0, Leh;->q:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lc23;

    .line 6
    .line 7
    invoke-virtual {p0}, Lc23;->flush()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget p0, p0, Lsk1;->d:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final k()V
    .locals 0

    .line 1
    iget-object p0, p0, Lsk1;->c:Leh;

    .line 2
    .line 3
    iget-object p0, p0, Leh;->q:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lc23;

    .line 6
    .line 7
    invoke-virtual {p0}, Lc23;->flush()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final l(Lk63;J)Lkn3;
    .locals 6

    .line 1
    const-string v0, "Transfer-Encoding"

    .line 2
    .line 3
    iget-object p1, p1, Lk63;->c:Lkj1;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "chunked"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v1, "state: "

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget p1, p0, Lsk1;->d:I

    .line 23
    .line 24
    if-ne p1, v3, :cond_0

    .line 25
    .line 26
    iput v2, p0, Lsk1;->d:I

    .line 27
    .line 28
    new-instance p1, Lok1;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lok1;-><init>(Lsk1;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    iget p0, p0, Lsk1;->d:I

    .line 35
    .line 36
    invoke-static {p0, v1}, Lq73;->h(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    const-wide/16 v4, -0x1

    .line 41
    .line 42
    cmp-long p1, p2, v4

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget p1, p0, Lsk1;->d:I

    .line 47
    .line 48
    if-ne p1, v3, :cond_2

    .line 49
    .line 50
    iput v2, p0, Lsk1;->d:I

    .line 51
    .line 52
    new-instance p1, Lt41;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lt41;-><init>(Lsk1;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    iget p0, p0, Lsk1;->d:I

    .line 59
    .line 60
    invoke-static {p0, v1}, Lq73;->h(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    const-string p0, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 65
    .line 66
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method public final m()Lx21;
    .locals 0

    .line 1
    iget-object p0, p0, Lsk1;->b:Lx21;

    .line 2
    .line 3
    return-object p0
.end method

.method public final n(Lw73;)J
    .locals 1

    .line 1
    invoke-static {p1}, Ldm1;->a(Lw73;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    iget-object p0, p1, Lw73;->s:Lkj1;

    .line 11
    .line 12
    const-string v0, "Transfer-Encoding"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    :cond_1
    const-string v0, "chunked"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    const-wide/16 p0, -0x1

    .line 30
    .line 31
    return-wide p0

    .line 32
    :cond_2
    invoke-static {p1}, Lhi4;->d(Lw73;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    return-wide p0
.end method

.method public final o(Z)Lv73;
    .locals 8

    .line 1
    iget-object v0, p0, Lsk1;->e:Llj1;

    .line 2
    .line 3
    iget v1, p0, Lsk1;->d:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-eq v1, v4, :cond_1

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq v1, v4, :cond_1

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "state: "

    .line 19
    .line 20
    iget p0, p0, Lsk1;->d:I

    .line 21
    .line 22
    invoke-static {p0, p1}, Lq73;->h(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, Llj1;->o:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lfz;

    .line 29
    .line 30
    iget-wide v4, v0, Llj1;->n:J

    .line 31
    .line 32
    invoke-interface {v1, v4, v5}, Lfz;->Q(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-wide v4, v0, Llj1;->n:J

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    int-to-long v6, v6

    .line 43
    sub-long/2addr v4, v6

    .line 44
    iput-wide v4, v0, Llj1;->n:J

    .line 45
    .line 46
    invoke-static {v1}, Lbi4;->E(Ljava/lang/String;)Lhb;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v4, v1, Lhb;->b:I

    .line 51
    .line 52
    new-instance v5, Lv73;

    .line 53
    .line 54
    invoke-direct {v5}, Lv73;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v6, v1, Lhb;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v6, Ld03;

    .line 60
    .line 61
    iput-object v6, v5, Lv73;->b:Ld03;

    .line 62
    .line 63
    iput v4, v5, Lv73;->c:I

    .line 64
    .line 65
    iget-object v1, v1, Lhb;->d:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    iput-object v1, v5, Lv73;->d:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0}, Llj1;->d()Lkj1;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lkj1;->e()Ldh1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, v5, Lv73;->f:Ldh1;

    .line 80
    .line 81
    const/16 v0, 0x64

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    if-ne v4, v0, :cond_2

    .line 86
    .line 87
    return-object v2

    .line 88
    :cond_2
    if-ne v4, v0, :cond_3

    .line 89
    .line 90
    iput v3, p0, Lsk1;->d:I

    .line 91
    .line 92
    return-object v5

    .line 93
    :catch_0
    move-exception p1

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const/16 p1, 0x66

    .line 96
    .line 97
    if-gt p1, v4, :cond_4

    .line 98
    .line 99
    const/16 p1, 0xc8

    .line 100
    .line 101
    if-ge v4, p1, :cond_4

    .line 102
    .line 103
    iput v3, p0, Lsk1;->d:I

    .line 104
    .line 105
    return-object v5

    .line 106
    :cond_4
    const/4 p1, 0x4

    .line 107
    iput p1, p0, Lsk1;->d:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    return-object v5

    .line 110
    :goto_1
    iget-object p0, p0, Lsk1;->b:Lx21;

    .line 111
    .line 112
    invoke-interface {p0}, Lx21;->i()Lqa3;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    iget-object p0, p0, Lqa3;->a:Le7;

    .line 117
    .line 118
    iget-object p0, p0, Le7;->h:Lcn1;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcn1;->f()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    new-instance v0, Ljava/io/IOException;

    .line 125
    .line 126
    const-string v1, "unexpected end of stream on "

    .line 127
    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method
