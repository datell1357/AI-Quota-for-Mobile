.class public final Lix3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lq9;)V
    .locals 3

    .line 1
    new-instance p2, Ldh1;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p2, Ldh1;->n:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lje;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-direct {v0, v1, p2}, Lje;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lv12;->o:Lv12;

    .line 15
    .line 16
    invoke-static {p2, v0}, Ldm0;->C(Lv12;Lne1;)Lqz1;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lix3;->a:Landroid/view/View;

    .line 23
    .line 24
    sget-wide v0, Ltx3;->b:J

    .line 25
    .line 26
    new-instance p1, Lff;

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    invoke-direct {p1, v2}, Lff;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lff;->o:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1, v0, v1}, Lbi4;->l(IJ)J

    .line 40
    .line 41
    .line 42
    sget p1, Lxo1;->e:I

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lje;

    .line 50
    .line 51
    const/16 v0, 0xd

    .line 52
    .line 53
    invoke-direct {p1, v0, p0}, Lje;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1}, Ldm0;->C(Lv12;Lne1;)Lqz1;

    .line 57
    .line 58
    .line 59
    new-instance p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 60
    .line 61
    invoke-direct {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance p0, Landroid/graphics/Matrix;

    .line 65
    .line 66
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    .line 68
    .line 69
    return-void
.end method
