.class public final Ld32;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:I = 0x10301


# instance fields
.field public final a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ld32;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 6

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const-string v2, "Invalid"

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-ne v0, v4, :cond_0

    .line 9
    .line 10
    const-string v0, "Strategy.Simple"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-ne v0, v3, :cond_1

    .line 14
    .line 15
    const-string v0, "Strategy.HighQuality"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    const-string v0, "Strategy.Balanced"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    if-nez v0, :cond_3

    .line 24
    .line 25
    const-string v0, "Strategy.Unspecified"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    move-object v0, v2

    .line 29
    :goto_0
    shr-int/lit8 v5, p0, 0x8

    .line 30
    .line 31
    and-int/lit16 v5, v5, 0xff

    .line 32
    .line 33
    if-ne v5, v4, :cond_4

    .line 34
    .line 35
    const-string v1, "Strictness.None"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_4
    if-ne v5, v3, :cond_5

    .line 39
    .line 40
    const-string v1, "Strictness.Loose"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_5
    if-ne v5, v1, :cond_6

    .line 44
    .line 45
    const-string v1, "Strictness.Normal"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_6
    const/4 v1, 0x4

    .line 49
    if-ne v5, v1, :cond_7

    .line 50
    .line 51
    const-string v1, "Strictness.Strict"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_7
    if-nez v5, :cond_8

    .line 55
    .line 56
    const-string v1, "Strictness.Unspecified"

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_8
    move-object v1, v2

    .line 60
    :goto_1
    shr-int/lit8 p0, p0, 0x10

    .line 61
    .line 62
    and-int/lit16 p0, p0, 0xff

    .line 63
    .line 64
    if-ne p0, v4, :cond_9

    .line 65
    .line 66
    const-string v2, "WordBreak.None"

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_9
    if-ne p0, v3, :cond_a

    .line 70
    .line 71
    const-string v2, "WordBreak.Phrase"

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_a
    if-nez p0, :cond_b

    .line 75
    .line 76
    const-string v2, "WordBreak.Unspecified"

    .line 77
    .line 78
    :cond_b
    :goto_2
    const-string p0, ", strictness="

    .line 79
    .line 80
    const-string v3, ", wordBreak="

    .line 81
    .line 82
    const-string v4, "LineBreak(strategy="

    .line 83
    .line 84
    invoke-static {v4, v0, p0, v1, v3}, Ldi0;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v0, ")"

    .line 89
    .line 90
    invoke-static {p0, v2, v0}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ld32;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Ld32;

    .line 7
    .line 8
    iget p1, p1, Ld32;->a:I

    .line 9
    .line 10
    iget p0, p0, Ld32;->a:I

    .line 11
    .line 12
    if-eq p0, p1, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Ld32;->a:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Ld32;->a:I

    .line 2
    .line 3
    invoke-static {p0}, Ld32;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
