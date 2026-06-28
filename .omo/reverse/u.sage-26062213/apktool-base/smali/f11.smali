.class public final Lf11;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lo11;

.field public final synthetic q:Ly31;

.field public final synthetic r:Lzl3;


# direct methods
.method public synthetic constructor <init>(Lo11;Ly31;Lzl3;I)V
    .locals 0

    .line 1
    iput p4, p0, Lf11;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Lf11;->p:Lo11;

    .line 4
    .line 5
    iput-object p2, p0, Lf11;->q:Ly31;

    .line 6
    .line 7
    iput-object p3, p0, Lf11;->r:Lzl3;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lf11;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lf11;->r:Lzl3;

    .line 5
    .line 6
    iget-object v3, p0, Lf11;->q:Ly31;

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Lb11;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    if-eq p0, v5, :cond_1

    .line 24
    .line 25
    if-ne p0, v4, :cond_0

    .line 26
    .line 27
    iget-object p0, v3, Ly31;->a:Lo14;

    .line 28
    .line 29
    iget v6, v2, Lzl3;->g:F

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_1
    return-object v1

    .line 41
    :pswitch_0
    check-cast p1, Lb11;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    if-eq p1, v5, :cond_5

    .line 51
    .line 52
    if-ne p1, v4, :cond_3

    .line 53
    .line 54
    iget-object p0, v3, Ly31;->a:Lo14;

    .line 55
    .line 56
    iget-object p0, p0, Lo14;->a:Lk41;

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    :goto_2
    move v6, v0

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    iget v6, v2, Lzl3;->f:F

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-static {}, Lp61;->x()V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    iget-object p0, p0, Lf11;->p:Lo11;

    .line 70
    .line 71
    iget-object p0, p0, Lo11;->a:Lo14;

    .line 72
    .line 73
    iget-object p0, p0, Lo14;->a:Lk41;

    .line 74
    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    :goto_3
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_4
    return-object v1

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
