.class public final synthetic Lm04;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Ldv2;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Ldv2;

.field public final synthetic r:Ldv2;

.field public final synthetic s:J

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Ldv2;IILdv2;Ldv2;JILn04;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm04;->n:Ldv2;

    .line 5
    .line 6
    iput p2, p0, Lm04;->o:I

    .line 7
    .line 8
    iput p3, p0, Lm04;->p:I

    .line 9
    .line 10
    iput-object p4, p0, Lm04;->q:Ldv2;

    .line 11
    .line 12
    iput-object p5, p0, Lm04;->r:Ldv2;

    .line 13
    .line 14
    iput-wide p6, p0, Lm04;->s:J

    .line 15
    .line 16
    iput p8, p0, Lm04;->t:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lcv2;

    .line 2
    .line 3
    iget-object v0, p0, Lm04;->n:Ldv2;

    .line 4
    .line 5
    iget v1, v0, Ldv2;->o:I

    .line 6
    .line 7
    iget v2, p0, Lm04;->p:I

    .line 8
    .line 9
    sub-int v1, v2, v1

    .line 10
    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    iget v3, p0, Lm04;->o:I

    .line 14
    .line 15
    invoke-static {p1, v0, v3, v1}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 16
    .line 17
    .line 18
    sget v1, Leg;->c:F

    .line 19
    .line 20
    invoke-interface {p1, v1}, Las0;->N(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v0, v0, Ldv2;->n:I

    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lm04;->r:Ldv2;

    .line 31
    .line 32
    iget v4, v1, Ldv2;->n:I

    .line 33
    .line 34
    iget-object v5, p0, Lm04;->q:Ldv2;

    .line 35
    .line 36
    iget v6, v5, Ldv2;->n:I

    .line 37
    .line 38
    iget-wide v7, p0, Lm04;->s:J

    .line 39
    .line 40
    invoke-static {v7, v8}, Lmf0;->h(J)I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    sub-int/2addr v9, v6

    .line 45
    int-to-float v6, v9

    .line 46
    const/high16 v9, 0x40000000    # 2.0f

    .line 47
    .line 48
    div-float/2addr v6, v9

    .line 49
    const/high16 v9, -0x40800000    # -1.0f

    .line 50
    .line 51
    const/high16 v10, 0x3f800000    # 1.0f

    .line 52
    .line 53
    add-float/2addr v10, v9

    .line 54
    mul-float/2addr v10, v6

    .line 55
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-ge v6, v0, :cond_0

    .line 60
    .line 61
    sub-int/2addr v0, v6

    .line 62
    :goto_0
    add-int/2addr v0, v3

    .line 63
    add-int/2addr v6, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget v0, v5, Ldv2;->n:I

    .line 66
    .line 67
    add-int/2addr v0, v6

    .line 68
    invoke-static {v7, v8}, Lmf0;->h(J)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    sub-int/2addr v9, v4

    .line 73
    if-le v0, v9, :cond_1

    .line 74
    .line 75
    invoke-static {v7, v8}, Lmf0;->h(J)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sub-int/2addr v0, v4

    .line 80
    iget v4, v5, Ldv2;->n:I

    .line 81
    .line 82
    add-int/2addr v4, v6

    .line 83
    sub-int/2addr v0, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    iget v0, v5, Ldv2;->o:I

    .line 86
    .line 87
    sub-int v0, v2, v0

    .line 88
    .line 89
    div-int/lit8 v0, v0, 0x2

    .line 90
    .line 91
    invoke-static {p1, v5, v6, v0}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 92
    .line 93
    .line 94
    invoke-static {v7, v8}, Lmf0;->h(J)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget v3, v1, Ldv2;->n:I

    .line 99
    .line 100
    sub-int/2addr v0, v3

    .line 101
    iget p0, p0, Lm04;->t:I

    .line 102
    .line 103
    sub-int/2addr v0, p0

    .line 104
    iget p0, v1, Ldv2;->o:I

    .line 105
    .line 106
    sub-int/2addr v2, p0

    .line 107
    div-int/lit8 v2, v2, 0x2

    .line 108
    .line 109
    invoke-static {p1, v1, v0, v2}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 110
    .line 111
    .line 112
    sget-object p0, Lt64;->a:Lt64;

    .line 113
    .line 114
    return-object p0
.end method
