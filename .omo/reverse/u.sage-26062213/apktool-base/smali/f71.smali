.class public final Lf71;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lf71;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf71;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf71;->a:Lf71;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lf71;->b:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method

.method public static a(Lck3;)Ld71;
    .locals 2

    .line 1
    sget-object v0, Lf71;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Ld71;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string v0, "Cannot get dependency "

    .line 16
    .line 17
    const-string v1, ". Dependencies should be added at class load time."

    .line 18
    .line 19
    invoke-static {p0, v1, v0}, Lmk0;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final b(Lfh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Le71;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Le71;

    .line 7
    .line 8
    iget v1, v0, Le71;->x:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Le71;->x:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Le71;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Le71;-><init>(Lf71;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Le71;->v:Ljava/lang/Object;

    .line 26
    .line 27
    iget p1, v0, Le71;->x:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    if-ne p1, v2, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Le71;->u:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v3, v0, Le71;->t:Ljava/util/Map;

    .line 38
    .line 39
    check-cast v3, Ljava/util/Map;

    .line 40
    .line 41
    iget-object v4, v0, Le71;->s:Lck3;

    .line 42
    .line 43
    iget-object v5, v0, Le71;->r:Ljava/util/Iterator;

    .line 44
    .line 45
    iget-object v6, v0, Le71;->q:Ljava/util/Map;

    .line 46
    .line 47
    check-cast v6, Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_2
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p0, Lf71;->b:Ljava/util/Map;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v3}, Loa2;->a0(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-direct {p1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Ljava/lang/Iterable;

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    move-object v5, p0

    .line 91
    move-object v3, p1

    .line 92
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Lck3;

    .line 113
    .line 114
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ld71;

    .line 119
    .line 120
    new-instance v6, Lcc;

    .line 121
    .line 122
    const/16 v7, 0x9

    .line 123
    .line 124
    invoke-direct {v6, v7, p0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object p0, v3

    .line 128
    check-cast p0, Ljava/util/Map;

    .line 129
    .line 130
    iput-object p0, v0, Le71;->q:Ljava/util/Map;

    .line 131
    .line 132
    iput-object v5, v0, Le71;->r:Ljava/util/Iterator;

    .line 133
    .line 134
    iput-object v4, v0, Le71;->s:Lck3;

    .line 135
    .line 136
    iput-object p0, v0, Le71;->t:Ljava/util/Map;

    .line 137
    .line 138
    iput-object p1, v0, Le71;->u:Ljava/lang/Object;

    .line 139
    .line 140
    iput v2, v0, Le71;->x:I

    .line 141
    .line 142
    new-instance p0, Lp4;

    .line 143
    .line 144
    const/4 v7, 0x4

    .line 145
    invoke-direct {p0, v6, v1, v7}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 146
    .line 147
    .line 148
    sget-object v6, Ld01;->n:Ld01;

    .line 149
    .line 150
    invoke-static {v6, p0, v0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    sget-object v6, Lri0;->n:Lri0;

    .line 155
    .line 156
    if-ne p0, v6, :cond_3

    .line 157
    .line 158
    return-object v6

    .line 159
    :cond_3
    move-object v6, v3

    .line 160
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {v4}, Lf71;->a(Lck3;)Ld71;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    iget-object p0, p0, Ld71;->b:Laj0;

    .line 168
    .line 169
    if-eqz p0, :cond_4

    .line 170
    .line 171
    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-object v3, v6

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    const-string p0, "Subscriber "

    .line 177
    .line 178
    const-string p1, " has not been registered."

    .line 179
    .line 180
    invoke-static {v4, p1, p0}, Lmk0;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-object v1

    .line 184
    :cond_5
    return-object v3
.end method
