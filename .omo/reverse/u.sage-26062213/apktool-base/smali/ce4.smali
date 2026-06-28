.class public Lce4;
.super Lbe4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public t:Lnr1;

.field public u:Lnr1;

.field public v:Lnr1;


# direct methods
.method public constructor <init>(Lke4;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lbe4;-><init>(Lke4;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lce4;->t:Lnr1;

    .line 6
    .line 7
    iput-object p1, p0, Lce4;->u:Lnr1;

    .line 8
    .line 9
    iput-object p1, p0, Lce4;->v:Lnr1;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lke4;Lce4;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lbe4;-><init>(Lke4;Lbe4;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lce4;->t:Lnr1;

    .line 14
    iput-object p1, p0, Lce4;->u:Lnr1;

    .line 15
    iput-object p1, p0, Lce4;->v:Lnr1;

    return-void
.end method


# virtual methods
.method public k()Lnr1;
    .locals 1

    .line 1
    iget-object v0, p0, Lce4;->u:Lnr1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lzd4;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lr44;->p(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lnr1;->c(Landroid/graphics/Insets;)Lnr1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lce4;->u:Lnr1;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lce4;->u:Lnr1;

    .line 18
    .line 19
    return-object p0
.end method

.method public m()Lnr1;
    .locals 1

    .line 1
    iget-object v0, p0, Lce4;->t:Lnr1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lzd4;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lr44;->r(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lnr1;->c(Landroid/graphics/Insets;)Lnr1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lce4;->t:Lnr1;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lce4;->t:Lnr1;

    .line 18
    .line 19
    return-object p0
.end method

.method public o()Lnr1;
    .locals 1

    .line 1
    iget-object v0, p0, Lce4;->v:Lnr1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lzd4;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lr44;->b(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lnr1;->c(Landroid/graphics/Insets;)Lnr1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lce4;->v:Lnr1;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lce4;->v:Lnr1;

    .line 18
    .line 19
    return-object p0
.end method

.method public r(IIII)Lke4;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd4;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lr44;->i(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-static {p1, p0}, Lke4;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lke4;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public z(Lnr1;)V
    .locals 0

    .line 1
    return-void
.end method
