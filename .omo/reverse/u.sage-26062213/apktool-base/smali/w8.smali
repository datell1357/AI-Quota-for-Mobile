.class public final Lw8;
.super Lkp;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lx91;


# instance fields
.field public final n:Lxh1;

.field public final o:Ljh3;

.field public final p:Lq9;

.field public final q:Ln33;

.field public final r:Ljava/lang/String;

.field public final s:Landroid/view/autofill/AutofillId;

.field public final t:Luf2;

.field public u:Z


# direct methods
.method public constructor <init>(Lxh1;Ljh3;Lq9;Ln33;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw8;->n:Lxh1;

    .line 5
    .line 6
    iput-object p2, p0, Lw8;->o:Ljh3;

    .line 7
    .line 8
    iput-object p3, p0, Lw8;->p:Lq9;

    .line 9
    .line 10
    iput-object p4, p0, Lw8;->q:Ln33;

    .line 11
    .line 12
    iput-object p5, p0, Lw8;->r:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Ly2;->l(Lq9;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p3}, Lgg4;->C(Landroid/view/View;)Li3;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p1, Li3;->a:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1}, Ly2;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillId;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iput-object p1, p0, Lw8;->s:Landroid/view/autofill/AutofillId;

    .line 39
    .line 40
    new-instance p1, Luf2;

    .line 41
    .line 42
    invoke-direct {p1}, Luf2;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lw8;->t:Luf2;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const-string p0, "Required value was null."

    .line 49
    .line 50
    invoke-static {p0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0
.end method


# virtual methods
.method public final a(Lka1;Lka1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lw8;->p:Lq9;

    .line 2
    .line 3
    iget-object v1, p0, Lw8;->n:Lxh1;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lw80;->R(Ljr0;)Lxy1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lxy1;->x()Lbh3;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {v3}, Lix;->f(Lbh3;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v3, v2, :cond_0

    .line 25
    .line 26
    iget p1, p1, Lxy1;->o:I

    .line 27
    .line 28
    invoke-virtual {v1}, Lxh1;->r()Landroid/view/autofill/AutofillManager;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3, v0, p1}, Lpu1;->w(Landroid/view/autofill/AutofillManager;Lq9;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-static {p2}, Lw80;->R(Ljr0;)Lxy1;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lxy1;->x()Lbh3;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-static {p2}, Lix;->f(Lbh3;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-ne p2, v2, :cond_1

    .line 54
    .line 55
    iget p1, p1, Lxy1;->o:I

    .line 56
    .line 57
    iget-object p0, p0, Lw8;->q:Ln33;

    .line 58
    .line 59
    iget-object p2, p0, Ln33;->a:Lhs1;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lhs1;->b(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lxy1;

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    iget v3, p2, Lxy1;->t:I

    .line 70
    .line 71
    const/4 v4, -0x4

    .line 72
    if-eq v3, v4, :cond_1

    .line 73
    .line 74
    iget-object v3, p0, Ln33;->c:Lhb;

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Ln33;->e(Lxy1;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    iget-object p2, v3, Lhb;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p2, [J

    .line 83
    .line 84
    aget-wide v3, p2, p0

    .line 85
    .line 86
    add-int/2addr p0, v2

    .line 87
    aget-wide v5, p2, p0

    .line 88
    .line 89
    const/16 p0, 0x20

    .line 90
    .line 91
    shr-long v7, v3, p0

    .line 92
    .line 93
    long-to-int p2, v7

    .line 94
    long-to-int v2, v3

    .line 95
    shr-long v3, v5, p0

    .line 96
    .line 97
    long-to-int p0, v3

    .line 98
    long-to-int v3, v5

    .line 99
    new-instance v4, Landroid/graphics/Rect;

    .line 100
    .line 101
    invoke-direct {v4, p2, v2, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lxh1;->r()Landroid/view/autofill/AutofillManager;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0, v0, p1, v4}, Lpu1;->x(Landroid/view/autofill/AutofillManager;Lq9;ILandroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void
.end method
