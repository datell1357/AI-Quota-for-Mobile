.class public final Len2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:I

.field public final i:Z

.field public j:Lxh1;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Landroid/os/Bundle;

.field public o:Ljava/lang/String;

.field public final p:Z

.field public final q:Landroid/app/Notification;

.field public r:Z

.field public final s:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Len2;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Len2;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Len2;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Len2;->i:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Len2;->m:Z

    .line 30
    .line 31
    new-instance v2, Landroid/app/Notification;

    .line 32
    .line 33
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Len2;->q:Landroid/app/Notification;

    .line 37
    .line 38
    iput-object p1, p0, Len2;->a:Landroid/content/Context;

    .line 39
    .line 40
    iput-object p2, p0, Len2;->o:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 50
    .line 51
    iput v1, p0, Len2;->h:I

    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Len2;->s:Ljava/util/ArrayList;

    .line 59
    .line 60
    iput-boolean v0, p0, Len2;->p:Z

    .line 61
    .line 62
    return-void
.end method

.method public static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 6

    .line 1
    new-instance v0, Llb;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Llb;-><init>(Len2;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, v0, Llb;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/app/Notification$Builder;

    .line 9
    .line 10
    iget-object v1, v0, Llb;->p:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Len2;

    .line 13
    .line 14
    iget-object v2, v1, Len2;->j:Lxh1;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    .line 20
    .line 21
    invoke-direct {v4, p0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v5, v2, Lxh1;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Ljava/lang/CharSequence;

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v0, v0, Llb;->n:I

    .line 36
    .line 37
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 v5, 0x1a

    .line 40
    .line 41
    if-lt v4, v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    iget v4, p0, Landroid/app/Notification;->flags:I

    .line 61
    .line 62
    and-int/lit16 v4, v4, 0x200

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    const/4 v4, 0x2

    .line 67
    if-ne v0, v4, :cond_2

    .line 68
    .line 69
    iput-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 70
    .line 71
    iput-object v3, p0, Landroid/app/Notification;->vibrate:[J

    .line 72
    .line 73
    iget v4, p0, Landroid/app/Notification;->defaults:I

    .line 74
    .line 75
    and-int/lit8 v4, v4, -0x4

    .line 76
    .line 77
    iput v4, p0, Landroid/app/Notification;->defaults:I

    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    iget v4, p0, Landroid/app/Notification;->flags:I

    .line 86
    .line 87
    and-int/lit16 v4, v4, 0x200

    .line 88
    .line 89
    if-nez v4, :cond_3

    .line 90
    .line 91
    const/4 v4, 0x1

    .line 92
    if-ne v0, v4, :cond_3

    .line 93
    .line 94
    iput-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 95
    .line 96
    iput-object v3, p0, Landroid/app/Notification;->vibrate:[J

    .line 97
    .line 98
    iget v0, p0, Landroid/app/Notification;->defaults:I

    .line 99
    .line 100
    and-int/lit8 v0, v0, -0x4

    .line 101
    .line 102
    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 103
    .line 104
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 105
    .line 106
    iget-object v0, v1, Len2;->j:Lxh1;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    :cond_4
    if-eqz v2, :cond_5

    .line 112
    .line 113
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    const-string v1, "androidx.core.app.NotificationCompat$BigTextStyle"

    .line 118
    .line 119
    const-string v2, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 120
    .line 121
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    return-object p0
.end method

.method public final c(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Len2;->q:Landroid/app/Notification;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p2, p0, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    or-int/2addr p1, p2

    .line 8
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget p2, p0, Landroid/app/Notification;->flags:I

    .line 12
    .line 13
    not-int p1, p1

    .line 14
    and-int/2addr p1, p2

    .line 15
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 16
    .line 17
    return-void
.end method

.method public final d(Lxh1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Len2;->j:Lxh1;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Len2;->j:Lxh1;

    .line 6
    .line 7
    iget-object v0, p1, Lxh1;->n:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Len2;

    .line 10
    .line 11
    if-eq v0, p0, :cond_0

    .line 12
    .line 13
    iput-object p0, p1, Lxh1;->n:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Len2;->d(Lxh1;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
