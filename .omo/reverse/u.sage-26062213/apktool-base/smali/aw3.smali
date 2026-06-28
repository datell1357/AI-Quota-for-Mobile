.class public final Law3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lwd3;


# static fields
.field public static final s:Ljava/lang/String;


# instance fields
.field public final n:Landroid/content/Context;

.field public final o:Landroid/app/job/JobScheduler;

.field public final p:Lzv3;

.field public final q:Landroidx/work/impl/WorkDatabase;

.field public final r:Lmd0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobScheduler"

    .line 2
    .line 3
    invoke-static {v0}, Lt72;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Law3;->s:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lmd0;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lxu1;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lzv3;

    .line 6
    .line 7
    iget-object v2, p3, Lmd0;->d:Lpr3;

    .line 8
    .line 9
    iget-boolean v3, p3, Lmd0;->l:Z

    .line 10
    .line 11
    invoke-direct {v1, p1, v2, v3}, Lzv3;-><init>(Landroid/content/Context;Lpr3;Z)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Law3;->n:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v0, p0, Law3;->o:Landroid/app/job/JobScheduler;

    .line 20
    .line 21
    iput-object v1, p0, Law3;->p:Lzv3;

    .line 22
    .line 23
    iput-object p2, p0, Law3;->q:Landroidx/work/impl/WorkDatabase;

    .line 24
    .line 25
    iput-object p3, p0, Law3;->r:Lmd0;

    .line 26
    .line 27
    return-void
.end method

.method public static b(Landroid/app/job/JobScheduler;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Lt72;->g()Lt72;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "Exception while trying to cancel job (%d)"

    .line 23
    .line 24
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v1, Law3;->s:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1, p0}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    sget-object v0, Lxu1;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    sget-object v1, Lxu1;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lt72;->g()Lt72;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "getAllPendingJobs() is not reliable on this device."

    .line 23
    .line 24
    invoke-virtual {v2, v1, v3, p1}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v0

    .line 28
    :goto_0
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroid/content/ComponentName;

    .line 41
    .line 42
    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 43
    .line 44
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/app/job/JobInfo;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    return-object v0
.end method

.method public static f(Landroid/app/job/JobInfo;)Lbg4;
    .locals 3

    .line 1
    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v2, Lbg4;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v2, p0, v1}, Lbg4;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Law3;->n:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Law3;->o:Landroid/app/job/JobScheduler;

    .line 4
    .line 5
    invoke-static {v0, v1}, Law3;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    move v5, v2

    .line 25
    :cond_1
    :goto_0
    if-ge v5, v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    check-cast v6, Landroid/app/job/JobInfo;

    .line 34
    .line 35
    invoke-static {v6}, Law3;->f(Landroid/app/job/JobInfo;)Lbg4;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    iget-object v7, v7, Lbg4;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object v0, v3

    .line 62
    :goto_1
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    move v4, v2

    .line 75
    :goto_2
    if-ge v4, v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    check-cast v5, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {v1, v5}, Law3;->b(Landroid/app/job/JobScheduler;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget-object p0, p0, Law3;->q:Landroidx/work/impl/WorkDatabase;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->t()Lxv3;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lxv3;->a:Lga3;

    .line 106
    .line 107
    new-instance v0, Lao0;

    .line 108
    .line 109
    const/16 v1, 0xb

    .line 110
    .line 111
    invoke-direct {v0, p1, v1}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    const/4 p1, 0x1

    .line 115
    invoke-static {p0, v2, p1, v0}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_4
    return-void
.end method

.method public final varargs c([Log4;)V
    .locals 14

    .line 1
    iget-object v0, p0, Law3;->r:Lmd0;

    .line 2
    .line 3
    new-instance v1, Ldh1;

    .line 4
    .line 5
    iget-object v2, p0, Law3;->q:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Ldh1;->n:Ljava/lang/Object;

    .line 14
    .line 15
    array-length v3, p1

    .line 16
    const/4 v4, 0x0

    .line 17
    move v5, v4

    .line 18
    :goto_0
    if-ge v5, v3, :cond_4

    .line 19
    .line 20
    aget-object v6, p1, v5

    .line 21
    .line 22
    invoke-virtual {v2}, Lga3;->b()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    iget-object v8, v6, Log4;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v7, v8}, Lqg4;->c(Ljava/lang/String;)Log4;

    .line 32
    .line 33
    .line 34
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string v9, "Skipping scheduling "

    .line 36
    .line 37
    sget-object v10, Law3;->s:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v7, :cond_0

    .line 40
    .line 41
    :try_start_1
    invoke-static {}, Lt72;->g()Lt72;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v8, " because it\'s no longer in the DB"

    .line 57
    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v10, v7}, Lt72;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lga3;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {v2}, Lga3;->l()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_0
    :try_start_2
    iget-object v7, v7, Log4;->b:Lcg4;

    .line 80
    .line 81
    sget-object v11, Lcg4;->n:Lcg4;

    .line 82
    .line 83
    if-eq v7, v11, :cond_1

    .line 84
    .line 85
    invoke-static {}, Lt72;->g()Lt72;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v8, " because it is no longer enqueued"

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v6, v10, v7}, Lt72;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lga3;->p()V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    invoke-static {v6}, Lrg4;->a(Log4;)Lbg4;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    iget v8, v7, Lbg4;->b:I

    .line 121
    .line 122
    iget-object v7, v7, Lbg4;->a:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->t()Lxv3;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object v9, v9, Lxv3;->a:Lga3;

    .line 135
    .line 136
    new-instance v10, Lwv3;

    .line 137
    .line 138
    invoke-direct {v10, v8, v7, v4}, Lwv3;-><init>(ILjava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    const/4 v11, 0x1

    .line 142
    invoke-static {v9, v11, v4, v10}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    check-cast v9, Lvv3;

    .line 147
    .line 148
    if-eqz v9, :cond_2

    .line 149
    .line 150
    iget v10, v9, Lvv3;->c:I

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    iget v10, v0, Lmd0;->i:I

    .line 157
    .line 158
    iget-object v12, v1, Ldh1;->n:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v12, Landroidx/work/impl/WorkDatabase;

    .line 161
    .line 162
    new-instance v13, Lrn1;

    .line 163
    .line 164
    invoke-direct {v13, v1, v10}, Lrn1;-><init>(Ldh1;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v12, v13}, Lga3;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    check-cast v10, Ljava/lang/Number;

    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    :goto_2
    if-nez v9, :cond_3

    .line 181
    .line 182
    new-instance v9, Lvv3;

    .line 183
    .line 184
    invoke-direct {v9, v8, v7, v10}, Lvv3;-><init>(ILjava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->t()Lxv3;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    iget-object v8, v7, Lxv3;->a:Lga3;

    .line 195
    .line 196
    new-instance v12, Lm;

    .line 197
    .line 198
    const/16 v13, 0x1b

    .line 199
    .line 200
    invoke-direct {v12, v13, v7, v9}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v8, v4, v11, v12}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    :cond_3
    invoke-virtual {p0, v6, v10}, Law3;->g(Log4;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Lga3;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :goto_4
    invoke-virtual {v2}, Lga3;->l()V

    .line 219
    .line 220
    .line 221
    throw p0

    .line 222
    :cond_4
    return-void
.end method

.method public final e()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final g(Log4;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    iget-object v3, v1, Law3;->p:Lzv3;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v4, v2, Log4;->j:Llf0;

    .line 13
    .line 14
    new-instance v5, Landroid/os/PersistableBundle;

    .line 15
    .line 16
    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v6, v2, Log4;->a:Ljava/lang/String;

    .line 20
    .line 21
    const-string v7, "EXTRA_WORK_SPEC_ID"

    .line 22
    .line 23
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v7, "EXTRA_WORK_SPEC_GENERATION"

    .line 27
    .line 28
    iget v8, v2, Log4;->t:I

    .line 29
    .line 30
    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string v7, "EXTRA_IS_PERIODIC"

    .line 34
    .line 35
    invoke-virtual {v2}, Log4;->c()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    new-instance v7, Landroid/app/job/JobInfo$Builder;

    .line 43
    .line 44
    iget-object v8, v3, Lzv3;->a:Landroid/content/ComponentName;

    .line 45
    .line 46
    invoke-direct {v7, v0, v8}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v8, v4, Llf0;->c:Z

    .line 50
    .line 51
    iget-object v9, v4, Llf0;->i:Ljava/util/Set;

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    iget-boolean v8, v4, Llf0;->d:Z

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4}, Llf0;->a()Landroid/net/NetworkRequest;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v11, 0x1a

    .line 74
    .line 75
    const/4 v13, 0x1

    .line 76
    const/16 v14, 0x1c

    .line 77
    .line 78
    if-lt v10, v14, :cond_0

    .line 79
    .line 80
    if-eqz v7, :cond_0

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {v5, v7}, Lfx2;->y(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_0
    iget-object v7, v4, Llf0;->a:Lzl2;

    .line 90
    .line 91
    const/16 v15, 0x1e

    .line 92
    .line 93
    if-lt v10, v15, :cond_1

    .line 94
    .line 95
    sget-object v15, Lzl2;->s:Lzl2;

    .line 96
    .line 97
    if-ne v7, v15, :cond_1

    .line 98
    .line 99
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    .line 100
    .line 101
    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 102
    .line 103
    .line 104
    const/16 v15, 0x19

    .line 105
    .line 106
    invoke-virtual {v7, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-static {v5, v7}, Lfx2;->n(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    if-eqz v15, :cond_5

    .line 123
    .line 124
    if-eq v15, v13, :cond_4

    .line 125
    .line 126
    const/4 v13, 0x2

    .line 127
    if-eq v15, v13, :cond_6

    .line 128
    .line 129
    const/4 v13, 0x3

    .line 130
    if-eq v15, v13, :cond_6

    .line 131
    .line 132
    const/4 v13, 0x4

    .line 133
    if-eq v15, v13, :cond_2

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    if-lt v10, v11, :cond_3

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    :goto_0
    invoke-static {}, Lt72;->g()Lt72;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    sget-object v15, Lzv3;->d:Ljava/lang/String;

    .line 144
    .line 145
    new-instance v11, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v12, "API version too low. Cannot convert network type value "

    .line 148
    .line 149
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v13, v15, v7}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_4
    const/4 v13, 0x1

    .line 163
    goto :goto_1

    .line 164
    :cond_5
    const/4 v13, 0x0

    .line 165
    :cond_6
    :goto_1
    invoke-virtual {v5, v13}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 166
    .line 167
    .line 168
    :goto_2
    if-nez v8, :cond_8

    .line 169
    .line 170
    iget-object v7, v2, Log4;->l:Ljq;

    .line 171
    .line 172
    sget-object v8, Ljq;->o:Ljq;

    .line 173
    .line 174
    if-ne v7, v8, :cond_7

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    goto :goto_3

    .line 178
    :cond_7
    const/4 v7, 0x1

    .line 179
    :goto_3
    iget-wide v11, v2, Log4;->m:J

    .line 180
    .line 181
    invoke-virtual {v5, v11, v12, v7}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 182
    .line 183
    .line 184
    :cond_8
    invoke-virtual {v2}, Log4;->a()J

    .line 185
    .line 186
    .line 187
    move-result-wide v7

    .line 188
    iget-object v11, v3, Lzv3;->b:Lpr3;

    .line 189
    .line 190
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v11

    .line 197
    sub-long/2addr v7, v11

    .line 198
    const-wide/16 v11, 0x0

    .line 199
    .line 200
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 201
    .line 202
    .line 203
    move-result-wide v7

    .line 204
    if-gt v10, v14, :cond_9

    .line 205
    .line 206
    invoke-virtual {v5, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_9
    cmp-long v10, v7, v11

    .line 211
    .line 212
    if-lez v10, :cond_a

    .line 213
    .line 214
    invoke-virtual {v5, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_a
    iget-boolean v10, v2, Log4;->q:Z

    .line 219
    .line 220
    if-nez v10, :cond_b

    .line 221
    .line 222
    iget-boolean v3, v3, Lzv3;->c:Z

    .line 223
    .line 224
    if-eqz v3, :cond_b

    .line 225
    .line 226
    invoke-static {v5}, Lfx2;->m(Landroid/app/job/JobInfo$Builder;)V

    .line 227
    .line 228
    .line 229
    :cond_b
    :goto_4
    move-object v3, v9

    .line 230
    check-cast v3, Ljava/util/Collection;

    .line 231
    .line 232
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_d

    .line 237
    .line 238
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-eqz v9, :cond_c

    .line 247
    .line 248
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    check-cast v9, Lkf0;

    .line 253
    .line 254
    iget-boolean v10, v9, Lkf0;->b:Z

    .line 255
    .line 256
    new-instance v13, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 257
    .line 258
    iget-object v9, v9, Lkf0;->a:Landroid/net/Uri;

    .line 259
    .line 260
    invoke-direct {v13, v9, v10}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v13}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_c
    iget-wide v9, v4, Llf0;->g:J

    .line 268
    .line 269
    invoke-virtual {v5, v9, v10}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 270
    .line 271
    .line 272
    iget-wide v9, v4, Llf0;->h:J

    .line 273
    .line 274
    invoke-virtual {v5, v9, v10}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 275
    .line 276
    .line 277
    :cond_d
    const/4 v3, 0x0

    .line 278
    invoke-virtual {v5, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 279
    .line 280
    .line 281
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 282
    .line 283
    const/16 v9, 0x1a

    .line 284
    .line 285
    if-lt v3, v9, :cond_e

    .line 286
    .line 287
    iget-boolean v9, v4, Llf0;->e:Z

    .line 288
    .line 289
    invoke-static {v5, v9}, Lpu1;->t(Landroid/app/job/JobInfo$Builder;Z)V

    .line 290
    .line 291
    .line 292
    iget-boolean v4, v4, Llf0;->f:Z

    .line 293
    .line 294
    invoke-static {v5, v4}, Lpu1;->C(Landroid/app/job/JobInfo$Builder;Z)V

    .line 295
    .line 296
    .line 297
    :cond_e
    iget v4, v2, Log4;->k:I

    .line 298
    .line 299
    if-lez v4, :cond_f

    .line 300
    .line 301
    const/4 v4, 0x1

    .line 302
    goto :goto_6

    .line 303
    :cond_f
    const/4 v4, 0x0

    .line 304
    :goto_6
    cmp-long v7, v7, v11

    .line 305
    .line 306
    if-lez v7, :cond_10

    .line 307
    .line 308
    const/4 v7, 0x1

    .line 309
    goto :goto_7

    .line 310
    :cond_10
    const/4 v7, 0x0

    .line 311
    :goto_7
    const/16 v8, 0x1f

    .line 312
    .line 313
    if-lt v3, v8, :cond_11

    .line 314
    .line 315
    iget-boolean v9, v2, Log4;->q:Z

    .line 316
    .line 317
    if-eqz v9, :cond_11

    .line 318
    .line 319
    if-nez v4, :cond_11

    .line 320
    .line 321
    if-nez v7, :cond_11

    .line 322
    .line 323
    invoke-static {v5}, Lyv3;->i(Landroid/app/job/JobInfo$Builder;)V

    .line 324
    .line 325
    .line 326
    :cond_11
    const/16 v4, 0x23

    .line 327
    .line 328
    if-lt v3, v4, :cond_12

    .line 329
    .line 330
    iget-object v3, v2, Log4;->x:Ljava/lang/String;

    .line 331
    .line 332
    if-eqz v3, :cond_12

    .line 333
    .line 334
    invoke-static {v5, v3}, Lav2;->c(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_12
    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {}, Lt72;->g()Lt72;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v7, "Scheduling work ID "

    .line 348
    .line 349
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v7, "Job ID "

    .line 356
    .line 357
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    sget-object v7, Law3;->s:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v4, v7, v5}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :try_start_0
    iget-object v4, v1, Law3;->o:Landroid/app/job/JobScheduler;

    .line 373
    .line 374
    invoke-virtual {v4, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-nez v3, :cond_13

    .line 379
    .line 380
    invoke-static {}, Lt72;->g()Lt72;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v5, "Unable to schedule work ID "

    .line 390
    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v3, v7, v4}, Lt72;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    iget-boolean v3, v2, Log4;->q:Z

    .line 405
    .line 406
    if-eqz v3, :cond_13

    .line 407
    .line 408
    iget-object v3, v2, Log4;->r:Ljr2;

    .line 409
    .line 410
    sget-object v4, Ljr2;->n:Ljr2;

    .line 411
    .line 412
    if-ne v3, v4, :cond_13

    .line 413
    .line 414
    const/4 v3, 0x0

    .line 415
    iput-boolean v3, v2, Log4;->q:Z

    .line 416
    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    const-string v4, "Scheduling a non-expedited job (work ID "

    .line 423
    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v4, ")"

    .line 431
    .line 432
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-static {}, Lt72;->g()Lt72;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-virtual {v4, v7, v3}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual/range {p0 .. p2}, Law3;->g(Log4;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :catchall_0
    move-exception v0

    .line 451
    goto :goto_8

    .line 452
    :catch_0
    move-exception v0

    .line 453
    move-object v2, v0

    .line 454
    goto :goto_9

    .line 455
    :cond_13
    return-void

    .line 456
    :goto_8
    invoke-static {}, Lt72;->g()Lt72;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v4, "Unable to schedule "

    .line 463
    .line 464
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v1, v7, v2, v0}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :goto_9
    sget-object v0, Lxu1;->a:Ljava/lang/String;

    .line 479
    .line 480
    iget-object v3, v1, Law3;->n:Landroid/content/Context;

    .line 481
    .line 482
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    iget-object v0, v1, Law3;->q:Landroidx/work/impl/WorkDatabase;

    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    iget-object v1, v1, Law3;->r:Lmd0;

    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 496
    .line 497
    if-lt v4, v8, :cond_14

    .line 498
    .line 499
    const/16 v5, 0x96

    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_14
    const/16 v5, 0x64

    .line 503
    .line 504
    :goto_a
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    iget-object v0, v0, Lqg4;->a:Lga3;

    .line 509
    .line 510
    new-instance v6, Lba4;

    .line 511
    .line 512
    const/16 v8, 0xd

    .line 513
    .line 514
    invoke-direct {v6, v8}, Lba4;-><init>(I)V

    .line 515
    .line 516
    .line 517
    const/4 v8, 0x0

    .line 518
    const/4 v9, 0x1

    .line 519
    invoke-static {v0, v9, v8, v6}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Ljava/util/List;

    .line 524
    .line 525
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    const/16 v0, 0x22

    .line 530
    .line 531
    const-string v9, "<faulty JobScheduler failed to getPendingJobs>"

    .line 532
    .line 533
    if-lt v4, v0, :cond_19

    .line 534
    .line 535
    invoke-static {v3}, Lxu1;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    const/4 v10, 0x0

    .line 540
    :try_start_1
    invoke-virtual {v4}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 545
    .line 546
    .line 547
    goto :goto_b

    .line 548
    :catchall_1
    move-exception v0

    .line 549
    sget-object v11, Lxu1;->a:Ljava/lang/String;

    .line 550
    .line 551
    invoke-static {}, Lt72;->g()Lt72;

    .line 552
    .line 553
    .line 554
    move-result-object v12

    .line 555
    const-string v13, "getAllPendingJobs() is not reliable on this device."

    .line 556
    .line 557
    invoke-virtual {v12, v11, v13, v0}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    .line 559
    .line 560
    move-object v0, v10

    .line 561
    :goto_b
    if-eqz v0, :cond_1b

    .line 562
    .line 563
    invoke-static {v3, v4}, Law3;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    if-eqz v4, :cond_15

    .line 568
    .line 569
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 570
    .line 571
    .line 572
    move-result v9

    .line 573
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    sub-int v4, v9, v4

    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_15
    move v4, v8

    .line 581
    :goto_c
    if-nez v4, :cond_16

    .line 582
    .line 583
    move-object v4, v10

    .line 584
    goto :goto_d

    .line 585
    :cond_16
    new-instance v9, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v4, " of which are not owned by WorkManager"

    .line 594
    .line 595
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    :goto_d
    const-string v9, "jobscheduler"

    .line 603
    .line 604
    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v9

    .line 608
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    check-cast v9, Landroid/app/job/JobScheduler;

    .line 612
    .line 613
    invoke-static {v3, v9}, Law3;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    if-eqz v3, :cond_17

    .line 618
    .line 619
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 620
    .line 621
    .line 622
    move-result v12

    .line 623
    goto :goto_e

    .line 624
    :cond_17
    move v12, v8

    .line 625
    :goto_e
    if-nez v12, :cond_18

    .line 626
    .line 627
    goto :goto_f

    .line 628
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v8, " from WorkManager in the default namespace"

    .line 637
    .line 638
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v10

    .line 645
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .line 649
    .line 650
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string v0, " jobs in \"androidx.work.systemjobscheduler\" namespace"

    .line 658
    .line 659
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    filled-new-array {v0, v4, v10}, [Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-static {v0}, Lji;->X([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 671
    .line 672
    .line 673
    move-result-object v8

    .line 674
    const/4 v12, 0x0

    .line 675
    const/16 v13, 0x3e

    .line 676
    .line 677
    const-string v9, ",\n"

    .line 678
    .line 679
    const/4 v10, 0x0

    .line 680
    const/4 v11, 0x0

    .line 681
    invoke-static/range {v8 .. v13}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v9

    .line 685
    goto :goto_10

    .line 686
    :cond_19
    invoke-static {v3}, Lxu1;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-static {v3, v0}, Law3;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    if-nez v0, :cond_1a

    .line 695
    .line 696
    goto :goto_10

    .line 697
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 698
    .line 699
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    const-string v0, " jobs from WorkManager"

    .line 710
    .line 711
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v9

    .line 718
    :cond_1b
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    const-string v3, "JobScheduler "

    .line 721
    .line 722
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const-string v3, " job limit exceeded.\nIn JobScheduler there are "

    .line 729
    .line 730
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    const-string v3, ".\nThere are "

    .line 737
    .line 738
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    const-string v3, " jobs tracked by WorkManager\'s database;\nthe Configuration limit is "

    .line 745
    .line 746
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    iget v1, v1, Lmd0;->k:I

    .line 750
    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    const/16 v1, 0x2e

    .line 755
    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-static {}, Lt72;->g()Lt72;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v1, v7, v0}, Lt72;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 771
    .line 772
    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 773
    .line 774
    .line 775
    throw v1
.end method
