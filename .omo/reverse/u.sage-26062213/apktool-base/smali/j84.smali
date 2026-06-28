.class public final Lj84;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Lu33;

.field public final synthetic b:Ln84;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lo20;

.field public final synthetic f:Lu33;

.field public final synthetic g:Lu33;

.field public final synthetic h:J

.field public final synthetic i:Landroid/webkit/WebView;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lu33;Ln84;Ljava/lang/String;Ljava/lang/String;Lo20;Lu33;Lu33;JJLandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj84;->a:Lu33;

    .line 2
    .line 3
    iput-object p2, p0, Lj84;->b:Ln84;

    .line 4
    .line 5
    iput-object p3, p0, Lj84;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lj84;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lj84;->e:Lo20;

    .line 10
    .line 11
    iput-object p6, p0, Lj84;->f:Lu33;

    .line 12
    .line 13
    iput-object p7, p0, Lj84;->g:Lu33;

    .line 14
    .line 15
    iput-wide p10, p0, Lj84;->h:J

    .line 16
    .line 17
    iput-object p12, p0, Lj84;->i:Landroid/webkit/WebView;

    .line 18
    .line 19
    iput-object p13, p0, Lj84;->j:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 14

    .line 1
    invoke-super/range {p0 .. p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v8

    .line 8
    iget-object v0, p0, Lj84;->a:Lu33;

    .line 9
    .line 10
    iget v1, v0, Lu33;->n:I

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x1

    .line 13
    .line 14
    iput v3, v0, Lu33;->n:I

    .line 15
    .line 16
    sget-object v0, Lez3;->a:Lra3;

    .line 17
    .line 18
    iget-object v7, p0, Lj84;->e:Lo20;

    .line 19
    .line 20
    invoke-virtual {v7}, Lo20;->w()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Li84;

    .line 33
    .line 34
    iget-wide v10, p0, Lj84;->h:J

    .line 35
    .line 36
    iget-object v12, p0, Lj84;->g:Lu33;

    .line 37
    .line 38
    iget-object v1, p0, Lj84;->f:Lu33;

    .line 39
    .line 40
    iget-object v2, p0, Lj84;->b:Ln84;

    .line 41
    .line 42
    iget-object v5, p0, Lj84;->c:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v6, p0, Lj84;->d:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v13, p0, Lj84;->i:Landroid/webkit/WebView;

    .line 47
    .line 48
    move-object/from16 v4, p2

    .line 49
    .line 50
    invoke-direct/range {v0 .. v13}, Li84;-><init>(Lu33;Ln84;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo20;JJLu33;Landroid/webkit/WebView;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lj84;->j:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v13, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
