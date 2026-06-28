.class public final Ld5;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:Ls33;

.field public final synthetic d:Landroid/widget/FrameLayout;

.field public final synthetic e:Le4;

.field public final synthetic f:Ly3;

.field public final synthetic g:Lqi0;

.field public final synthetic h:Le4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/webkit/WebView;Ls33;Landroid/widget/FrameLayout;Le4;Ly3;Lqi0;Le4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld5;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Ld5;->b:Landroid/webkit/WebView;

    .line 4
    .line 5
    iput-object p3, p0, Ld5;->c:Ls33;

    .line 6
    .line 7
    iput-object p4, p0, Ld5;->d:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    iput-object p5, p0, Ld5;->e:Le4;

    .line 10
    .line 11
    iput-object p6, p0, Ld5;->f:Ly3;

    .line 12
    .line 13
    iput-object p7, p0, Ld5;->g:Lqi0;

    .line 14
    .line 15
    iput-object p8, p0, Ld5;->h:Le4;

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Ld5;->b:Landroid/webkit/WebView;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    sget-object v3, Lez3;->a:Lra3;

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    new-array v4, v11, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Ld5;->d:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Ld5;->e:Le4;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Le4;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const-string v3, "accounts.google.com"

    .line 51
    .line 52
    invoke-static {v1, v3, v11}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ne v3, p1, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const-string v3, "oauth"

    .line 62
    .line 63
    invoke-static {v1, v3, v11}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v1, p1, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    move p1, v11

    .line 71
    :goto_1
    iget-object v4, p0, Ld5;->c:Ls33;

    .line 72
    .line 73
    iget-boolean v1, v4, Ls33;->n:Z

    .line 74
    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    iget-object v1, p0, Ld5;->f:Ly3;

    .line 78
    .line 79
    iget-object v1, v1, Ly3;->a:Ly84;

    .line 80
    .line 81
    sget-object v3, Ly84;->r:Ly84;

    .line 82
    .line 83
    if-ne v1, v3, :cond_5

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    new-array p1, v11, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lzu0;->a:Lzp0;

    .line 93
    .line 94
    sget-object p1, Ln92;->a:Lxi1;

    .line 95
    .line 96
    new-instance v1, Lb5;

    .line 97
    .line 98
    iget-object v9, p0, Ld5;->h:Le4;

    .line 99
    .line 100
    invoke-direct {v1, v9, v0, v11}, Lb5;-><init>(Le4;Ldh0;I)V

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x2

    .line 104
    iget-object v12, p0, Ld5;->g:Lqi0;

    .line 105
    .line 106
    invoke-static {v12, p1, v0, v1, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 107
    .line 108
    .line 109
    new-instance v3, Lc5;

    .line 110
    .line 111
    iget-object v8, p0, Ld5;->b:Landroid/webkit/WebView;

    .line 112
    .line 113
    const/4 v10, 0x0

    .line 114
    iget-object v5, p0, Ld5;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct/range {v3 .. v10}, Lc5;-><init>(Ls33;Ljava/lang/String;JLandroid/webkit/WebView;Le4;Ldh0;)V

    .line 117
    .line 118
    .line 119
    const/4 p0, 0x3

    .line 120
    invoke-static {v12, v0, v0, v3, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 121
    .line 122
    .line 123
    :cond_5
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    :cond_6
    new-array p0, v11, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, p0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v1, p0

    .line 22
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " (line "

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ")"

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_2
    if-nez p0, :cond_3

    .line 50
    .line 51
    const/4 p0, -0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    sget-object p1, La5;->a:[I

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    aget p0, p1, p0

    .line 60
    .line 61
    :goto_2
    const/4 p1, 0x1

    .line 62
    const/4 v0, 0x0

    .line 63
    if-eq p0, p1, :cond_5

    .line 64
    .line 65
    const/4 v1, 0x2

    .line 66
    if-eq p0, v1, :cond_4

    .line 67
    .line 68
    sget-object p0, Lez3;->a:Lra3;

    .line 69
    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return p1

    .line 79
    :cond_4
    sget-object p0, Lez3;->a:Lra3;

    .line 80
    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lra3;->m([Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return p1

    .line 90
    :cond_5
    sget-object p0, Lez3;->a:Lra3;

    .line 91
    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lra3;->f([Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return p1
.end method
