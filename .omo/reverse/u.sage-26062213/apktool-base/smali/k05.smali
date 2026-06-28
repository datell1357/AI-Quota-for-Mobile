.class public final Lk05;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lwc5;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lwc5;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lk05;->a:Lwc5;

    .line 14
    .line 15
    iput-object p2, p0, Lk05;->b:Landroid/content/Context;

    .line 16
    .line 17
    return-void
.end method

.method public static b(Lfh;Li6;Lsf5;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object p2, p0, Lfh;->b:Landroid/app/PendingIntent;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    move-object v1, p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget-boolean v1, p0, Lfh;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lfh;->c:Z

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move-object p2, v0

    .line 27
    :goto_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance p2, Lus1;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {p2, p0, v0, v1, v1}, Lus1;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Li6;->a(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final a()Lef5;
    .locals 5

    .line 1
    iget-object v0, p0, Lk05;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lwc5;->e:Lsg0;

    .line 8
    .line 9
    iget-object p0, p0, Lk05;->a:Lwc5;

    .line 10
    .line 11
    iget-object v2, p0, Lwc5;->a:Ltf5;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    const/16 p0, -0x9

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x6

    .line 29
    const-string v3, "PlayCore"

    .line 30
    .line 31
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Lsg0;->o:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "onError(%d)"

    .line 40
    .line 41
    invoke-static {v1, v2, v0}, Lsg0;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    new-instance v0, Lxr1;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lxr1;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lmt1;->s(Ljava/lang/Exception;)Lef5;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "requestUpdateInfo(%s)"

    .line 63
    .line 64
    invoke-virtual {v1, v4, v3}, Lsg0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lpw3;

    .line 68
    .line 69
    invoke-direct {v1}, Lpw3;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v3, Ld85;

    .line 73
    .line 74
    invoke-direct {v3, p0, v1, v0, v1}, Ld85;-><init>(Lwc5;Lpw3;Ljava/lang/String;Lpw3;)V

    .line 75
    .line 76
    .line 77
    new-instance p0, Ld85;

    .line 78
    .line 79
    invoke-direct {p0, v2, v1, v1, v3}, Ld85;-><init>(Ltf5;Lpw3;Lpw3;Ld85;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ltf5;->a()Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    iget-object p0, v1, Lpw3;->a:Lef5;

    .line 90
    .line 91
    return-object p0
.end method
