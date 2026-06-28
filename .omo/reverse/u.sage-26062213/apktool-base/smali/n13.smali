.class public abstract Ln13;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lnh0;


# static fields
.field public static final d:Ljava/util/BitSet;

.field public static final e:Ljava/util/BitSet;

.field public static final f:Ljava/util/BitSet;


# instance fields
.field public final a:[Lih0;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lqv3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    const/16 v1, 0x3b

    .line 4
    .line 5
    filled-new-array {v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lqv3;->k([I)Ljava/util/BitSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Ln13;->d:Ljava/util/BitSet;

    .line 14
    .line 15
    filled-new-array {v1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lqv3;->k([I)Ljava/util/BitSet;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Ln13;->e:Ljava/util/BitSet;

    .line 24
    .line 25
    const/16 v0, 0x2c

    .line 26
    .line 27
    const/16 v2, 0x5c

    .line 28
    .line 29
    const/16 v3, 0x20

    .line 30
    .line 31
    const/16 v4, 0x22

    .line 32
    .line 33
    filled-new-array {v3, v4, v0, v1, v2}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lqv3;->k([I)Ljava/util/BitSet;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Ln13;->f:Ljava/util/BitSet;

    .line 42
    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lu80;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, [Lu80;->clone()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [Lih0;

    .line 9
    .line 10
    iput-object v0, p0, Ln13;->a:[Lih0;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ln13;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    .line 24
    aget-object v2, p1, v1

    .line 25
    .line 26
    iget-object v3, p0, Ln13;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-interface {v2}, Lu80;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lqv3;->p:Lqv3;

    .line 45
    .line 46
    iput-object p1, p0, Ln13;->c:Lqv3;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lku;Ljh0;)V
    .locals 3

    .line 1
    const-string v0, "Cookie"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ln13;->a:[Lih0;

    .line 7
    .line 8
    array-length v0, p0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    invoke-interface {v2, p1, p2}, Lih0;->a(Lku;Ljh0;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final b(Lku;Ljh0;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Ln13;->a:[Lih0;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget-object v3, p0, v2

    .line 9
    .line 10
    invoke-interface {v3, p1, p2}, Lih0;->b(Lku;Ljh0;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final c(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 8

    .line 1
    const-string p0, "List of cookies"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lw80;->I(Ljava/util/Collection;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, 0x1

    .line 11
    if-le p0, v0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Llh0;->o:Llh0;

    .line 19
    .line 20
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    move-object p1, p0

    .line 24
    :cond_0
    new-instance p0, Lb40;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    mul-int/lit8 v1, v1, 0x14

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lb40;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-string v1, "Cookie"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lb40;->b(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, ": "

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lb40;->b(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    move v2, v1

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ge v2, v3, :cond_8

    .line 52
    .line 53
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lku;

    .line 58
    .line 59
    if-lez v2, :cond_1

    .line 60
    .line 61
    const/16 v4, 0x3b

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Lb40;->a(C)V

    .line 64
    .line 65
    .line 66
    const/16 v4, 0x20

    .line 67
    .line 68
    invoke-virtual {p0, v4}, Lb40;->a(C)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v4, v3, Lku;->n:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Lb40;->b(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, v3, Lku;->p:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v3, :cond_7

    .line 79
    .line 80
    const/16 v4, 0x3d

    .line 81
    .line 82
    invoke-virtual {p0, v4}, Lb40;->a(C)V

    .line 83
    .line 84
    .line 85
    move v4, v1

    .line 86
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-ge v4, v5, :cond_6

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    sget-object v6, Ln13;->f:Ljava/util/BitSet;

    .line 97
    .line 98
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    const/16 v4, 0x22

    .line 105
    .line 106
    invoke-virtual {p0, v4}, Lb40;->a(C)V

    .line 107
    .line 108
    .line 109
    move v5, v1

    .line 110
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-ge v5, v6, :cond_4

    .line 115
    .line 116
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    const/16 v7, 0x5c

    .line 121
    .line 122
    if-eq v6, v4, :cond_2

    .line 123
    .line 124
    if-ne v6, v7, :cond_3

    .line 125
    .line 126
    :cond_2
    invoke-virtual {p0, v7}, Lb40;->a(C)V

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-virtual {p0, v6}, Lb40;->a(C)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {p0, v4}, Lb40;->a(C)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    invoke-virtual {p0, v3}, Lb40;->b(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcz;

    .line 154
    .line 155
    invoke-direct {v0, p0}, Lcz;-><init>(Lb40;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    return-object p1
.end method

.method public final d()Lgj1;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final e(Lgj1;Ljh0;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "Header"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lsh2;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "Set-Cookie"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "\'"

    .line 17
    .line 18
    if-eqz v0, :cond_e

    .line 19
    .line 20
    instance-of v0, p1, Lcz;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lcz;

    .line 27
    .line 28
    iget-object v3, v0, Lcz;->o:Lb40;

    .line 29
    .line 30
    new-instance v4, Lky0;

    .line 31
    .line 32
    iget v0, v0, Lcz;->p:I

    .line 33
    .line 34
    iget v5, v3, Lb40;->o:I

    .line 35
    .line 36
    invoke-direct {v4, v0, v5}, Lky0;-><init>(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Lsh2;->getValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_d

    .line 45
    .line 46
    new-instance v3, Lb40;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-direct {v3, v4}, Lb40;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lky0;

    .line 59
    .line 60
    iget v0, v3, Lb40;->o:I

    .line 61
    .line 62
    invoke-direct {v4, v2, v0}, Lky0;-><init>(II)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v0, p0, Ln13;->c:Lqv3;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    sget-object v0, Ln13;->d:Ljava/util/BitSet;

    .line 71
    .line 72
    invoke-static {v3, v4, v0}, Lqv3;->s(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_1
    invoke-virtual {v4}, Lky0;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_2
    iget v6, v4, Lky0;->d:I

    .line 95
    .line 96
    iget-object v7, v3, Lb40;->n:[C

    .line 97
    .line 98
    aget-char v7, v7, v6

    .line 99
    .line 100
    const/4 v8, 0x1

    .line 101
    add-int/2addr v6, v8

    .line 102
    invoke-virtual {v4, v6}, Lky0;->b(I)V

    .line 103
    .line 104
    .line 105
    const/16 v6, 0x3d

    .line 106
    .line 107
    if-ne v7, v6, :cond_c

    .line 108
    .line 109
    sget-object p1, Ln13;->e:Ljava/util/BitSet;

    .line 110
    .line 111
    invoke-static {v3, v4, p1}, Lqv3;->t(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v4}, Lky0;->a()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_3

    .line 120
    .line 121
    iget v7, v4, Lky0;->d:I

    .line 122
    .line 123
    add-int/2addr v7, v8

    .line 124
    invoke-virtual {v4, v7}, Lky0;->b(I)V

    .line 125
    .line 126
    .line 127
    :cond_3
    new-instance v7, Lku;

    .line 128
    .line 129
    invoke-direct {v7, v5, v1}, Lku;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p2, Ljh0;->c:Ljava/lang/String;

    .line 133
    .line 134
    const/16 v5, 0x2f

    .line 135
    .line 136
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-ltz v5, :cond_5

    .line 141
    .line 142
    if-nez v5, :cond_4

    .line 143
    .line 144
    move v5, v8

    .line 145
    :cond_4
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    :cond_5
    iput-object v1, v7, Lku;->s:Ljava/lang/String;

    .line 150
    .line 151
    iget-object p2, p2, Ljh0;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v7, p2}, Lku;->c(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance p2, Ljava/util/Date;

    .line 157
    .line 158
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object p2, v7, Lku;->v:Ljava/util/Date;

    .line 162
    .line 163
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 166
    .line 167
    .line 168
    :goto_1
    invoke-virtual {v4}, Lky0;->a()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_8

    .line 173
    .line 174
    invoke-static {v3, v4, v0}, Lqv3;->s(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v4}, Lky0;->a()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-nez v2, :cond_6

    .line 189
    .line 190
    iget v2, v4, Lky0;->d:I

    .line 191
    .line 192
    iget-object v5, v3, Lb40;->n:[C

    .line 193
    .line 194
    aget-char v5, v5, v2

    .line 195
    .line 196
    add-int/2addr v2, v8

    .line 197
    invoke-virtual {v4, v2}, Lky0;->b(I)V

    .line 198
    .line 199
    .line 200
    if-ne v5, v6, :cond_6

    .line 201
    .line 202
    invoke-static {v3, v4, p1}, Lqv3;->s(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v4}, Lky0;->a()Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-nez v5, :cond_7

    .line 211
    .line 212
    iget v5, v4, Lky0;->d:I

    .line 213
    .line 214
    add-int/2addr v5, v8

    .line 215
    invoke-virtual {v4, v5}, Lky0;->b(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_6
    const/4 v2, 0x0

    .line 220
    :cond_7
    :goto_2
    iget-object v5, v7, Lku;->o:Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_8
    const-string p1, "max-age"

    .line 230
    .line 231
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_9

    .line 236
    .line 237
    const-string p1, "expires"

    .line 238
    .line 239
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    :cond_9
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    if-eqz p2, :cond_b

    .line 255
    .line 256
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    check-cast p2, Ljava/util/Map$Entry;

    .line 261
    .line 262
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Ljava/lang/String;

    .line 267
    .line 268
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    check-cast p2, Ljava/lang/String;

    .line 273
    .line 274
    iget-object v1, p0, Ln13;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Lih0;

    .line 281
    .line 282
    if-eqz v0, :cond_a

    .line 283
    .line 284
    invoke-interface {v0, v7, p2}, Lih0;->c(Lku;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_b
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    return-object p0

    .line 293
    :cond_c
    new-instance p0, Lq92;

    .line 294
    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v0, "Cookie value is invalid: \'"

    .line 298
    .line 299
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw p0

    .line 324
    :cond_d
    new-instance p0, Lq92;

    .line 325
    .line 326
    const-string p1, "Header value is null"

    .line 327
    .line 328
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw p0

    .line 336
    :cond_e
    new-instance p0, Lq92;

    .line 337
    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v0, "Unrecognized cookie header: \'"

    .line 341
    .line 342
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw p0
.end method

.method public final f()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
