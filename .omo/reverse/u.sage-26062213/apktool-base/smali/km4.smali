.class public final enum Lkm4;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltn4;


# static fields
.field public static final enum o:Lkm4;

.field public static final enum p:Lkm4;

.field public static final enum q:Lkm4;

.field public static final enum r:Lkm4;

.field public static final enum s:Lkm4;

.field public static final enum t:Lkm4;

.field public static final enum u:Lkm4;

.field public static final enum v:Lkm4;

.field public static final synthetic w:[Lkm4;


# instance fields
.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lkm4;

    .line 2
    .line 3
    const-string v1, "IAB_TCF_PURPOSE_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1, v2}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lkm4;

    .line 10
    .line 11
    const-string v2, "IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v3, v2, v3}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lkm4;->o:Lkm4;

    .line 18
    .line 19
    new-instance v2, Lkm4;

    .line 20
    .line 21
    const-string v3, "IAB_TCF_PURPOSE_SELECT_BASIC_ADS"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v4, v3, v4}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lkm4;->p:Lkm4;

    .line 28
    .line 29
    new-instance v3, Lkm4;

    .line 30
    .line 31
    const-string v4, "IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v5, v4, v5}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lkm4;->q:Lkm4;

    .line 38
    .line 39
    new-instance v4, Lkm4;

    .line 40
    .line 41
    const-string v5, "IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v6, v5, v6}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lkm4;->r:Lkm4;

    .line 48
    .line 49
    new-instance v5, Lkm4;

    .line 50
    .line 51
    const-string v6, "IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_CONTENT_PROFILE"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v7, v6, v7}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Lkm4;

    .line 58
    .line 59
    const-string v7, "IAB_TCF_PURPOSE_SELECT_PERSONALISED_CONTENT"

    .line 60
    .line 61
    const/4 v8, 0x6

    .line 62
    invoke-direct {v6, v8, v7, v8}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Lkm4;

    .line 66
    .line 67
    const-string v8, "IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE"

    .line 68
    .line 69
    const/4 v9, 0x7

    .line 70
    invoke-direct {v7, v9, v8, v9}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    sput-object v7, Lkm4;->s:Lkm4;

    .line 74
    .line 75
    new-instance v8, Lkm4;

    .line 76
    .line 77
    const-string v9, "IAB_TCF_PURPOSE_MEASURE_CONTENT_PERFORMANCE"

    .line 78
    .line 79
    const/16 v10, 0x8

    .line 80
    .line 81
    invoke-direct {v8, v10, v9, v10}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    new-instance v9, Lkm4;

    .line 85
    .line 86
    const-string v10, "IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS"

    .line 87
    .line 88
    const/16 v11, 0x9

    .line 89
    .line 90
    invoke-direct {v9, v11, v10, v11}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    sput-object v9, Lkm4;->t:Lkm4;

    .line 94
    .line 95
    new-instance v10, Lkm4;

    .line 96
    .line 97
    const-string v11, "IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS"

    .line 98
    .line 99
    const/16 v12, 0xa

    .line 100
    .line 101
    invoke-direct {v10, v12, v11, v12}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    sput-object v10, Lkm4;->u:Lkm4;

    .line 105
    .line 106
    new-instance v11, Lkm4;

    .line 107
    .line 108
    const-string v12, "IAB_TCF_PURPOSE_USE_LIMITED_DATA_TO_SELECT_CONTENT"

    .line 109
    .line 110
    const/16 v13, 0xb

    .line 111
    .line 112
    invoke-direct {v11, v13, v12, v13}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    new-instance v12, Lkm4;

    .line 116
    .line 117
    const/16 v13, 0xc

    .line 118
    .line 119
    const/4 v14, -0x1

    .line 120
    const-string v15, "UNRECOGNIZED"

    .line 121
    .line 122
    invoke-direct {v12, v13, v15, v14}, Lkm4;-><init>(ILjava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    sput-object v12, Lkm4;->v:Lkm4;

    .line 126
    .line 127
    filled-new-array/range {v0 .. v12}, [Lkm4;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lkm4;->w:[Lkm4;

    .line 132
    .line 133
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lkm4;->n:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lkm4;
    .locals 1

    .line 1
    sget-object v0, Lkm4;->w:[Lkm4;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lkm4;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkm4;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lkm4;->n:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final zza()I
    .locals 1

    .line 1
    sget-object v0, Lkm4;->v:Lkm4;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lkm4;->n:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const-string p0, "Can\'t get the number of an unknown enum value."

    .line 9
    .line 10
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0
.end method
