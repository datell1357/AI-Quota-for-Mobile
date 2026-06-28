.class public final Lrb;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Los2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lay3;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Lqa1;

.field public final f:Las0;

.field public final g:Ljc;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Lmy1;

.field public j:Lui3;

.field public final k:Z

.field public final l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lay3;Ljava/util/List;Ljava/util/List;Lqa1;Las0;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 2
    iput-object v4, v0, Lrb;->a:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Lrb;->b:Lay3;

    .line 4
    iput-object v2, v0, Lrb;->c:Ljava/util/List;

    move-object/from16 v4, p4

    .line 5
    iput-object v4, v0, Lrb;->d:Ljava/util/List;

    move-object/from16 v4, p5

    .line 6
    iput-object v4, v0, Lrb;->e:Lqa1;

    .line 7
    iput-object v3, v0, Lrb;->f:Las0;

    .line 8
    new-instance v4, Ljc;

    invoke-interface {v3}, Las0;->b()F

    move-result v5

    const/4 v6, 0x1

    .line 9
    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(I)V

    .line 10
    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 11
    sget-object v5, Lyw3;->b:Lyw3;

    iput-object v5, v4, Ljc;->b:Lyw3;

    const/4 v5, 0x3

    .line 12
    iput v5, v4, Ljc;->c:I

    .line 13
    sget-object v7, Lhl3;->d:Lhl3;

    .line 14
    iput-object v7, v4, Ljc;->d:Lhl3;

    .line 15
    iput-object v4, v0, Lrb;->g:Ljc;

    .line 16
    invoke-static {v1}, Ltv4;->g(Lay3;)Z

    move-result v7

    iget-object v8, v1, Lay3;->a:Liq3;

    iget-object v1, v1, Lay3;->b:Lqs2;

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v7, v9

    goto :goto_1

    .line 17
    :cond_0
    sget-object v7, Lkz0;->a:Lwu4;

    .line 18
    sget-object v7, Lkz0;->a:Lwu4;

    .line 19
    iget-object v10, v7, Lwu4;->o:Ljava/lang/Object;

    check-cast v10, Ltr3;

    if-eqz v10, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Lhz0;->c()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 21
    invoke-virtual {v7}, Lwu4;->n()Ltr3;

    move-result-object v10

    iput-object v10, v7, Lwu4;->o:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_2
    sget-object v10, Lw80;->i:Lbp1;

    .line 23
    :goto_0
    invoke-interface {v10}, Ltr3;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 24
    :goto_1
    iput-boolean v7, v0, Lrb;->k:Z

    .line 25
    iget v7, v1, Lqs2;->b:I

    .line 26
    iget-object v10, v8, Liq3;->k:Le72;

    const/4 v11, 0x4

    const/4 v13, 0x2

    if-ne v7, v11, :cond_4

    :cond_3
    :goto_2
    move v7, v13

    goto :goto_4

    :cond_4
    const/4 v11, 0x5

    if-ne v7, v11, :cond_6

    :cond_5
    move v7, v5

    goto :goto_4

    :cond_6
    if-ne v7, v6, :cond_7

    move v7, v9

    goto :goto_4

    :cond_7
    if-ne v7, v13, :cond_8

    move v7, v6

    goto :goto_4

    :cond_8
    if-ne v7, v5, :cond_9

    goto :goto_3

    :cond_9
    if-nez v7, :cond_78

    :goto_3
    if-eqz v10, :cond_a

    .line 27
    iget-object v7, v10, Le72;->n:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld72;

    .line 28
    iget-object v7, v7, Ld72;->a:Ljava/util/Locale;

    if-nez v7, :cond_b

    .line 29
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 30
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v6, :cond_5

    goto :goto_2

    .line 31
    :goto_4
    iput v7, v0, Lrb;->l:I

    .line 32
    new-instance v7, Lqb;

    invoke-direct {v7, v9, v0}, Lqb;-><init>(ILjava/lang/Object;)V

    .line 33
    iget-object v1, v1, Lqs2;->i:Lsx3;

    if-nez v1, :cond_c

    .line 34
    sget-object v1, Lsx3;->c:Lsx3;

    .line 35
    :cond_c
    iget-boolean v10, v1, Lsx3;->b:Z

    if-eqz v10, :cond_d

    .line 36
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    or-int/lit16 v10, v10, 0x80

    goto :goto_5

    .line 37
    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, -0x81

    .line 38
    :goto_5
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 39
    iget v1, v1, Lsx3;->a:I

    if-ne v1, v6, :cond_e

    .line 40
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 41
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_e
    if-ne v1, v13, :cond_f

    .line 42
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 43
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_f
    if-ne v1, v5, :cond_10

    .line 44
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 45
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    .line 46
    :cond_10
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 47
    :goto_6
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    move v5, v9

    :goto_7
    if-ge v5, v1, :cond_12

    .line 48
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 49
    move-object v11, v10

    check-cast v11, Lef;

    .line 50
    iget-object v11, v11, Lef;->a:Ljava/lang/Object;

    .line 51
    instance-of v11, v11, Liq3;

    if-eqz v11, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_13

    move v1, v6

    goto :goto_9

    :cond_13
    move v1, v9

    .line 52
    :goto_9
    iget-wide v10, v8, Liq3;->b:J

    iget-object v2, v8, Liq3;->c:Lpb1;

    iget-object v5, v8, Liq3;->d:Lnb1;

    iget-object v14, v8, Liq3;->g:Ljava/lang/String;

    iget-object v15, v8, Liq3;->k:Le72;

    const/16 p1, 0x0

    iget-object v12, v8, Liq3;->a:Lcx3;

    move/from16 p4, v6

    iget-object v6, v8, Liq3;->j:Lfx3;

    move-object/from16 p3, v14

    iget-wide v13, v8, Liq3;->h:J

    move-wide/from16 v16, v10

    .line 53
    invoke-static/range {v16 .. v17}, Lcy3;->b(J)J

    move-result-wide v9

    move v11, v1

    move-object/from16 v18, v2

    const-wide v1, 0x100000000L

    .line 54
    invoke-static {v9, v10, v1, v2}, Ldy3;->a(JJ)Z

    move-result v19

    if-eqz v19, :cond_14

    move-wide/from16 v1, v16

    invoke-interface {v3, v1, v2}, Las0;->Z(J)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_a

    :cond_14
    const-wide v1, 0x200000000L

    .line 55
    invoke-static {v9, v10, v1, v2}, Ldy3;->a(JJ)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 56
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static/range {v16 .. v17}, Lcy3;->c(J)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    :cond_15
    :goto_a
    iget-object v1, v8, Liq3;->f:Lra1;

    if-nez v1, :cond_17

    if-nez v5, :cond_17

    if-eqz v18, :cond_16

    goto :goto_b

    :cond_16
    move/from16 v16, v11

    goto :goto_10

    :cond_17
    :goto_b
    if-nez v18, :cond_18

    .line 58
    sget-object v2, Lpb1;->p:Lpb1;

    goto :goto_c

    :cond_18
    move-object/from16 v2, v18

    :goto_c
    if-eqz v5, :cond_19

    .line 59
    iget v5, v5, Lnb1;->a:I

    goto :goto_d

    :cond_19
    const/4 v5, 0x0

    .line 60
    :goto_d
    iget-object v9, v8, Liq3;->e:Lob1;

    if-eqz v9, :cond_1a

    .line 61
    iget v9, v9, Lob1;->a:I

    goto :goto_e

    :cond_1a
    const v9, 0xffff

    .line 62
    :goto_e
    iget-object v10, v7, Lqb;->o:Ljava/lang/Object;

    check-cast v10, Lrb;

    move/from16 v16, v11

    .line 63
    iget-object v11, v10, Lrb;->e:Lqa1;

    check-cast v11, Lsa1;

    invoke-virtual {v11, v1, v2, v5, v9}, Lsa1;->b(Lra1;Lpb1;II)Lc54;

    move-result-object v1

    .line 64
    instance-of v2, v1, Lc54;

    if-nez v2, :cond_1b

    .line 65
    new-instance v2, Lui3;

    iget-object v5, v10, Lrb;->j:Lui3;

    invoke-direct {v2, v1, v5}, Lui3;-><init>(Lc54;Lui3;)V

    .line 66
    iput-object v2, v10, Lrb;->j:Lui3;

    .line 67
    iget-object v1, v2, Lui3;->q:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_f

    .line 68
    :cond_1b
    iget-object v1, v1, Lc54;->n:Ljava/lang/Object;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/graphics/Typeface;

    .line 70
    :goto_f
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_10
    const/16 v1, 0xa

    if-eqz v15, :cond_1d

    .line 71
    sget-object v2, Le72;->p:Le72;

    invoke-static {}, Lse0;->q()Le72;

    move-result-object v2

    .line 72
    invoke-virtual {v15, v2}, Le72;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v15, v1}, Lp70;->a0(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    iget-object v5, v15, Le72;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 75
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 76
    check-cast v9, Ld72;

    .line 77
    iget-object v9, v9, Ld72;->a:Ljava/util/Locale;

    .line 78
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1c
    const/4 v9, 0x0

    .line 79
    new-array v5, v9, [Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 80
    check-cast v2, [Ljava/util/Locale;

    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Locale;

    new-instance v5, Landroid/os/LocaleList;

    invoke-direct {v5, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 81
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_1d
    if-eqz p3, :cond_1e

    .line 82
    const-string v2, ""

    move-object/from16 v5, p3

    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 84
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1e
    if-eqz v6, :cond_1f

    .line 85
    sget-object v2, Lfx3;->c:Lfx3;

    .line 86
    invoke-virtual {v6, v2}, Lfx3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 87
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    .line 88
    iget v5, v6, Lfx3;->a:F

    mul-float/2addr v2, v5

    .line 89
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 90
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    .line 91
    iget v5, v6, Lfx3;->b:F

    add-float/2addr v2, v5

    .line 92
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 93
    :cond_1f
    invoke-interface {v12}, Lcx3;->d()J

    move-result-wide v5

    .line 94
    invoke-virtual {v4, v5, v6}, Ljc;->d(J)V

    .line 95
    invoke-interface {v12}, Lcx3;->g()Lzf5;

    move-result-object v2

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 96
    invoke-interface {v12}, Lcx3;->c()F

    move-result v9

    .line 97
    invoke-virtual {v4, v2, v5, v6, v9}, Ljc;->c(Lzf5;JF)V

    .line 98
    iget-object v2, v8, Liq3;->n:Lhl3;

    .line 99
    invoke-virtual {v4, v2}, Ljc;->f(Lhl3;)V

    .line 100
    iget-object v2, v8, Liq3;->m:Lyw3;

    .line 101
    invoke-virtual {v4, v2}, Ljc;->g(Lyw3;)V

    .line 102
    iget-object v2, v8, Liq3;->o:Ltv4;

    .line 103
    invoke-virtual {v4, v2}, Ljc;->e(Ltv4;)V

    .line 104
    invoke-static {v13, v14}, Lcy3;->b(J)J

    move-result-wide v5

    const-wide v9, 0x100000000L

    invoke-static {v5, v6, v9, v10}, Ldy3;->a(JJ)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_22

    invoke-static {v13, v14}, Lcy3;->c(J)F

    move-result v2

    cmpg-float v2, v2, v5

    if-nez v2, :cond_20

    goto :goto_12

    .line 105
    :cond_20
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v6

    mul-float/2addr v6, v2

    .line 106
    invoke-interface {v3, v13, v14}, Las0;->Z(J)F

    move-result v2

    cmpg-float v3, v6, v5

    if-nez v3, :cond_21

    goto :goto_13

    :cond_21
    div-float/2addr v2, v6

    .line 107
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_13

    .line 108
    :cond_22
    :goto_12
    invoke-static {v13, v14}, Lcy3;->b(J)J

    move-result-wide v2

    const-wide v9, 0x200000000L

    invoke-static {v2, v3, v9, v10}, Ldy3;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 109
    invoke-static {v13, v14}, Lcy3;->c(J)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 110
    :cond_23
    :goto_13
    iget-wide v2, v8, Liq3;->l:J

    .line 111
    iget-object v4, v8, Liq3;->i:Leu;

    if-eqz v16, :cond_25

    .line 112
    invoke-static {v13, v14}, Lcy3;->b(J)J

    move-result-wide v8

    const-wide v10, 0x100000000L

    invoke-static {v8, v9, v10, v11}, Ldy3;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-static {v13, v14}, Lcy3;->c(J)F

    move-result v6

    cmpg-float v6, v6, v5

    if-nez v6, :cond_24

    goto :goto_14

    :cond_24
    move/from16 v6, p4

    goto :goto_15

    :cond_25
    :goto_14
    const/4 v6, 0x0

    .line 113
    :goto_15
    sget-wide v8, Lt70;->f:J

    .line 114
    invoke-static {v2, v3, v8, v9}, Lt70;->c(JJ)Z

    move-result v10

    if-nez v10, :cond_26

    .line 115
    sget-wide v10, Lt70;->e:J

    .line 116
    invoke-static {v2, v3, v10, v11}, Lt70;->c(JJ)Z

    move-result v10

    if-nez v10, :cond_26

    move/from16 v10, p4

    goto :goto_16

    :cond_26
    const/4 v10, 0x0

    :goto_16
    if-eqz v4, :cond_28

    .line 117
    iget v11, v4, Leu;->a:F

    .line 118
    invoke-static {v11, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_27

    goto :goto_17

    :cond_27
    move/from16 v11, p4

    goto :goto_18

    :cond_28
    :goto_17
    const/4 v11, 0x0

    :goto_18
    if-nez v6, :cond_29

    if-nez v10, :cond_29

    if-nez v11, :cond_29

    move-object/from16 v2, p1

    goto :goto_1d

    :cond_29
    if-eqz v6, :cond_2a

    :goto_19
    move-wide/from16 v30, v13

    goto :goto_1a

    .line 119
    :cond_2a
    sget-wide v13, Lcy3;->c:J

    goto :goto_19

    :goto_1a
    if-eqz v10, :cond_2b

    move-wide/from16 v35, v2

    goto :goto_1b

    :cond_2b
    move-wide/from16 v35, v8

    :goto_1b
    if-eqz v11, :cond_2c

    move-object/from16 v32, v4

    goto :goto_1c

    :cond_2c
    move-object/from16 v32, p1

    .line 120
    :goto_1c
    new-instance v20, Liq3;

    const/16 v38, 0x0

    const v39, 0xf67f

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v20 .. v39}, Liq3;-><init>(JJLpb1;Lnb1;Lob1;Lra1;Ljava/lang/String;JLeu;Lfx3;Le72;JLyw3;Lhl3;I)V

    move-object/from16 v2, v20

    .line 121
    :goto_1d
    iget-object v3, v0, Lrb;->c:Ljava/util/List;

    if-eqz v2, :cond_2f

    .line 122
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v3, :cond_2e

    if-nez v6, :cond_2d

    .line 123
    new-instance v8, Lef;

    .line 124
    iget-object v9, v0, Lrb;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    .line 125
    invoke-direct {v8, v10, v9, v2}, Lef;-><init>(IILjava/lang/Object;)V

    goto :goto_1f

    .line 126
    :cond_2d
    iget-object v8, v0, Lrb;->c:Ljava/util/List;

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lef;

    .line 127
    :goto_1f
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_2e
    move-object v3, v4

    .line 128
    :cond_2f
    iget-object v2, v0, Lrb;->a:Ljava/lang/String;

    .line 129
    iget-object v4, v0, Lrb;->g:Ljc;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 130
    iget-object v6, v0, Lrb;->b:Lay3;

    .line 131
    iget-object v8, v0, Lrb;->d:Ljava/util/List;

    .line 132
    iget-object v12, v0, Lrb;->f:Las0;

    .line 133
    iget-boolean v9, v0, Lrb;->k:Z

    .line 134
    sget-object v10, Lpb;->a:Lob;

    if-eqz v9, :cond_33

    .line 135
    invoke-static {}, Lhz0;->c()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 136
    iget-object v9, v6, Lay3;->c:Lpv2;

    if-eqz v9, :cond_30

    .line 137
    iget-object v9, v9, Lpv2;->a:Lmv2;

    if-eqz v9, :cond_30

    .line 138
    iget v9, v9, Lmv2;->b:I

    .line 139
    new-instance v10, Luz0;

    invoke-direct {v10, v9}, Luz0;-><init>(I)V

    goto :goto_20

    :cond_30
    move-object/from16 v10, p1

    :goto_20
    if-nez v10, :cond_32

    :cond_31
    const/4 v9, 0x0

    goto :goto_21

    .line 140
    :cond_32
    iget v9, v10, Luz0;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_31

    move/from16 v9, p4

    .line 141
    :goto_21
    invoke-static {}, Lhz0;->a()Lhz0;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v9, v2}, Lhz0;->f(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_22

    :cond_33
    move-object v9, v2

    .line 142
    :goto_22
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const-wide/16 v13, 0x0

    const-wide v15, 0xff00000000L

    if-eqz v10, :cond_34

    .line 143
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_34

    .line 144
    iget-object v10, v6, Lay3;->b:Lqs2;

    .line 145
    iget-object v10, v10, Lqs2;->d:Lgx3;

    .line 146
    sget-object v11, Lgx3;->c:Lgx3;

    .line 147
    invoke-static {v10, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 148
    iget-object v10, v6, Lay3;->b:Lqs2;

    .line 149
    iget-wide v10, v10, Lqs2;->c:J

    and-long/2addr v10, v15

    cmp-long v10, v10, v13

    if-nez v10, :cond_34

    goto/16 :goto_4c

    .line 150
    :cond_34
    instance-of v10, v9, Landroid/text/Spannable;

    if-eqz v10, :cond_35

    .line 151
    check-cast v9, Landroid/text/Spannable;

    goto :goto_23

    .line 152
    :cond_35
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v9, v10

    .line 153
    :goto_23
    iget-object v10, v6, Lay3;->a:Liq3;

    iget-object v11, v6, Lay3;->b:Lqs2;

    .line 154
    iget-object v10, v10, Liq3;->m:Lyw3;

    move/from16 p2, v5

    .line 155
    sget-object v5, Lyw3;->c:Lyw3;

    invoke-static {v10, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/16 v10, 0x21

    if-eqz v5, :cond_36

    .line 156
    sget-object v5, Lpb;->a:Lob;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-wide/from16 v17, v13

    const/4 v13, 0x0

    .line 157
    invoke-interface {v9, v5, v13, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_24

    :cond_36
    move-wide/from16 v17, v13

    .line 158
    :goto_24
    iget-object v2, v6, Lay3;->c:Lpv2;

    if-eqz v2, :cond_37

    .line 159
    iget-object v2, v2, Lpv2;->a:Lmv2;

    if-eqz v2, :cond_37

    .line 160
    iget-boolean v2, v2, Lmv2;->a:Z

    goto :goto_25

    :cond_37
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_39

    .line 161
    iget-object v2, v11, Lqs2;->f:Li32;

    if-nez v2, :cond_39

    .line 162
    iget-wide v1, v11, Lqs2;->c:J

    .line 163
    invoke-static {v1, v2, v4, v12}, Lnt1;->P(JFLas0;)F

    move-result v1

    .line 164
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_38

    .line 165
    new-instance v2, Le32;

    invoke-direct {v2, v1}, Le32;-><init>(F)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v13, 0x0

    .line 166
    invoke-interface {v9, v2, v13, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_38
    const/4 v13, 0x0

    goto/16 :goto_2b

    .line 167
    :cond_39
    iget-object v2, v11, Lqs2;->f:Li32;

    if-nez v2, :cond_3a

    .line 168
    sget-object v2, Li32;->d:Li32;

    .line 169
    :cond_3a
    iget-wide v13, v11, Lqs2;->c:J

    .line 170
    invoke-static {v13, v14, v4, v12}, Lnt1;->P(JFLas0;)F

    move-result v21

    .line 171
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_38

    .line 172
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_26

    .line 173
    :cond_3b
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_3f

    .line 174
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 175
    invoke-interface {v9, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_3c

    .line 176
    :goto_26
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_27
    move/from16 v22, v1

    goto :goto_28

    :cond_3c
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_27

    .line 177
    :goto_28
    new-instance v20, Lj32;

    .line 178
    iget v1, v2, Li32;->b:I

    and-int/lit8 v5, v1, 0x1

    if-lez v5, :cond_3d

    move/from16 v23, p4

    goto :goto_29

    :cond_3d
    const/16 v23, 0x0

    :goto_29
    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_3e

    move/from16 v24, p4

    goto :goto_2a

    :cond_3e
    const/16 v24, 0x0

    .line 179
    :goto_2a
    iget v1, v2, Li32;->a:F

    .line 180
    iget v2, v2, Li32;->c:I

    move/from16 v25, v1

    move/from16 v26, v2

    .line 181
    invoke-direct/range {v20 .. v26}, Lj32;-><init>(FIZZFI)V

    move-object/from16 v1, v20

    .line 182
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v13, 0x0

    .line 183
    invoke-interface {v9, v1, v13, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2b

    .line 184
    :cond_3f
    const-string v0, "Char sequence is empty."

    invoke-static {v0}, Lq73;->l(Ljava/lang/String;)V

    throw p1

    .line 185
    :goto_2b
    iget-object v1, v11, Lqs2;->d:Lgx3;

    if-eqz v1, :cond_48

    move/from16 p5, v13

    .line 186
    iget-wide v13, v1, Lgx3;->a:J

    iget-wide v1, v1, Lgx3;->b:J

    move-object v5, v11

    .line 187
    invoke-static/range {p5 .. p5}, Lon4;->D(I)J

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Lcy3;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_40

    invoke-static/range {p5 .. p5}, Lon4;->D(I)J

    move-result-wide v10

    invoke-static {v1, v2, v10, v11}, Lcy3;->a(JJ)Z

    move-result v10

    if-nez v10, :cond_41

    :cond_40
    and-long v10, v13, v15

    cmp-long v10, v10, v17

    if-nez v10, :cond_42

    :cond_41
    :goto_2c
    move-object v15, v5

    goto/16 :goto_2f

    :cond_42
    and-long v10, v1, v15

    cmp-long v10, v10, v17

    if-nez v10, :cond_43

    goto :goto_2c

    .line 188
    :cond_43
    invoke-static {v13, v14}, Lcy3;->b(J)J

    move-result-wide v10

    move/from16 p6, v4

    move-object v15, v5

    const-wide v4, 0x100000000L

    .line 189
    invoke-static {v10, v11, v4, v5}, Ldy3;->a(JJ)Z

    move-result v16

    if-eqz v16, :cond_44

    invoke-interface {v12, v13, v14}, Las0;->Z(J)F

    move-result v10

    const-wide v4, 0x200000000L

    goto :goto_2d

    :cond_44
    const-wide v4, 0x200000000L

    .line 190
    invoke-static {v10, v11, v4, v5}, Ldy3;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-static {v13, v14}, Lcy3;->c(J)F

    move-result v10

    mul-float v10, v10, p6

    goto :goto_2d

    :cond_45
    move/from16 v10, p2

    .line 191
    :goto_2d
    invoke-static {v1, v2}, Lcy3;->b(J)J

    move-result-wide v13

    const-wide v4, 0x100000000L

    .line 192
    invoke-static {v13, v14, v4, v5}, Ldy3;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_46

    invoke-interface {v12, v1, v2}, Las0;->Z(J)F

    move-result v1

    goto :goto_2e

    :cond_46
    const-wide v4, 0x200000000L

    .line 193
    invoke-static {v13, v14, v4, v5}, Ldy3;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_47

    invoke-static {v1, v2}, Lcy3;->c(J)F

    move-result v1

    mul-float v1, v1, p6

    goto :goto_2e

    :cond_47
    move/from16 v1, p2

    .line 194
    :goto_2e
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v1, v10

    float-to-int v1, v1

    invoke-direct {v2, v4, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 195
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v4, 0x21

    const/4 v13, 0x0

    .line 196
    invoke-interface {v9, v2, v13, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2f

    :cond_48
    move-object v15, v11

    .line 197
    :goto_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v2, :cond_4c

    .line 199
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 200
    check-cast v5, Lef;

    .line 201
    iget-object v10, v5, Lef;->a:Ljava/lang/Object;

    .line 202
    instance-of v11, v10, Liq3;

    if-eqz v11, :cond_4b

    move-object v11, v10

    check-cast v11, Liq3;

    .line 203
    iget-object v13, v11, Liq3;->f:Lra1;

    if-nez v13, :cond_4a

    .line 204
    iget-object v13, v11, Liq3;->d:Lnb1;

    if-nez v13, :cond_4a

    .line 205
    iget-object v11, v11, Liq3;->c:Lpb1;

    if-eqz v11, :cond_49

    goto :goto_31

    .line 206
    :cond_49
    check-cast v10, Liq3;

    .line 207
    iget-object v10, v10, Liq3;->e:Lob1;

    if-eqz v10, :cond_4b

    .line 208
    :cond_4a
    :goto_31
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 209
    :cond_4c
    iget-object v2, v6, Lay3;->a:Liq3;

    .line 210
    iget-object v4, v2, Liq3;->f:Lra1;

    if-nez v4, :cond_4f

    .line 211
    iget-object v5, v2, Liq3;->d:Lnb1;

    if-nez v5, :cond_4f

    .line 212
    iget-object v5, v2, Liq3;->c:Lpb1;

    if-eqz v5, :cond_4d

    goto :goto_32

    .line 213
    :cond_4d
    iget-object v5, v2, Liq3;->e:Lob1;

    if-eqz v5, :cond_4e

    goto :goto_32

    :cond_4e
    move-object/from16 v2, p1

    goto :goto_33

    .line 214
    :cond_4f
    :goto_32
    iget-object v5, v2, Liq3;->c:Lpb1;

    .line 215
    iget-object v6, v2, Liq3;->d:Lnb1;

    .line 216
    iget-object v2, v2, Liq3;->e:Lob1;

    .line 217
    new-instance v20, Liq3;

    const/16 v38, 0x0

    const v39, 0xffc3

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    invoke-direct/range {v20 .. v39}, Liq3;-><init>(JJLpb1;Lnb1;Lob1;Lra1;Ljava/lang/String;JLeu;Lfx3;Le72;JLyw3;Lhl3;I)V

    move-object/from16 v2, v20

    .line 218
    :goto_33
    new-instance v4, Lq7;

    move/from16 v5, p4

    invoke-direct {v4, v9, v7, v5}, Lq7;-><init>(Ljava/lang/Object;Lgf1;I)V

    .line 219
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v5, :cond_51

    .line 220
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    const/4 v13, 0x0

    .line 221
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lef;

    .line 222
    iget-object v5, v5, Lef;->a:Ljava/lang/Object;

    .line 223
    check-cast v5, Liq3;

    if-nez v2, :cond_50

    goto :goto_34

    .line 224
    :cond_50
    invoke-virtual {v2, v5}, Liq3;->c(Liq3;)Liq3;

    move-result-object v5

    .line 225
    :goto_34
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lef;

    .line 226
    iget v2, v2, Lef;->b:I

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lef;

    .line 229
    iget v1, v1, Lef;->c:I

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 231
    invoke-virtual {v4, v5, v2, v1}, Lq7;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3b

    .line 232
    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    .line 233
    new-array v7, v6, [I

    .line 234
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_35
    if-ge v11, v10, :cond_52

    .line 235
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 236
    check-cast v13, Lef;

    .line 237
    iget v14, v13, Lef;->b:I

    .line 238
    aput v14, v7, v11

    add-int v14, v11, v5

    .line 239
    iget v13, v13, Lef;->c:I

    .line 240
    aput v13, v7, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    :cond_52
    const/4 v11, 0x1

    if-le v6, v11, :cond_53

    .line 241
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    :cond_53
    if-eqz v6, :cond_77

    const/4 v13, 0x0

    .line 242
    aget v5, v7, v13

    move v10, v5

    const/4 v5, 0x0

    :goto_36
    if-ge v5, v6, :cond_59

    .line 243
    aget v11, v7, v5

    if-ne v11, v10, :cond_54

    move-object/from16 v17, v1

    move-object/from16 p6, v2

    move/from16 v16, v5

    move/from16 v18, v6

    goto :goto_3a

    .line 244
    :cond_54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 p6, v2

    const/4 v14, 0x0

    :goto_37
    if-ge v14, v13, :cond_57

    .line 245
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    .line 246
    move-object/from16 v1, v16

    check-cast v1, Lef;

    move/from16 v16, v5

    .line 247
    iget v5, v1, Lef;->b:I

    move/from16 v18, v6

    .line 248
    iget v6, v1, Lef;->c:I

    if-eq v5, v6, :cond_56

    .line 249
    invoke-static {v10, v11, v5, v6}, Lgf;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 250
    iget-object v1, v1, Lef;->a:Ljava/lang/Object;

    .line 251
    check-cast v1, Liq3;

    if-nez v2, :cond_55

    :goto_38
    move-object v2, v1

    goto :goto_39

    .line 252
    :cond_55
    invoke-virtual {v2, v1}, Liq3;->c(Liq3;)Liq3;

    move-result-object v1

    goto :goto_38

    :cond_56
    :goto_39
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move-object/from16 v1, v17

    move/from16 v6, v18

    goto :goto_37

    :cond_57
    move-object/from16 v17, v1

    move/from16 v16, v5

    move/from16 v18, v6

    if-eqz v2, :cond_58

    .line 253
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lq7;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    move v10, v11

    :goto_3a
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v2, p6

    move-object/from16 v1, v17

    move/from16 v6, v18

    goto :goto_36

    .line 254
    :cond_59
    :goto_3b
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_3c
    if-ge v2, v1, :cond_6a

    .line 255
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lef;

    .line 256
    iget-object v6, v5, Lef;->a:Ljava/lang/Object;

    .line 257
    instance-of v7, v6, Liq3;

    if-eqz v7, :cond_5a

    .line 258
    iget v13, v5, Lef;->b:I

    .line 259
    iget v14, v5, Lef;->c:I

    if-ltz v13, :cond_5a

    .line 260
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v13, v5, :cond_5a

    if-le v14, v13, :cond_5a

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v14, v5, :cond_5b

    :cond_5a
    move/from16 p6, v1

    move/from16 v16, v2

    move-object/from16 p3, v3

    move-object v1, v12

    goto/16 :goto_45

    .line 261
    :cond_5b
    check-cast v6, Liq3;

    iget-wide v10, v6, Liq3;->h:J

    .line 262
    iget-object v5, v6, Liq3;->i:Leu;

    iget-object v7, v6, Liq3;->a:Lcx3;

    if-eqz v5, :cond_5c

    .line 263
    iget v5, v5, Leu;->a:F

    move/from16 p6, v1

    .line 264
    new-instance v1, Lfu;

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5}, Lfu;-><init>(IF)V

    const/16 v2, 0x21

    .line 265
    invoke-interface {v9, v1, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3d

    :cond_5c
    move/from16 p6, v1

    move/from16 v16, v2

    .line 266
    :goto_3d
    invoke-interface {v7}, Lcx3;->d()J

    move-result-wide v1

    .line 267
    invoke-static {v9, v1, v2, v13, v14}, Lnt1;->T(Landroid/text/Spannable;JII)V

    .line 268
    invoke-interface {v7}, Lcx3;->g()Lzf5;

    move-result-object v1

    .line 269
    invoke-interface {v7}, Lcx3;->c()F

    move-result v2

    if-eqz v1, :cond_5e

    .line 270
    instance-of v5, v1, Lsp3;

    if-eqz v5, :cond_5d

    .line 271
    check-cast v1, Lsp3;

    .line 272
    iget-wide v1, v1, Lsp3;->h:J

    .line 273
    invoke-static {v9, v1, v2, v13, v14}, Lnt1;->T(Landroid/text/Spannable;JII)V

    goto :goto_3e

    .line 274
    :cond_5d
    new-instance v5, Lgl3;

    check-cast v1, Lqy;

    invoke-direct {v5, v1, v2}, Lgl3;-><init>(Lqy;F)V

    const/16 v2, 0x21

    .line 275
    invoke-interface {v9, v5, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 276
    :cond_5e
    :goto_3e
    iget-object v1, v6, Liq3;->m:Lyw3;

    if-eqz v1, :cond_61

    .line 277
    iget v1, v1, Lyw3;->a:I

    .line 278
    new-instance v2, Lzw3;

    or-int/lit8 v5, v1, 0x1

    if-ne v5, v1, :cond_5f

    const/4 v5, 0x1

    goto :goto_3f

    :cond_5f
    const/4 v5, 0x0

    :goto_3f
    or-int/lit8 v7, v1, 0x2

    if-ne v7, v1, :cond_60

    const/4 v1, 0x1

    goto :goto_40

    :cond_60
    const/4 v1, 0x0

    :goto_40
    invoke-direct {v2, v5, v1}, Lzw3;-><init>(ZZ)V

    const/16 v1, 0x21

    .line 279
    invoke-interface {v9, v2, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_41
    move-wide/from16 v17, v10

    goto :goto_42

    :cond_61
    const/16 v1, 0x21

    goto :goto_41

    .line 280
    :goto_42
    iget-wide v10, v6, Liq3;->b:J

    move v2, v1

    .line 281
    invoke-static/range {v9 .. v14}, Lnt1;->U(Landroid/text/Spannable;JLas0;II)V

    .line 282
    iget-object v1, v6, Liq3;->g:Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 283
    new-instance v5, Lua1;

    const/4 v10, 0x0

    invoke-direct {v5, v10, v1}, Lua1;-><init>(ILjava/lang/Object;)V

    .line 284
    invoke-interface {v9, v5, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 285
    :cond_62
    iget-object v1, v6, Liq3;->j:Lfx3;

    if-eqz v1, :cond_63

    .line 286
    new-instance v5, Landroid/text/style/ScaleXSpan;

    .line 287
    iget v7, v1, Lfx3;->a:F

    .line 288
    invoke-direct {v5, v7}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 289
    invoke-interface {v9, v5, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 290
    new-instance v5, Lfu;

    .line 291
    iget v1, v1, Lfx3;->b:F

    const/4 v11, 0x1

    .line 292
    invoke-direct {v5, v11, v1}, Lfu;-><init>(IF)V

    .line 293
    invoke-interface {v9, v5, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_43

    :cond_63
    const/4 v11, 0x1

    .line 294
    :goto_43
    iget-object v1, v6, Liq3;->k:Le72;

    .line 295
    invoke-static {v9, v1, v13, v14}, Lnt1;->V(Landroid/text/Spannable;Le72;II)V

    move-object v1, v12

    .line 296
    iget-wide v11, v6, Liq3;->l:J

    const-wide/16 v20, 0x10

    cmp-long v5, v11, v20

    if-eqz v5, :cond_64

    .line 297
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v11, v12}, Lc75;->R(J)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 298
    invoke-interface {v9, v5, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 299
    :cond_64
    iget-object v5, v6, Liq3;->n:Lhl3;

    if-eqz v5, :cond_66

    .line 300
    iget-wide v10, v5, Lhl3;->b:J

    .line 301
    new-instance v7, Lil3;

    move-object/from16 p3, v3

    .line 302
    iget-wide v2, v5, Lhl3;->a:J

    .line 303
    invoke-static {v2, v3}, Lc75;->R(J)I

    move-result v2

    const/16 v3, 0x20

    move/from16 v19, v13

    shr-long v12, v10, v3

    long-to-int v3, v12

    .line 304
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    long-to-int v10, v10

    .line 305
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 306
    iget v5, v5, Lhl3;->c:F

    cmpg-float v11, v5, p2

    if-nez v11, :cond_65

    const/4 v5, 0x1

    .line 307
    :cond_65
    invoke-direct {v7, v2, v3, v10, v5}, Lil3;-><init>(IFFF)V

    move/from16 v13, v19

    const/16 v2, 0x21

    .line 308
    invoke-interface {v9, v7, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_44

    :cond_66
    move-object/from16 p3, v3

    .line 309
    :goto_44
    iget-object v3, v6, Liq3;->o:Ltv4;

    if-eqz v3, :cond_67

    .line 310
    new-instance v5, Llx0;

    invoke-direct {v5, v3}, Llx0;-><init>(Ltv4;)V

    .line 311
    invoke-interface {v9, v5, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 312
    :cond_67
    invoke-static/range {v17 .. v18}, Lcy3;->b(J)J

    move-result-wide v2

    const-wide v10, 0x100000000L

    invoke-static {v2, v3, v10, v11}, Ldy3;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-static/range {v17 .. v18}, Lcy3;->b(J)J

    move-result-wide v2

    const-wide v5, 0x200000000L

    invoke-static {v2, v3, v5, v6}, Ldy3;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_68
    const/4 v4, 0x1

    :cond_69
    :goto_45
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v3, p3

    move-object v12, v1

    move/from16 v1, p6

    goto/16 :goto_3c

    :cond_6a
    move-object/from16 p3, v3

    move-object v1, v12

    if-eqz v4, :cond_70

    .line 313
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_70

    move-object/from16 v4, p3

    .line 314
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lef;

    .line 315
    iget-object v6, v5, Lef;->a:Ljava/lang/Object;

    .line 316
    check-cast v6, Ldf;

    .line 317
    instance-of v7, v6, Liq3;

    if-eqz v7, :cond_6b

    .line 318
    iget v7, v5, Lef;->b:I

    .line 319
    iget v5, v5, Lef;->c:I

    if-ltz v7, :cond_6b

    .line 320
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v7, v10, :cond_6b

    if-le v5, v7, :cond_6b

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v5, v10, :cond_6c

    :cond_6b
    move/from16 p3, v2

    const/16 v12, 0x21

    move-object v2, v1

    goto :goto_48

    .line 321
    :cond_6c
    check-cast v6, Liq3;

    .line 322
    iget-wide v10, v6, Liq3;->h:J

    .line 323
    invoke-static {v10, v11}, Lcy3;->b(J)J

    move-result-wide v13

    move-object/from16 p2, v1

    move/from16 p3, v2

    const-wide v1, 0x100000000L

    .line 324
    invoke-static {v13, v14, v1, v2}, Ldy3;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_6d

    new-instance v1, Lc22;

    move-object/from16 v2, p2

    invoke-interface {v2, v10, v11}, Las0;->Z(J)F

    move-result v6

    invoke-direct {v1, v6}, Lc22;-><init>(F)V

    goto :goto_47

    :cond_6d
    move-object/from16 v2, p2

    move-wide/from16 v16, v10

    const-wide v10, 0x200000000L

    .line 325
    invoke-static {v13, v14, v10, v11}, Ldy3;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 326
    new-instance v1, Lb22;

    invoke-static/range {v16 .. v17}, Lcy3;->c(J)F

    move-result v6

    invoke-direct {v1, v6}, Lb22;-><init>(F)V

    goto :goto_47

    :cond_6e
    move-object/from16 v1, p1

    :goto_47
    const/16 v12, 0x21

    if-eqz v1, :cond_6f

    .line 327
    invoke-interface {v9, v1, v7, v5, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6f
    :goto_48
    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    move/from16 v2, p3

    move-object/from16 p3, v4

    goto :goto_46

    :cond_70
    move-object/from16 v4, p3

    move-object v2, v1

    .line 328
    iget-object v1, v15, Lqs2;->d:Lgx3;

    if-eqz v1, :cond_72

    .line 329
    iget-wide v5, v1, Lgx3;->a:J

    .line 330
    invoke-static {v5, v6}, Lcy3;->b(J)J

    move-result-wide v10

    const-wide v12, 0x100000000L

    .line 331
    invoke-static {v10, v11, v12, v13}, Ldy3;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v2, v5, v6}, Las0;->Z(J)F

    goto :goto_49

    :cond_71
    const-wide v1, 0x200000000L

    .line 332
    invoke-static {v10, v11, v1, v2}, Ldy3;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-static {v5, v6}, Lcy3;->c(J)F

    .line 333
    :cond_72
    :goto_49
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v1, :cond_73

    .line 334
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 335
    check-cast v3, Lef;

    .line 336
    iget-object v3, v3, Lef;->a:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 337
    :cond_73
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_76

    const/4 v13, 0x0

    .line 338
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 339
    check-cast v0, Lef;

    .line 340
    iget-object v1, v0, Lef;->a:Ljava/lang/Object;

    if-nez v1, :cond_75

    .line 341
    iget v1, v0, Lef;->b:I

    .line 342
    iget v0, v0, Lef;->c:I

    .line 343
    const-class v2, La54;

    invoke-interface {v9, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 344
    array-length v1, v0

    :goto_4b
    if-ge v13, v1, :cond_74

    aget-object v2, v0, v13

    check-cast v2, La54;

    .line 345
    invoke-interface {v9, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4b

    .line 346
    :cond_74
    new-instance v0, Lgv2;

    .line 347
    throw p1

    .line 348
    :cond_75
    invoke-static {}, Lmk0;->b()V

    throw p1

    .line 349
    :cond_76
    :goto_4c
    iput-object v9, v0, Lrb;->h:Ljava/lang/CharSequence;

    .line 350
    new-instance v1, Lmy1;

    iget-object v2, v0, Lrb;->g:Ljc;

    iget v3, v0, Lrb;->l:I

    invoke-direct {v1, v9, v2, v3}, Lmy1;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v1, v0, Lrb;->i:Lmy1;

    return-void

    .line 351
    :cond_77
    const-string v0, "Array is empty."

    invoke-static {v0}, Lq73;->l(Ljava/lang/String;)V

    throw p1

    :cond_78
    const/16 p1, 0x0

    .line 352
    const-string v0, "Invalid TextDirection."

    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()F
    .locals 10

    .line 1
    iget-object p0, p0, Lrb;->i:Lmy1;

    .line 2
    .line 3
    iget v0, p0, Lmy1;->e:F

    .line 4
    .line 5
    iget-object v1, p0, Lmy1;->b:Landroid/text/TextPaint;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lmy1;->e:F

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Li40;

    .line 25
    .line 26
    iget-object v3, p0, Lmy1;->a:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-direct {v2, v4, v3}, Li40;-><init>(ILjava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/util/PriorityQueue;

    .line 39
    .line 40
    sget-object v3, Lht4;->m:Lyb;

    .line 41
    .line 42
    const/16 v4, 0xa

    .line 43
    .line 44
    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, 0x0

    .line 52
    :goto_0
    const/4 v6, -0x1

    .line 53
    if-eq v3, v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const/4 v7, 0x1

    .line 60
    if-ge v6, v4, :cond_1

    .line 61
    .line 62
    new-instance v6, Lms1;

    .line 63
    .line 64
    invoke-direct {v6, v5, v3, v7}, Lks1;-><init>(III)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lms1;

    .line 76
    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    iget v8, v6, Lks1;->o:I

    .line 80
    .line 81
    iget v6, v6, Lks1;->n:I

    .line 82
    .line 83
    sub-int/2addr v8, v6

    .line 84
    sub-int v6, v3, v5

    .line 85
    .line 86
    if-ge v8, v6, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v6, Lms1;

    .line 92
    .line 93
    invoke-direct {v6, v5, v3, v7}, Lks1;-><init>(III)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    move v9, v5

    .line 104
    move v5, v3

    .line 105
    move v3, v9

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v3, 0x0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lms1;

    .line 130
    .line 131
    iget v3, v2, Lks1;->n:I

    .line 132
    .line 133
    iget v2, v2, Lks1;->o:I

    .line 134
    .line 135
    invoke-virtual {p0}, Lmy1;->b()Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v4, v3, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    move v3, v2

    .line 144
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lms1;

    .line 155
    .line 156
    iget v4, v2, Lks1;->n:I

    .line 157
    .line 158
    iget v2, v2, Lks1;->o:I

    .line 159
    .line 160
    invoke-virtual {p0}, Lmy1;->b()Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-static {v5, v4, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    :goto_3
    iput v3, p0, Lmy1;->e:F

    .line 174
    .line 175
    return v3

    .line 176
    :cond_6
    invoke-static {}, Lp61;->v()V

    .line 177
    .line 178
    .line 179
    return v3
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrb;->j:Lui3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lui3;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Lrb;->k:Z

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object p0, p0, Lrb;->b:Lay3;

    .line 19
    .line 20
    invoke-static {p0}, Ltv4;->g(Lay3;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    sget-object p0, Lkz0;->a:Lwu4;

    .line 27
    .line 28
    sget-object p0, Lkz0;->a:Lwu4;

    .line 29
    .line 30
    iget-object v0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ltr3;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {}, Lhz0;->c()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lwu4;->n()Ltr3;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object v0, Lw80;->i:Lbp1;

    .line 51
    .line 52
    :goto_1
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    return v1

    .line 66
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final c()F
    .locals 0

    .line 1
    iget-object p0, p0, Lrb;->i:Lmy1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lmy1;->c()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
