.class public Log5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;

.field public final c:Z

.field public final d:Z

.field public final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x5a

    .line 11
    .line 12
    const/16 v4, 0x41

    .line 13
    .line 14
    const/16 v5, 0x7a

    .line 15
    .line 16
    const/16 v6, 0x61

    .line 17
    .line 18
    if-lt v1, v6, :cond_0

    .line 19
    .line 20
    if-le v1, v5, :cond_1

    .line 21
    .line 22
    :cond_0
    if-lt v1, v4, :cond_9

    .line 23
    .line 24
    if-gt v1, v3, :cond_9

    .line 25
    .line 26
    :cond_1
    const/4 v1, 0x1

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-ge v1, v7, :cond_7

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-lt v7, v6, :cond_2

    .line 38
    .line 39
    if-le v7, v5, :cond_5

    .line 40
    .line 41
    :cond_2
    if-lt v7, v4, :cond_3

    .line 42
    .line 43
    if-gt v7, v3, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/16 v8, 0x30

    .line 47
    .line 48
    if-lt v7, v8, :cond_4

    .line 49
    .line 50
    const/16 v8, 0x39

    .line 51
    .line 52
    if-le v7, v8, :cond_5

    .line 53
    .line 54
    :cond_4
    const/16 v8, 0x5f

    .line 55
    .line 56
    if-ne v7, v8, :cond_6

    .line 57
    .line 58
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    const-string p0, "identifier must contain only ASCII letters, digits or underscore: "

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :cond_7
    iput-object p1, p0, Log5;->a:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p2, p0, Log5;->b:Ljava/lang/Class;

    .line 74
    .line 75
    iput-boolean p3, p0, Log5;->c:Z

    .line 76
    .line 77
    iput-boolean p4, p0, Log5;->d:Z

    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const-wide/16 p2, 0x0

    .line 84
    .line 85
    :goto_2
    const/4 p4, 0x5

    .line 86
    if-ge v0, p4, :cond_8

    .line 87
    .line 88
    and-int/lit8 p4, p1, 0x3f

    .line 89
    .line 90
    const-wide/16 v1, 0x1

    .line 91
    .line 92
    shl-long/2addr v1, p4

    .line 93
    or-long/2addr p2, v1

    .line 94
    ushr-int/lit8 p1, p1, 0x6

    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_8
    iput-wide p2, p0, Log5;->e:J

    .line 100
    .line 101
    return-void

    .line 102
    :cond_9
    const-string p0, "identifier must start with an ASCII letter: "

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v2
.end method


# virtual methods
.method public a(Ljava/util/Iterator;Lah5;)V
    .locals 1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, p2}, Log5;->b(Ljava/lang/Object;Lah5;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Lah5;)V
    .locals 0

    .line 1
    iget-object p0, p0, Log5;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2, p1, p0}, Lah5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Log5;->b:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iget-object p0, p0, Log5;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    add-int/2addr v5, v2

    .line 34
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    add-int/2addr v5, v3

    .line 37
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const-string v2, "/"

    .line 43
    .line 44
    const-string v3, "["

    .line 45
    .line 46
    invoke-static {v4, v0, v2, p0, v3}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "]"

    .line 50
    .line 51
    invoke-static {v4, v1, p0}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
