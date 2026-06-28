.class public final Llj1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lbp2;


# instance fields
.field public n:J

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Llj1;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhr2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llj1;->o:Ljava/lang/Object;

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    iput-wide p1, p0, Llj1;->n:J

    .line 9
    .line 10
    return-void
.end method

.method public static a(Llj1;JF)J
    .locals 6

    .line 1
    iget-wide v0, p0, Llj1;->n:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lgo2;->e(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Llj1;->n:J

    .line 8
    .line 9
    iget-object v0, p0, Llj1;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lhr2;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1, p2}, Lgo2;->c(J)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2}, Llj1;->b(J)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    :goto_0
    cmpl-float p1, p1, p3

    .line 29
    .line 30
    if-ltz p1, :cond_4

    .line 31
    .line 32
    iget-object p1, p0, Llj1;->o:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lhr2;

    .line 35
    .line 36
    iget-wide v0, p0, Llj1;->n:J

    .line 37
    .line 38
    const-wide v2, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const/16 p2, 0x20

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    invoke-static {v0, v1}, Lgo2;->c(J)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    shr-long v4, v0, p2

    .line 52
    .line 53
    long-to-int v4, v4

    .line 54
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    div-float/2addr v4, p1

    .line 59
    and-long/2addr v0, v2

    .line 60
    long-to-int v0, v0

    .line 61
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    div-float/2addr v0, p1

    .line 66
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    int-to-long v4, p1

    .line 71
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    int-to-long v0, p1

    .line 76
    shl-long p1, v4, p2

    .line 77
    .line 78
    and-long/2addr v0, v2

    .line 79
    or-long/2addr p1, v0

    .line 80
    invoke-static {p3, p1, p2}, Lgo2;->f(FJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    iget-wide v0, p0, Llj1;->n:J

    .line 85
    .line 86
    invoke-static {v0, v1, p1, p2}, Lgo2;->d(JJ)J

    .line 87
    .line 88
    .line 89
    move-result-wide p0

    .line 90
    return-wide p0

    .line 91
    :cond_1
    invoke-virtual {p0, v0, v1}, Llj1;->b(J)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iget-wide v0, p0, Llj1;->n:J

    .line 96
    .line 97
    invoke-virtual {p0, v0, v1}, Llj1;->b(J)F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    mul-float/2addr v0, p3

    .line 106
    sub-float/2addr p1, v0

    .line 107
    iget-wide v0, p0, Llj1;->n:J

    .line 108
    .line 109
    iget-object p3, p0, Llj1;->o:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p3, Lhr2;

    .line 112
    .line 113
    sget-object v4, Lhr2;->o:Lhr2;

    .line 114
    .line 115
    if-ne p3, v4, :cond_2

    .line 116
    .line 117
    and-long/2addr v0, v2

    .line 118
    :goto_1
    long-to-int p3, v0

    .line 119
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    shr-long/2addr v0, p2

    .line 125
    goto :goto_1

    .line 126
    :goto_2
    iget-object p0, p0, Llj1;->o:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Lhr2;

    .line 129
    .line 130
    if-ne p0, v4, :cond_3

    .line 131
    .line 132
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    int-to-long p0, p0

    .line 137
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    int-to-long v0, p3

    .line 142
    shl-long/2addr p0, p2

    .line 143
    and-long p2, v0, v2

    .line 144
    .line 145
    or-long/2addr p0, p2

    .line 146
    return-wide p0

    .line 147
    :cond_3
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    int-to-long v0, p0

    .line 152
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    int-to-long p0, p0

    .line 157
    shl-long p2, v0, p2

    .line 158
    .line 159
    and-long/2addr p0, v2

    .line 160
    or-long/2addr p0, p2

    .line 161
    return-wide p0

    .line 162
    :cond_4
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    return-wide p0
.end method


# virtual methods
.method public b(J)F
    .locals 2

    .line 1
    iget-object p0, p0, Llj1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lhr2;

    .line 4
    .line 5
    sget-object v0, Lhr2;->o:Lhr2;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x20

    .line 10
    .line 11
    shr-long p0, p1, p0

    .line 12
    .line 13
    :goto_0
    long-to-int p0, p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    const-wide v0, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long p0, p1, v0

    .line 25
    .line 26
    goto :goto_0
.end method

.method public synthetic c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Llj1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lt15;

    .line 4
    .line 5
    iget-wide v0, p0, Llj1;->n:J

    .line 6
    .line 7
    iget-object p0, p1, Lt15;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public d()Lkj1;
    .locals 7

    .line 1
    new-instance v0, Ldh1;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ldh1;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object v1, p0, Llj1;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lfz;

    .line 12
    .line 13
    iget-wide v3, p0, Llj1;->n:J

    .line 14
    .line 15
    invoke-interface {v1, v3, v4}, Lfz;->Q(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-wide v3, p0, Llj1;->n:J

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    int-to-long v5, v5

    .line 26
    sub-long/2addr v3, v5

    .line 27
    iput-wide v3, p0, Llj1;->n:J

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ldh1;->m()Lkj1;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    const/4 v3, 0x4

    .line 41
    const/16 v4, 0x3a

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    invoke-static {v1, v4, v5, v3}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v6, -0x1

    .line 49
    if-eq v3, v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v4, v1}, Lci4;->a(Ldh1;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const-string v6, ""

    .line 70
    .line 71
    if-ne v3, v4, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v6, v1}, Lci4;->a(Ldh1;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-static {v0, v6, v1}, Lci4;->a(Ldh1;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0
.end method
