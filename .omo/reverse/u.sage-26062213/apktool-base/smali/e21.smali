.class public final enum Le21;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le21;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic o:[Le21;


# instance fields
.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Le21;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "NOT_SUPPORTED_ERR"

    .line 5
    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Le21;-><init>(ILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Le21;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v4, "INVALID_STATE_ERR"

    .line 15
    .line 16
    const/16 v5, 0xb

    .line 17
    .line 18
    invoke-direct {v1, v2, v4, v5}, Le21;-><init>(ILjava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Le21;

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    const/16 v6, 0x12

    .line 25
    .line 26
    const-string v7, "SECURITY_ERR"

    .line 27
    .line 28
    invoke-direct {v2, v4, v7, v6}, Le21;-><init>(ILjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    move v4, v3

    .line 32
    new-instance v3, Le21;

    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    const/16 v7, 0x13

    .line 36
    .line 37
    const-string v8, "NETWORK_ERR"

    .line 38
    .line 39
    invoke-direct {v3, v6, v8, v7}, Le21;-><init>(ILjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    move v6, v4

    .line 43
    new-instance v4, Le21;

    .line 44
    .line 45
    const/4 v7, 0x4

    .line 46
    const/16 v8, 0x14

    .line 47
    .line 48
    const-string v9, "ABORT_ERR"

    .line 49
    .line 50
    invoke-direct {v4, v7, v9, v8}, Le21;-><init>(ILjava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    move v7, v5

    .line 54
    new-instance v5, Le21;

    .line 55
    .line 56
    const/4 v8, 0x5

    .line 57
    const/16 v9, 0x17

    .line 58
    .line 59
    const-string v10, "TIMEOUT_ERR"

    .line 60
    .line 61
    invoke-direct {v5, v8, v10, v9}, Le21;-><init>(ILjava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    move v8, v6

    .line 65
    new-instance v6, Le21;

    .line 66
    .line 67
    const/4 v9, 0x6

    .line 68
    const/16 v10, 0x1b

    .line 69
    .line 70
    const-string v11, "ENCODING_ERR"

    .line 71
    .line 72
    invoke-direct {v6, v9, v11, v10}, Le21;-><init>(ILjava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    move v9, v7

    .line 76
    new-instance v7, Le21;

    .line 77
    .line 78
    const/4 v10, 0x7

    .line 79
    const/16 v11, 0x1c

    .line 80
    .line 81
    const-string v12, "UNKNOWN_ERR"

    .line 82
    .line 83
    invoke-direct {v7, v10, v12, v11}, Le21;-><init>(ILjava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    move v10, v8

    .line 87
    new-instance v8, Le21;

    .line 88
    .line 89
    const/16 v11, 0x8

    .line 90
    .line 91
    const/16 v12, 0x1d

    .line 92
    .line 93
    const-string v13, "CONSTRAINT_ERR"

    .line 94
    .line 95
    invoke-direct {v8, v11, v13, v12}, Le21;-><init>(ILjava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    move v11, v9

    .line 99
    new-instance v9, Le21;

    .line 100
    .line 101
    const-string v12, "DATA_ERR"

    .line 102
    .line 103
    const/16 v13, 0x1e

    .line 104
    .line 105
    invoke-direct {v9, v10, v12, v13}, Le21;-><init>(ILjava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    new-instance v10, Le21;

    .line 109
    .line 110
    const/16 v12, 0xa

    .line 111
    .line 112
    const/16 v13, 0x23

    .line 113
    .line 114
    const-string v14, "NOT_ALLOWED_ERR"

    .line 115
    .line 116
    invoke-direct {v10, v12, v14, v13}, Le21;-><init>(ILjava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    move v12, v11

    .line 120
    new-instance v11, Le21;

    .line 121
    .line 122
    const-string v13, "ATTESTATION_NOT_PRIVATE_ERR"

    .line 123
    .line 124
    const/16 v14, 0x24

    .line 125
    .line 126
    invoke-direct {v11, v12, v13, v14}, Le21;-><init>(ILjava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    filled-new-array/range {v0 .. v11}, [Le21;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Le21;->o:[Le21;

    .line 134
    .line 135
    new-instance v0, Lav4;

    .line 136
    .line 137
    const/16 v1, 0x18

    .line 138
    .line 139
    invoke-direct {v0, v1}, Lav4;-><init>(I)V

    .line 140
    .line 141
    .line 142
    sput-object v0, Le21;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 143
    .line 144
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Le21;->n:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Le21;
    .locals 5

    .line 1
    invoke-static {}, Le21;->values()[Le21;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Le21;->n:I

    .line 12
    .line 13
    if-ne p0, v4, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lc21;

    .line 20
    .line 21
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    const-string v1, "Error code "

    .line 24
    .line 25
    const-string v2, " is not supported"

    .line 26
    .line 27
    invoke-static {v1, p0, v2}, Lxw1;->q(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Le21;
    .locals 1

    .line 1
    const-class v0, Le21;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Le21;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Le21;
    .locals 1

    .line 1
    sget-object v0, Le21;->o:[Le21;

    .line 2
    .line 3
    invoke-virtual {v0}, [Le21;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Le21;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p0, p0, Le21;->n:I

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
