.class public Lk13;
.super Loh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:[Ljava/lang/String;


# instance fields
.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "EEE, dd-MMM-yy HH:mm:ss zzz"

    .line 2
    .line 3
    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    .line 4
    .line 5
    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lk13;->c:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public varargs constructor <init>(Z[Lu80;)V
    .locals 0

    .line 77
    invoke-direct {p0, p2}, Loh0;-><init>([Lu80;)V

    .line 78
    iput-boolean p1, p0, Lk13;->b:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 11

    .line 1
    new-instance v0, Llu;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Llu;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lj13;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, v3}, Lj13;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lou;

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    invoke-direct {v4, v5}, Lou;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v6, Llu;

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    invoke-direct {v6, v7}, Llu;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v8, Llu;

    .line 26
    .line 27
    invoke-direct {v8, v5}, Llu;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v9, Llu;

    .line 31
    .line 32
    invoke-direct {v9, v3}, Llu;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v10, Lpu;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, [Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Lk13;->c:[Ljava/lang/String;

    .line 47
    .line 48
    :goto_0
    invoke-direct {v10, p1}, Lpu;-><init>([Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x7

    .line 52
    new-array p1, p1, [Lu80;

    .line 53
    .line 54
    aput-object v0, p1, v3

    .line 55
    .line 56
    aput-object v2, p1, v7

    .line 57
    .line 58
    aput-object v4, p1, v5

    .line 59
    .line 60
    const/4 v0, 0x3

    .line 61
    aput-object v6, p1, v0

    .line 62
    .line 63
    aput-object v8, p1, v1

    .line 64
    .line 65
    const/4 v0, 0x5

    .line 66
    aput-object v9, p1, v0

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    aput-object v10, p1, v0

    .line 70
    .line 71
    invoke-direct {p0, p1}, Loh0;-><init>([Lu80;)V

    .line 72
    .line 73
    .line 74
    iput-boolean p2, p0, Lk13;->b:Z

    .line 75
    .line 76
    return-void
.end method

.method public static j(Lb40;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb40;->b(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "="

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lb40;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    if-lez p3, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x22

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lb40;->a(C)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lb40;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lb40;->a(C)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0, p2}, Lb40;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lku;Ljh0;)V
    .locals 3

    .line 1
    const-string v0, "Cookie"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lku;->n:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const-string v1, "$"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-super {p0, p1, p2}, Loh0;->a(Lku;Ljh0;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p0, Lmh0;

    .line 30
    .line 31
    const-string p1, "Cookie name may not start with $"

    .line 32
    .line 33
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    new-instance p0, Lmh0;

    .line 42
    .line 43
    const-string p1, "Cookie name may not contain blanks"

    .line 44
    .line 45
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final c(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 10

    .line 1
    const-string v0, "List of cookies"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->I(Ljava/util/Collection;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lkh0;->o:Lkh0;

    .line 19
    .line 20
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lk13;->b:Z

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v3, "; "

    .line 28
    .line 29
    const-string v4, "$Version="

    .line 30
    .line 31
    const/16 v5, 0x28

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const v6, 0x7fffffff

    .line 40
    .line 41
    .line 42
    move v7, v2

    .line 43
    :cond_1
    :goto_0
    if-ge v7, v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    check-cast v8, Lku;

    .line 52
    .line 53
    iget v9, v8, Lku;->u:I

    .line 54
    .line 55
    if-ge v9, v6, :cond_1

    .line 56
    .line 57
    iget v6, v8, Lku;->u:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance v0, Lb40;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    mul-int/2addr v7, v5

    .line 67
    invoke-direct {v0, v7}, Lb40;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const-string v5, "Cookie"

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Lb40;->b(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v5, ": "

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Lb40;->b(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4}, Lb40;->b(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v0, v4}, Lb40;->b(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    :goto_1
    if-ge v2, v4, :cond_3

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    check-cast v5, Lku;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Lb40;->b(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0, v5, v6}, Lk13;->i(Lb40;Lku;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lcz;

    .line 117
    .line 118
    invoke-direct {p1, v0}, Lcz;-><init>(Lb40;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    :goto_2
    if-ge v2, v1, :cond_5

    .line 139
    .line 140
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    check-cast v6, Lku;

    .line 147
    .line 148
    iget v7, v6, Lku;->u:I

    .line 149
    .line 150
    new-instance v8, Lb40;

    .line 151
    .line 152
    invoke-direct {v8, v5}, Lb40;-><init>(I)V

    .line 153
    .line 154
    .line 155
    const-string v9, "Cookie: "

    .line 156
    .line 157
    invoke-virtual {v8, v9}, Lb40;->b(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v4}, Lb40;->b(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-virtual {v8, v9}, Lb40;->b(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v3}, Lb40;->b(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v8, v6, v7}, Lk13;->i(Lb40;Lku;I)V

    .line 174
    .line 175
    .line 176
    new-instance v6, Lcz;

    .line 177
    .line 178
    invoke-direct {v6, v8}, Lcz;-><init>(Lb40;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_5
    return-object v0
.end method

.method public d()Lgj1;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public e(Lgj1;Ljh0;)Ljava/util/List;
    .locals 2

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
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lgj1;->a()[Lru;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1, p2}, Loh0;->h([Lru;Ljh0;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance p0, Lq92;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "Unrecognized cookie header \'"

    .line 32
    .line 33
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "\'"

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public f()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public i(Lb40;Lku;I)V
    .locals 2

    .line 1
    iget-object p0, p2, Lku;->n:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p2, Lku;->p:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, p0, v0, p3}, Lk13;->j(Lb40;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p2, Lku;->s:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "; "

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    instance-of p0, p2, Lku;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-string p0, "path"

    .line 19
    .line 20
    iget-object v1, p2, Lku;->o:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "$Path"

    .line 32
    .line 33
    iget-object v1, p2, Lku;->s:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1, p0, v1, p3}, Lk13;->j(Lb40;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p2, Lku;->q:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    instance-of p0, p2, Lku;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    const-string p0, "domain"

    .line 47
    .line 48
    iget-object v1, p2, Lku;->o:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "$Domain"

    .line 60
    .line 61
    iget-object p2, p2, Lku;->q:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p1, p0, p2, p3}, Lk13;->j(Lb40;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "rfc2109"

    .line 2
    .line 3
    return-object p0
.end method
