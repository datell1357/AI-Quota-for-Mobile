.class public final Lyn1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqh0;


# instance fields
.field public final synthetic a:I

.field public volatile b:Loh0;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lyn1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lrl1;)Lnh0;
    .locals 2

    .line 1
    iget p1, p0, Lyn1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lyn1;->b:Loh0;

    .line 7
    .line 8
    check-cast p1, Lpy;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object p1, p0, Lyn1;->b:Loh0;

    .line 14
    .line 15
    check-cast p1, Lpy;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lpy;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {p1, v0, v1}, Lpy;-><init>([Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lyn1;->b:Loh0;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    .line 32
    goto :goto_2

    .line 33
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1

    .line 35
    :cond_1
    :goto_2
    iget-object p0, p0, Lyn1;->b:Loh0;

    .line 36
    .line 37
    check-cast p0, Lpy;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_0
    iget-object p1, p0, Lyn1;->b:Loh0;

    .line 41
    .line 42
    check-cast p1, Lpy;

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-object p1, p0, Lyn1;->b:Loh0;

    .line 48
    .line 49
    check-cast p1, Lpy;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Lpy;

    .line 54
    .line 55
    invoke-direct {p1}, Lpy;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lyn1;->b:Loh0;

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    goto :goto_4

    .line 63
    :cond_2
    :goto_3
    monitor-exit p0

    .line 64
    goto :goto_5

    .line 65
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    throw p1

    .line 67
    :cond_3
    :goto_5
    iget-object p0, p0, Lyn1;->b:Loh0;

    .line 68
    .line 69
    check-cast p0, Lpy;

    .line 70
    .line 71
    return-object p0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
