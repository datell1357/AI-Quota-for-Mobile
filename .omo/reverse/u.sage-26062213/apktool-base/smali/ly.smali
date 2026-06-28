.class public final Lly;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 9
    const/4 v0, 0x5

    iput v0, p0, Lly;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lly;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lly;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lly;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p0, p0, Lly;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object p0, p0, Lly;->o:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lfw2;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    iput-boolean p1, p0, Lfw2;->d:Z

    .line 34
    .line 35
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 39
    .line 40
    iget-object p0, p0, Lly;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lo20;

    .line 43
    .line 44
    sget-object p1, Lt64;->a:Lt64;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lo20;->g(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_2
    check-cast p1, Luo3;

    .line 51
    .line 52
    sget-object v0, Lwo3;->c:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    sget-wide v1, Lwo3;->e:J

    .line 56
    .line 57
    const-wide/16 v3, 0x1

    .line 58
    .line 59
    add-long/2addr v3, v1

    .line 60
    sput-wide v3, Lwo3;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    iget-object p0, p0, Lly;->o:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lpe1;

    .line 66
    .line 67
    new-instance v0, La23;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, p1, p0}, La23;-><init>(JLuo3;Lpe1;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    monitor-exit v0

    .line 75
    throw p0

    .line 76
    :pswitch_3
    check-cast p1, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget-object p0, p0, Lly;->o:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 91
    .line 92
    iget-object p0, p0, Lly;->o:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Lh23;

    .line 95
    .line 96
    invoke-virtual {p0}, Lh23;->d()V

    .line 97
    .line 98
    .line 99
    sget-object p0, Lt64;->a:Lt64;

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    .line 103
    .line 104
    iget-object p0, p0, Lly;->o:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p0, Lq20;

    .line 107
    .line 108
    invoke-interface {p0}, Lq20;->cancel()V

    .line 109
    .line 110
    .line 111
    sget-object p0, Lt64;->a:Lt64;

    .line 112
    .line 113
    return-object p0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
