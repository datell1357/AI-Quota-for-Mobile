.class public final Lkt3;
.super Lub2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final v:Lub2;

.field public final w:Lzb2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lub2;Lzb2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lub2;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lkt3;->v:Lub2;

    .line 5
    .line 6
    iput-object p3, p0, Lkt3;->w:Lzb2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lzb2;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lub2;->d(Lzb2;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e(Lub2;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lub2;->e(Lub2;Landroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lub2;->e(Lub2;Landroid/view/MenuItem;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final f(Lzb2;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lub2;->f(Lzb2;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->w:Lzb2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Lub2;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lub2;->j()Lub2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final l()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lub2;->l()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final m()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lub2;->m()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final n()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lub2;->n()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lub2;->setGroupDividerEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, p1, v1}, Lub2;->q(ILjava/lang/CharSequence;ILandroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p1, v0}, Lub2;->q(ILjava/lang/CharSequence;ILandroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1, v0}, Lub2;->q(ILjava/lang/CharSequence;ILandroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v0, v1}, Lub2;->q(ILjava/lang/CharSequence;ILandroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0, p1}, Lub2;->q(ILjava/lang/CharSequence;ILandroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 7
    iget-object v0, p0, Lkt3;->w:Lzb2;

    invoke-virtual {v0, p1}, Lzb2;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Lkt3;->w:Lzb2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzb2;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkt3;->v:Lub2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lub2;->setQwertyMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
