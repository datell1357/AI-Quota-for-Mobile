.class public abstract Lfl2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ljava/util/BitSet;

.field public static final b:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    sput-object v0, Lfl2;->a:Ljava/util/BitSet;

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
    sput-object v0, Lfl2;->b:Ljava/util/BitSet;

    .line 24
    .line 25
    return-void
.end method

.method public static a(Lb40;Lky0;)Lru;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lfl2;->b(Lb40;Lky0;)Lev;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1}, Lky0;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-static {p0, p1}, Lfl2;->b(Lb40;Lky0;)Lev;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lru;

    .line 25
    .line 26
    iget-object p1, v0, Lev;->n:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, v0, Lev;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    new-array v2, v2, [Lsh2;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, [Lsh2;

    .line 41
    .line 42
    invoke-direct {p0, p1, v0, v1}, Lru;-><init>(Ljava/lang/String;Ljava/lang/String;[Lsh2;)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method public static b(Lb40;Lky0;)Lev;
    .locals 4

    .line 1
    sget-object v0, Lfl2;->a:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lqv3;->s(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lky0;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance p0, Lev;

    .line 15
    .line 16
    invoke-direct {p0, v0, v2}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget v1, p1, Lky0;->d:I

    .line 21
    .line 22
    iget-object v3, p0, Lb40;->n:[C

    .line 23
    .line 24
    aget-char v3, v3, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lky0;->b(I)V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x3d

    .line 32
    .line 33
    if-eq v3, v1, :cond_1

    .line 34
    .line 35
    new-instance p0, Lev;

    .line 36
    .line 37
    invoke-direct {p0, v0, v2}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    sget-object v1, Lfl2;->b:Ljava/util/BitSet;

    .line 42
    .line 43
    invoke-static {p0, p1, v1}, Lqv3;->s(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1}, Lky0;->a()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    iget v1, p1, Lky0;->d:I

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lky0;->b(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    new-instance p1, Lev;

    .line 61
    .line 62
    invoke-direct {p1, v0, p0}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object p1
.end method
