.class public final Laa;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Laa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laa;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Laa;->a:Laa;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lz9;->v(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p0, Ly9;->a:Ly9;

    .line 2
    .line 3
    invoke-static {}, Ldi0;->n()Landroid/view/translation/ViewTranslationCallback;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Lz9;->w(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
