.class public final Lks3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:Ljava/util/List;

.field public static final c:Lks3;

.field public static final d:Lks3;

.field public static final e:Lks3;

.field public static final f:Lks3;

.field public static final g:Lks3;

.field public static final h:Lks3;

.field public static final i:Lks3;

.field public static final j:Lks3;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x11

    .line 7
    .line 8
    invoke-static {v1}, Ldi0;->J(I)[I

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    array-length v3, v2

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v3, :cond_1

    .line 15
    .line 16
    aget v5, v2, v4

    .line 17
    .line 18
    invoke-static {v5}, Ldi0;->F(I)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    new-instance v7, Lks3;

    .line 27
    .line 28
    invoke-direct {v7, v5}, Lks3;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lks3;

    .line 36
    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v0, v6, Lks3;->a:I

    .line 43
    .line 44
    invoke-static {v0}, Lxw1;->z(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, " & "

    .line 49
    .line 50
    invoke-static {v5}, Lxw1;->z(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "Code value duplication between "

    .line 55
    .line 56
    invoke-static {v3, v0, v1, v2}, Lq73;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lks3;->b:Ljava/util/List;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lks3;->c:Lks3;

    .line 81
    .line 82
    const/4 v0, 0x2

    .line 83
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x3

    .line 87
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lks3;->d:Lks3;

    .line 92
    .line 93
    const/4 v0, 0x4

    .line 94
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lks3;->e:Lks3;

    .line 99
    .line 100
    const/4 v0, 0x5

    .line 101
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 102
    .line 103
    .line 104
    const/4 v0, 0x6

    .line 105
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lks3;->f:Lks3;

    .line 110
    .line 111
    const/4 v0, 0x7

    .line 112
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 113
    .line 114
    .line 115
    const/16 v0, 0x8

    .line 116
    .line 117
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sput-object v0, Lks3;->g:Lks3;

    .line 122
    .line 123
    invoke-static {v1}, Lxw1;->h(I)Lks3;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lks3;->h:Lks3;

    .line 128
    .line 129
    const/16 v0, 0x9

    .line 130
    .line 131
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 132
    .line 133
    .line 134
    const/16 v0, 0xa

    .line 135
    .line 136
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lks3;->i:Lks3;

    .line 141
    .line 142
    const/16 v0, 0xb

    .line 143
    .line 144
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 145
    .line 146
    .line 147
    const/16 v0, 0xc

    .line 148
    .line 149
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 150
    .line 151
    .line 152
    const/16 v0, 0xd

    .line 153
    .line 154
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 155
    .line 156
    .line 157
    const/16 v0, 0xe

    .line 158
    .line 159
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 160
    .line 161
    .line 162
    const/16 v0, 0xf

    .line 163
    .line 164
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    sput-object v0, Lks3;->j:Lks3;

    .line 169
    .line 170
    const/16 v0, 0x10

    .line 171
    .line 172
    invoke-static {v0}, Lxw1;->h(I)Lks3;

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lks3;->a:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p1, "canonicalCode"

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lks3;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lks3;

    .line 10
    .line 11
    iget p0, p0, Lks3;->a:I

    .line 12
    .line 13
    iget p1, p1, Lks3;->a:I

    .line 14
    .line 15
    if-ne p0, p1, :cond_2

    .line 16
    .line 17
    :goto_0
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget p0, p0, Lks3;->a:I

    .line 3
    .line 4
    invoke-static {p0}, Ldi0;->f(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Status{canonicalCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lks3;->a:I

    .line 9
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string p0, "null"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    const-string p0, "UNAUTHENTICATED"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_1
    const-string p0, "DATA_LOSS"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_2
    const-string p0, "UNAVAILABLE"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_3
    const-string p0, "INTERNAL"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_4
    const-string p0, "UNIMPLEMENTED"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_5
    const-string p0, "OUT_OF_RANGE"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_6
    const-string p0, "ABORTED"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_7
    const-string p0, "FAILED_PRECONDITION"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_8
    const-string p0, "RESOURCE_EXHAUSTED"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_9
    const-string p0, "PERMISSION_DENIED"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_a
    const-string p0, "ALREADY_EXISTS"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_b
    const-string p0, "NOT_FOUND"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_c
    const-string p0, "DEADLINE_EXCEEDED"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_d
    const-string p0, "INVALID_ARGUMENT"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_e
    const-string p0, "UNKNOWN"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_f
    const-string p0, "CANCELLED"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_10
    const-string p0, "OK"

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p0, ", description=null}"

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
