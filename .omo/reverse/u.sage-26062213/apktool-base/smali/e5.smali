.class public final Le5;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lur3;

.field public final synthetic d:Ly3;

.field public final synthetic e:Landroid/widget/FrameLayout;

.field public final synthetic f:Le4;

.field public final synthetic g:Ls33;

.field public final synthetic h:Lqi0;

.field public final synthetic i:Le4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lur3;Ly3;Landroid/widget/FrameLayout;Le4;Ls33;Lqi0;Le4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Le5;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Le5;->c:Lur3;

    .line 6
    .line 7
    iput-object p4, p0, Le5;->d:Ly3;

    .line 8
    .line 9
    iput-object p5, p0, Le5;->e:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iput-object p6, p0, Le5;->f:Le4;

    .line 12
    .line 13
    iput-object p7, p0, Le5;->g:Ls33;

    .line 14
    .line 15
    iput-object p8, p0, Le5;->h:Lqi0;

    .line 16
    .line 17
    iput-object p9, p0, Le5;->i:Le4;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
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
    sget-object p1, Lz4;->a:[I

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

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object v2, Lez3;->a:Lra3;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    new-array v4, v3, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Landroid/webkit/WebView;

    .line 22
    .line 23
    iget-object v2, v0, Le5;->b:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v5, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    const/16 v11, 0x3c0

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    iget-object v7, v0, Le5;->c:Lur3;

    .line 46
    .line 47
    iget-object v8, v0, Le5;->d:Ly3;

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-static/range {v5 .. v11}, Lix;->m(Landroid/webkit/WebView;Lsc4;Lur3;Ly3;Lsc4;Lt3;I)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v18, v8

    .line 54
    .line 55
    new-instance v12, Ld5;

    .line 56
    .line 57
    iget-object v2, v0, Le5;->h:Lqi0;

    .line 58
    .line 59
    iget-object v4, v0, Le5;->i:Le4;

    .line 60
    .line 61
    iget-object v13, v0, Le5;->a:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v15, v0, Le5;->g:Ls33;

    .line 64
    .line 65
    iget-object v6, v0, Le5;->e:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    iget-object v0, v0, Le5;->f:Le4;

    .line 68
    .line 69
    move-object/from16 v14, p1

    .line 70
    .line 71
    move-object/from16 v17, v0

    .line 72
    .line 73
    move-object/from16 v19, v2

    .line 74
    .line 75
    move-object/from16 v20, v4

    .line 76
    .line 77
    move-object/from16 v16, v6

    .line 78
    .line 79
    invoke-direct/range {v12 .. v20}, Ld5;-><init>(Ljava/lang/String;Landroid/webkit/WebView;Ls33;Landroid/widget/FrameLayout;Le4;Ly3;Lqi0;Le4;)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v2, v16

    .line 83
    .line 84
    invoke-virtual {v5, v12}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5}, Le4;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move-object v2, v0

    .line 100
    :goto_0
    instance-of v4, v2, Landroid/webkit/WebView$WebViewTransport;

    .line 101
    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    move-object v0, v2

    .line 105
    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 106
    .line 107
    :cond_3
    if-nez v0, :cond_4

    .line 108
    .line 109
    return v3

    .line 110
    :cond_4
    invoke-virtual {v0, v5}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    return v0
.end method
