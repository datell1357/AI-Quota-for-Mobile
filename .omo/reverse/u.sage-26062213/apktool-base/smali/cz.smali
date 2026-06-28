.class public final Lcz;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Lgj1;


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:Lb40;

.field public final p:I


# direct methods
.method public constructor <init>(Lb40;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Char array buffer"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p1, Lb40;->o:I

    .line 10
    .line 11
    const/16 v1, 0x3a

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v1, v2, v0}, Lb40;->g(III)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    const-string v3, "Invalid header: "

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v2, v0}, Lb40;->i(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    iput-object p1, p0, Lcz;->o:Lb40;

    .line 34
    .line 35
    iput-object v1, p0, Lcz;->n:Ljava/lang/String;

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iput v0, p0, Lcz;->p:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance p0, Lzs2;

    .line 43
    .line 44
    invoke-virtual {p1}, Lb40;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    new-instance p0, Lzs2;

    .line 57
    .line 58
    invoke-virtual {p1}, Lb40;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method


# virtual methods
.method public final a()[Lru;
    .locals 4

    .line 1
    new-instance v0, Lky0;

    .line 2
    .line 3
    iget-object v1, p0, Lcz;->o:Lb40;

    .line 4
    .line 5
    iget v2, v1, Lb40;->o:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v2}, Lky0;-><init>(II)V

    .line 9
    .line 10
    .line 11
    iget p0, p0, Lcz;->p:I

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lky0;->b(I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Luu;->a:Luu;

    .line 17
    .line 18
    invoke-static {v1, v0}, Luu;->a(Lb40;Lky0;)[Lru;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcz;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcz;->p:I

    .line 2
    .line 3
    iget-object p0, p0, Lcz;->o:Lb40;

    .line 4
    .line 5
    iget v1, p0, Lb40;->o:I

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lb40;->i(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcz;->o:Lb40;

    .line 2
    .line 3
    invoke-virtual {p0}, Lb40;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
