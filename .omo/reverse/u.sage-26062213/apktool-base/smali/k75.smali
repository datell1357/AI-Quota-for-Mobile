.class public abstract Lk75;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static volatile a:Lcr2;

.field public static final b:Lka0;

.field public static final c:Lka0;

.field public static final d:Lfk1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lsq;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lsq;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lka0;

    .line 8
    .line 9
    const v2, 0x7cd44f24

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v3, v0}, Lka0;-><init>(IZLef1;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lk75;->b:Lka0;

    .line 17
    .line 18
    new-instance v0, Llq;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, v1}, Llq;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lka0;

    .line 25
    .line 26
    const v2, -0x50006e7e

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0}, Lka0;-><init>(IZLef1;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lk75;->c:Lka0;

    .line 33
    .line 34
    new-instance v0, Lfk1;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-direct {v0, v1}, Lfk1;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lk75;->d:Lfk1;

    .line 41
    .line 42
    return-void
.end method

.method public static final A(Landroid/text/Layout;IZ)I
    .locals 2

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/lit8 p0, p0, -0x1

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eq v1, p1, :cond_2

    .line 35
    .line 36
    if-eq p0, p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    if-ne v1, p1, :cond_3

    .line 40
    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    return v0

    .line 46
    :cond_3
    if-eqz p2, :cond_5

    .line 47
    .line 48
    :cond_4
    :goto_0
    return v0

    .line 49
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    return v0
.end method

.method public static final B(Lya2;)Lab3;
    .locals 1

    .line 1
    invoke-interface {p0}, Lya2;->i()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lab3;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lab3;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static final C(Lab3;)F
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget p0, p0, Lab3;->a:F

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static final D(Lnd2;Lb12;Ls02;Lhr2;Z)Lnd2;
    .locals 1

    .line 1
    new-instance v0, Lt02;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lt02;-><init>(Lne1;Ls02;Lhr2;Z)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static E(Lpo3;)Lpo3;
    .locals 6

    .line 1
    instance-of v0, p0, Ls14;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Ls14;

    .line 8
    .line 9
    iget-wide v2, v0, Ls14;->t:J

    .line 10
    .line 11
    invoke-static {}, Lc75;->w()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iput-object v1, v0, Ls14;->r:Lpe1;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lt14;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    check-cast v0, Lt14;

    .line 28
    .line 29
    iget-wide v2, v0, Lt14;->i:J

    .line 30
    .line 31
    invoke-static {}, Lc75;->w()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iput-object v1, v0, Lt14;->h:Lpe1;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v1, v0}, Lwo3;->g(Lpo3;Lpe1;Z)Lpo3;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lpo3;->j()Lpo3;

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public static F(Lms0;Lne1;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lwo3;->b:Lui3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lui3;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpo3;

    .line 8
    .line 9
    instance-of v1, v0, Ls14;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Ls14;

    .line 15
    .line 16
    iget-wide v2, v1, Ls14;->t:J

    .line 17
    .line 18
    invoke-static {}, Lc75;->w()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    cmp-long v2, v2, v4

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v1, Ls14;->r:Lpe1;

    .line 27
    .line 28
    iget-object v3, v1, Ls14;->s:Lpe1;

    .line 29
    .line 30
    :try_start_0
    move-object v4, v0

    .line 31
    check-cast v4, Ls14;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-static {p0, v2, v5}, Lwo3;->k(Lpe1;Lpe1;Z)Lpe1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iput-object p0, v4, Ls14;->r:Lpe1;

    .line 39
    .line 40
    check-cast v0, Ls14;

    .line 41
    .line 42
    iput-object v3, v0, Ls14;->s:Lpe1;

    .line 43
    .line 44
    invoke-interface {p1}, Lne1;->a()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iput-object v2, v1, Ls14;->r:Lpe1;

    .line 49
    .line 50
    iput-object v3, v1, Ls14;->s:Lpe1;

    .line 51
    .line 52
    return-object p0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    iput-object v2, v1, Ls14;->r:Lpe1;

    .line 56
    .line 57
    iput-object v3, v1, Ls14;->s:Lpe1;

    .line 58
    .line 59
    throw p0

    .line 60
    :cond_0
    if-eqz v0, :cond_1

    .line 61
    .line 62
    instance-of v1, v0, Log2;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    :cond_1
    move-object v1, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0, p0}, Lpo3;->u(Lpe1;)Lpo3;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_2

    .line 73
    :goto_0
    new-instance v0, Ls14;

    .line 74
    .line 75
    instance-of v2, v1, Log2;

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    check-cast v1, Log2;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v1, 0x0

    .line 83
    :goto_1
    const/4 v4, 0x1

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    move-object v2, p0

    .line 87
    invoke-direct/range {v0 .. v5}, Ls14;-><init>(Log2;Lpe1;Lpe1;ZZ)V

    .line 88
    .line 89
    .line 90
    move-object p0, v0

    .line 91
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lpo3;->j()Lpo3;

    .line 92
    .line 93
    .line 94
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :try_start_2
    invoke-interface {p1}, Lne1;->a()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    :try_start_3
    invoke-static {v1}, Lpo3;->q(Lpo3;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lpo3;->c()V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    move-object p1, v0

    .line 108
    goto :goto_3

    .line 109
    :catchall_2
    move-exception v0

    .line 110
    move-object p1, v0

    .line 111
    :try_start_4
    invoke-static {v1}, Lpo3;->q(Lpo3;)V

    .line 112
    .line 113
    .line 114
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    :goto_3
    invoke-virtual {p0}, Lpo3;->c()V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public static final G(Lnd2;Lpe1;)Lnd2;
    .locals 1

    .line 1
    new-instance v0, Lvf0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lvf0;-><init>(Lpe1;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static H(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    .line 6
    .line 7
    const-class v2, Lu/sage/widget/UsageWidgetProvider;

    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    array-length v1, v0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object v1, Lez3;->a:Lra3;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/content/Intent;

    .line 35
    .line 36
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string v2, "appWidgetIds"

    .line 45
    .line 46
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static I(Ljava/util/concurrent/Executor;Ln91;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lfu0;->n:Lfu0;

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ltd2;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Ltd2;-><init>(Ljava/util/concurrent/Executor;Ln91;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static J(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, p1

    .line 9
    if-ge v2, v3, :cond_2

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v4, 0x21

    .line 22
    .line 23
    if-ge v3, v4, :cond_0

    .line 24
    .line 25
    aget-object v3, p1, v2

    .line 26
    .line 27
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    .line 28
    .line 29
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, "Permission request for permissions "

    .line 48
    .line 49
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, " must not contain null or empty values"

    .line 57
    .line 58
    invoke-static {p0, p1, p2}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-lez v2, :cond_3

    .line 71
    .line 72
    array-length v3, p1

    .line 73
    sub-int/2addr v3, v2

    .line 74
    new-array v3, v3, [Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move-object v3, p1

    .line 78
    :goto_1
    if-lez v2, :cond_6

    .line 79
    .line 80
    array-length v4, p1

    .line 81
    if-ne v2, v4, :cond_4

    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    move v2, v1

    .line 85
    :goto_2
    array-length v4, p1

    .line 86
    if-ge v1, v4, :cond_6

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    add-int/lit8 v4, v2, 0x1

    .line 99
    .line 100
    aget-object v5, p1, v1

    .line 101
    .line 102
    aput-object v5, v3, v2

    .line 103
    .line 104
    move v2, v4

    .line 105
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    instance-of v0, p0, Lqc1;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    move-object v0, p0

    .line 113
    check-cast v0, Lqc1;

    .line 114
    .line 115
    invoke-virtual {v0, p2}, Lqc1;->validateRequestPermissionsRequestCode(I)V

    .line 116
    .line 117
    .line 118
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static final K([Ljava/lang/Object;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    if-ge p1, p2, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aput-object v0, p0, p1

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method public static L(Lpo3;Lpo3;Lpe1;)V
    .locals 0

    .line 1
    if-ne p0, p1, :cond_2

    .line 2
    .line 3
    instance-of p1, p0, Ls14;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p0, Ls14;

    .line 8
    .line 9
    iput-object p2, p0, Ls14;->r:Lpe1;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of p1, p0, Lt14;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p0, Lt14;

    .line 17
    .line 18
    iput-object p2, p0, Lt14;->h:Lpe1;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string p1, "Non-transparent snapshot was reused: "

    .line 22
    .line 23
    invoke-static {p0, p1}, Lmk0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lpo3;->q(Lpo3;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lpo3;->c()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static M(Landroid/view/Window;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Le3;->f(Landroid/view/Window;Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v1, 0x1e

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {p0, p1}, Le3;->e(Landroid/view/Window;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    and-int/lit16 p1, v0, -0x701

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    or-int/lit16 p1, v0, 0x700

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static final N(F)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "NaN"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    cmpg-float p0, p0, v0

    .line 18
    .line 19
    if-gez p0, :cond_1

    .line 20
    .line 21
    const-string p0, "-Infinity"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const-string p0, "Infinity"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 34
    .line 35
    int-to-double v3, v0

    .line 36
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    double-to-float v1, v1

    .line 41
    mul-float/2addr p0, v1

    .line 42
    float-to-int v2, p0

    .line 43
    int-to-float v3, v2

    .line 44
    sub-float/2addr p0, v3

    .line 45
    const/high16 v3, 0x3f000000    # 0.5f

    .line 46
    .line 47
    cmpl-float p0, p0, v3

    .line 48
    .line 49
    if-ltz p0, :cond_3

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    :cond_3
    int-to-float p0, v2

    .line 54
    div-float/2addr p0, v1

    .line 55
    if-lez v0, :cond_4

    .line 56
    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_4
    float-to-int p0, p0

    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static final O(Lue;Lwe;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lue;->e:Lws2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lwe;->o:Lws2;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lwe;->p:Lbf;

    .line 13
    .line 14
    iget-object v1, p0, Lue;->f:Lbf;

    .line 15
    .line 16
    invoke-virtual {v0}, Lbf;->b()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Lbf;->a(I)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v0, v3, v4}, Lbf;->e(IF)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-wide v0, p0, Lue;->h:J

    .line 34
    .line 35
    iput-wide v0, p1, Lwe;->r:J

    .line 36
    .line 37
    iget-wide v0, p0, Lue;->g:J

    .line 38
    .line 39
    iput-wide v0, p1, Lwe;->q:J

    .line 40
    .line 41
    iget-object p0, p0, Lue;->i:Lws2;

    .line 42
    .line 43
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    iput-boolean p0, p1, Lwe;->s:Z

    .line 54
    .line 55
    return-void
.end method

.method public static final P(Lnd2;Lhd4;)Lnd2;
    .locals 1

    .line 1
    new-instance v0, Lrr1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lrr1;-><init>(Lhd4;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static Q(Landroid/content/Context;)Lcr2;
    .locals 16

    .line 1
    sget-object v0, Lk75;->a:Lcr2;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    const-class v1, Lk75;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lk75;->a:Lcr2;

    .line 9
    .line 10
    if-nez v0, :cond_b

    .line 11
    .line 12
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v3, Ll75;->a:Ldi;

    .line 17
    .line 18
    const-string v3, "eng"

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v3, "userdebug"

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_d

    .line 37
    .line 38
    :cond_0
    :goto_0
    const-string v0, "dev-keys"

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string v0, "test-keys"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sget-object v0, Lg;->n:Lg;

    .line 56
    .line 57
    goto/16 :goto_a

    .line 58
    .line 59
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v2, v0

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object/from16 v2, p0

    .line 72
    .line 73
    :goto_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 74
    .line 75
    .line 76
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    :try_start_2
    new-instance v0, Ljava/io/File;

    .line 82
    .line 83
    const-string v5, "phenotype_hermetic"

    .line 84
    .line 85
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "overrides.txt"

    .line 90
    .line 91
    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .line 93
    .line 94
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    new-instance v5, Lfy2;

    .line 101
    .line 102
    invoke-direct {v5, v0}, Lfy2;-><init>(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    sget-object v5, Lg;->n:Lg;

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    goto/16 :goto_b

    .line 111
    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v5, "HermeticFileOverrides"

    .line 114
    .line 115
    const-string v6, "no data dir"

    .line 116
    .line 117
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    sget-object v5, Lg;->n:Lg;

    .line 121
    .line 122
    :goto_3
    invoke-virtual {v5}, Lcr2;->b()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    invoke-virtual {v5}, Lcr2;->a()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/io/File;

    .line 133
    .line 134
    const-string v5, "Parsed "

    .line 135
    .line 136
    const-string v6, " for Android package "

    .line 137
    .line 138
    const-string v7, "Invalid: "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    .line 140
    :try_start_4
    new-instance v8, Ljava/io/BufferedReader;

    .line 141
    .line 142
    new-instance v9, Ljava/io/InputStreamReader;

    .line 143
    .line 144
    new-instance v10, Ljava/io/FileInputStream;

    .line 145
    .line 146
    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    .line 154
    .line 155
    :try_start_5
    new-instance v9, Lwm3;

    .line 156
    .line 157
    invoke-direct {v9, v4}, Lwm3;-><init>(I)V

    .line 158
    .line 159
    .line 160
    new-instance v10, Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 163
    .line 164
    .line 165
    :goto_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    if-eqz v11, :cond_9

    .line 170
    .line 171
    const-string v12, " "

    .line 172
    .line 173
    const/4 v13, 0x3

    .line 174
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    array-length v14, v12

    .line 179
    if-eq v14, v13, :cond_5

    .line 180
    .line 181
    const-string v12, "HermeticFileOverrides"

    .line 182
    .line 183
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    add-int/lit8 v13, v13, 0x9

    .line 188
    .line 189
    new-instance v14, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :catchall_2
    move-exception v0

    .line 209
    move-object v2, v0

    .line 210
    goto/16 :goto_6

    .line 211
    .line 212
    :cond_5
    aget-object v11, v12, v4

    .line 213
    .line 214
    new-instance v13, Ljava/lang/String;

    .line 215
    .line 216
    invoke-direct {v13, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/4 v11, 0x1

    .line 220
    aget-object v11, v12, v11

    .line 221
    .line 222
    new-instance v14, Ljava/lang/String;

    .line 223
    .line 224
    invoke-direct {v14, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    const/4 v14, 0x2

    .line 232
    aget-object v15, v12, v14

    .line 233
    .line 234
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    check-cast v15, Ljava/lang/String;

    .line 239
    .line 240
    if-nez v15, :cond_7

    .line 241
    .line 242
    aget-object v12, v12, v14

    .line 243
    .line 244
    new-instance v14, Ljava/lang/String;

    .line 245
    .line 246
    invoke-direct {v14, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    const/16 v4, 0x400

    .line 258
    .line 259
    if-lt v12, v4, :cond_6

    .line 260
    .line 261
    if-ne v15, v14, :cond_7

    .line 262
    .line 263
    :cond_6
    invoke-virtual {v10, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-virtual {v9, v13}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Lwm3;

    .line 271
    .line 272
    if-nez v4, :cond_8

    .line 273
    .line 274
    new-instance v4, Lwm3;

    .line 275
    .line 276
    const/4 v12, 0x0

    .line 277
    invoke-direct {v4, v12}, Lwm3;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v9, v13, v4}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_8
    const/4 v12, 0x0

    .line 285
    :goto_5
    invoke-virtual {v4, v11, v15}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move v4, v12

    .line 289
    goto :goto_4

    .line 290
    :cond_9
    const-string v4, "HermeticFileOverrides"

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    add-int/lit8 v7, v7, 0x1c

    .line 305
    .line 306
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    add-int/2addr v7, v10

    .line 315
    new-instance v10, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    new-instance v0, Lj75;

    .line 340
    .line 341
    invoke-direct {v0, v9}, Lj75;-><init>(Lwm3;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 342
    .line 343
    .line 344
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 345
    .line 346
    .line 347
    :try_start_7
    new-instance v2, Lfy2;

    .line 348
    .line 349
    invoke-direct {v2, v0}, Lfy2;-><init>(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 350
    .line 351
    .line 352
    goto :goto_9

    .line 353
    :catch_1
    move-exception v0

    .line 354
    goto :goto_8

    .line 355
    :goto_6
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :catchall_3
    move-exception v0

    .line 360
    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 361
    .line 362
    .line 363
    :goto_7
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 364
    :goto_8
    :try_start_a
    new-instance v2, Ljava/lang/RuntimeException;

    .line 365
    .line 366
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 367
    .line 368
    .line 369
    throw v2

    .line 370
    :cond_a
    sget-object v2, Lg;->n:Lg;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 371
    .line 372
    :goto_9
    :try_start_b
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 373
    .line 374
    .line 375
    move-object v0, v2

    .line 376
    :goto_a
    sput-object v0, Lk75;->a:Lcr2;

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :goto_b
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 380
    .line 381
    .line 382
    throw v0

    .line 383
    :cond_b
    :goto_c
    monitor-exit v1

    .line 384
    return-object v0

    .line 385
    :goto_d
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 386
    throw v0

    .line 387
    :cond_c
    return-object v0
.end method

.method public static final a(Lne1;Lnd2;ZLjl3;Lz20;La30;Lfx;Lka0;Lag1;I)V
    .locals 24

    .line 1
    move-object/from16 v5, p4

    .line 2
    .line 3
    move-object/from16 v8, p7

    .line 4
    .line 5
    move-object/from16 v0, p8

    .line 6
    .line 7
    move/from16 v1, p9

    .line 8
    .line 9
    const v2, 0x7f51eb4d

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lag1;->X(I)Lag1;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v2, v1, 0x6

    .line 16
    .line 17
    move-object/from16 v9, p0

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    :goto_0
    or-int/2addr v2, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v1

    .line 33
    :goto_1
    and-int/lit8 v3, v1, 0x30

    .line 34
    .line 35
    move-object/from16 v10, p1

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v10}, Lag1;->f(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v3, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v2, v3

    .line 51
    :cond_3
    or-int/lit16 v3, v2, 0x180

    .line 52
    .line 53
    and-int/lit16 v4, v1, 0xc00

    .line 54
    .line 55
    if-nez v4, :cond_4

    .line 56
    .line 57
    or-int/lit16 v3, v2, 0x580

    .line 58
    .line 59
    :cond_4
    and-int/lit16 v2, v1, 0x6000

    .line 60
    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lag1;->f(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    const/16 v2, 0x4000

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    const/16 v2, 0x2000

    .line 73
    .line 74
    :goto_3
    or-int/2addr v3, v2

    .line 75
    :cond_6
    const/high16 v2, 0x30000

    .line 76
    .line 77
    and-int/2addr v2, v1

    .line 78
    if-nez v2, :cond_7

    .line 79
    .line 80
    const/high16 v2, 0x10000

    .line 81
    .line 82
    or-int/2addr v3, v2

    .line 83
    :cond_7
    const/high16 v2, 0x180000

    .line 84
    .line 85
    and-int/2addr v2, v1

    .line 86
    move-object/from16 v7, p6

    .line 87
    .line 88
    if-nez v2, :cond_9

    .line 89
    .line 90
    invoke-virtual {v0, v7}, Lag1;->f(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_8

    .line 95
    .line 96
    const/high16 v2, 0x100000

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_8
    const/high16 v2, 0x80000

    .line 100
    .line 101
    :goto_4
    or-int/2addr v3, v2

    .line 102
    :cond_9
    const/high16 v2, 0xc00000

    .line 103
    .line 104
    or-int/2addr v2, v3

    .line 105
    const/high16 v3, 0x6000000

    .line 106
    .line 107
    and-int/2addr v3, v1

    .line 108
    if-nez v3, :cond_b

    .line 109
    .line 110
    invoke-virtual {v0, v8}, Lag1;->h(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_a

    .line 115
    .line 116
    const/high16 v3, 0x4000000

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_a
    const/high16 v3, 0x2000000

    .line 120
    .line 121
    :goto_5
    or-int/2addr v2, v3

    .line 122
    :cond_b
    const v3, 0x2492493

    .line 123
    .line 124
    .line 125
    and-int/2addr v3, v2

    .line 126
    const v4, 0x2492492

    .line 127
    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    const/4 v11, 0x1

    .line 131
    if-eq v3, v4, :cond_c

    .line 132
    .line 133
    move v3, v11

    .line 134
    goto :goto_6

    .line 135
    :cond_c
    move v3, v6

    .line 136
    :goto_6
    and-int/lit8 v4, v2, 0x1

    .line 137
    .line 138
    invoke-virtual {v0, v4, v3}, Lag1;->N(IZ)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_12

    .line 143
    .line 144
    invoke-virtual {v0}, Lag1;->S()V

    .line 145
    .line 146
    .line 147
    and-int/lit8 v3, v1, 0x1

    .line 148
    .line 149
    const v4, -0x71c01

    .line 150
    .line 151
    .line 152
    if-eqz v3, :cond_e

    .line 153
    .line 154
    invoke-virtual {v0}, Lag1;->x()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_d

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_d
    invoke-virtual {v0}, Lag1;->Q()V

    .line 162
    .line 163
    .line 164
    and-int/2addr v2, v4

    .line 165
    move/from16 v11, p2

    .line 166
    .line 167
    move-object/from16 v12, p3

    .line 168
    .line 169
    move v3, v2

    .line 170
    move-object/from16 v2, p5

    .line 171
    .line 172
    goto :goto_8

    .line 173
    :cond_e
    :goto_7
    sget-object v3, Lqj0;->c:Lll3;

    .line 174
    .line 175
    invoke-static {v3, v0}, Lol3;->a(Lll3;Lag1;)Ljl3;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {}, Lc75;->o()La30;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    and-int/2addr v2, v4

    .line 184
    move-object/from16 v23, v3

    .line 185
    .line 186
    move v3, v2

    .line 187
    move-object v2, v12

    .line 188
    move-object/from16 v12, v23

    .line 189
    .line 190
    :goto_8
    invoke-virtual {v0}, Lag1;->q()V

    .line 191
    .line 192
    .line 193
    const v4, 0x5e0c6ece

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v4}, Lag1;->W(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    sget-object v13, Lrb0;->a:Lbx3;

    .line 204
    .line 205
    if-ne v4, v13, :cond_f

    .line 206
    .line 207
    new-instance v4, Lvf2;

    .line 208
    .line 209
    invoke-direct {v4}, Lvf2;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_f
    check-cast v4, Lvf2;

    .line 216
    .line 217
    invoke-virtual {v0, v6}, Lag1;->p(Z)V

    .line 218
    .line 219
    .line 220
    if-eqz v11, :cond_10

    .line 221
    .line 222
    iget-wide v13, v5, Lz20;->a:J

    .line 223
    .line 224
    goto :goto_9

    .line 225
    :cond_10
    iget-wide v13, v5, Lz20;->c:J

    .line 226
    .line 227
    :goto_9
    if-eqz v11, :cond_11

    .line 228
    .line 229
    iget-wide v6, v5, Lz20;->b:J

    .line 230
    .line 231
    :goto_a
    move-wide v15, v6

    .line 232
    goto :goto_b

    .line 233
    :cond_11
    iget-wide v6, v5, Lz20;->d:J

    .line 234
    .line 235
    goto :goto_a

    .line 236
    :goto_b
    shr-int/lit8 v6, v3, 0x6

    .line 237
    .line 238
    and-int/lit8 v6, v6, 0xe

    .line 239
    .line 240
    invoke-virtual {v2, v11, v4, v0, v6}, La30;->a(ZLvf2;Lag1;I)Ltr3;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-interface {v6}, Ltr3;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    check-cast v6, Lcw0;

    .line 249
    .line 250
    iget v6, v6, Lcw0;->n:F

    .line 251
    .line 252
    new-instance v7, Lt7;

    .line 253
    .line 254
    const/4 v1, 0x3

    .line 255
    invoke-direct {v7, v8, v1}, Lt7;-><init>(Lka0;I)V

    .line 256
    .line 257
    .line 258
    const v1, -0x5051b168

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v7, v0}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 262
    .line 263
    .line 264
    move-result-object v20

    .line 265
    and-int/lit16 v1, v3, 0x1ffe

    .line 266
    .line 267
    const/high16 v7, 0xe000000

    .line 268
    .line 269
    shl-int/lit8 v3, v3, 0x6

    .line 270
    .line 271
    and-int/2addr v3, v7

    .line 272
    or-int v22, v1, v3

    .line 273
    .line 274
    move-object/from16 v18, p6

    .line 275
    .line 276
    move-object/from16 v21, v0

    .line 277
    .line 278
    move-object/from16 v19, v4

    .line 279
    .line 280
    move/from16 v17, v6

    .line 281
    .line 282
    invoke-static/range {v9 .. v22}, Lwu3;->b(Lne1;Lnd2;ZLjl3;JJFLfx;Lvf2;Lka0;Lag1;I)V

    .line 283
    .line 284
    .line 285
    move-object v6, v2

    .line 286
    move v3, v11

    .line 287
    move-object v4, v12

    .line 288
    goto :goto_c

    .line 289
    :cond_12
    invoke-virtual/range {p8 .. p8}, Lag1;->Q()V

    .line 290
    .line 291
    .line 292
    move/from16 v3, p2

    .line 293
    .line 294
    move-object/from16 v4, p3

    .line 295
    .line 296
    move-object/from16 v6, p5

    .line 297
    .line 298
    :goto_c
    invoke-virtual/range {p8 .. p8}, Lag1;->r()Lc33;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    if-eqz v10, :cond_13

    .line 303
    .line 304
    new-instance v0, Lc30;

    .line 305
    .line 306
    move-object/from16 v1, p0

    .line 307
    .line 308
    move-object/from16 v2, p1

    .line 309
    .line 310
    move-object/from16 v7, p6

    .line 311
    .line 312
    move/from16 v9, p9

    .line 313
    .line 314
    invoke-direct/range {v0 .. v9}, Lc30;-><init>(Lne1;Lnd2;ZLjl3;Lz20;La30;Lfx;Lka0;I)V

    .line 315
    .line 316
    .line 317
    iput-object v0, v10, Lc33;->d:Ldf1;

    .line 318
    .line 319
    :cond_13
    return-void
.end method

.method public static final b(Lnd2;Ljl3;Lz20;La30;Lfx;Lka0;Lag1;I)V
    .locals 16

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v13, p6

    .line 4
    .line 5
    const v0, 0x510b47de

    .line 6
    .line 7
    .line 8
    invoke-virtual {v13, v0}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, p7, 0x10

    .line 12
    .line 13
    invoke-virtual {v13, v3}, Lag1;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x100

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x80

    .line 23
    .line 24
    :goto_0
    or-int/2addr v0, v1

    .line 25
    or-int/lit16 v0, v0, 0x400

    .line 26
    .line 27
    move-object/from16 v11, p4

    .line 28
    .line 29
    invoke-virtual {v13, v11}, Lag1;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x4000

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v1, 0x2000

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v1

    .line 41
    const v1, 0x12493

    .line 42
    .line 43
    .line 44
    and-int/2addr v1, v0

    .line 45
    const v2, 0x12492

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    move v1, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 55
    .line 56
    invoke-virtual {v13, v2, v1}, Lag1;->N(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {v13}, Lag1;->S()V

    .line 63
    .line 64
    .line 65
    and-int/lit8 v1, p7, 0x1

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {v13}, Lag1;->x()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v13}, Lag1;->Q()V

    .line 77
    .line 78
    .line 79
    and-int/lit16 v0, v0, -0x1c71

    .line 80
    .line 81
    move-object/from16 v5, p1

    .line 82
    .line 83
    move-object/from16 v2, p3

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    :goto_3
    sget-object v1, Lqj0;->c:Lll3;

    .line 87
    .line 88
    invoke-static {v1, v13}, Lol3;->a(Lll3;Lag1;)Ljl3;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {}, Lc75;->o()La30;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    and-int/lit16 v0, v0, -0x1c71

    .line 97
    .line 98
    move-object v5, v1

    .line 99
    :goto_4
    invoke-virtual {v13}, Lag1;->q()V

    .line 100
    .line 101
    .line 102
    iget-wide v6, v3, Lz20;->a:J

    .line 103
    .line 104
    iget-wide v8, v3, Lz20;->b:J

    .line 105
    .line 106
    const/16 v1, 0x36

    .line 107
    .line 108
    const/4 v10, 0x0

    .line 109
    invoke-virtual {v2, v4, v10, v13, v1}, La30;->a(ZLvf2;Lag1;I)Ltr3;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcw0;

    .line 118
    .line 119
    iget v10, v1, Lcw0;->n:F

    .line 120
    .line 121
    new-instance v1, Lt7;

    .line 122
    .line 123
    const/4 v4, 0x2

    .line 124
    move-object/from16 v12, p5

    .line 125
    .line 126
    invoke-direct {v1, v12, v4}, Lt7;-><init>(Lka0;I)V

    .line 127
    .line 128
    .line 129
    const v4, -0x5c9c6dd

    .line 130
    .line 131
    .line 132
    invoke-static {v4, v1, v13}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const/high16 v4, 0x380000

    .line 137
    .line 138
    shl-int/lit8 v0, v0, 0x6

    .line 139
    .line 140
    and-int/2addr v0, v4

    .line 141
    const v4, 0xc00006

    .line 142
    .line 143
    .line 144
    or-int v14, v4, v0

    .line 145
    .line 146
    const/16 v15, 0x10

    .line 147
    .line 148
    move-object/from16 v4, p0

    .line 149
    .line 150
    move-object v12, v1

    .line 151
    invoke-static/range {v4 .. v15}, Lwu3;->a(Lnd2;Ljl3;JJFLfx;Lka0;Lag1;II)V

    .line 152
    .line 153
    .line 154
    move-object v4, v2

    .line 155
    move-object v2, v5

    .line 156
    goto :goto_5

    .line 157
    :cond_5
    invoke-virtual/range {p6 .. p6}, Lag1;->Q()V

    .line 158
    .line 159
    .line 160
    move-object/from16 v2, p1

    .line 161
    .line 162
    move-object/from16 v4, p3

    .line 163
    .line 164
    :goto_5
    invoke-virtual/range {p6 .. p6}, Lag1;->r()Lc33;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    if-eqz v8, :cond_6

    .line 169
    .line 170
    new-instance v0, Lb30;

    .line 171
    .line 172
    move-object/from16 v1, p0

    .line 173
    .line 174
    move-object/from16 v5, p4

    .line 175
    .line 176
    move-object/from16 v6, p5

    .line 177
    .line 178
    move/from16 v7, p7

    .line 179
    .line 180
    invoke-direct/range {v0 .. v7}, Lb30;-><init>(Lnd2;Ljl3;Lz20;La30;Lfx;Lka0;I)V

    .line 181
    .line 182
    .line 183
    iput-object v0, v8, Lc33;->d:Ldf1;

    .line 184
    .line 185
    :cond_6
    return-void
.end method

.method public static final c(Llx1;Ljava/lang/String;)Lwq1;
    .locals 2

    .line 1
    new-instance v0, Lwq1;

    .line 2
    .line 3
    new-instance v1, Lxq1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lxq1;-><init>(Llx1;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Lwq1;-><init>(Ljava/lang/String;Lxq1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final d(Ljr0;I)Lmd2;
    .locals 2

    .line 1
    check-cast p0, Lmd2;

    .line 2
    .line 3
    iget-object p0, p0, Lmd2;->n:Lmd2;

    .line 4
    .line 5
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v0, p0, Lmd2;->q:I

    .line 11
    .line 12
    and-int/2addr v0, p1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    .line 17
    .line 18
    iget v0, p0, Lmd2;->p:I

    .line 19
    .line 20
    and-int/lit8 v1, v0, 0x2

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    and-int/2addr v0, p1

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static final e([Ljava/lang/Object;IILp1;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    mul-int/lit8 v1, p2, 0x3

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "["

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, p2, :cond_2

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string v2, ", "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int v2, p1, v1

    .line 26
    .line 27
    aget-object v2, p0, v2

    .line 28
    .line 29
    if-ne v2, p3, :cond_1

    .line 30
    .line 31
    const-string v2, "(this Collection)"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p0, "]"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static final f(Lwe;Lre;JLpe1;Lfh0;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v3, p1

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    sget-object v8, Lw13;->F:Lw13;

    .line 6
    .line 7
    instance-of v1, v0, Lav3;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lav3;

    .line 13
    .line 14
    iget v2, v1, Lav3;->v:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v5, v2, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    sub-int/2addr v2, v4

    .line 23
    iput v2, v1, Lav3;->v:I

    .line 24
    .line 25
    :goto_0
    move-object v9, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v1, Lav3;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lfh0;-><init>(Ldh0;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, v9, Lfh0;->o:Lhi0;

    .line 34
    .line 35
    iget-object v1, v9, Lav3;->u:Ljava/lang/Object;

    .line 36
    .line 37
    iget v2, v9, Lav3;->v:I

    .line 38
    .line 39
    const/4 v10, 0x2

    .line 40
    const/4 v11, 0x1

    .line 41
    sget-object v12, Lri0;->n:Lri0;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    if-eq v2, v11, :cond_2

    .line 46
    .line 47
    if-ne v2, v10, :cond_1

    .line 48
    .line 49
    iget-object v2, v9, Lav3;->t:Lw33;

    .line 50
    .line 51
    iget-object v0, v9, Lav3;->s:Lpe1;

    .line 52
    .line 53
    iget-object v3, v9, Lav3;->r:Lre;

    .line 54
    .line 55
    iget-object v4, v9, Lav3;->q:Lwe;

    .line 56
    .line 57
    :goto_2
    :try_start_0
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto/16 :goto_b

    .line 64
    .line 65
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    return-object v0

    .line 72
    :cond_2
    iget-object v2, v9, Lav3;->t:Lw33;

    .line 73
    .line 74
    iget-object v0, v9, Lav3;->s:Lpe1;

    .line 75
    .line 76
    iget-object v3, v9, Lav3;->r:Lre;

    .line 77
    .line 78
    iget-object v4, v9, Lav3;->q:Lwe;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v1, 0x0

    .line 85
    .line 86
    invoke-interface {v3, v1, v2}, Lre;->b(J)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    invoke-interface {v3, v1, v2}, Lre;->f(J)Lbf;

    .line 91
    .line 92
    .line 93
    move-result-object v16

    .line 94
    new-instance v1, Lw33;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    const-wide/high16 v4, -0x8000000000000000L

    .line 100
    .line 101
    cmp-long v2, p2, v4

    .line 102
    .line 103
    if-nez v2, :cond_8

    .line 104
    .line 105
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lk75;->y(Lhi0;)F

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    new-instance v0, Lyu3;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 113
    .line 114
    move-object/from16 v5, p0

    .line 115
    .line 116
    move-object/from16 v7, p4

    .line 117
    .line 118
    move-object v2, v14

    .line 119
    move-object/from16 v4, v16

    .line 120
    .line 121
    :try_start_2
    invoke-direct/range {v0 .. v7}, Lyu3;-><init>(Lw33;Ljava/lang/Object;Lre;Lbf;Lwe;FLpe1;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    .line 123
    .line 124
    move-object v7, v1

    .line 125
    :try_start_3
    iput-object v5, v9, Lav3;->q:Lwe;

    .line 126
    .line 127
    iput-object v3, v9, Lav3;->r:Lre;

    .line 128
    .line 129
    move-object/from16 v6, p4

    .line 130
    .line 131
    iput-object v6, v9, Lav3;->s:Lpe1;

    .line 132
    .line 133
    iput-object v7, v9, Lav3;->t:Lw33;

    .line 134
    .line 135
    iput v11, v9, Lav3;->v:I

    .line 136
    .line 137
    invoke-interface {v3}, Lre;->a()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    invoke-virtual {v9}, Lfh0;->e()Lhi0;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1, v8}, Lhi0;->K(Lgi0;)Lfi0;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-nez v1, :cond_4

    .line 152
    .line 153
    invoke-virtual {v9}, Lfh0;->e()Lhi0;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lc75;->E(Lhi0;)Lqc;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1, v0, v9}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_3

    .line 166
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 169
    .line 170
    .line 171
    throw v0

    .line 172
    :cond_5
    new-instance v1, Lyg1;

    .line 173
    .line 174
    invoke-direct {v1, v0, v10}, Lyg1;-><init>(Lpe1;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9}, Lfh0;->e()Lhi0;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Lc75;->E(Lhi0;)Lqc;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0, v1, v9}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 189
    :goto_3
    if-ne v0, v12, :cond_6

    .line 190
    .line 191
    goto/16 :goto_a

    .line 192
    .line 193
    :cond_6
    move-object v4, v5

    .line 194
    move-object v0, v6

    .line 195
    move-object v2, v7

    .line 196
    :cond_7
    :goto_4
    move-object v1, v2

    .line 197
    goto :goto_8

    .line 198
    :goto_5
    move-object v4, v5

    .line 199
    :goto_6
    move-object v2, v7

    .line 200
    goto/16 :goto_b

    .line 201
    .line 202
    :catch_1
    move-exception v0

    .line 203
    goto :goto_5

    .line 204
    :catch_2
    move-exception v0

    .line 205
    :goto_7
    move-object v7, v1

    .line 206
    goto :goto_5

    .line 207
    :catch_3
    move-exception v0

    .line 208
    move-object/from16 v5, p0

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_8
    move-object/from16 v5, p0

    .line 212
    .line 213
    move-object/from16 v6, p4

    .line 214
    .line 215
    move-object v7, v1

    .line 216
    :try_start_4
    new-instance v13, Lue;

    .line 217
    .line 218
    invoke-interface {v3}, Lre;->d()Le34;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    invoke-interface {v3}, Lre;->e()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v19

    .line 226
    new-instance v1, Lxu3;

    .line 227
    .line 228
    invoke-direct {v1, v11, v5}, Lxu3;-><init>(ILwe;)V

    .line 229
    .line 230
    .line 231
    move-wide/from16 v20, p2

    .line 232
    .line 233
    move-wide/from16 v17, p2

    .line 234
    .line 235
    move-object/from16 v22, v1

    .line 236
    .line 237
    invoke-direct/range {v13 .. v22}, Lue;-><init>(Ljava/lang/Object;Le34;Lbf;JLjava/lang/Object;JLne1;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Lk75;->y(Lhi0;)F

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    move-wide/from16 v1, p2

    .line 248
    .line 249
    move-object v4, v3

    .line 250
    move v3, v0

    .line 251
    move-object v0, v13

    .line 252
    invoke-static/range {v0 .. v6}, Lk75;->t(Lue;JFLre;Lwe;Lpe1;)V

    .line 253
    .line 254
    .line 255
    move-object v13, v0

    .line 256
    iput-object v13, v7, Lw33;->n:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_6

    .line 257
    .line 258
    move-object/from16 v4, p0

    .line 259
    .line 260
    move-object/from16 v3, p1

    .line 261
    .line 262
    move-object/from16 v0, p4

    .line 263
    .line 264
    move-object v1, v7

    .line 265
    :goto_8
    :try_start_5
    iget-object v2, v1, Lw33;->n:Ljava/lang/Object;

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    check-cast v2, Lue;

    .line 271
    .line 272
    iget-object v2, v2, Lue;->i:Lws2;

    .line 273
    .line 274
    invoke-virtual {v2}, Lws2;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_b

    .line 285
    .line 286
    iget-object v2, v9, Lfh0;->o:Lhi0;

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    invoke-static {v2}, Lk75;->y(Lhi0;)F

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    new-instance v5, Lzu3;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 296
    .line 297
    move-object/from16 p5, v0

    .line 298
    .line 299
    move-object/from16 p1, v1

    .line 300
    .line 301
    move/from16 p2, v2

    .line 302
    .line 303
    move-object/from16 p3, v3

    .line 304
    .line 305
    move-object/from16 p4, v4

    .line 306
    .line 307
    move-object/from16 p0, v5

    .line 308
    .line 309
    :try_start_6
    invoke-direct/range {p0 .. p5}, Lzu3;-><init>(Lw33;FLre;Lwe;Lpe1;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_4

    .line 310
    .line 311
    .line 312
    move-object/from16 v1, p0

    .line 313
    .line 314
    move-object/from16 v2, p1

    .line 315
    .line 316
    move-object/from16 v3, p3

    .line 317
    .line 318
    move-object/from16 v4, p4

    .line 319
    .line 320
    move-object/from16 v0, p5

    .line 321
    .line 322
    :try_start_7
    iput-object v4, v9, Lav3;->q:Lwe;

    .line 323
    .line 324
    iput-object v3, v9, Lav3;->r:Lre;

    .line 325
    .line 326
    iput-object v0, v9, Lav3;->s:Lpe1;

    .line 327
    .line 328
    iput-object v2, v9, Lav3;->t:Lw33;

    .line 329
    .line 330
    iput v10, v9, Lav3;->v:I

    .line 331
    .line 332
    invoke-interface {v3}, Lre;->a()Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-eqz v5, :cond_a

    .line 337
    .line 338
    invoke-virtual {v9}, Lfh0;->e()Lhi0;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-interface {v5, v8}, Lhi0;->K(Lgi0;)Lfi0;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    if-nez v5, :cond_9

    .line 347
    .line 348
    invoke-virtual {v9}, Lfh0;->e()Lhi0;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-static {v5}, Lc75;->E(Lhi0;)Lqc;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-virtual {v5, v1, v9}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    goto :goto_9

    .line 361
    :cond_9
    new-instance v0, Ljava/lang/ClassCastException;

    .line 362
    .line 363
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :cond_a
    new-instance v5, Lyg1;

    .line 368
    .line 369
    invoke-direct {v5, v1, v10}, Lyg1;-><init>(Lpe1;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v9}, Lfh0;->e()Lhi0;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v1}, Lc75;->E(Lhi0;)Lqc;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1, v5, v9}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0

    .line 384
    :goto_9
    if-ne v1, v12, :cond_7

    .line 385
    .line 386
    :goto_a
    return-object v12

    .line 387
    :catch_4
    move-exception v0

    .line 388
    move-object/from16 v2, p1

    .line 389
    .line 390
    move-object/from16 v4, p4

    .line 391
    .line 392
    goto :goto_b

    .line 393
    :catch_5
    move-exception v0

    .line 394
    move-object v2, v1

    .line 395
    goto :goto_b

    .line 396
    :cond_b
    sget-object v0, Lt64;->a:Lt64;

    .line 397
    .line 398
    return-object v0

    .line 399
    :catch_6
    move-exception v0

    .line 400
    move-object/from16 v4, p0

    .line 401
    .line 402
    goto/16 :goto_6

    .line 403
    .line 404
    :goto_b
    iget-object v1, v2, Lw33;->n:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v1, Lue;

    .line 407
    .line 408
    if-eqz v1, :cond_c

    .line 409
    .line 410
    iget-object v1, v1, Lue;->i:Lws2;

    .line 411
    .line 412
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 413
    .line 414
    invoke-virtual {v1, v3}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    :cond_c
    iget-object v1, v2, Lw33;->n:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v1, Lue;

    .line 420
    .line 421
    if-eqz v1, :cond_d

    .line 422
    .line 423
    iget-wide v1, v1, Lue;->g:J

    .line 424
    .line 425
    iget-wide v5, v4, Lwe;->q:J

    .line 426
    .line 427
    cmp-long v1, v1, v5

    .line 428
    .line 429
    if-nez v1, :cond_d

    .line 430
    .line 431
    const/4 v1, 0x0

    .line 432
    iput-boolean v1, v4, Lwe;->s:Z

    .line 433
    .line 434
    :cond_d
    throw v0
.end method

.method public static g(FFLve;Ldf1;Lbv3;I)Ljava/lang/Object;
    .locals 7

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    const/4 p2, 0x7

    .line 7
    const/4 p5, 0x0

    .line 8
    invoke-static {v0, v0, p5, p2}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    move-object v2, p2

    .line 13
    sget-object v3, Lk30;->m:Le34;

    .line 14
    .line 15
    new-instance v4, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-direct {v4, p0}, Ljava/lang/Float;-><init>(F)V

    .line 18
    .line 19
    .line 20
    new-instance v5, Ljava/lang/Float;

    .line 21
    .line 22
    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/Float;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v3, Le34;->a:Lpe1;

    .line 31
    .line 32
    invoke-interface {p1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lbf;

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    invoke-interface {p1, v4}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lbf;

    .line 45
    .line 46
    invoke-virtual {p0}, Lbf;->c()Lbf;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :cond_1
    move-object v6, p0

    .line 51
    new-instance p1, Llw3;

    .line 52
    .line 53
    move-object v1, p1

    .line 54
    invoke-direct/range {v1 .. v6}, Llw3;-><init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lwe;

    .line 58
    .line 59
    const/16 p2, 0x38

    .line 60
    .line 61
    invoke-direct {p0, v3, v4, v6, p2}, Lwe;-><init>(Le34;Ljava/lang/Object;Lbf;I)V

    .line 62
    .line 63
    .line 64
    move-object p5, p4

    .line 65
    new-instance p4, Ldi3;

    .line 66
    .line 67
    const/4 p2, 0x4

    .line 68
    invoke-direct {p4, p2, p3}, Ldi3;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const-wide/high16 p2, -0x8000000000000000L

    .line 72
    .line 73
    invoke-static/range {p0 .. p5}, Lk75;->f(Lwe;Lre;JLpe1;Lfh0;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object p1, Lt64;->a:Lt64;

    .line 78
    .line 79
    sget-object p2, Lri0;->n:Lri0;

    .line 80
    .line 81
    if-ne p0, p2, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move-object p0, p1

    .line 85
    :goto_0
    if-ne p0, p2, :cond_3

    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_3
    return-object p1
.end method

.method public static final h(Lwe;Ljava/lang/Float;Lve;ZLpe1;Lfh0;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lwe;->o:Lws2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    iget-object v3, p0, Lwe;->n:Le34;

    .line 8
    .line 9
    iget-object v6, p0, Lwe;->p:Lbf;

    .line 10
    .line 11
    new-instance v1, Llw3;

    .line 12
    .line 13
    move-object v5, p1

    .line 14
    move-object v2, p2

    .line 15
    invoke-direct/range {v1 .. v6}, Llw3;-><init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V

    .line 16
    .line 17
    .line 18
    move-object p1, v1

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget-wide p2, p0, Lwe;->q:J

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-wide/high16 p2, -0x8000000000000000L

    .line 25
    .line 26
    :goto_0
    invoke-static/range {p0 .. p5}, Lk75;->f(Lwe;Lre;JLpe1;Lfh0;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object p1, Lri0;->n:Lri0;

    .line 31
    .line 32
    if-ne p0, p1, :cond_1

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lt64;->a:Lt64;

    .line 36
    .line 37
    return-object p0
.end method

.method public static synthetic i(Lwe;Ljava/lang/Float;Lyq3;ZLpe1;Lfh0;I)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 v0, p6, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x7

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v0, v1, p2}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    move-object v2, p2

    .line 13
    and-int/lit8 p2, p6, 0x8

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    new-instance p4, Ljd3;

    .line 18
    .line 19
    const/16 p2, 0xb

    .line 20
    .line 21
    invoke-direct {p4, p2}, Ljd3;-><init>(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move v3, p3

    .line 27
    move-object v4, p4

    .line 28
    move-object v5, p5

    .line 29
    invoke-static/range {v0 .. v5}, Lk75;->h(Lwe;Ljava/lang/Float;Lve;ZLpe1;Lfh0;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 5

    .line 1
    const-string v0, " canonical["

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Inoperable file:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "] freeSpace["

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 p0, 0x5d

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    const-string p0, " failed to attach additional metadata"

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance v0, Ljava/io/IOException;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public static k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_3
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_5
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_7
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_8
    invoke-static {p0, p1}, Lk75;->j(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method public static final l(Ljr0;Lne1;Lbv3;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lmd2;

    .line 3
    .line 4
    iget-object v0, v0, Lmd2;->n:Lmd2;

    .line 5
    .line 6
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    move-object v0, p0

    .line 13
    check-cast v0, Lmd2;

    .line 14
    .line 15
    iget-object v1, v0, Lmd2;->n:Lmd2;

    .line 16
    .line 17
    iget-boolean v1, v1, Lmd2;->A:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "visitAncestors called on an unattached node"

    .line 22
    .line 23
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, v0, Lmd2;->n:Lmd2;

    .line 27
    .line 28
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 29
    .line 30
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_c

    .line 36
    .line 37
    iget-object v3, v1, Lxy1;->S:Lbo;

    .line 38
    .line 39
    iget-object v3, v3, Lbo;->g:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lmd2;

    .line 42
    .line 43
    iget v3, v3, Lmd2;->q:I

    .line 44
    .line 45
    const/high16 v4, 0x80000

    .line 46
    .line 47
    and-int/2addr v3, v4

    .line 48
    if-eqz v3, :cond_a

    .line 49
    .line 50
    :goto_1
    if-eqz v0, :cond_a

    .line 51
    .line 52
    iget v3, v0, Lmd2;->p:I

    .line 53
    .line 54
    and-int/2addr v3, v4

    .line 55
    if-eqz v3, :cond_9

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    move-object v5, v2

    .line 59
    :goto_2
    if-eqz v3, :cond_9

    .line 60
    .line 61
    instance-of v6, v3, Lxx;

    .line 62
    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    move-object v2, v3

    .line 66
    goto :goto_5

    .line 67
    :cond_2
    iget v6, v3, Lmd2;->p:I

    .line 68
    .line 69
    and-int/2addr v6, v4

    .line 70
    if-eqz v6, :cond_8

    .line 71
    .line 72
    instance-of v6, v3, Lkr0;

    .line 73
    .line 74
    if-eqz v6, :cond_8

    .line 75
    .line 76
    move-object v6, v3

    .line 77
    check-cast v6, Lkr0;

    .line 78
    .line 79
    iget-object v6, v6, Lkr0;->C:Lmd2;

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    :goto_3
    const/4 v8, 0x1

    .line 83
    if-eqz v6, :cond_7

    .line 84
    .line 85
    iget v9, v6, Lmd2;->p:I

    .line 86
    .line 87
    and-int/2addr v9, v4

    .line 88
    if-eqz v9, :cond_6

    .line 89
    .line 90
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    if-ne v7, v8, :cond_3

    .line 93
    .line 94
    move-object v3, v6

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    if-nez v5, :cond_4

    .line 97
    .line 98
    new-instance v5, Lug2;

    .line 99
    .line 100
    const/16 v8, 0x10

    .line 101
    .line 102
    new-array v8, v8, [Lmd2;

    .line 103
    .line 104
    invoke-direct {v5, v8}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    if-eqz v3, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5, v3}, Lug2;->c(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    move-object v3, v2

    .line 113
    :cond_5
    invoke-virtual {v5, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_4
    iget-object v6, v6, Lmd2;->s:Lmd2;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    if-ne v7, v8, :cond_8

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_8
    invoke-static {v5}, Lw80;->g(Lug2;)Lmd2;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    goto :goto_2

    .line 127
    :cond_9
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_a
    invoke-virtual {v1}, Lxy1;->u()Lxy1;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_b

    .line 135
    .line 136
    iget-object v0, v1, Lxy1;->S:Lbo;

    .line 137
    .line 138
    if-eqz v0, :cond_b

    .line 139
    .line 140
    iget-object v0, v0, Lbo;->f:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lgw3;

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_b
    move-object v0, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_c
    :goto_5
    check-cast v2, Lxx;

    .line 148
    .line 149
    if-nez v2, :cond_d

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_d
    invoke-static {p0}, Lw80;->Q(Ljr0;)Lmm2;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    new-instance v0, Lj9;

    .line 157
    .line 158
    const/4 v1, 0x2

    .line 159
    invoke-direct {v0, v1, p1, p0}, Lj9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v2, p0, v0, p2}, Lxx;->j0(Lmm2;Lj9;Lbv3;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    sget-object p1, Lri0;->n:Lri0;

    .line 167
    .line 168
    if-ne p0, p1, :cond_e

    .line 169
    .line 170
    return-object p0

    .line 171
    :cond_e
    :goto_6
    sget-object p0, Lt64;->a:Lt64;

    .line 172
    .line 173
    return-object p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x21

    .line 7
    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 11
    .line 12
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance p1, Lfn2;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lfn2;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p1, Lfn2;->a:Landroid/app/NotificationManager;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    const/4 p0, -0x1

    .line 33
    return p0

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_2
    const-string p0, "permission must be non-null"

    .line 48
    .line 49
    invoke-static {p0}, Lq73;->r(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    if-nez v2, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    array-length v4, v2

    .line 43
    if-gtz v4, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    aget-object v2, v2, v0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    return v3

    .line 50
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-class v5, Landroid/app/AppOpsManager;

    .line 59
    .line 60
    if-ne v3, v1, :cond_9

    .line 61
    .line 62
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_9

    .line 67
    .line 68
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v4, 0x1d

    .line 71
    .line 72
    if-lt v3, v4, :cond_8

    .line 73
    .line 74
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/app/AppOpsManager;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x1

    .line 85
    if-nez v3, :cond_5

    .line 86
    .line 87
    move v2, v5

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {v3, p1, v4, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :goto_2
    if-eqz v2, :cond_6

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    invoke-static {p0}, Lvf;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-nez v3, :cond_7

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    invoke-virtual {v3, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    :goto_3
    move v2, v5

    .line 108
    goto :goto_4

    .line 109
    :cond_8
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Landroid/app/AppOpsManager;

    .line 114
    .line 115
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroid/app/AppOpsManager;

    .line 125
    .line 126
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    :goto_4
    if-nez v2, :cond_a

    .line 131
    .line 132
    :goto_5
    return v0

    .line 133
    :cond_a
    const/4 p0, -0x2

    .line 134
    return p0
.end method

.method public static final o(Lnd2;Lzr2;)Lnd2;
    .locals 1

    .line 1
    new-instance v0, Las2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Las2;-><init>(Lzr2;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final p(JLgy0;)J
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const-wide/16 v4, 0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    const-wide/32 v0, 0x5265c00

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "Wrong unit for millisMultiplier: "

    .line 29
    .line 30
    invoke-static {p2, p0}, Lmk0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-wide v2

    .line 34
    :cond_1
    const-wide/32 v0, 0x36ee80

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-wide/32 v0, 0xea60

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const-wide/16 v0, 0x3e8

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    move-wide v0, v4

    .line 46
    :goto_0
    cmp-long p2, p0, v2

    .line 47
    .line 48
    if-nez p2, :cond_5

    .line 49
    .line 50
    return-wide v2

    .line 51
    :cond_5
    cmp-long p2, p0, v4

    .line 52
    .line 53
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    if-nez p2, :cond_7

    .line 59
    .line 60
    cmp-long p0, v0, v2

    .line 61
    .line 62
    if-lez p0, :cond_6

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_6
    return-wide v0

    .line 66
    :cond_7
    cmp-long p2, v0, v4

    .line 67
    .line 68
    if-nez p2, :cond_9

    .line 69
    .line 70
    cmp-long p2, p0, v2

    .line 71
    .line 72
    if-lez p2, :cond_8

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_8
    return-wide p0

    .line 76
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    rsub-int p2, p2, 0x80

    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    sub-int/2addr p2, v4

    .line 87
    const/16 v4, 0x3f

    .line 88
    .line 89
    if-ge p2, v4, :cond_a

    .line 90
    .line 91
    mul-long/2addr p0, v0

    .line 92
    return-wide p0

    .line 93
    :cond_a
    if-le p2, v4, :cond_b

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_b
    mul-long/2addr p0, v0

    .line 97
    cmp-long p2, p0, v2

    .line 98
    .line 99
    if-lez p2, :cond_c

    .line 100
    .line 101
    :goto_1
    return-wide v2

    .line 102
    :cond_c
    return-wide p0
.end method

.method public static q(Landroid/content/Context;)Lbb1;
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lpo0;

    .line 10
    .line 11
    invoke-direct {v0, v2}, Lqv3;-><init>(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lqv3;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lqv3;-><init>(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "Package manager required to locate emoji font provider"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lbi4;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v3, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 32
    .line 33
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 57
    .line 58
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    and-int/2addr v6, v7

    .line 70
    if-ne v6, v7, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v4, v5

    .line 74
    :goto_1
    if-nez v4, :cond_3

    .line 75
    .line 76
    :goto_2
    move-object v6, v5

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    :try_start_0
    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v8}, Lqv3;->q(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    array-length v2, v0

    .line 92
    :goto_3
    if-ge v3, v2, :cond_4

    .line 93
    .line 94
    aget-object v4, v0, v3

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    new-instance v6, Lza1;

    .line 111
    .line 112
    const-string v9, "emojicompat-emoji-font"

    .line 113
    .line 114
    const/4 v11, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    invoke-direct/range {v6 .. v12}, Lza1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 122
    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_4
    if-nez v6, :cond_5

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    new-instance v5, Lbb1;

    .line 131
    .line 132
    new-instance v0, Lab1;

    .line 133
    .line 134
    invoke-direct {v0, p0, v6}, Lab1;-><init>(Landroid/content/Context;Lza1;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v5, v0}, Ldz0;-><init>(Lgz0;)V

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object v5
.end method

.method public static r()Ld84;
    .locals 19

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x6

    .line 14
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x9

    .line 18
    .line 19
    const/16 v5, 0xb

    .line 20
    .line 21
    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 22
    .line 23
    .line 24
    const/16 v3, 0xc

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 28
    .line 29
    .line 30
    const/16 v7, 0xd

    .line 31
    .line 32
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 33
    .line 34
    .line 35
    const/16 v8, 0xe

    .line 36
    .line 37
    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 45
    .line 46
    .line 47
    const/4 v11, 0x3

    .line 48
    invoke-virtual {v2, v4, v11}, Ljava/util/Calendar;->add(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    const-wide/32 v4, 0xc042c0

    .line 68
    .line 69
    .line 70
    add-long/2addr v4, v0

    .line 71
    new-instance v6, Ld84;

    .line 72
    .line 73
    new-instance v11, Lp84;

    .line 74
    .line 75
    const/4 v15, 0x0

    .line 76
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v16

    .line 80
    const-string v12, "Gemini Pro"

    .line 81
    .line 82
    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    .line 83
    .line 84
    invoke-direct/range {v11 .. v16}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 85
    .line 86
    .line 87
    new-instance v12, Lp84;

    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v17

    .line 95
    const-string v13, "Claude"

    .line 96
    .line 97
    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    .line 98
    .line 99
    invoke-direct/range {v12 .. v17}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 100
    .line 101
    .line 102
    new-instance v13, Lp84;

    .line 103
    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v18

    .line 110
    const-string v14, "Gemini Flash"

    .line 111
    .line 112
    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    .line 113
    .line 114
    invoke-direct/range {v13 .. v18}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 115
    .line 116
    .line 117
    filled-new-array {v11, v12, v13}, [Lp84;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v2}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {v6, v2, v0, v1}, Ld84;-><init>(Ljava/util/List;J)V

    .line 126
    .line 127
    .line 128
    return-object v6
.end method

.method public static s()Ld84;
    .locals 15

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "UTC"

    .line 6
    .line 7
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x5

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 18
    .line 19
    .line 20
    const/16 v3, 0xb

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0xc

    .line 27
    .line 28
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 29
    .line 30
    .line 31
    const/16 v3, 0xd

    .line 32
    .line 33
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 34
    .line 35
    .line 36
    const/16 v3, 0xe

    .line 37
    .line 38
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    new-instance v4, Ld84;

    .line 54
    .line 55
    new-instance v7, Lp84;

    .line 56
    .line 57
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    const-string v8, "Chat messages"

    .line 66
    .line 67
    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    .line 68
    .line 69
    invoke-direct/range {v7 .. v12}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 70
    .line 71
    .line 72
    new-instance v8, Lp84;

    .line 73
    .line 74
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    const-string v9, "Code completions"

    .line 83
    .line 84
    const-wide v10, 0x4045400000000000L    # 42.5

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    invoke-direct/range {v8 .. v13}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 90
    .line 91
    .line 92
    new-instance v9, Lp84;

    .line 93
    .line 94
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    const-string v10, "Premium requests"

    .line 103
    .line 104
    const-wide/high16 v11, 0x4051000000000000L    # 68.0

    .line 105
    .line 106
    invoke-direct/range {v9 .. v14}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 107
    .line 108
    .line 109
    filled-new-array {v7, v8, v9}, [Lp84;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-direct {v4, v2, v0, v1}, Ld84;-><init>(Ljava/util/List;J)V

    .line 118
    .line 119
    .line 120
    return-object v4
.end method

.method public static final t(Lue;JFLre;Lwe;Lpe1;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p3, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-interface {p4}, Lre;->c()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lue;->c:J

    .line 12
    .line 13
    sub-long v0, p1, v0

    .line 14
    .line 15
    long-to-float v0, v0

    .line 16
    div-float/2addr v0, p3

    .line 17
    float-to-long v0, v0

    .line 18
    :goto_0
    iput-wide p1, p0, Lue;->g:J

    .line 19
    .line 20
    invoke-interface {p4, v0, v1}, Lre;->b(J)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lue;->e:Lws2;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p4, v0, v1}, Lre;->f(J)Lbf;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lue;->f:Lbf;

    .line 34
    .line 35
    invoke-interface {p4, v0, v1}, Lre;->g(J)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-wide p1, p0, Lue;->g:J

    .line 42
    .line 43
    iput-wide p1, p0, Lue;->h:J

    .line 44
    .line 45
    iget-object p1, p0, Lue;->i:Lws2;

    .line 46
    .line 47
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {p0, p5}, Lk75;->O(Lue;Lwe;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p6, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static final u(Lnd2;Lpe1;)Lnd2;
    .locals 1

    .line 1
    new-instance v0, Lfx0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lfx0;-><init>(Lpe1;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final v(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static w(Landroid/content/Context;Ljava/lang/Long;JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_1

    .line 5
    .line 6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object p4

    .line 14
    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    cmp-long p4, v0, p2

    .line 21
    .line 22
    if-gtz p4, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sub-long/2addr v0, p2

    .line 30
    const-wide/32 p2, 0xea60

    .line 31
    .line 32
    .line 33
    div-long/2addr v0, p2

    .line 34
    const-wide/16 p2, 0x3c

    .line 35
    .line 36
    div-long v2, v0, p2

    .line 37
    .line 38
    rem-long/2addr v0, p2

    .line 39
    const-wide/16 p2, 0x1

    .line 40
    .line 41
    cmp-long p2, v2, p2

    .line 42
    .line 43
    if-gez p2, :cond_3

    .line 44
    .line 45
    long-to-int p1, v0

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const p2, 0x7f10045e

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_3
    const-wide/16 p2, 0x18

    .line 66
    .line 67
    cmp-long p2, v2, p2

    .line 68
    .line 69
    if-gez p2, :cond_4

    .line 70
    .line 71
    long-to-int p1, v2

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    long-to-int p2, v0

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const p2, 0x7f10045d

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const-string p3, "EEEhma"

    .line 101
    .line 102
    invoke-static {p2, p3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    new-instance p4, Ljava/text/SimpleDateFormat;

    .line 107
    .line 108
    invoke-direct {p4, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 109
    .line 110
    .line 111
    new-instance p2, Ljava/util/Date;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p4, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const p2, 0x7f10045c

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_5
    :goto_1
    const p1, 0x7f100460

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    return-object p0
.end method

.method public static x()Lpo3;
    .locals 1

    .line 1
    sget-object v0, Lwo3;->b:Lui3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lui3;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpo3;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final y(Lhi0;)F
    .locals 1

    .line 1
    sget-object v0, Lw13;->I:Lw13;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lhi0;->K(Lgi0;)Lfi0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyd2;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lyd2;->Z()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    cmpl-float v0, p0, v0

    .line 20
    .line 21
    if-ltz v0, :cond_1

    .line 22
    .line 23
    return p0

    .line 24
    :cond_1
    const-string v0, "negative scale factor"

    .line 25
    .line 26
    invoke-static {v0}, Lkx2;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return p0
.end method

.method public static z()Loz2;
    .locals 1

    .line 1
    sget-object v0, Loz2;->b:Loz2;

    .line 2
    .line 3
    return-object v0
.end method
