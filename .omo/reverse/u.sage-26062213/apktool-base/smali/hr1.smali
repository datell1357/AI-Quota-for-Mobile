.class public final Lhr1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:I

.field public final b:Lek1;

.field public final c:Lek1;

.field public final d:Lek1;

.field public final e:Lek1;

.field public final f:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lhr1;->a:I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 156
    new-instance p1, Lek1;

    const/4 v1, 0x0

    .line 157
    invoke-direct {p1, v0, v1}, Lek1;-><init>(ILdf1;)V

    .line 158
    iput-object p1, p0, Lhr1;->b:Lek1;

    .line 159
    new-instance p1, Lek1;

    const/4 v0, 0x0

    .line 160
    invoke-direct {p1, v0, v1}, Lek1;-><init>(ILdf1;)V

    .line 161
    iput-object p1, p0, Lhr1;->c:Lek1;

    .line 162
    new-instance p1, Lek1;

    const/4 v0, 0x1

    .line 163
    invoke-direct {p1, v0, v1}, Lek1;-><init>(ILdf1;)V

    .line 164
    iput-object p1, p0, Lhr1;->d:Lek1;

    .line 165
    new-instance p1, Lek1;

    const/4 v0, 0x0

    .line 166
    invoke-direct {p1, v0, v1}, Lek1;-><init>(ILdf1;)V

    .line 167
    iput-object p1, p0, Lhr1;->e:Lek1;

    return-void
.end method

.method public constructor <init>([Lhr1;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lhr1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 8
    .line 9
    array-length p1, p1

    .line 10
    new-array v1, p1, [Lek1;

    .line 11
    .line 12
    move v2, v0

    .line 13
    :goto_0
    if-ge v2, p1, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 16
    .line 17
    check-cast v3, [Lhr1;

    .line 18
    .line 19
    aget-object v3, v3, v2

    .line 20
    .line 21
    invoke-virtual {v3}, Lhr1;->b()Lek1;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v1, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lbb4;

    .line 31
    .line 32
    invoke-direct {p1, v1, v0}, Lbb4;-><init>([Lek1;I)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lek1;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, v2, p1}, Lek1;-><init>(ILdf1;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lhr1;->b:Lek1;

    .line 42
    .line 43
    iget-object p1, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 44
    .line 45
    check-cast p1, [Lhr1;

    .line 46
    .line 47
    array-length p1, p1

    .line 48
    new-array v1, p1, [Lek1;

    .line 49
    .line 50
    move v3, v0

    .line 51
    :goto_1
    if-ge v3, p1, :cond_1

    .line 52
    .line 53
    iget-object v4, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 54
    .line 55
    check-cast v4, [Lhr1;

    .line 56
    .line 57
    aget-object v4, v4, v3

    .line 58
    .line 59
    invoke-virtual {v4}, Lhr1;->d()Lek1;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    aput-object v4, v1, v3

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance p1, Lek1;

    .line 69
    .line 70
    new-instance v3, Ldk1;

    .line 71
    .line 72
    invoke-direct {v3, v1, v0}, Ldk1;-><init>([Lek1;I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0, v3}, Lek1;-><init>(ILdf1;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lhr1;->c:Lek1;

    .line 79
    .line 80
    iget-object p1, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 81
    .line 82
    check-cast p1, [Lhr1;

    .line 83
    .line 84
    array-length p1, p1

    .line 85
    new-array v1, p1, [Lek1;

    .line 86
    .line 87
    move v3, v0

    .line 88
    :goto_2
    if-ge v3, p1, :cond_2

    .line 89
    .line 90
    iget-object v4, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 91
    .line 92
    check-cast v4, [Lhr1;

    .line 93
    .line 94
    aget-object v4, v4, v3

    .line 95
    .line 96
    invoke-virtual {v4}, Lhr1;->c()Lek1;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    aput-object v4, v1, v3

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    new-instance p1, Lbb4;

    .line 106
    .line 107
    invoke-direct {p1, v1, v2}, Lbb4;-><init>([Lek1;I)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lek1;

    .line 111
    .line 112
    invoke-direct {v1, v2, p1}, Lek1;-><init>(ILdf1;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lhr1;->d:Lek1;

    .line 116
    .line 117
    iget-object p1, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 118
    .line 119
    check-cast p1, [Lhr1;

    .line 120
    .line 121
    array-length p1, p1

    .line 122
    new-array v1, p1, [Lek1;

    .line 123
    .line 124
    move v3, v0

    .line 125
    :goto_3
    if-ge v3, p1, :cond_3

    .line 126
    .line 127
    iget-object v4, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 128
    .line 129
    check-cast v4, [Lhr1;

    .line 130
    .line 131
    aget-object v4, v4, v3

    .line 132
    .line 133
    invoke-virtual {v4}, Lhr1;->a()Lek1;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    aput-object v4, v1, v3

    .line 138
    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    new-instance p1, Lek1;

    .line 143
    .line 144
    new-instance v3, Ldk1;

    .line 145
    .line 146
    invoke-direct {v3, v1, v2}, Ldk1;-><init>([Lek1;I)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, v0, v3}, Lek1;-><init>(ILdf1;)V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Lhr1;->e:Lek1;

    .line 153
    .line 154
    return-void
.end method


# virtual methods
.method public final a()Lek1;
    .locals 1

    .line 1
    iget v0, p0, Lhr1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lhr1;->e:Lek1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final b()Lek1;
    .locals 1

    .line 1
    iget v0, p0, Lhr1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lhr1;->b:Lek1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final c()Lek1;
    .locals 1

    .line 1
    iget v0, p0, Lhr1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lhr1;->d:Lek1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final d()Lek1;
    .locals 1

    .line 1
    iget v0, p0, Lhr1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lhr1;->c:Lek1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lhr1;->a:I

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    iget-object v2, p0, Lhr1;->f:Ljava/io/Serializable;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string p0, "RectRulers("

    .line 15
    .line 16
    invoke-static {p0, v2, v1}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    return-object p0

    .line 26
    :pswitch_0
    check-cast v2, [Lhr1;

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v0, "innermostOf("

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 36
    .line 37
    .line 38
    array-length v0, v2

    .line 39
    const/4 v3, 0x0

    .line 40
    move v4, v3

    .line 41
    :goto_1
    if-ge v3, v0, :cond_2

    .line 42
    .line 43
    aget-object v5, v2, v3

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    add-int/2addr v4, v6

    .line 47
    if-le v4, v6, :cond_1

    .line 48
    .line 49
    const-string v6, ", "

    .line 50
    .line 51
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 v6, 0x0

    .line 55
    invoke-static {p0, v5, v6}, Lkt4;->n(Ljava/lang/StringBuilder;Ljava/lang/Object;Lpe1;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
