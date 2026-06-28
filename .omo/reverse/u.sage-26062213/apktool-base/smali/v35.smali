.class public final Lv35;
.super Lsy4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field private static final zzb:Lv35;


# instance fields
.field private zzd:Lvy4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv35;

    .line 2
    .line 3
    invoke-direct {v0}, Lv35;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv35;->zzb:Lv35;

    .line 7
    .line 8
    invoke-static {v0}, Lsy4;->e(Lv35;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsy4;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lb15;->q:Lb15;

    .line 5
    .line 6
    iput-object v0, p0, Lv35;->zzd:Lvy4;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic i()Lv35;
    .locals 1

    .line 1
    sget-object v0, Lv35;->zzb:Lv35;

    .line 2
    .line 3
    return-object v0
.end method

.method public static j([B)Lv35;
    .locals 7

    .line 1
    sget-object v0, Lv35;->zzb:Lv35;

    .line 2
    .line 3
    array-length v5, p0

    .line 4
    sget-object v1, Ljy4;->a:Ljy4;

    .line 5
    .line 6
    invoke-virtual {v0}, Lsy4;->b()Lsy4;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    :try_start_0
    sget-object v0, Lz05;->c:Lz05;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Lz05;->a(Ljava/lang/Class;)Lh15;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v6, Lh30;

    .line 21
    .line 22
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    move-object v1, v3

    .line 30
    move-object v3, p0

    .line 31
    invoke-interface/range {v1 .. v6}, Lh15;->e(Ljava/lang/Object;[BIILh30;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Lh15;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lfz4; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lh25; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    invoke-virtual {v2, p0}, Lsy4;->h(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Byte;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ne v1, p0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Lz05;->a(Ljava/lang/Class;)Lh15;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0, v2}, Lh15;->d(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const/4 v0, 0x2

    .line 66
    invoke-virtual {v2, v0}, Lsy4;->h(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    :goto_0
    check-cast v2, Lv35;

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_1
    new-instance p0, Lh25;

    .line 75
    .line 76
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    .line 77
    .line 78
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lfz4;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :catch_0
    invoke-static {}, Lfz4;->c()Lfz4;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    throw p0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    move-object p0, v0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    instance-of v0, v0, Lfz4;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Lfz4;

    .line 111
    .line 112
    throw p0

    .line 113
    :cond_2
    new-instance v0, Lfz4;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :catch_2
    move-exception v0

    .line 124
    move-object p0, v0

    .line 125
    new-instance v0, Lfz4;

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :catch_3
    move-exception v0

    .line 136
    move-object p0, v0

    .line 137
    throw p0
.end method


# virtual methods
.method public final h(I)Ljava/lang/Object;
    .locals 1

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    if-eq p1, p0, :cond_3

    .line 7
    .line 8
    const/4 p0, 0x3

    .line 9
    if-eq p1, p0, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x4

    .line 12
    if-eq p1, p0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x5

    .line 15
    if-eq p1, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lv35;->zzb:Lv35;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Lt35;

    .line 23
    .line 24
    invoke-direct {p0}, Lt35;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    new-instance p0, Lv35;

    .line 29
    .line 30
    invoke-direct {p0}, Lv35;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    const-string p0, "zzd"

    .line 35
    .line 36
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lv35;->zzb:Lv35;

    .line 41
    .line 42
    new-instance v0, Le15;

    .line 43
    .line 44
    invoke-direct {v0, p1, p0}, Le15;-><init>(Lv35;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_4
    const/4 p0, 0x1

    .line 49
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final k()Lvy4;
    .locals 0

    .line 1
    iget-object p0, p0, Lv35;->zzd:Lvy4;

    .line 2
    .line 3
    return-object p0
.end method
