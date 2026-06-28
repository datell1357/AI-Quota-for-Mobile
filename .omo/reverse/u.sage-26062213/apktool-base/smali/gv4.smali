.class public abstract Lgv4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lnp1;

.field public static final b:Lz43;

.field public static final c:Lz43;

.field public static final d:Lz43;

.field public static final e:Lz43;

.field public static final f:Lz43;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v7, "_exp_timeout"

    .line 2
    .line 3
    const-string v8, "_exp_expire"

    .line 4
    .line 5
    const-string v0, "_ac"

    .line 6
    .line 7
    const-string v1, "campaign_details"

    .line 8
    .line 9
    const-string v2, "_ug"

    .line 10
    .line 11
    const-string v3, "_iapx"

    .line 12
    .line 13
    const-string v4, "_exp_set"

    .line 14
    .line 15
    const-string v5, "_exp_clear"

    .line 16
    .line 17
    const-string v6, "_exp_activate"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v15

    .line 23
    const-string v13, "_aa"

    .line 24
    .line 25
    const-string v14, "_ai"

    .line 26
    .line 27
    const-string v9, "_in"

    .line 28
    .line 29
    const-string v10, "_xa"

    .line 30
    .line 31
    const-string v11, "_xu"

    .line 32
    .line 33
    const-string v12, "_aq"

    .line 34
    .line 35
    invoke-static/range {v9 .. v15}, Lnp1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lnp1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lgv4;->a:Lnp1;

    .line 40
    .line 41
    sget-object v0, Llp1;->o:Lhp1;

    .line 42
    .line 43
    const-string v1, "_e"

    .line 44
    .line 45
    const-string v2, "_f"

    .line 46
    .line 47
    const-string v3, "_iap"

    .line 48
    .line 49
    const-string v4, "_s"

    .line 50
    .line 51
    const-string v5, "_au"

    .line 52
    .line 53
    const-string v6, "_ui"

    .line 54
    .line 55
    const-string v7, "_cd"

    .line 56
    .line 57
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x7

    .line 62
    invoke-static {v1, v0}, Lw80;->m(I[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v0}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lgv4;->b:Lz43;

    .line 70
    .line 71
    const-string v0, "auto"

    .line 72
    .line 73
    const-string v1, "app"

    .line 74
    .line 75
    const-string v2, "am"

    .line 76
    .line 77
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v1, 0x3

    .line 82
    invoke-static {v1, v0}, Lw80;->m(I[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lgv4;->c:Lz43;

    .line 90
    .line 91
    const-string v0, "_r"

    .line 92
    .line 93
    const-string v1, "_dbg"

    .line 94
    .line 95
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v1, 0x2

    .line 100
    invoke-static {v1, v0}, Lw80;->m(I[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v0}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lgv4;->d:Lz43;

    .line 108
    .line 109
    const-string v0, "initialCapacity"

    .line 110
    .line 111
    const/4 v2, 0x4

    .line 112
    invoke-static {v2, v0}, Lht4;->i(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-array v0, v2, [Ljava/lang/Object;

    .line 116
    .line 117
    sget-object v2, Lse0;->E:[Ljava/lang/String;

    .line 118
    .line 119
    const/16 v3, 0xf

    .line 120
    .line 121
    invoke-static {v3, v2}, Lw80;->m(I[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    array-length v4, v0

    .line 125
    const/4 v5, 0x0

    .line 126
    add-int/2addr v5, v3

    .line 127
    invoke-static {v4, v5}, Lcp1;->b(II)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    array-length v5, v0

    .line 132
    if-gt v4, v5, :cond_0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_0
    const/4 v4, 0x0

    .line 140
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    add-int/2addr v2, v3

    .line 145
    sget-object v5, Lse0;->F:[Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v3, v5}, Lw80;->m(I[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    array-length v6, v0

    .line 151
    add-int/lit8 v7, v2, 0xf

    .line 152
    .line 153
    invoke-static {v6, v7}, Lcp1;->b(II)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    array-length v7, v0

    .line 158
    if-gt v6, v7, :cond_1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_1
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_1
    invoke-static {v5, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    add-int/2addr v2, v3

    .line 169
    invoke-static {v2, v0}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sput-object v0, Lgv4;->e:Lz43;

    .line 174
    .line 175
    const-string v0, "^_ltv_[A-Z]{3}$"

    .line 176
    .line 177
    const-string v2, "^_cc[1-5]{1}$"

    .line 178
    .line 179
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v1, v0}, Lw80;->m(I[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v0}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sput-object v0, Lgv4;->f:Lz43;

    .line 191
    .line 192
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    sget-object v0, Lgv4;->b:Lz43;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Llp1;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    sget-object p0, Lgv4;->d:Lz43;

    .line 14
    .line 15
    iget v1, p0, Lz43;->q:I

    .line 16
    .line 17
    move v2, v0

    .line 18
    :cond_1
    if-ge v2, v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lz43;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    :goto_0
    return v0

    .line 35
    :cond_2
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    const-string v0, "_cmp"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    sget-object p1, Lgv4;->c:Lz43;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Llp1;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-nez p2, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    sget-object p1, Lgv4;->d:Lz43;

    .line 25
    .line 26
    iget v2, p1, Lz43;->q:I

    .line 27
    .line 28
    move v3, v1

    .line 29
    :cond_3
    if-ge v3, v2, :cond_4

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Lz43;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const v2, 0x18b50

    .line 51
    .line 52
    .line 53
    const-string v3, "_cis"

    .line 54
    .line 55
    if-eq p1, v2, :cond_7

    .line 56
    .line 57
    const v2, 0x18b6e

    .line 58
    .line 59
    .line 60
    if-eq p1, v2, :cond_6

    .line 61
    .line 62
    const v2, 0x2ff42f

    .line 63
    .line 64
    .line 65
    if-eq p1, v2, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    const-string p1, "fiam"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_8

    .line 75
    .line 76
    const-string p0, "fiam_integration"

    .line 77
    .line 78
    invoke-virtual {p2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v0

    .line 82
    :cond_6
    const-string p1, "fdl"

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_8

    .line 89
    .line 90
    const-string p0, "fdl_integration"

    .line 91
    .line 92
    invoke-virtual {p2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v0

    .line 96
    :cond_7
    const-string p1, "fcm"

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_8

    .line 103
    .line 104
    const-string p0, "fcm_integration"

    .line 105
    .line 106
    invoke-virtual {p2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v0

    .line 110
    :cond_8
    :goto_0
    return v1
.end method
