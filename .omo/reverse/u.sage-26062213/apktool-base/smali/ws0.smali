.class public final synthetic Lws0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lws0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lws0;->o:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lws0;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lws0;->o:Landroid/content/Context;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1a

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-ge v0, v2, :cond_0

    .line 19
    .line 20
    move v0, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ldd4;->d(Landroid/appwidget/AppWidgetManager;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lez3;->a:Lra3;

    .line 33
    .line 34
    new-array v2, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lra3;->m([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Landroid/content/ComponentName;

    .line 48
    .line 49
    const-class v4, Lu/sage/widget/UsageWidgetProvider;

    .line 50
    .line 51
    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Landroid/content/Intent;

    .line 55
    .line 56
    const-class v5, Lu/sage/widget/UsageWidgetConfigActivity;

    .line 57
    .line 58
    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    const/high16 v5, 0x10000000

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const/high16 v5, 0xa000000

    .line 67
    .line 68
    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :try_start_0
    invoke-static {v0, v2, v4}, Ldd4;->e(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    sget-object v2, Lez3;->a:Lra3;

    .line 77
    .line 78
    new-array v4, v3, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    move v3, v0

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    sget-object v0, Lez3;->a:Lra3;

    .line 89
    .line 90
    new-array v2, v3, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Lra3;->g([Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    if-nez v3, :cond_2

    .line 99
    .line 100
    const v0, 0x7f1003b7

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/4 v2, 0x1

    .line 108
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-object v1

    .line 116
    :pswitch_0
    invoke-static {p0}, Lis0;->w(Landroid/content/Context;)Lxi2;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :pswitch_1
    const-string v0, "firebaseSessions/sessionDataStore.data"

    .line 122
    .line 123
    invoke-static {p0, v0}, Lon4;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Lmj1;->s(Ljava/io/File;)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_2
    const-string v0, "firebaseSessions/sessionConfigsDataStore.data"

    .line 132
    .line 133
    invoke-static {p0, v0}, Lon4;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Lmj1;->s(Ljava/io/File;)V

    .line 138
    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_3
    const-class v0, Lu/sage/CopilotUsageService;

    .line 142
    .line 143
    invoke-static {p0, v0}, Lon4;->i(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .line 145
    .line 146
    return-object v1

    .line 147
    :pswitch_4
    const-class v0, Lu/sage/ClaudeUsageService;

    .line 148
    .line 149
    invoke-static {p0, v0}, Lon4;->i(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .line 151
    .line 152
    return-object v1

    .line 153
    :pswitch_5
    const-wide/16 v2, 0x3c

    .line 154
    .line 155
    invoke-static {v2, v3, p0}, Lon4;->g(JLandroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    return-object v1

    .line 159
    :pswitch_6
    const-wide/16 v2, 0xa

    .line 160
    .line 161
    invoke-static {v2, v3, p0}, Lon4;->g(JLandroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    return-object v1

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
