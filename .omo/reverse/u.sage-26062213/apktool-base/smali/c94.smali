.class public final Lc94;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Intent;

.field public final c:Ljava/lang/String;

.field public d:Ld84;

.field public e:Ly84;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc94;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lc94;->b:Landroid/content/Intent;

    .line 7
    .line 8
    const-string p1, "u.sage.widget.extra.SERVICE_TYPE"

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lc94;->c:Ljava/lang/String;

    .line 15
    .line 16
    const-string p0, "appWidgetId"

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lc94;->d:Ld84;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ld84;->c()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 8

    .line 1
    iget-object v1, p0, Lc94;->e:Ly84;

    .line 2
    .line 3
    const v0, 0x7f0c002c

    .line 4
    .line 5
    .line 6
    move v2, v0

    .line 7
    iget-object v0, p0, Lc94;->a:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance p0, Landroid/widget/RemoteViews;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object v3, p0, Lc94;->d:Ld84;

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    new-instance p0, Landroid/widget/RemoteViews;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-virtual {v3}, Ld84;->c()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {p1, v4}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lp84;

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    new-instance p0, Landroid/widget/RemoteViews;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    const-string v2, "u.sage.widget.extra.WIDGET_HEIGHT"

    .line 58
    .line 59
    iget-object p0, p0, Lc94;->b:Landroid/content/Intent;

    .line 60
    .line 61
    const/high16 v4, -0x40800000    # -1.0f

    .line 62
    .line 63
    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const-string v5, "u.sage.widget.extra.WIDGET_WIDTH"

    .line 68
    .line 69
    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    const/4 v4, 0x0

    .line 74
    cmpl-float v5, v2, v4

    .line 75
    .line 76
    const/16 v6, 0x6e

    .line 77
    .line 78
    if-lez v5, :cond_3

    .line 79
    .line 80
    float-to-int v2, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v2, v6

    .line 83
    :goto_0
    cmpl-float v4, p0, v4

    .line 84
    .line 85
    if-lez v4, :cond_4

    .line 86
    .line 87
    float-to-int v6, p0

    .line 88
    :cond_4
    move v4, v6

    .line 89
    invoke-virtual {v3}, Ld84;->c()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    sget-object p0, Lez3;->a:Lra3;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    new-array v6, v6, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ld84;->b()J

    .line 112
    .line 113
    .line 114
    move-result-wide v6

    .line 115
    move v3, v2

    .line 116
    move-object v2, p1

    .line 117
    invoke-static/range {v0 .. v7}, Lc75;->m(Landroid/content/Context;Ly84;Lp84;IIIJ)Landroid/widget/RemoteViews;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method public final getViewTypeCount()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lc94;->c:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {v1}, Ly84;->valueOf(Ljava/lang/String;)Ly84;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    iput-object v0, p0, Lc94;->e:Ly84;

    .line 11
    .line 12
    return-void
.end method

.method public final onDataSetChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc94;->e:Ly84;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    const-string v1, "u.sage.widget.extra.WIDGET_HEIGHT"

    .line 14
    .line 15
    const/high16 v2, -0x40800000    # -1.0f

    .line 16
    .line 17
    iget-object v3, p0, Lc94;->b:Landroid/content/Intent;

    .line 18
    .line 19
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 20
    .line 21
    .line 22
    sget-object v1, Lez3;->a:Lra3;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lr4;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, p0, v0, v2}, Lr4;-><init>(Lc94;Ly84;Ldh0;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lca;->I(Ldf1;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc94;->d:Ld84;

    .line 3
    .line 4
    return-void
.end method
