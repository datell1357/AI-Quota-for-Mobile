.class public final Ljd5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public n:Ljava/lang/String;

.field public o:I

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public r:I

.field public s:I

.field public final synthetic t:Lc85;


# direct methods
.method public constructor <init>(Lsb0;Ljava/lang/String;Lc85;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ljd5;->t:Lc85;

    .line 5
    .line 6
    const/4 p3, 0x2

    .line 7
    iput p3, p0, Ljd5;->o:I

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    iput p3, p0, Ljd5;->r:I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p1, Lsb0;->n:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Ljd5;->q:Z

    .line 18
    .line 19
    const p1, 0x7fffffff

    .line 20
    .line 21
    .line 22
    iput p1, p0, Ljd5;->s:I

    .line 23
    .line 24
    iput-object p2, p0, Ljd5;->p:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 10

    .line 1
    iget v0, p0, Ljd5;->o:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_e

    .line 5
    .line 6
    add-int/lit8 v2, v0, -0x1

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz v2, :cond_c

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    if-eq v2, v4, :cond_b

    .line 16
    .line 17
    iput v1, p0, Ljd5;->o:I

    .line 18
    .line 19
    iget v1, p0, Ljd5;->r:I

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget v2, p0, Ljd5;->r:I

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, -0x1

    .line 25
    if-eq v2, v5, :cond_a

    .line 26
    .line 27
    iget-object v6, p0, Ljd5;->p:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-static {v2, v7}, Lrp4;->b(II)V

    .line 34
    .line 35
    .line 36
    :goto_1
    if-ge v2, v7, :cond_2

    .line 37
    .line 38
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    iget-object v9, p0, Ljd5;->t:Lc85;

    .line 43
    .line 44
    iget-char v9, v9, Lc85;->a:C

    .line 45
    .line 46
    if-ne v8, v9, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v2, v5

    .line 53
    :goto_2
    if-ne v2, v5, :cond_3

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput v5, p0, Ljd5;->r:I

    .line 60
    .line 61
    move v7, v5

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    add-int/lit8 v7, v2, 0x1

    .line 64
    .line 65
    iput v7, p0, Ljd5;->r:I

    .line 66
    .line 67
    :goto_3
    if-ne v7, v1, :cond_4

    .line 68
    .line 69
    add-int/lit8 v7, v7, 0x1

    .line 70
    .line 71
    iput v7, p0, Ljd5;->r:I

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-le v7, v2, :cond_0

    .line 78
    .line 79
    iput v5, p0, Ljd5;->r:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    if-ge v1, v2, :cond_5

    .line 83
    .line 84
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    :cond_5
    if-ge v1, v2, :cond_6

    .line 88
    .line 89
    add-int/lit8 v7, v2, -0x1

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 92
    .line 93
    .line 94
    :cond_6
    iget-boolean v7, p0, Ljd5;->q:Z

    .line 95
    .line 96
    if-eqz v7, :cond_7

    .line 97
    .line 98
    if-ne v1, v2, :cond_7

    .line 99
    .line 100
    iget v1, p0, Ljd5;->r:I

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    iget v3, p0, Ljd5;->s:I

    .line 104
    .line 105
    if-ne v3, v0, :cond_8

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v5, p0, Ljd5;->r:I

    .line 112
    .line 113
    if-le v2, v1, :cond_9

    .line 114
    .line 115
    add-int/lit8 v3, v2, -0x1

    .line 116
    .line 117
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_8
    add-int/2addr v3, v5

    .line 122
    iput v3, p0, Ljd5;->s:I

    .line 123
    .line 124
    :cond_9
    :goto_4
    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    goto :goto_5

    .line 133
    :cond_a
    iput v4, p0, Ljd5;->o:I

    .line 134
    .line 135
    :goto_5
    iput-object v3, p0, Ljd5;->n:Ljava/lang/String;

    .line 136
    .line 137
    iget v1, p0, Ljd5;->o:I

    .line 138
    .line 139
    if-eq v1, v4, :cond_b

    .line 140
    .line 141
    iput v0, p0, Ljd5;->o:I

    .line 142
    .line 143
    return v0

    .line 144
    :cond_b
    const/4 p0, 0x0

    .line 145
    return p0

    .line 146
    :cond_c
    return v0

    .line 147
    :cond_d
    throw v3

    .line 148
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljd5;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Ljd5;->o:I

    .line 9
    .line 10
    iget-object v0, p0, Ljd5;->n:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Ljd5;->n:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lp61;->v()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
