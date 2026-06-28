.class public final Lpg0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:Lpg0;


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:Ljava/nio/charset/Charset;

.field public final p:[Lsh2;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    sget-object v0, Luf0;->c:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "application/atom+xml"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v1, "application/x-www-form-urlencoded"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sput-object v3, Lpg0;->q:Lpg0;

    .line 16
    .line 17
    sget-object v1, Luf0;->a:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    const-string v4, "application/json"

    .line 20
    .line 21
    invoke-static {v4, v1}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "application/octet-stream"

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static {v5, v6}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 29
    .line 30
    .line 31
    const-string v5, "application/soap+xml"

    .line 32
    .line 33
    invoke-static {v5, v1}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 34
    .line 35
    .line 36
    const-string v1, "application/svg+xml"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v1, "application/xhtml+xml"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v7, "application/xml"

    .line 49
    .line 50
    invoke-static {v7, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const-string v8, "image/bmp"

    .line 55
    .line 56
    invoke-static {v8, v6}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    const-string v9, "image/gif"

    .line 61
    .line 62
    invoke-static {v9, v6}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    const-string v10, "image/jpeg"

    .line 67
    .line 68
    invoke-static {v10, v6}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const-string v11, "image/png"

    .line 73
    .line 74
    invoke-static {v11, v6}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    const-string v12, "image/svg+xml"

    .line 79
    .line 80
    invoke-static {v12, v6}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    const-string v13, "image/tiff"

    .line 85
    .line 86
    invoke-static {v13, v6}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    const-string v14, "image/webp"

    .line 91
    .line 92
    invoke-static {v14, v6}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    const-string v15, "multipart/form-data"

    .line 97
    .line 98
    invoke-static {v15, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    const-string v6, "text/html"

    .line 103
    .line 104
    invoke-static {v6, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    move-object/from16 v17, v1

    .line 109
    .line 110
    const-string v1, "text/plain"

    .line 111
    .line 112
    invoke-static {v1, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    move-object/from16 v18, v1

    .line 117
    .line 118
    const-string v1, "text/xml"

    .line 119
    .line 120
    invoke-static {v1, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v1, "*/*"

    .line 125
    .line 126
    move-object/from16 v19, v0

    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-static {v1, v0}, Lpg0;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;

    .line 130
    .line 131
    .line 132
    move-object/from16 v16, v6

    .line 133
    .line 134
    move-object/from16 v6, v17

    .line 135
    .line 136
    move-object/from16 v17, v18

    .line 137
    .line 138
    move-object/from16 v18, v19

    .line 139
    .line 140
    filled-new-array/range {v2 .. v18}, [Lpg0;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 147
    .line 148
    .line 149
    const/4 v2, 0x0

    .line 150
    :goto_0
    const/16 v3, 0x11

    .line 151
    .line 152
    if-ge v2, v3, :cond_0

    .line 153
    .line 154
    aget-object v3, v0, v2

    .line 155
    .line 156
    iget-object v4, v3, Lpg0;->n:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpg0;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lpg0;->o:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lpg0;->p:[Lsh2;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;[Lsh2;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lpg0;->n:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lpg0;->o:Ljava/nio/charset/Charset;

    .line 15
    iput-object p3, p0, Lpg0;->p:[Lsh2;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lpg0;
    .locals 4

    .line 1
    const-string v0, "MIME type"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->G(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x22

    .line 25
    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    .line 28
    const/16 v3, 0x2c

    .line 29
    .line 30
    if-eq v2, v3, :cond_2

    .line 31
    .line 32
    const/16 v3, 0x3b

    .line 33
    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 41
    :cond_2
    :goto_1
    const-string v1, "MIME type may not contain reserved characters"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lw80;->l(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lpg0;

    .line 47
    .line 48
    invoke-direct {v0, p0, p1}, Lpg0;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public static b(Lxl1;)Lpg0;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_2

    .line 5
    :cond_0
    invoke-interface {p0}, Lxl1;->getContentType()Lgj1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_4

    .line 10
    .line 11
    invoke-interface {p0}, Lgj1;->a()[Lru;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length v1, p0

    .line 16
    if-lez v1, :cond_4

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aget-object p0, p0, v1

    .line 20
    .line 21
    iget-object v2, p0, Lru;->n:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p0, p0, Lru;->p:[Lsh2;

    .line 24
    .line 25
    invoke-virtual {p0}, [Lsh2;->clone()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, [Lsh2;

    .line 30
    .line 31
    array-length v3, p0

    .line 32
    :goto_0
    if-ge v1, v3, :cond_2

    .line 33
    .line 34
    aget-object v4, p0, v1

    .line 35
    .line 36
    invoke-interface {v4}, Lsh2;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "charset"

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-interface {v4}, Lsh2;->getValue()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lht4;->v(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move-object v1, v0

    .line 67
    :goto_1
    new-instance v3, Lpg0;

    .line 68
    .line 69
    array-length v4, p0

    .line 70
    if-lez v4, :cond_3

    .line 71
    .line 72
    move-object v0, p0

    .line 73
    :cond_3
    invoke-direct {v3, v2, v1, v0}, Lpg0;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;[Lsh2;)V

    .line 74
    .line 75
    .line 76
    return-object v3

    .line 77
    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lb40;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb40;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lpg0;->n:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lb40;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lpg0;->p:[Lsh2;

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    const-string p0, "; "

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ge v2, v4, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    array-length v2, v1

    .line 30
    sub-int/2addr v2, v4

    .line 31
    mul-int/lit8 v2, v2, 0x2

    .line 32
    .line 33
    array-length v4, v1

    .line 34
    move v5, v3

    .line 35
    :goto_0
    if-ge v5, v4, :cond_1

    .line 36
    .line 37
    aget-object v6, v1, v5

    .line 38
    .line 39
    invoke-static {v6}, Lbi4;->q(Lsh2;)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    add-int/2addr v2, v6

    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lb40;->e(I)V

    .line 48
    .line 49
    .line 50
    move v2, v3

    .line 51
    :goto_2
    array-length v4, v1

    .line 52
    if-ge v2, v4, :cond_4

    .line 53
    .line 54
    if-lez v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    aget-object v4, v1, v2

    .line 60
    .line 61
    invoke-static {v0, v4, v3}, Lbi4;->r(Lb40;Lsh2;Z)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget-object p0, p0, Lpg0;->o:Ljava/nio/charset/Charset;

    .line 68
    .line 69
    if-eqz p0, :cond_4

    .line 70
    .line 71
    const-string v1, "; charset="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lb40;->b(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v0, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {v0}, Lb40;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method
