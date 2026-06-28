.class public final Lav;
.super Le1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lvm1;


# instance fields
.field public n:Lkv;

.field public final o:Lg03;

.field public final p:I

.field public final q:Ljava/lang/String;

.field public r:Lxl1;

.field public final s:Lz01;

.field public final t:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lg03;I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Le1;-><init>()V

    .line 24
    const-string v0, "Status code"

    invoke-static {p2, v0}, Lw80;->J(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lav;->n:Lkv;

    .line 26
    iput-object p1, p0, Lav;->o:Lg03;

    .line 27
    iput p2, p0, Lav;->p:I

    .line 28
    iput-object v0, p0, Lav;->q:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lav;->s:Lz01;

    .line 30
    iput-object v0, p0, Lav;->t:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Lkv;Lz01;Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lav;->n:Lkv;

    .line 5
    .line 6
    iget-object v0, p1, Lkv;->n:Lg03;

    .line 7
    .line 8
    iput-object v0, p0, Lav;->o:Lg03;

    .line 9
    .line 10
    iget v0, p1, Lkv;->o:I

    .line 11
    .line 12
    iput v0, p0, Lav;->p:I

    .line 13
    .line 14
    iget-object p1, p1, Lkv;->p:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lav;->q:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lav;->s:Lz01;

    .line 19
    .line 20
    iput-object p3, p0, Lav;->t:Ljava/util/Locale;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b()Lkv;
    .locals 7

    .line 1
    iget-object v0, p0, Lav;->n:Lkv;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    new-instance v0, Lkv;

    .line 6
    .line 7
    iget-object v1, p0, Lav;->o:Lg03;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Ldn1;->s:Ldn1;

    .line 13
    .line 14
    :goto_0
    iget v2, p0, Lav;->p:I

    .line 15
    .line 16
    iget-object v3, p0, Lav;->q:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_1
    iget-object v3, p0, Lav;->s:Lz01;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_4

    .line 25
    .line 26
    iget-object v3, p0, Lav;->t:Ljava/util/Locale;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 32
    .line 33
    .line 34
    :goto_1
    const/16 v3, 0x64

    .line 35
    .line 36
    if-lt v2, v3, :cond_3

    .line 37
    .line 38
    const/16 v3, 0x258

    .line 39
    .line 40
    if-ge v2, v3, :cond_3

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/4 v3, 0x0

    .line 45
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v6, "Unknown category for status code "

    .line 48
    .line 49
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v5, v3}, Lw80;->l(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    div-int/lit8 v3, v2, 0x64

    .line 63
    .line 64
    mul-int/lit8 v5, v3, 0x64

    .line 65
    .line 66
    sub-int v5, v2, v5

    .line 67
    .line 68
    sget-object v6, Lz01;->b:[[Ljava/lang/String;

    .line 69
    .line 70
    aget-object v3, v6, v3

    .line 71
    .line 72
    array-length v6, v3

    .line 73
    if-le v6, v5, :cond_4

    .line 74
    .line 75
    aget-object v3, v3, v5

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move-object v3, v4

    .line 79
    :goto_3
    invoke-direct {v0, v1, v2, v3}, Lkv;-><init>(Lg03;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lav;->n:Lkv;

    .line 83
    .line 84
    :cond_5
    iget-object p0, p0, Lav;->n:Lkv;

    .line 85
    .line 86
    return-object p0
.end method

.method public final getEntity()Lxl1;
    .locals 0

    .line 1
    iget-object p0, p0, Lav;->r:Lxl1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProtocolVersion()Lg03;
    .locals 0

    .line 1
    iget-object p0, p0, Lav;->o:Lg03;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setEntity(Lxl1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lav;->r:Lxl1;

    .line 2
    .line 3
    return-void
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
    invoke-virtual {p0}, Lav;->b()Lkv;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Le1;->headergroup:Lij1;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lav;->r:Lxl1;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lav;->r:Lxl1;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
