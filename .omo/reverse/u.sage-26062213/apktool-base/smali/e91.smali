.class public final Le91;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li91;JII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le91;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iput-wide p2, p0, Le91;->b:J

    .line 7
    .line 8
    iput p4, p0, Le91;->a:I

    .line 9
    .line 10
    iput p5, p0, Le91;->c:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lkn4;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic c(IIBLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, p2

    .line 18
    add-int/2addr v0, v1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method


# virtual methods
.method public a(Ld91;ZIIII)Lmt1;
    .locals 0

    .line 1
    iget-boolean p1, p1, Ld91;->b:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Le91;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Li91;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :goto_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public b(ZIJLds1;IIIZZ)Ld91;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move/from16 v3, p6

    .line 8
    .line 9
    move/from16 v4, p8

    .line 10
    .line 11
    iget v5, v0, Le91;->a:I

    .line 12
    .line 13
    iget v6, v0, Le91;->c:I

    .line 14
    .line 15
    iget-wide v7, v0, Le91;->b:J

    .line 16
    .line 17
    iget-object v9, v0, Le91;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v9, Li91;

    .line 20
    .line 21
    add-int v10, p7, v4

    .line 22
    .line 23
    const/4 v11, 0x1

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    new-instance v0, Ld91;

    .line 27
    .line 28
    invoke-direct {v0, v11, v11}, Ld91;-><init>(ZZ)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    iget-wide v12, v2, Lds1;->a:J

    .line 33
    .line 34
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const v2, 0x7fffffff

    .line 38
    .line 39
    .line 40
    if-lt v3, v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-wide v16, 0xffffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long v14, p3, v16

    .line 49
    .line 50
    long-to-int v9, v14

    .line 51
    and-long v14, v12, v16

    .line 52
    .line 53
    long-to-int v14, v14

    .line 54
    sub-int/2addr v9, v14

    .line 55
    if-gez v9, :cond_2

    .line 56
    .line 57
    :goto_0
    new-instance v0, Ld91;

    .line 58
    .line 59
    invoke-direct {v0, v11, v11}, Ld91;-><init>(ZZ)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    if-nez v1, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/16 v9, 0x20

    .line 67
    .line 68
    if-lt v1, v2, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    shr-long v1, p3, v9

    .line 72
    .line 73
    long-to-int v1, v1

    .line 74
    shr-long v14, v12, v9

    .line 75
    .line 76
    long-to-int v2, v14

    .line 77
    sub-int/2addr v1, v2

    .line 78
    if-gez v1, :cond_6

    .line 79
    .line 80
    :goto_1
    if-eqz p9, :cond_5

    .line 81
    .line 82
    new-instance v0, Ld91;

    .line 83
    .line 84
    invoke-direct {v0, v11, v11}, Ld91;-><init>(ZZ)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_5
    invoke-static {v7, v8}, Lmf0;->h(J)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    and-long v7, p3, v16

    .line 93
    .line 94
    long-to-int v2, v7

    .line 95
    sub-int/2addr v2, v6

    .line 96
    sub-int/2addr v2, v4

    .line 97
    invoke-static {v1, v2}, Lds1;->a(II)J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    shr-long v6, v12, v9

    .line 102
    .line 103
    long-to-int v4, v6

    .line 104
    sub-int/2addr v4, v5

    .line 105
    and-long v5, v12, v16

    .line 106
    .line 107
    long-to-int v5, v5

    .line 108
    invoke-static {v4, v5}, Lds1;->a(II)J

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    new-instance v6, Lds1;

    .line 113
    .line 114
    invoke-direct {v6, v4, v5}, Lds1;-><init>(J)V

    .line 115
    .line 116
    .line 117
    add-int/2addr v3, v11

    .line 118
    const/4 v9, 0x1

    .line 119
    move v7, v10

    .line 120
    const/4 v10, 0x0

    .line 121
    move-object v5, v6

    .line 122
    move v6, v3

    .line 123
    move-wide v3, v1

    .line 124
    const/4 v2, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    move/from16 v1, p1

    .line 127
    .line 128
    invoke-virtual/range {v0 .. v10}, Le91;->b(ZIJLds1;IIIZZ)Ld91;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Ld91;

    .line 133
    .line 134
    iget-boolean v0, v0, Ld91;->b:Z

    .line 135
    .line 136
    invoke-direct {v1, v11, v0}, Ld91;-><init>(ZZ)V

    .line 137
    .line 138
    .line 139
    return-object v1

    .line 140
    :cond_6
    :goto_2
    and-long v0, v12, v16

    .line 141
    .line 142
    long-to-int v0, v0

    .line 143
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 144
    .line 145
    .line 146
    new-instance v0, Ld91;

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    invoke-direct {v0, v1, v1}, Ld91;-><init>(ZZ)V

    .line 150
    .line 151
    .line 152
    return-object v0
.end method
