.class public Ldw1;
.super Lg34;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ldw1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldw1;

    .line 2
    .line 3
    invoke-direct {v0}, Ldw1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldw1;->a:Ldw1;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(ILww1;)Lyv1;
    .locals 2

    .line 1
    invoke-static {p0}, Ldi0;->F(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lww1;->o0()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Llw1;->n:Llw1;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-static {p0}, Lxw1;->A(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "Unexpected token: "

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0

    .line 39
    :cond_1
    new-instance p0, Luw1;

    .line 40
    .line 41
    invoke-virtual {p1}, Lww1;->V()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Luw1;-><init>(Ljava/lang/Boolean;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lww1;->q0()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance p1, Luw1;

    .line 58
    .line 59
    new-instance v0, Lpz1;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lpz1;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v0}, Luw1;-><init>(Ljava/lang/Number;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_3
    new-instance p0, Luw1;

    .line 69
    .line 70
    invoke-virtual {p1}, Lww1;->q0()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Luw1;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object p0
.end method

.method public static e(Lbx1;Lyv1;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    instance-of v0, p1, Llw1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Luw1;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    check-cast p1, Luw1;

    .line 14
    .line 15
    iget-object v0, p1, Luw1;->n:Ljava/io/Serializable;

    .line 16
    .line 17
    instance-of v1, v0, Ljava/lang/Number;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Luw1;->c()Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lbx1;->j0(Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    check-cast v0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Luw1;->d()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    :goto_0
    invoke-virtual {p0, p1}, Lbx1;->o0(Z)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    invoke-virtual {p1}, Luw1;->d()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lbx1;->n0(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    instance-of v0, p1, Llv1;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {p0}, Lbx1;->j()V

    .line 69
    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    check-cast p1, Llv1;

    .line 74
    .line 75
    iget-object p1, p1, Llv1;->n:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x0

    .line 82
    :goto_1
    if-ge v1, v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    check-cast v2, Lyv1;

    .line 91
    .line 92
    invoke-static {p0, v2}, Ldw1;->e(Lbx1;Lyv1;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual {p0}, Lbx1;->A()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_6
    const-string p0, "Not a JSON Array: "

    .line 101
    .line 102
    invoke-static {p1, p0}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_7
    instance-of v0, p1, Lpw1;

    .line 107
    .line 108
    if-eqz v0, :cond_a

    .line 109
    .line 110
    invoke-virtual {p0}, Lbx1;->r()V

    .line 111
    .line 112
    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    check-cast p1, Lpw1;

    .line 116
    .line 117
    iget-object p1, p1, Lpw1;->n:Lx32;

    .line 118
    .line 119
    invoke-virtual {p1}, Lx32;->entrySet()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lv32;

    .line 124
    .line 125
    invoke-virtual {p1}, Lv32;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :goto_2
    move-object v0, p1

    .line 130
    check-cast v0, Lu32;

    .line 131
    .line 132
    invoke-virtual {v0}, Lu32;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    move-object v0, p1

    .line 139
    check-cast v0, Lu32;

    .line 140
    .line 141
    invoke-virtual {v0}, Lu32;->c()Lw32;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Lbx1;->F(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lyv1;

    .line 159
    .line 160
    invoke-static {p0, v0}, Ldw1;->e(Lbx1;Lyv1;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_8
    invoke-virtual {p0}, Lbx1;->B()V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_9
    const-string p0, "Not a JSON Object: "

    .line 169
    .line 170
    invoke-static {p1, p0}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_a
    const-string p0, "Couldn\'t write "

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p1, p0}, Lmk0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lbx1;->L()Lbx1;

    .line 185
    .line 186
    .line 187
    return-void
.end method


# virtual methods
.method public final b(Lww1;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lww1;->s0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ldi0;->F(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    move-object v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lww1;->j()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lpw1;

    .line 21
    .line 22
    invoke-direct {v0}, Lpw1;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lww1;->b()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Llv1;

    .line 30
    .line 31
    invoke-direct {v0}, Llv1;-><init>()V

    .line 32
    .line 33
    .line 34
    :goto_0
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {p0, p1}, Ldw1;->d(ILww1;)Lyv1;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_2
    new-instance p0, Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lww1;->L()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_a

    .line 52
    .line 53
    instance-of v3, v0, Lpw1;

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Lww1;->j0()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    move-object v3, v2

    .line 63
    :goto_2
    invoke-virtual {p1}, Lww1;->s0()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v4}, Ldi0;->F(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_6

    .line 72
    .line 73
    if-eq v5, v1, :cond_5

    .line 74
    .line 75
    move-object v5, v2

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    invoke-virtual {p1}, Lww1;->j()V

    .line 78
    .line 79
    .line 80
    new-instance v5, Lpw1;

    .line 81
    .line 82
    invoke-direct {v5}, Lpw1;-><init>()V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_6
    invoke-virtual {p1}, Lww1;->b()V

    .line 87
    .line 88
    .line 89
    new-instance v5, Llv1;

    .line 90
    .line 91
    invoke-direct {v5}, Llv1;-><init>()V

    .line 92
    .line 93
    .line 94
    :goto_3
    if-eqz v5, :cond_7

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    goto :goto_4

    .line 98
    :cond_7
    const/4 v6, 0x0

    .line 99
    :goto_4
    if-nez v5, :cond_8

    .line 100
    .line 101
    invoke-static {v4, p1}, Ldw1;->d(ILww1;)Lyv1;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    :cond_8
    instance-of v4, v0, Llv1;

    .line 106
    .line 107
    if-eqz v4, :cond_9

    .line 108
    .line 109
    move-object v3, v0

    .line 110
    check-cast v3, Llv1;

    .line 111
    .line 112
    iget-object v3, v3, Llv1;->n:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_9
    move-object v4, v0

    .line 119
    check-cast v4, Lpw1;

    .line 120
    .line 121
    iget-object v4, v4, Lpw1;->n:Lx32;

    .line 122
    .line 123
    invoke-virtual {v4, v3, v5}, Lx32;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :goto_5
    if-eqz v6, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move-object v0, v5

    .line 132
    goto :goto_1

    .line 133
    :cond_a
    instance-of v3, v0, Llv1;

    .line 134
    .line 135
    if-eqz v3, :cond_b

    .line 136
    .line 137
    invoke-virtual {p1}, Lww1;->A()V

    .line 138
    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_b
    invoke-virtual {p1}, Lww1;->B()V

    .line 142
    .line 143
    .line 144
    :goto_6
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_c

    .line 149
    .line 150
    move-object p0, v0

    .line 151
    :goto_7
    return-object p0

    .line 152
    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lyv1;

    .line 157
    .line 158
    goto :goto_1
.end method

.method public final bridge synthetic c(Lbx1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lyv1;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ldw1;->e(Lbx1;Lyv1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
