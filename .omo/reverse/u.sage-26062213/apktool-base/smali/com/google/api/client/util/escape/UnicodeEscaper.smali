.class public abstract Lcom/google/api/client/util/escape/UnicodeEscaper;
.super Lcom/google/api/client/util/escape/Escaper;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/util/escape/Escaper;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static codePointAt(Ljava/lang/CharSequence;II)I
    .locals 5

    .line 1
    if-ge p1, p2, :cond_5

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xd800

    .line 10
    .line 11
    .line 12
    if-lt v1, v2, :cond_4

    .line 13
    .line 14
    const v2, 0xdfff

    .line 15
    .line 16
    .line 17
    if-le v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const v2, 0xdbff

    .line 21
    .line 22
    .line 23
    const-string v3, " at index "

    .line 24
    .line 25
    const-string v4, "\' with value "

    .line 26
    .line 27
    if-gt v1, v2, :cond_3

    .line 28
    .line 29
    if-ne v0, p2, :cond_1

    .line 30
    .line 31
    neg-int p0, v1

    .line 32
    return p0

    .line 33
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-static {v1, p0}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "Expected low surrogate but got char \'"

    .line 53
    .line 54
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v0, "Unexpected low surrogate character \'"

    .line 85
    .line 86
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_4
    :goto_0
    return v1

    .line 113
    :cond_5
    const-string p0, "Index exceeds specified range"

    .line 114
    .line 115
    invoke-static {p0}, Lmk0;->h(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x0

    .line 119
    return p0
.end method

.method private static growBuffer([CII)[C
    .locals 1

    .line 1
    new-array p2, p2, [C

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-object p2
.end method


# virtual methods
.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract escape(I)[C
.end method

.method public final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/google/api/client/util/escape/Platform;->charBufferFromThreadLocal()[C

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge p2, v0, :cond_6

    .line 13
    .line 14
    invoke-static {p1, p2, v0}, Lcom/google/api/client/util/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ltz v5, :cond_5

    .line 19
    .line 20
    invoke-virtual {p0, v5}, Lcom/google/api/client/util/escape/UnicodeEscaper;->escape(I)[C

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v5, 0x1

    .line 33
    :goto_1
    add-int/2addr v5, p2

    .line 34
    if-eqz v6, :cond_4

    .line 35
    .line 36
    sub-int v7, p2, v3

    .line 37
    .line 38
    add-int v8, v4, v7

    .line 39
    .line 40
    array-length v9, v6

    .line 41
    add-int/2addr v9, v8

    .line 42
    array-length v10, v1

    .line 43
    if-ge v10, v9, :cond_1

    .line 44
    .line 45
    add-int/2addr v9, v0

    .line 46
    sub-int/2addr v9, p2

    .line 47
    add-int/lit8 v9, v9, 0x20

    .line 48
    .line 49
    invoke-static {v1, v4, v9}, Lcom/google/api/client/util/escape/UnicodeEscaper;->growBuffer([CII)[C

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_1
    if-lez v7, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, v3, p2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 56
    .line 57
    .line 58
    move v4, v8

    .line 59
    :cond_2
    array-length p2, v6

    .line 60
    if-lez p2, :cond_3

    .line 61
    .line 62
    array-length p2, v6

    .line 63
    invoke-static {v6, v2, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    array-length p2, v6

    .line 67
    add-int/2addr v4, p2

    .line 68
    :cond_3
    move v3, v5

    .line 69
    :cond_4
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/api/client/util/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const-string p0, "Trailing high surrogate at end of input"

    .line 75
    .line 76
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    return-object p0

    .line 81
    :cond_6
    sub-int p0, v0, v3

    .line 82
    .line 83
    if-lez p0, :cond_8

    .line 84
    .line 85
    add-int/2addr p0, v4

    .line 86
    array-length p2, v1

    .line 87
    if-ge p2, p0, :cond_7

    .line 88
    .line 89
    invoke-static {v1, v4, p0}, Lcom/google/api/client/util/escape/UnicodeEscaper;->growBuffer([CII)[C

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    move-object v1, p2

    .line 94
    :cond_7
    invoke-virtual {p1, v3, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 95
    .line 96
    .line 97
    move v4, p0

    .line 98
    :cond_8
    new-instance p0, Ljava/lang/String;

    .line 99
    .line 100
    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 101
    .line 102
    .line 103
    return-object p0
.end method

.method public abstract nextEscapeIndex(Ljava/lang/CharSequence;II)I
.end method
