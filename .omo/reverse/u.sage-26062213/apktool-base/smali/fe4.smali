.class public Lfe4;
.super Lee4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final x:Lke4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lmd4;->g()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lke4;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lke4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lfe4;->x:Lke4;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lke4;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lee4;-><init>(Lke4;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lke4;Lfe4;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lee4;-><init>(Lke4;Lee4;)V

    return-void
.end method


# virtual methods
.method public i(I)Lnr1;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd4;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Lje4;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p0, p1}, Lmd4;->u(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lnr1;->c(Landroid/graphics/Insets;)Lnr1;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public j(I)Lnr1;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd4;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Lje4;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p0, p1}, Lmd4;->e(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lnr1;->c(Landroid/graphics/Insets;)Lnr1;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public u(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lzd4;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Lje4;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p0, p1}, Lmd4;->r(Landroid/view/WindowInsets;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
