.class public final enum Ld21;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final o:Lb21;

.field public static final enum p:Ld21;

.field public static final enum q:Ld21;

.field public static final enum r:Ld21;

.field public static final enum s:Ld21;

.field public static final enum t:Ld21;

.field public static final enum u:Ld21;

.field public static final synthetic v:[Ld21;


# instance fields
.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ld21;

    .line 2
    .line 3
    const-string v1, "NO_ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1, v2}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ld21;->p:Ld21;

    .line 10
    .line 11
    new-instance v1, Ld21;

    .line 12
    .line 13
    const-string v2, "PROTOCOL_ERROR"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v2, v3}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ld21;->q:Ld21;

    .line 20
    .line 21
    new-instance v2, Ld21;

    .line 22
    .line 23
    const-string v3, "INTERNAL_ERROR"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v4, v3, v4}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Ld21;->r:Ld21;

    .line 30
    .line 31
    new-instance v3, Ld21;

    .line 32
    .line 33
    const-string v4, "FLOW_CONTROL_ERROR"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v5, v4, v5}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Ld21;->s:Ld21;

    .line 40
    .line 41
    new-instance v4, Ld21;

    .line 42
    .line 43
    const-string v5, "SETTINGS_TIMEOUT"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v6, v5, v6}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Ld21;

    .line 50
    .line 51
    const-string v6, "STREAM_CLOSED"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v7, v6, v7}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Ld21;

    .line 58
    .line 59
    const-string v7, "FRAME_SIZE_ERROR"

    .line 60
    .line 61
    const/4 v8, 0x6

    .line 62
    invoke-direct {v6, v8, v7, v8}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Ld21;

    .line 66
    .line 67
    const-string v8, "REFUSED_STREAM"

    .line 68
    .line 69
    const/4 v9, 0x7

    .line 70
    invoke-direct {v7, v9, v8, v9}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    sput-object v7, Ld21;->t:Ld21;

    .line 74
    .line 75
    new-instance v8, Ld21;

    .line 76
    .line 77
    const-string v9, "CANCEL"

    .line 78
    .line 79
    const/16 v10, 0x8

    .line 80
    .line 81
    invoke-direct {v8, v10, v9, v10}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    sput-object v8, Ld21;->u:Ld21;

    .line 85
    .line 86
    new-instance v9, Ld21;

    .line 87
    .line 88
    const-string v10, "COMPRESSION_ERROR"

    .line 89
    .line 90
    const/16 v11, 0x9

    .line 91
    .line 92
    invoke-direct {v9, v11, v10, v11}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    new-instance v10, Ld21;

    .line 96
    .line 97
    const-string v11, "CONNECT_ERROR"

    .line 98
    .line 99
    const/16 v12, 0xa

    .line 100
    .line 101
    invoke-direct {v10, v12, v11, v12}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    new-instance v11, Ld21;

    .line 105
    .line 106
    const-string v12, "ENHANCE_YOUR_CALM"

    .line 107
    .line 108
    const/16 v13, 0xb

    .line 109
    .line 110
    invoke-direct {v11, v13, v12, v13}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    new-instance v12, Ld21;

    .line 114
    .line 115
    const-string v13, "INADEQUATE_SECURITY"

    .line 116
    .line 117
    const/16 v14, 0xc

    .line 118
    .line 119
    invoke-direct {v12, v14, v13, v14}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    new-instance v13, Ld21;

    .line 123
    .line 124
    const-string v14, "HTTP_1_1_REQUIRED"

    .line 125
    .line 126
    const/16 v15, 0xd

    .line 127
    .line 128
    invoke-direct {v13, v15, v14, v15}, Ld21;-><init>(ILjava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    filled-new-array/range {v0 .. v13}, [Ld21;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Ld21;->v:[Ld21;

    .line 136
    .line 137
    new-instance v0, Lb21;

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    .line 141
    .line 142
    .line 143
    sput-object v0, Ld21;->o:Lb21;

    .line 144
    .line 145
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ld21;->n:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld21;
    .locals 1

    .line 1
    const-class v0, Ld21;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ld21;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ld21;
    .locals 1

    .line 1
    sget-object v0, Ld21;->v:[Ld21;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ld21;

    .line 8
    .line 9
    return-object v0
.end method
