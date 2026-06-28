.class public final Lr5;
.super Lcc2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lu5;


# direct methods
.method public constructor <init>(Lu5;Landroid/content/Context;Lkt3;Landroid/view/View;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr5;->l:I

    .line 3
    .line 4
    iput-object p1, p0, Lr5;->m:Lu5;

    .line 5
    .line 6
    const v6, 0x7f040021

    .line 7
    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p4

    .line 15
    invoke-direct/range {v1 .. v7}, Lcc2;-><init>(Landroid/content/Context;Lub2;Landroid/view/View;ZII)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v3, Lkt3;->w:Lzb2;

    .line 19
    .line 20
    iget p0, p0, Lzb2;->x:I

    .line 21
    .line 22
    const/16 p2, 0x20

    .line 23
    .line 24
    and-int/2addr p0, p2

    .line 25
    if-ne p0, p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p1, Lu5;->u:Lt5;

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    iget-object p0, p1, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 33
    .line 34
    :cond_1
    iput-object p0, v1, Lcc2;->e:Landroid/view/View;

    .line 35
    .line 36
    :goto_0
    iget-object p0, p1, Lu5;->I:Ldh1;

    .line 37
    .line 38
    iput-object p0, v1, Lcc2;->h:Lhc2;

    .line 39
    .line 40
    iget-object p1, v1, Lcc2;->i:Lac2;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {p1, p0}, Lic2;->d(Lhc2;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public constructor <init>(Lu5;Landroid/content/Context;Lub2;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lr5;->l:I

    .line 48
    iput-object p1, p0, Lr5;->m:Lu5;

    const v6, 0x7f040021

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 49
    invoke-direct/range {v1 .. v7}, Lcc2;-><init>(Landroid/content/Context;Lub2;Landroid/view/View;ZII)V

    const p0, 0x800005

    .line 50
    iput p0, v1, Lcc2;->f:I

    .line 51
    iget-object p0, p1, Lu5;->I:Ldh1;

    .line 52
    iput-object p0, v1, Lcc2;->h:Lhc2;

    .line 53
    iget-object p1, v1, Lcc2;->i:Lac2;

    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1, p0}, Lic2;->d(Lhc2;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Lr5;->l:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lr5;->m:Lu5;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v2, Lu5;->p:Lub2;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v3}, Lub2;->c(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, v2, Lu5;->E:Lr5;

    .line 18
    .line 19
    invoke-super {p0}, Lcc2;->c()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iput-object v1, v2, Lu5;->F:Lr5;

    .line 24
    .line 25
    invoke-super {p0}, Lcc2;->c()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
