.class public final Ltp0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ltp0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltp0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltp0;->a:Ltp0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lak2;Lag1;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move/from16 v13, p3

    .line 6
    .line 7
    const v1, 0x34946814

    .line 8
    .line 9
    .line 10
    invoke-virtual {v10, v1}, Lag1;->X(I)Lag1;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v10, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    or-int/2addr v1, v13

    .line 24
    and-int/lit8 v3, v1, 0x3

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    if-eq v3, v2, :cond_1

    .line 29
    .line 30
    move v2, v5

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v4

    .line 33
    :goto_1
    and-int/2addr v1, v5

    .line 34
    invoke-virtual {v10, v1, v2}, Lag1;->N(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-wide v1, v0, Lak2;->b:J

    .line 41
    .line 42
    iget-wide v5, v0, Lak2;->c:J

    .line 43
    .line 44
    iget-object v3, v0, Lak2;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lnd2;

    .line 47
    .line 48
    new-instance v7, Lsp0;

    .line 49
    .line 50
    invoke-direct {v7, v4, v0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const v4, 0x76b04459

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v7, v10}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const/high16 v11, 0xc00000

    .line 61
    .line 62
    const/16 v12, 0x62

    .line 63
    .line 64
    move-wide v14, v1

    .line 65
    move-object v1, v3

    .line 66
    move-wide v3, v14

    .line 67
    const/4 v2, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    invoke-static/range {v1 .. v12}, Lwu3;->a(Lnd2;Ljl3;JJFLfx;Lka0;Lag1;II)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lag1;->Q()V

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lag1;->r()Lc33;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    new-instance v2, Ll4;

    .line 84
    .line 85
    const/4 v3, 0x6

    .line 86
    move-object/from16 v4, p0

    .line 87
    .line 88
    invoke-direct {v2, v13, v3, v4, v0}, Ll4;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iput-object v2, v1, Lc33;->d:Ldf1;

    .line 92
    .line 93
    :cond_3
    return-void
.end method
