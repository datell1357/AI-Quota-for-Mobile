.class public final Lb32;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lhd4;


# instance fields
.field public final a:Ls64;

.field public final b:I


# direct methods
.method public constructor <init>(Ls64;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb32;->a:Ls64;

    .line 5
    .line 6
    iput p2, p0, Lb32;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Las0;)I
    .locals 1

    .line 1
    iget v0, p0, Lb32;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lb32;->a:Ls64;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ls64;->a(Las0;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final b(Las0;)I
    .locals 1

    .line 1
    iget v0, p0, Lb32;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lb32;->a:Ls64;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ls64;->b(Las0;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final c(Las0;Lhy1;)I
    .locals 2

    .line 1
    sget-object v0, Lhy1;->n:Lhy1;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    iget v1, p0, Lb32;->b:I

    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lb32;->a:Ls64;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Ls64;->c(Las0;Lhy1;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final d(Las0;Lhy1;)I
    .locals 2

    .line 1
    sget-object v0, Lhy1;->n:Lhy1;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    :goto_0
    iget v1, p0, Lb32;->b:I

    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lb32;->a:Ls64;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Ls64;->d(Las0;Lhy1;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lb32;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lb32;

    .line 10
    .line 11
    iget-object v0, p1, Lb32;->a:Ls64;

    .line 12
    .line 13
    iget-object v1, p0, Lb32;->a:Ls64;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ls64;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget p0, p0, Lb32;->b:I

    .line 22
    .line 23
    iget p1, p1, Lb32;->b:I

    .line 24
    .line 25
    if-ne p0, p1, :cond_2

    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb32;->a:Ls64;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls64;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget p0, p0, Lb32;->b:I

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lb32;->b:I

    .line 7
    .line 8
    sget v2, Lve4;->a:I

    .line 9
    .line 10
    and-int v3, v1, v2

    .line 11
    .line 12
    if-ne v3, v2, :cond_0

    .line 13
    .line 14
    const-string v2, "Start"

    .line 15
    .line 16
    invoke-static {v2, v0}, Lve4;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget v2, Lve4;->c:I

    .line 20
    .line 21
    and-int v3, v1, v2

    .line 22
    .line 23
    if-ne v3, v2, :cond_1

    .line 24
    .line 25
    const-string v2, "Left"

    .line 26
    .line 27
    invoke-static {v2, v0}, Lve4;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    and-int/lit8 v2, v1, 0x10

    .line 31
    .line 32
    const/16 v3, 0x10

    .line 33
    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    const-string v2, "Top"

    .line 37
    .line 38
    invoke-static {v2, v0}, Lve4;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    sget v2, Lve4;->b:I

    .line 42
    .line 43
    and-int v3, v1, v2

    .line 44
    .line 45
    if-ne v3, v2, :cond_3

    .line 46
    .line 47
    const-string v2, "End"

    .line 48
    .line 49
    invoke-static {v2, v0}, Lve4;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    sget v2, Lve4;->d:I

    .line 53
    .line 54
    and-int v3, v1, v2

    .line 55
    .line 56
    if-ne v3, v2, :cond_4

    .line 57
    .line 58
    const-string v2, "Right"

    .line 59
    .line 60
    invoke-static {v2, v0}, Lve4;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    const/16 v2, 0x20

    .line 64
    .line 65
    and-int/2addr v1, v2

    .line 66
    if-ne v1, v2, :cond_5

    .line 67
    .line 68
    const-string v1, "Bottom"

    .line 69
    .line 70
    invoke-static {v1, v0}, Lve4;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "WindowInsetsSides("

    .line 78
    .line 79
    const-string v2, ")"

    .line 80
    .line 81
    invoke-static {v1, v0, v2}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "("

    .line 88
    .line 89
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lb32;->a:Ls64;

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p0, " only "

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method
