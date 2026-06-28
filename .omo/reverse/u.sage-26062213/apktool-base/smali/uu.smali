.class public final Luu;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Luu;

.field public static final b:Ljava/util/BitSet;

.field public static final c:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Luu;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Luu;->a:Luu;

    .line 7
    .line 8
    const/16 v0, 0x3d

    .line 9
    .line 10
    const/16 v1, 0x3b

    .line 11
    .line 12
    const/16 v2, 0x2c

    .line 13
    .line 14
    filled-new-array {v0, v1, v2}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lqv3;->k([I)Ljava/util/BitSet;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Luu;->b:Ljava/util/BitSet;

    .line 23
    .line 24
    filled-new-array {v1, v2}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lqv3;->k([I)Ljava/util/BitSet;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Luu;->c:Ljava/util/BitSet;

    .line 33
    .line 34
    return-void
.end method

.method public static a(Lb40;Lky0;)[Lru;
    .locals 3

    .line 1
    const-string v0, "Char array buffer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lky0;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    invoke-static {p0, p1}, Luu;->b(Lb40;Lky0;)Lru;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, v1, Lru;->n:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v1, Lru;->o:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    new-array p0, p0, [Lru;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, [Lru;

    .line 48
    .line 49
    return-object p0
.end method

.method public static b(Lb40;Lky0;)Lru;
    .locals 6

    .line 1
    const-string v0, "Char array buffer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Parser cursor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Luu;->c(Lb40;Lky0;)Lev;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lky0;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    iget v1, p1, Lky0;->d:I

    .line 22
    .line 23
    add-int/lit8 v2, v1, -0x1

    .line 24
    .line 25
    iget-object v3, p0, Lb40;->n:[C

    .line 26
    .line 27
    aget-char v2, v3, v2

    .line 28
    .line 29
    const/16 v3, 0x2c

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    iget v2, p1, Lky0;->c:I

    .line 34
    .line 35
    move v4, v1

    .line 36
    :goto_0
    if-ge v1, v2, :cond_1

    .line 37
    .line 38
    iget-object v5, p0, Lb40;->n:[C

    .line 39
    .line 40
    aget-char v5, v5, v1

    .line 41
    .line 42
    invoke-static {v5}, Lqv3;->r(C)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    invoke-virtual {p1, v4}, Lky0;->b(I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p1}, Lky0;->a()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    invoke-static {p0, p1}, Luu;->c(Lb40;Lky0;)Lev;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget v2, p1, Lky0;->d:I

    .line 76
    .line 77
    add-int/lit8 v2, v2, -0x1

    .line 78
    .line 79
    iget-object v4, p0, Lb40;->n:[C

    .line 80
    .line 81
    aget-char v2, v4, v2

    .line 82
    .line 83
    if-ne v2, v3, :cond_2

    .line 84
    .line 85
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    new-array p0, p0, [Lsh2;

    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, [Lsh2;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const/4 p0, 0x0

    .line 99
    :goto_2
    iget-object p1, v0, Lev;->n:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v0, v0, Lev;->o:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v1, Lru;

    .line 104
    .line 105
    invoke-direct {v1, p1, v0, p0}, Lru;-><init>(Ljava/lang/String;Ljava/lang/String;[Lsh2;)V

    .line 106
    .line 107
    .line 108
    return-object v1
.end method

.method public static c(Lb40;Lky0;)Lev;
    .locals 4

    .line 1
    const-string v0, "Char array buffer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Parser cursor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Luu;->b:Ljava/util/BitSet;

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Lqv3;->s(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lky0;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance p0, Lev;

    .line 25
    .line 26
    invoke-direct {p0, v0, v2}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    iget v1, p1, Lky0;->d:I

    .line 31
    .line 32
    iget-object v3, p0, Lb40;->n:[C

    .line 33
    .line 34
    aget-char v3, v3, v1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lky0;->b(I)V

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x3d

    .line 42
    .line 43
    if-eq v3, v1, :cond_1

    .line 44
    .line 45
    new-instance p0, Lev;

    .line 46
    .line 47
    invoke-direct {p0, v0, v2}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_1
    sget-object v1, Luu;->c:Ljava/util/BitSet;

    .line 52
    .line 53
    invoke-static {p0, p1, v1}, Lqv3;->t(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1}, Lky0;->a()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    iget v1, p1, Lky0;->d:I

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lky0;->b(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    new-instance p1, Lev;

    .line 71
    .line 72
    invoke-direct {p1, v0, p0}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object p1
.end method
