.class public final Lfs0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lz03;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(IILjava/lang/Class;)V
    .locals 0

    .line 16
    invoke-static {p3}, Lz03;->a(Ljava/lang/Class;)Lz03;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lfs0;-><init>(Lz03;II)V

    return-void
.end method

.method public constructor <init>(Lz03;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Null dependency anInterface."

    .line 5
    .line 6
    invoke-static {p1, v0}, Lgg4;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lfs0;->a:Lz03;

    .line 10
    .line 11
    iput p2, p0, Lfs0;->b:I

    .line 12
    .line 13
    iput p3, p0, Lfs0;->c:I

    .line 14
    .line 15
    return-void
.end method

.method public static a(Lz03;)Lfs0;
    .locals 3

    .line 1
    new-instance v0, Lfs0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lfs0;-><init>(Lz03;II)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lfs0;
    .locals 3

    .line 1
    new-instance v0, Lfs0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, p0}, Lfs0;-><init>(IILjava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lfs0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lfs0;

    .line 6
    .line 7
    iget-object v0, p0, Lfs0;->a:Lz03;

    .line 8
    .line 9
    iget-object v1, p1, Lfs0;->a:Lz03;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz03;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lfs0;->b:I

    .line 18
    .line 19
    iget v1, p1, Lfs0;->b:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget p0, p0, Lfs0;->c:I

    .line 24
    .line 25
    iget p1, p1, Lfs0;->c:I

    .line 26
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lfs0;->a:Lz03;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz03;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget v2, p0, Lfs0;->b:I

    .line 13
    .line 14
    xor-int/2addr v0, v2

    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget p0, p0, Lfs0;->c:I

    .line 17
    .line 18
    xor-int/2addr p0, v0

    .line 19
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Dependency{anInterface="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lfs0;->a:Lz03;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", type="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lfs0;->b:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    const-string v1, "required"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "optional"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v1, "set"

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", injection="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget p0, p0, Lfs0;->c:I

    .line 42
    .line 43
    if-eqz p0, :cond_4

    .line 44
    .line 45
    if-eq p0, v2, :cond_3

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    if-ne p0, v1, :cond_2

    .line 49
    .line 50
    const-string p0, "deferred"

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const-string v0, "Unsupported injection: "

    .line 54
    .line 55
    invoke-static {p0, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lk21;->c(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0

    .line 64
    :cond_3
    const-string p0, "provider"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const-string p0, "direct"

    .line 68
    .line 69
    :goto_1
    const-string v1, "}"

    .line 70
    .line 71
    invoke-static {v0, p0, v1}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
