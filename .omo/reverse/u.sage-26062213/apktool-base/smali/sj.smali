.class public final Lsj;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lem1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lsj;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v2, v1, v2, v2}, Lsj;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lem1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Host"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lem1;->n:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lsj;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget v0, p1, Lem1;->p:I

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    :cond_0
    iput v0, p0, Lsj;->d:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    move-object p2, v0

    .line 30
    :cond_1
    iput-object p2, p0, Lsj;->b:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p3, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    iput-object v0, p0, Lsj;->a:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p1, p0, Lsj;->e:Lem1;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 45
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lsj;->c:Ljava/lang/String;

    if-gez p2, :cond_1

    const/4 p2, -0x1

    .line 46
    :cond_1
    iput p2, p0, Lsj;->d:I

    if-nez p3, :cond_2

    move-object p3, v0

    .line 47
    :cond_2
    iput-object p3, p0, Lsj;->b:Ljava/lang/String;

    if-nez p4, :cond_3

    move-object p1, v0

    goto :goto_1

    .line 48
    :cond_3
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p4, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lsj;->a:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lsj;->e:Lem1;

    return-void
.end method


# virtual methods
.method public final a(Lsj;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lsj;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lsj;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lsj;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lsj;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v3, v0}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v4, -0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Lsj;->a:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return v4

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v3, p0, Lsj;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v3, v2}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    if-eqz v3, :cond_3

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    return v4

    .line 42
    :cond_3
    :goto_1
    iget p1, p1, Lsj;->d:I

    .line 43
    .line 44
    iget v2, p0, Lsj;->d:I

    .line 45
    .line 46
    if-ne v2, p1, :cond_4

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x4

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    if-eq v2, v4, :cond_5

    .line 52
    .line 53
    if-eq p1, v4, :cond_5

    .line 54
    .line 55
    return v4

    .line 56
    :cond_5
    :goto_2
    iget-object p0, p0, Lsj;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p0, v1}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x8

    .line 65
    .line 66
    return v0

    .line 67
    :cond_6
    if-eqz p0, :cond_7

    .line 68
    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    return v4

    .line 72
    :cond_7
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lsj;

    .line 10
    .line 11
    if-nez v2, :cond_3

    .line 12
    .line 13
    if-eq p0, p1, :cond_2

    .line 14
    .line 15
    return v0

    .line 16
    :cond_2
    return v1

    .line 17
    :cond_3
    check-cast p1, Lsj;

    .line 18
    .line 19
    iget-object v2, p0, Lsj;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lsj;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    iget v2, p0, Lsj;->d:I

    .line 30
    .line 31
    iget v3, p1, Lsj;->d:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_4

    .line 34
    .line 35
    iget-object v2, p0, Lsj;->b:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lsj;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2, v3}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iget-object p0, p0, Lsj;->a:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p1, Lsj;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0, p1}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    return v1

    .line 56
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lsj;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lsj;->d:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lc75;->H(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lsj;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object p0, p0, Lsj;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, p0}, Lc75;->I(ILjava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lsj;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lsj;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x27

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v1, "<any realm>"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v1, p0, Lsj;->c:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const/16 v2, 0x40

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget p0, p0, Lsj;->d:I

    .line 58
    .line 59
    if-ltz p0, :cond_2

    .line 60
    .line 61
    const/16 v1, 0x3a

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
