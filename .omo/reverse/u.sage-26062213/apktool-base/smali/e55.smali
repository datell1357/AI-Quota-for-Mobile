.class public final enum Le55;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltn4;


# static fields
.field public static final synthetic A:[Le55;

.field public static final enum o:Le55;

.field public static final enum p:Le55;

.field public static final enum q:Le55;

.field public static final enum r:Le55;

.field public static final enum s:Le55;

.field public static final enum t:Le55;

.field public static final enum u:Le55;

.field public static final enum v:Le55;

.field public static final enum w:Le55;

.field public static final enum x:Le55;

.field public static final enum y:Le55;

.field public static final enum z:Le55;


# instance fields
.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Le55;

    .line 2
    .line 3
    const-string v1, "CLIENT_UPLOAD_ELIGIBILITY_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1, v2}, Le55;-><init>(ILjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Le55;->o:Le55;

    .line 10
    .line 11
    new-instance v1, Le55;

    .line 12
    .line 13
    const-string v2, "CLIENT_UPLOAD_ELIGIBLE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v2, v3}, Le55;-><init>(ILjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Le55;->p:Le55;

    .line 20
    .line 21
    new-instance v2, Le55;

    .line 22
    .line 23
    const-string v3, "MEASUREMENT_SERVICE_NOT_ENABLED"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v4, v3, v4}, Le55;-><init>(ILjava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Le55;->q:Le55;

    .line 30
    .line 31
    new-instance v3, Le55;

    .line 32
    .line 33
    const-string v4, "ANDROID_TOO_OLD"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v5, v4, v5}, Le55;-><init>(ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Le55;->r:Le55;

    .line 40
    .line 41
    new-instance v4, Le55;

    .line 42
    .line 43
    const-string v5, "NON_PLAY_MODE"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v6, v5, v6}, Le55;-><init>(ILjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Le55;->s:Le55;

    .line 50
    .line 51
    new-instance v5, Le55;

    .line 52
    .line 53
    const-string v6, "SDK_TOO_OLD"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v7, v6, v7}, Le55;-><init>(ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Le55;->t:Le55;

    .line 60
    .line 61
    new-instance v6, Le55;

    .line 62
    .line 63
    const-string v7, "MISSING_JOB_SCHEDULER"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v8, v7, v8}, Le55;-><init>(ILjava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Le55;->u:Le55;

    .line 70
    .line 71
    new-instance v7, Le55;

    .line 72
    .line 73
    const-string v8, "NOT_ENABLED_IN_MANIFEST"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v9, v8, v9}, Le55;-><init>(ILjava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Le55;->v:Le55;

    .line 80
    .line 81
    new-instance v8, Le55;

    .line 82
    .line 83
    const-string v9, "CLIENT_FLAG_OFF"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v10, v9, v10}, Le55;-><init>(ILjava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Le55;->w:Le55;

    .line 91
    .line 92
    new-instance v9, Le55;

    .line 93
    .line 94
    const/16 v10, 0x9

    .line 95
    .line 96
    const/16 v11, 0x14

    .line 97
    .line 98
    const-string v12, "SERVICE_FLAG_OFF"

    .line 99
    .line 100
    invoke-direct {v9, v10, v12, v11}, Le55;-><init>(ILjava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    sput-object v9, Le55;->x:Le55;

    .line 104
    .line 105
    new-instance v10, Le55;

    .line 106
    .line 107
    const/16 v11, 0xa

    .line 108
    .line 109
    const/16 v12, 0x15

    .line 110
    .line 111
    const-string v13, "PINNED_TO_SERVICE_UPLOAD"

    .line 112
    .line 113
    invoke-direct {v10, v11, v13, v12}, Le55;-><init>(ILjava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    sput-object v10, Le55;->y:Le55;

    .line 117
    .line 118
    new-instance v11, Le55;

    .line 119
    .line 120
    const/16 v12, 0xb

    .line 121
    .line 122
    const/16 v13, 0x16

    .line 123
    .line 124
    const-string v14, "MISSING_SGTM_SERVER_URL"

    .line 125
    .line 126
    invoke-direct {v11, v12, v14, v13}, Le55;-><init>(ILjava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    sput-object v11, Le55;->z:Le55;

    .line 130
    .line 131
    filled-new-array/range {v0 .. v11}, [Le55;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Le55;->A:[Le55;

    .line 136
    .line 137
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Le55;->n:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Le55;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p0, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    sget-object p0, Le55;->z:Le55;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    sget-object p0, Le55;->y:Le55;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    sget-object p0, Le55;->x:Le55;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    sget-object p0, Le55;->w:Le55;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    sget-object p0, Le55;->v:Le55;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    sget-object p0, Le55;->u:Le55;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    sget-object p0, Le55;->t:Le55;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    sget-object p0, Le55;->s:Le55;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    sget-object p0, Le55;->r:Le55;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    sget-object p0, Le55;->q:Le55;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    sget-object p0, Le55;->p:Le55;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    sget-object p0, Le55;->o:Le55;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Le55;
    .locals 1

    .line 1
    sget-object v0, Le55;->A:[Le55;

    .line 2
    .line 3
    invoke-virtual {v0}, [Le55;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Le55;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Le55;->n:I

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
    .locals 0

    .line 1
    iget p0, p0, Le55;->n:I

    .line 2
    .line 3
    return p0
.end method
