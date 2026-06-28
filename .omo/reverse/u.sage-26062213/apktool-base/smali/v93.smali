.class public final Lv93;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Lw33;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lw33;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv93;->a:Lw33;

    .line 2
    .line 3
    iput-object p2, p0, Lv93;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lv93;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lv93;->a:Lw33;

    .line 5
    .line 6
    iget-object p2, p1, Lw33;->n:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Landroid/webkit/WebView;

    .line 9
    .line 10
    new-instance p3, Lu93;

    .line 11
    .line 12
    iget-boolean v0, p0, Lv93;->c:Z

    .line 13
    .line 14
    invoke-direct {p3, v0, p1}, Lu93;-><init>(ZLw33;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lv93;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p2, p0, p3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
