.class public final synthetic Lc92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lgx;


# direct methods
.method public synthetic constructor <init>(Lgx;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc92;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lc92;->o:Lgx;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc92;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v0, v0, Lc92;->o:Lgx;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Lag1;

    .line 18
    .line 19
    move-object/from16 v6, p2

    .line 20
    .line 21
    check-cast v6, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    sget v7, Lu/sage/MainActivity;->C:I

    .line 28
    .line 29
    and-int/lit8 v7, v6, 0x3

    .line 30
    .line 31
    if-eq v7, v4, :cond_0

    .line 32
    .line 33
    move v3, v5

    .line 34
    :cond_0
    and-int/lit8 v4, v6, 0x1

    .line 35
    .line 36
    invoke-virtual {v1, v4, v3}, Lag1;->N(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object v6, v0, Lgx;->b:Ljava/lang/String;

    .line 43
    .line 44
    const/16 v26, 0x0

    .line 45
    .line 46
    const v27, 0x3fffe

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const-wide/16 v8, 0x0

    .line 51
    .line 52
    const-wide/16 v10, 0x0

    .line 53
    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const-wide/16 v14, 0x0

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const-wide/16 v17, 0x0

    .line 61
    .line 62
    const/16 v19, 0x0

    .line 63
    .line 64
    const/16 v20, 0x0

    .line 65
    .line 66
    const/16 v21, 0x0

    .line 67
    .line 68
    const/16 v22, 0x0

    .line 69
    .line 70
    const/16 v23, 0x0

    .line 71
    .line 72
    const/16 v25, 0x0

    .line 73
    .line 74
    move-object/from16 v24, v1

    .line 75
    .line 76
    invoke-static/range {v6 .. v27}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object/from16 v24, v1

    .line 81
    .line 82
    invoke-virtual/range {v24 .. v24}, Lag1;->Q()V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-object v2

    .line 86
    :pswitch_0
    move-object/from16 v8, p1

    .line 87
    .line 88
    check-cast v8, Lag1;

    .line 89
    .line 90
    move-object/from16 v1, p2

    .line 91
    .line 92
    check-cast v1, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    sget v6, Lu/sage/MainActivity;->C:I

    .line 99
    .line 100
    and-int/lit8 v6, v1, 0x3

    .line 101
    .line 102
    if-eq v6, v4, :cond_2

    .line 103
    .line 104
    move v3, v5

    .line 105
    :cond_2
    and-int/2addr v1, v5

    .line 106
    invoke-virtual {v8, v1, v3}, Lag1;->N(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    iget v1, v0, Lgx;->c:I

    .line 113
    .line 114
    invoke-static {v1, v8}, Lkt4;->W(ILag1;)Lgs2;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iget-object v4, v0, Lgx;->b:Ljava/lang/String;

    .line 119
    .line 120
    const/16 v9, 0x8

    .line 121
    .line 122
    const/16 v10, 0xc

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    const-wide/16 v6, 0x0

    .line 126
    .line 127
    invoke-static/range {v3 .. v10}, Lqn1;->b(Lgs2;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v8}, Lag1;->Q()V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-object v2

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
