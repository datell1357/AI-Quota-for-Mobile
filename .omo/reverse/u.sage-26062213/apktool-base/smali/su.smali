.class public final Lsu;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final n:Ljj1;

.field public final o:Luu;

.field public p:Lru;

.field public q:Lb40;

.field public r:Lky0;


# direct methods
.method public constructor <init>(Ljj1;)V
    .locals 2

    .line 1
    sget-object v0, Luu;->a:Luu;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lsu;->p:Lru;

    .line 8
    .line 9
    iput-object v1, p0, Lsu;->q:Lb40;

    .line 10
    .line 11
    iput-object v1, p0, Lsu;->r:Lky0;

    .line 12
    .line 13
    const-string v1, "Header iterator"

    .line 14
    .line 15
    invoke-static {p1, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lsu;->n:Ljj1;

    .line 19
    .line 20
    iput-object v0, p0, Lsu;->o:Luu;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lsu;->n:Ljj1;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lsu;->r:Lky0;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    return-void

    .line 15
    :cond_2
    :goto_1
    iget-object v1, p0, Lsu;->r:Lky0;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v1}, Lky0;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    :cond_3
    iput-object v2, p0, Lsu;->r:Lky0;

    .line 27
    .line 28
    iput-object v2, p0, Lsu;->q:Lb40;

    .line 29
    .line 30
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    invoke-interface {v0}, Ljj1;->a()Lgj1;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    instance-of v3, v1, Lcz;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_5

    .line 44
    .line 45
    check-cast v1, Lcz;

    .line 46
    .line 47
    iget-object v0, v1, Lcz;->o:Lb40;

    .line 48
    .line 49
    iput-object v0, p0, Lsu;->q:Lb40;

    .line 50
    .line 51
    new-instance v3, Lky0;

    .line 52
    .line 53
    iget v0, v0, Lb40;->o:I

    .line 54
    .line 55
    invoke-direct {v3, v4, v0}, Lky0;-><init>(II)V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lsu;->r:Lky0;

    .line 59
    .line 60
    iget v0, v1, Lcz;->p:I

    .line 61
    .line 62
    invoke-virtual {v3, v0}, Lky0;->b(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_5
    invoke-interface {v1}, Lsh2;->getValue()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    new-instance v0, Lb40;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-direct {v0, v3}, Lb40;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lsu;->q:Lb40;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lb40;->b(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lky0;

    .line 87
    .line 88
    iget-object v1, p0, Lsu;->q:Lb40;

    .line 89
    .line 90
    iget v1, v1, Lb40;->o:I

    .line 91
    .line 92
    invoke-direct {v0, v4, v1}, Lky0;-><init>(II)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lsu;->r:Lky0;

    .line 96
    .line 97
    :cond_6
    :goto_2
    iget-object v0, p0, Lsu;->r:Lky0;

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    :cond_7
    iget-object v0, p0, Lsu;->r:Lky0;

    .line 102
    .line 103
    invoke-virtual {v0}, Lky0;->a()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_9

    .line 108
    .line 109
    iget-object v0, p0, Lsu;->q:Lb40;

    .line 110
    .line 111
    iget-object v1, p0, Lsu;->r:Lky0;

    .line 112
    .line 113
    iget-object v3, p0, Lsu;->o:Luu;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1}, Luu;->b(Lb40;Lky0;)Lru;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, v0, Lru;->n:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    iget-object v1, v0, Lru;->o:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    :cond_8
    iput-object v0, p0, Lsu;->p:Lru;

    .line 135
    .line 136
    return-void

    .line 137
    :cond_9
    iget-object v0, p0, Lsu;->r:Lky0;

    .line 138
    .line 139
    invoke-virtual {v0}, Lky0;->a()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    .line 145
    iput-object v2, p0, Lsu;->r:Lky0;

    .line 146
    .line 147
    iput-object v2, p0, Lsu;->q:Lb40;

    .line 148
    .line 149
    goto/16 :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsu;->p:Lru;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lsu;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lsu;->p:Lru;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lsu;->p:Lru;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lsu;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lsu;->p:Lru;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput-object v1, p0, Lsu;->p:Lru;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    const-string p0, "No more header elements available"

    .line 17
    .line 18
    invoke-static {p0}, Lq73;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Remove not supported"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
