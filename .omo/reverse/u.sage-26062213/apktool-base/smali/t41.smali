.class public final Lt41;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lkn3;


# instance fields
.field public final synthetic n:I

.field public o:Z

.field public final p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkn3;Lv;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lt41;->n:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lt41;->p:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lt41;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsk1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lt41;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lt41;->q:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Lcc1;

    .line 10
    .line 11
    iget-object p1, p1, Lsk1;->c:Leh;

    .line 12
    .line 13
    iget-object p1, p1, Leh;->q:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lc23;

    .line 16
    .line 17
    iget-object p1, p1, Lc23;->n:Lkn3;

    .line 18
    .line 19
    invoke-interface {p1}, Lkn3;->g()Lmz3;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Lcc1;-><init>(Lmz3;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lt41;->p:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final J(JLsy;)V
    .locals 6

    .line 1
    iget v0, p0, Lt41;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lt41;->q:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Lt41;->o:Z

    .line 9
    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    iget-wide v2, p3, Lsy;->o:J

    .line 13
    .line 14
    sget-object p0, Lfi4;->a:[B

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long p0, p1, v4

    .line 19
    .line 20
    if-ltz p0, :cond_0

    .line 21
    .line 22
    cmp-long p0, v4, v2

    .line 23
    .line 24
    if-gtz p0, :cond_0

    .line 25
    .line 26
    cmp-long p0, v2, p1

    .line 27
    .line 28
    if-ltz p0, :cond_0

    .line 29
    .line 30
    check-cast v1, Lsk1;

    .line 31
    .line 32
    iget-object p0, v1, Lsk1;->c:Leh;

    .line 33
    .line 34
    iget-object p0, p0, Leh;->q:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lc23;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lc23;->J(JLsy;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p2, "length="

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, ", offset=0, count=0"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_1
    const-string p0, "closed"

    .line 68
    .line 69
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-boolean v0, p0, Lt41;->o:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {p3, p1, p2}, Lsy;->skip(J)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    :try_start_0
    iget-object v0, p0, Lt41;->p:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lkn3;

    .line 84
    .line 85
    invoke-interface {v0, p1, p2, p3}, Lkn3;->J(JLsy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    const/4 p2, 0x1

    .line 91
    iput-boolean p2, p0, Lt41;->o:Z

    .line 92
    .line 93
    check-cast v1, Lv;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Lv;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 4

    .line 1
    iget v0, p0, Lt41;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lt41;->p:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lt41;->q:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v3, Lsk1;

    .line 12
    .line 13
    iget-boolean v0, p0, Lt41;->o:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v2, p0, Lt41;->o:Z

    .line 19
    .line 20
    check-cast v1, Lcc1;

    .line 21
    .line 22
    iget-object p0, v1, Lcc1;->e:Lmz3;

    .line 23
    .line 24
    sget-object v0, Lmz3;->d:Llz3;

    .line 25
    .line 26
    iput-object v0, v1, Lcc1;->e:Lmz3;

    .line 27
    .line 28
    invoke-virtual {p0}, Lmz3;->a()Lmz3;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lmz3;->b()Lmz3;

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x3

    .line 35
    iput p0, v3, Lsk1;->d:I

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :pswitch_0
    :try_start_0
    check-cast v1, Lkn3;

    .line 39
    .line 40
    invoke-interface {v1}, Lkn3;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    iput-boolean v2, p0, Lt41;->o:Z

    .line 46
    .line 47
    check-cast v3, Lv;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Lv;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 3

    .line 1
    iget v0, p0, Lt41;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lt41;->q:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Lt41;->o:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast v1, Lsk1;

    .line 14
    .line 15
    iget-object p0, v1, Lsk1;->c:Leh;

    .line 16
    .line 17
    iget-object p0, p0, Leh;->q:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lc23;

    .line 20
    .line 21
    invoke-virtual {p0}, Lc23;->flush()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lt41;->p:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lkn3;

    .line 28
    .line 29
    invoke-interface {v0}, Lkn3;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const/4 v2, 0x1

    .line 35
    iput-boolean v2, p0, Lt41;->o:Z

    .line 36
    .line 37
    check-cast v1, Lv;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lv;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lmz3;
    .locals 1

    .line 1
    iget v0, p0, Lt41;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lt41;->p:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcc1;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lt41;->p:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lkn3;

    .line 14
    .line 15
    invoke-interface {p0}, Lkn3;->g()Lmz3;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
