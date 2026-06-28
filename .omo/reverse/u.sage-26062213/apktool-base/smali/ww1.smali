.class public Lww1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public A:[I

.field public B:I

.field public final n:Ljava/io/Reader;

.field public final o:[C

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:J

.field public v:I

.field public w:Ljava/lang/String;

.field public x:[I

.field public y:I

.field public z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb21;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lb21;->o:Lb21;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lww1;->B:I

    .line 6
    .line 7
    const/16 v0, 0x400

    .line 8
    .line 9
    new-array v0, v0, [C

    .line 10
    .line 11
    iput-object v0, p0, Lww1;->o:[C

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lww1;->p:I

    .line 15
    .line 16
    iput v0, p0, Lww1;->q:I

    .line 17
    .line 18
    iput v0, p0, Lww1;->r:I

    .line 19
    .line 20
    iput v0, p0, Lww1;->s:I

    .line 21
    .line 22
    iput v0, p0, Lww1;->t:I

    .line 23
    .line 24
    const/16 v1, 0x20

    .line 25
    .line 26
    new-array v2, v1, [I

    .line 27
    .line 28
    iput-object v2, p0, Lww1;->x:[I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    iput v3, p0, Lww1;->y:I

    .line 32
    .line 33
    const/4 v3, 0x6

    .line 34
    aput v3, v2, v0

    .line 35
    .line 36
    new-array v0, v1, [Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lww1;->z:[Ljava/lang/String;

    .line 39
    .line 40
    new-array v0, v1, [I

    .line 41
    .line 42
    iput-object v0, p0, Lww1;->A:[I

    .line 43
    .line 44
    const-string v0, "in == null"

    .line 45
    .line 46
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lww1;->n:Ljava/io/Reader;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lww1;->y:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    iput v1, p0, Lww1;->y:I

    .line 17
    .line 18
    iget-object v1, p0, Lww1;->A:[I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x2

    .line 21
    .line 22
    aget v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v1, v0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lww1;->t:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-string v0, "END_ARRAY"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    throw p0
.end method

.method public final A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lww1;->s0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "adapter-not-null-safe"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "unexpected-json-structure"

    .line 13
    .line 14
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v2, "Expected "

    .line 17
    .line 18
    const-string v3, " but was "

    .line 19
    .line 20
    invoke-static {v2, p1, v3}, Ldi0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lww1;->s0()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Lxw1;->A(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lww1;->R()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, "\nSee "

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v1
.end method

.method public final B()V
    .locals 5

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lww1;->y:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, -0x1

    .line 15
    .line 16
    iput v2, p0, Lww1;->y:I

    .line 17
    .line 18
    iget-object v3, p0, Lww1;->z:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v4, v3, v2

    .line 22
    .line 23
    iget-object v2, p0, Lww1;->A:[I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    aget v1, v2, v0

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    aput v1, v2, v0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lww1;->t:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    const-string v0, "END_OBJECT"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method

.method public final B0(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x7f

    .line 13
    .line 14
    if-gt v1, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "String contains non-ASCII characters: "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lww1;->z0(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0

    .line 30
    :cond_1
    return-void
.end method

.method public final F(I)Z
    .locals 7

    .line 1
    iget v0, p0, Lww1;->s:I

    .line 2
    .line 3
    iget v1, p0, Lww1;->p:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lww1;->s:I

    .line 7
    .line 8
    iget v0, p0, Lww1;->q:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lww1;->o:[C

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    iput v0, p0, Lww1;->q:I

    .line 17
    .line 18
    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput v2, p0, Lww1;->q:I

    .line 23
    .line 24
    :goto_0
    iput v2, p0, Lww1;->p:I

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lww1;->q:I

    .line 27
    .line 28
    array-length v1, v3

    .line 29
    sub-int/2addr v1, v0

    .line 30
    iget-object v4, p0, Lww1;->n:Ljava/io/Reader;

    .line 31
    .line 32
    invoke-virtual {v4, v3, v0, v1}, Ljava/io/Reader;->read([CII)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, -0x1

    .line 37
    if-eq v0, v1, :cond_3

    .line 38
    .line 39
    iget v1, p0, Lww1;->q:I

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    iput v1, p0, Lww1;->q:I

    .line 43
    .line 44
    iget v0, p0, Lww1;->r:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget v0, p0, Lww1;->s:I

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    aget-char v5, v3, v2

    .line 56
    .line 57
    const v6, 0xfeff

    .line 58
    .line 59
    .line 60
    if-ne v5, v6, :cond_2

    .line 61
    .line 62
    iget v5, p0, Lww1;->p:I

    .line 63
    .line 64
    add-int/2addr v5, v4

    .line 65
    iput v5, p0, Lww1;->p:I

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    iput v0, p0, Lww1;->s:I

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    :cond_2
    if-lt v1, p1, :cond_1

    .line 74
    .line 75
    return v4

    .line 76
    :cond_3
    return v2
.end method

.method public final K(Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lww1;->y:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    iget-object v3, p0, Lww1;->x:[I

    .line 14
    .line 15
    aget v3, v3, v1

    .line 16
    .line 17
    packed-switch v3, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string p0, "Unknown scope value: "

    .line 21
    .line 22
    invoke-static {v3, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lk21;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    const/16 v2, 0x2e

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lww1;->z:[Ljava/lang/String;

    .line 37
    .line 38
    aget-object v2, v2, v1

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_1
    iget-object v3, p0, Lww1;->A:[I

    .line 47
    .line 48
    aget v3, v3, v1

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    if-lez v3, :cond_0

    .line 53
    .line 54
    add-int/lit8 v2, v2, -0x1

    .line 55
    .line 56
    if-ne v1, v2, :cond_0

    .line 57
    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 59
    .line 60
    :cond_0
    const/16 v2, 0x5b

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/16 v2, 0x5d

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_1
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final L()Z
    .locals 1

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 p0, 0x2

    .line 10
    if-eq v0, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    if-eq v0, p0, :cond_1

    .line 14
    .line 15
    const/16 p0, 0x11

    .line 16
    .line 17
    if-eq v0, p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final N(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x23

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x2c

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x2f

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    const/16 v0, 0x3d

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    const/16 v0, 0x7b

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x7d

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x3a

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x3b

    .line 50
    .line 51
    if-eq p1, v0, :cond_0

    .line 52
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lww1;->r()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final R()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lww1;->r:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lww1;->p:I

    .line 6
    .line 7
    iget v2, p0, Lww1;->s:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const-string v2, " column "

    .line 13
    .line 14
    const-string v3, " path "

    .line 15
    .line 16
    const-string v4, " at line "

    .line 17
    .line 18
    invoke-static {v4, v0, v2, v1, v3}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1}, Lww1;->K(Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final V()Z
    .locals 4

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lww1;->t:I

    .line 15
    .line 16
    iget-object v0, p0, Lww1;->A:[I

    .line 17
    .line 18
    iget p0, p0, Lww1;->y:I

    .line 19
    .line 20
    sub-int/2addr p0, v3

    .line 21
    aget v1, v0, p0

    .line 22
    .line 23
    add-int/2addr v1, v3

    .line 24
    aput v1, v0, p0

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    const/4 v1, 0x6

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iput v2, p0, Lww1;->t:I

    .line 31
    .line 32
    iget-object v0, p0, Lww1;->A:[I

    .line 33
    .line 34
    iget p0, p0, Lww1;->y:I

    .line 35
    .line 36
    sub-int/2addr p0, v3

    .line 37
    aget v1, v0, p0

    .line 38
    .line 39
    add-int/2addr v1, v3

    .line 40
    aput v1, v0, p0

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    const-string v0, "a boolean"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    throw p0
.end method

.method public final Y()D
    .locals 7

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iput v2, p0, Lww1;->t:I

    .line 16
    .line 17
    iget-object v0, p0, Lww1;->A:[I

    .line 18
    .line 19
    iget v1, p0, Lww1;->y:I

    .line 20
    .line 21
    sub-int/2addr v1, v3

    .line 22
    aget v2, v0, v1

    .line 23
    .line 24
    add-int/2addr v2, v3

    .line 25
    aput v2, v0, v1

    .line 26
    .line 27
    iget-wide v0, p0, Lww1;->u:J

    .line 28
    .line 29
    long-to-double v0, v0

    .line 30
    return-wide v0

    .line 31
    :cond_1
    const/16 v1, 0x10

    .line 32
    .line 33
    const/16 v4, 0xb

    .line 34
    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    new-instance v0, Ljava/lang/String;

    .line 38
    .line 39
    iget v1, p0, Lww1;->p:I

    .line 40
    .line 41
    iget v5, p0, Lww1;->v:I

    .line 42
    .line 43
    iget-object v6, p0, Lww1;->o:[C

    .line 44
    .line 45
    invoke-direct {v0, v6, v1, v5}, Ljava/lang/String;-><init>([CII)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 49
    .line 50
    iget v0, p0, Lww1;->p:I

    .line 51
    .line 52
    iget v1, p0, Lww1;->v:I

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    iput v0, p0, Lww1;->p:I

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v1, 0x8

    .line 59
    .line 60
    if-eq v0, v1, :cond_6

    .line 61
    .line 62
    const/16 v5, 0x9

    .line 63
    .line 64
    if-ne v0, v5, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/16 v1, 0xa

    .line 68
    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Lww1;->r0()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    if-ne v0, v4, :cond_5

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const-string v0, "a double"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    throw p0

    .line 88
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 89
    .line 90
    const/16 v0, 0x27

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_7
    const/16 v0, 0x22

    .line 94
    .line 95
    :goto_1
    invoke-virtual {p0, v0}, Lww1;->p0(C)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 100
    .line 101
    :goto_2
    iput v4, p0, Lww1;->t:I

    .line 102
    .line 103
    iget-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iget v4, p0, Lww1;->B:I

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    if-eq v4, v3, :cond_9

    .line 113
    .line 114
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_8

    .line 119
    .line 120
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_8

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v3, "JSON forbids NaN and infinities: "

    .line 130
    .line 131
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lww1;->z0(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v5

    .line 145
    :cond_9
    :goto_3
    iput-object v5, p0, Lww1;->w:Ljava/lang/String;

    .line 146
    .line 147
    iput v2, p0, Lww1;->t:I

    .line 148
    .line 149
    iget-object v2, p0, Lww1;->A:[I

    .line 150
    .line 151
    iget p0, p0, Lww1;->y:I

    .line 152
    .line 153
    sub-int/2addr p0, v3

    .line 154
    aget v4, v2, p0

    .line 155
    .line 156
    add-int/2addr v4, v3

    .line 157
    aput v4, v2, p0

    .line 158
    .line 159
    return-wide v0
.end method

.method public final Z()I
    .locals 7

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    .line 11
    const-string v2, "Expected an int but was "

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    iget-wide v0, p0, Lww1;->u:J

    .line 17
    .line 18
    long-to-int v4, v0

    .line 19
    int-to-long v5, v4

    .line 20
    cmp-long v0, v0, v5

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iput v3, p0, Lww1;->t:I

    .line 25
    .line 26
    iget-object v0, p0, Lww1;->A:[I

    .line 27
    .line 28
    iget p0, p0, Lww1;->y:I

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x1

    .line 31
    .line 32
    aget v1, v0, p0

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    aput v1, v0, p0

    .line 37
    .line 38
    return v4

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 40
    .line 41
    iget-wide v3, p0, Lww1;->u:J

    .line 42
    .line 43
    invoke-virtual {p0}, Lww1;->R()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    const/16 v1, 0x10

    .line 67
    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    new-instance v0, Ljava/lang/String;

    .line 71
    .line 72
    iget v1, p0, Lww1;->p:I

    .line 73
    .line 74
    iget v4, p0, Lww1;->v:I

    .line 75
    .line 76
    iget-object v5, p0, Lww1;->o:[C

    .line 77
    .line 78
    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 82
    .line 83
    iget v0, p0, Lww1;->p:I

    .line 84
    .line 85
    iget v1, p0, Lww1;->v:I

    .line 86
    .line 87
    add-int/2addr v0, v1

    .line 88
    iput v0, p0, Lww1;->p:I

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    const/16 v1, 0xa

    .line 92
    .line 93
    const/16 v4, 0x8

    .line 94
    .line 95
    if-eq v0, v4, :cond_5

    .line 96
    .line 97
    const/16 v5, 0x9

    .line 98
    .line 99
    if-eq v0, v5, :cond_5

    .line 100
    .line 101
    if-ne v0, v1, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    const-string v0, "an int"

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0

    .line 111
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Lww1;->r0()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    if-ne v0, v4, :cond_7

    .line 121
    .line 122
    const/16 v0, 0x27

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    const/16 v0, 0x22

    .line 126
    .line 127
    :goto_1
    invoke-virtual {p0, v0}, Lww1;->p0(C)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 132
    .line 133
    :goto_2
    iget-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lww1;->B0(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :try_start_0
    iget-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iput v3, p0, Lww1;->t:I

    .line 145
    .line 146
    iget-object v1, p0, Lww1;->A:[I

    .line 147
    .line 148
    iget v4, p0, Lww1;->y:I

    .line 149
    .line 150
    add-int/lit8 v4, v4, -0x1

    .line 151
    .line 152
    aget v5, v1, v4

    .line 153
    .line 154
    add-int/lit8 v5, v5, 0x1

    .line 155
    .line 156
    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    return v0

    .line 159
    :catch_0
    :goto_3
    const/16 v0, 0xb

    .line 160
    .line 161
    iput v0, p0, Lww1;->t:I

    .line 162
    .line 163
    iget-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    double-to-int v4, v0

    .line 170
    int-to-double v5, v4

    .line 171
    cmpl-double v0, v5, v0

    .line 172
    .line 173
    if-nez v0, :cond_8

    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 177
    .line 178
    iput v3, p0, Lww1;->t:I

    .line 179
    .line 180
    iget-object v0, p0, Lww1;->A:[I

    .line 181
    .line 182
    iget p0, p0, Lww1;->y:I

    .line 183
    .line 184
    add-int/lit8 p0, p0, -0x1

    .line 185
    .line 186
    aget v1, v0, p0

    .line 187
    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 189
    .line 190
    aput v1, v0, p0

    .line 191
    .line 192
    return v4

    .line 193
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 194
    .line 195
    iget-object v1, p0, Lww1;->w:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p0}, Lww1;->R()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lww1;->t0(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lww1;->A:[I

    .line 17
    .line 18
    iget v2, p0, Lww1;->y:I

    .line 19
    .line 20
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 23
    .line 24
    iput v0, p0, Lww1;->t:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-string v0, "BEGIN_ARRAY"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lww1;->t:I

    .line 3
    .line 4
    iget-object v1, p0, Lww1;->x:[I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    aput v2, v1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lww1;->y:I

    .line 12
    .line 13
    iget-object p0, p0, Lww1;->n:Ljava/io/Reader;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final i0()J
    .locals 7

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lww1;->t:I

    .line 15
    .line 16
    iget-object v0, p0, Lww1;->A:[I

    .line 17
    .line 18
    iget v1, p0, Lww1;->y:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    aget v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v0, v1

    .line 27
    .line 28
    iget-wide v0, p0, Lww1;->u:J

    .line 29
    .line 30
    return-wide v0

    .line 31
    :cond_1
    const/16 v1, 0x10

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    new-instance v0, Ljava/lang/String;

    .line 36
    .line 37
    iget v1, p0, Lww1;->p:I

    .line 38
    .line 39
    iget v3, p0, Lww1;->v:I

    .line 40
    .line 41
    iget-object v4, p0, Lww1;->o:[C

    .line 42
    .line 43
    invoke-direct {v0, v4, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 47
    .line 48
    iget v0, p0, Lww1;->p:I

    .line 49
    .line 50
    iget v1, p0, Lww1;->v:I

    .line 51
    .line 52
    add-int/2addr v0, v1

    .line 53
    iput v0, p0, Lww1;->p:I

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    const/16 v1, 0xa

    .line 57
    .line 58
    const/16 v3, 0x8

    .line 59
    .line 60
    if-eq v0, v3, :cond_4

    .line 61
    .line 62
    const/16 v4, 0x9

    .line 63
    .line 64
    if-eq v0, v4, :cond_4

    .line 65
    .line 66
    if-ne v0, v1, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string v0, "a long"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    throw p0

    .line 76
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lww1;->r0()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    if-ne v0, v3, :cond_6

    .line 86
    .line 87
    const/16 v0, 0x27

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/16 v0, 0x22

    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0, v0}, Lww1;->p0(C)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 97
    .line 98
    :goto_2
    iget-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lww1;->B0(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :try_start_0
    iget-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iput v2, p0, Lww1;->t:I

    .line 110
    .line 111
    iget-object v3, p0, Lww1;->A:[I

    .line 112
    .line 113
    iget v4, p0, Lww1;->y:I

    .line 114
    .line 115
    add-int/lit8 v4, v4, -0x1

    .line 116
    .line 117
    aget v5, v3, v4

    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    return-wide v0

    .line 124
    :catch_0
    :goto_3
    const/16 v0, 0xb

    .line 125
    .line 126
    iput v0, p0, Lww1;->t:I

    .line 127
    .line 128
    iget-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    double-to-long v3, v0

    .line 135
    long-to-double v5, v3

    .line 136
    cmpl-double v0, v5, v0

    .line 137
    .line 138
    if-nez v0, :cond_7

    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 142
    .line 143
    iput v2, p0, Lww1;->t:I

    .line 144
    .line 145
    iget-object v0, p0, Lww1;->A:[I

    .line 146
    .line 147
    iget p0, p0, Lww1;->y:I

    .line 148
    .line 149
    add-int/lit8 p0, p0, -0x1

    .line 150
    .line 151
    aget v1, v0, p0

    .line 152
    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    aput v1, v0, p0

    .line 156
    .line 157
    return-wide v3

    .line 158
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 159
    .line 160
    iget-object v1, p0, Lww1;->w:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p0}, Lww1;->R()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v3, "Expected a long but was "

    .line 169
    .line 170
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lww1;->t0(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lww1;->t:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v0, "BEGIN_OBJECT"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method public final j0()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lww1;->r0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xc

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lww1;->p0(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0xd

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lww1;->p0(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lww1;->t:I

    .line 41
    .line 42
    iget-object v1, p0, Lww1;->z:[Ljava/lang/String;

    .line 43
    .line 44
    iget p0, p0, Lww1;->y:I

    .line 45
    .line 46
    add-int/lit8 p0, p0, -0x1

    .line 47
    .line 48
    aput-object v0, v1, p0

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    const-string v0, "a name"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0
.end method

.method public final n0(Z)I
    .locals 9

    .line 1
    iget v0, p0, Lww1;->p:I

    .line 2
    .line 3
    iget v1, p0, Lww1;->q:I

    .line 4
    .line 5
    :goto_0
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iput v0, p0, Lww1;->p:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lww1;->F(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p0, -0x1

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 21
    .line 22
    invoke-virtual {p0}, Lww1;->R()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "End of input"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iget v0, p0, Lww1;->p:I

    .line 37
    .line 38
    iget v1, p0, Lww1;->q:I

    .line 39
    .line 40
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 41
    .line 42
    iget-object v4, p0, Lww1;->o:[C

    .line 43
    .line 44
    aget-char v5, v4, v0

    .line 45
    .line 46
    const/16 v6, 0xa

    .line 47
    .line 48
    if-ne v5, v6, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lww1;->r:I

    .line 51
    .line 52
    add-int/2addr v0, v2

    .line 53
    iput v0, p0, Lww1;->r:I

    .line 54
    .line 55
    iput v3, p0, Lww1;->s:I

    .line 56
    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_3
    const/16 v7, 0x20

    .line 60
    .line 61
    if-eq v5, v7, :cond_f

    .line 62
    .line 63
    const/16 v7, 0xd

    .line 64
    .line 65
    if-eq v5, v7, :cond_f

    .line 66
    .line 67
    const/16 v7, 0x9

    .line 68
    .line 69
    if-ne v5, v7, :cond_4

    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_4
    const/16 v7, 0x2f

    .line 74
    .line 75
    if-ne v5, v7, :cond_d

    .line 76
    .line 77
    iput v3, p0, Lww1;->p:I

    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    if-ne v3, v1, :cond_5

    .line 81
    .line 82
    iput v0, p0, Lww1;->p:I

    .line 83
    .line 84
    invoke-virtual {p0, v8}, Lww1;->F(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget v1, p0, Lww1;->p:I

    .line 89
    .line 90
    add-int/2addr v1, v2

    .line 91
    iput v1, p0, Lww1;->p:I

    .line 92
    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual {p0}, Lww1;->r()V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lww1;->p:I

    .line 100
    .line 101
    aget-char v1, v4, v0

    .line 102
    .line 103
    const/16 v3, 0x2a

    .line 104
    .line 105
    if-eq v1, v3, :cond_7

    .line 106
    .line 107
    if-eq v1, v7, :cond_6

    .line 108
    .line 109
    :goto_1
    return v5

    .line 110
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    iput v0, p0, Lww1;->p:I

    .line 113
    .line 114
    invoke-virtual {p0}, Lww1;->w0()V

    .line 115
    .line 116
    .line 117
    iget v0, p0, Lww1;->p:I

    .line 118
    .line 119
    iget v1, p0, Lww1;->q:I

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    iput v0, p0, Lww1;->p:I

    .line 125
    .line 126
    :goto_2
    iget v0, p0, Lww1;->p:I

    .line 127
    .line 128
    add-int/2addr v0, v8

    .line 129
    iget v1, p0, Lww1;->q:I

    .line 130
    .line 131
    if-le v0, v1, :cond_9

    .line 132
    .line 133
    invoke-virtual {p0, v8}, Lww1;->F(I)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    const-string p1, "Unterminated comment"

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lww1;->z0(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/4 p0, 0x0

    .line 146
    throw p0

    .line 147
    :cond_9
    :goto_3
    iget v0, p0, Lww1;->p:I

    .line 148
    .line 149
    aget-char v1, v4, v0

    .line 150
    .line 151
    if-ne v1, v6, :cond_a

    .line 152
    .line 153
    iget v1, p0, Lww1;->r:I

    .line 154
    .line 155
    add-int/2addr v1, v2

    .line 156
    iput v1, p0, Lww1;->r:I

    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    .line 160
    iput v0, p0, Lww1;->s:I

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_a
    const/4 v0, 0x0

    .line 164
    :goto_4
    iget v1, p0, Lww1;->p:I

    .line 165
    .line 166
    if-ge v0, v8, :cond_c

    .line 167
    .line 168
    add-int/2addr v1, v0

    .line 169
    aget-char v1, v4, v1

    .line 170
    .line 171
    const-string v3, "*/"

    .line 172
    .line 173
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eq v1, v3, :cond_b

    .line 178
    .line 179
    :goto_5
    iget v0, p0, Lww1;->p:I

    .line 180
    .line 181
    add-int/2addr v0, v2

    .line 182
    iput v0, p0, Lww1;->p:I

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_c
    add-int/lit8 v0, v1, 0x2

    .line 189
    .line 190
    iget v1, p0, Lww1;->q:I

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_d
    const/16 v0, 0x23

    .line 195
    .line 196
    if-ne v5, v0, :cond_e

    .line 197
    .line 198
    iput v3, p0, Lww1;->p:I

    .line 199
    .line 200
    invoke-virtual {p0}, Lww1;->r()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lww1;->w0()V

    .line 204
    .line 205
    .line 206
    iget v0, p0, Lww1;->p:I

    .line 207
    .line 208
    iget v1, p0, Lww1;->q:I

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_e
    iput v3, p0, Lww1;->p:I

    .line 213
    .line 214
    return v5

    .line 215
    :cond_f
    :goto_6
    move v0, v3

    .line 216
    goto/16 :goto_0
.end method

.method public final o0()V
    .locals 2

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lww1;->t:I

    .line 14
    .line 15
    iget-object v0, p0, Lww1;->A:[I

    .line 16
    .line 17
    iget p0, p0, Lww1;->y:I

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x1

    .line 20
    .line 21
    aget v1, v0, p0

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    aput v1, v0, p0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v0, "null"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0
.end method

.method public final p0(C)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lww1;->p:I

    .line 4
    .line 5
    iget v3, p0, Lww1;->q:I

    .line 6
    .line 7
    :goto_1
    move v4, v3

    .line 8
    move v3, v2

    .line 9
    :goto_2
    const/16 v5, 0x10

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v7, p0, Lww1;->o:[C

    .line 13
    .line 14
    if-ge v2, v4, :cond_7

    .line 15
    .line 16
    add-int/lit8 v8, v2, 0x1

    .line 17
    .line 18
    aget-char v2, v7, v2

    .line 19
    .line 20
    iget v9, p0, Lww1;->B:I

    .line 21
    .line 22
    const/4 v10, 0x3

    .line 23
    if-ne v9, v10, :cond_1

    .line 24
    .line 25
    const/16 v9, 0x20

    .line 26
    .line 27
    if-lt v2, v9, :cond_0

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    const-string p1, "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lww1;->z0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_3
    if-ne v2, p1, :cond_3

    .line 37
    .line 38
    iput v8, p0, Lww1;->p:I

    .line 39
    .line 40
    sub-int/2addr v8, v3

    .line 41
    sub-int/2addr v8, v6

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    new-instance p0, Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p0, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-virtual {v1, v7, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_3
    const/16 v9, 0x5c

    .line 59
    .line 60
    if-ne v2, v9, :cond_5

    .line 61
    .line 62
    iput v8, p0, Lww1;->p:I

    .line 63
    .line 64
    sub-int/2addr v8, v3

    .line 65
    add-int/lit8 v2, v8, -0x1

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    mul-int/lit8 v8, v8, 0x2

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {v1, v7, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lww1;->u0()C

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v2, p0, Lww1;->p:I

    .line 91
    .line 92
    iget v3, p0, Lww1;->q:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const/16 v5, 0xa

    .line 96
    .line 97
    if-ne v2, v5, :cond_6

    .line 98
    .line 99
    iget v2, p0, Lww1;->r:I

    .line 100
    .line 101
    add-int/2addr v2, v6

    .line 102
    iput v2, p0, Lww1;->r:I

    .line 103
    .line 104
    iput v8, p0, Lww1;->s:I

    .line 105
    .line 106
    :cond_6
    move v2, v8

    .line 107
    goto :goto_2

    .line 108
    :cond_7
    if-nez v1, :cond_8

    .line 109
    .line 110
    sub-int v1, v2, v3

    .line 111
    .line 112
    mul-int/lit8 v1, v1, 0x2

    .line 113
    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    .line 122
    .line 123
    move-object v1, v4

    .line 124
    :cond_8
    sub-int v4, v2, v3

    .line 125
    .line 126
    invoke-virtual {v1, v7, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iput v2, p0, Lww1;->p:I

    .line 130
    .line 131
    invoke-virtual {p0, v6}, Lww1;->F(I)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_9

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_9
    const-string p1, "Unterminated string"

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lww1;->z0(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0
.end method

.method public final q0()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lww1;->r0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lww1;->p0(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0x9

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lww1;->p0(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xb

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lww1;->w:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lww1;->w:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/16 v1, 0xf

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    iget-wide v0, p0, Lww1;->u:J

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0x10

    .line 62
    .line 63
    if-ne v0, v1, :cond_6

    .line 64
    .line 65
    new-instance v0, Ljava/lang/String;

    .line 66
    .line 67
    iget v1, p0, Lww1;->p:I

    .line 68
    .line 69
    iget v2, p0, Lww1;->v:I

    .line 70
    .line 71
    iget-object v3, p0, Lww1;->o:[C

    .line 72
    .line 73
    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lww1;->p:I

    .line 77
    .line 78
    iget v2, p0, Lww1;->v:I

    .line 79
    .line 80
    add-int/2addr v1, v2

    .line 81
    iput v1, p0, Lww1;->p:I

    .line 82
    .line 83
    :goto_0
    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lww1;->t:I

    .line 85
    .line 86
    iget-object v1, p0, Lww1;->A:[I

    .line 87
    .line 88
    iget p0, p0, Lww1;->y:I

    .line 89
    .line 90
    add-int/lit8 p0, p0, -0x1

    .line 91
    .line 92
    aget v2, v1, p0

    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    aput v2, v1, p0

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_6
    const-string v0, "a string"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lww1;->A0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    throw p0
.end method

.method public final r()V
    .locals 2

    .line 1
    iget v0, p0, Lww1;->B:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lww1;->z0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final r0()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Lww1;->p:I

    .line 5
    .line 6
    add-int/2addr v3, v2

    .line 7
    iget v4, p0, Lww1;->q:I

    .line 8
    .line 9
    iget-object v5, p0, Lww1;->o:[C

    .line 10
    .line 11
    if-ge v3, v4, :cond_2

    .line 12
    .line 13
    aget-char v3, v5, v3

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-eq v3, v4, :cond_3

    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    if-eq v3, v4, :cond_3

    .line 22
    .line 23
    const/16 v4, 0xc

    .line 24
    .line 25
    if-eq v3, v4, :cond_3

    .line 26
    .line 27
    const/16 v4, 0xd

    .line 28
    .line 29
    if-eq v3, v4, :cond_3

    .line 30
    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    if-eq v3, v4, :cond_3

    .line 34
    .line 35
    const/16 v4, 0x23

    .line 36
    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    const/16 v4, 0x2c

    .line 40
    .line 41
    if-eq v3, v4, :cond_3

    .line 42
    .line 43
    const/16 v4, 0x2f

    .line 44
    .line 45
    if-eq v3, v4, :cond_1

    .line 46
    .line 47
    const/16 v4, 0x3d

    .line 48
    .line 49
    if-eq v3, v4, :cond_1

    .line 50
    .line 51
    const/16 v4, 0x7b

    .line 52
    .line 53
    if-eq v3, v4, :cond_3

    .line 54
    .line 55
    const/16 v4, 0x7d

    .line 56
    .line 57
    if-eq v3, v4, :cond_3

    .line 58
    .line 59
    const/16 v4, 0x3a

    .line 60
    .line 61
    if-eq v3, v4, :cond_3

    .line 62
    .line 63
    const/16 v4, 0x3b

    .line 64
    .line 65
    if-eq v3, v4, :cond_1

    .line 66
    .line 67
    packed-switch v3, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lww1;->r()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    array-length v3, v5

    .line 78
    if-ge v2, v3, :cond_4

    .line 79
    .line 80
    add-int/lit8 v3, v2, 0x1

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lww1;->F(I)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    if-nez v0, :cond_5

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const/16 v3, 0x10

    .line 96
    .line 97
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .line 103
    .line 104
    :cond_5
    iget v3, p0, Lww1;->p:I

    .line 105
    .line 106
    invoke-virtual {v0, v5, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v3, p0, Lww1;->p:I

    .line 110
    .line 111
    add-int/2addr v3, v2

    .line 112
    iput v3, p0, Lww1;->p:I

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-virtual {p0, v2}, Lww1;->F(I)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_0

    .line 120
    .line 121
    :goto_2
    iget v2, p0, Lww1;->p:I

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    new-instance v0, Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {v0, v5, v2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_3
    iget v2, p0, Lww1;->p:I

    .line 139
    .line 140
    add-int/2addr v2, v1

    .line 141
    iput v2, p0, Lww1;->p:I

    .line 142
    .line 143
    return-object v0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final s0()I
    .locals 1

    .line 1
    iget v0, p0, Lww1;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww1;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :pswitch_0
    const/16 p0, 0xa

    .line 19
    .line 20
    return p0

    .line 21
    :pswitch_1
    const/4 p0, 0x7

    .line 22
    return p0

    .line 23
    :pswitch_2
    const/4 p0, 0x5

    .line 24
    return p0

    .line 25
    :pswitch_3
    const/4 p0, 0x6

    .line 26
    return p0

    .line 27
    :pswitch_4
    const/16 p0, 0x9

    .line 28
    .line 29
    return p0

    .line 30
    :pswitch_5
    const/16 p0, 0x8

    .line 31
    .line 32
    return p0

    .line 33
    :pswitch_6
    const/4 p0, 0x2

    .line 34
    return p0

    .line 35
    :pswitch_7
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :pswitch_8
    const/4 p0, 0x4

    .line 38
    return p0

    .line 39
    :pswitch_9
    const/4 p0, 0x3

    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lww1;->y:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    const/16 v2, 0xff

    .line 6
    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lww1;->x:[I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    mul-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lww1;->x:[I

    .line 21
    .line 22
    iget-object v1, p0, Lww1;->A:[I

    .line 23
    .line 24
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lww1;->A:[I

    .line 29
    .line 30
    iget-object v1, p0, Lww1;->z:[Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lww1;->z:[Ljava/lang/String;

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lww1;->x:[I

    .line 41
    .line 42
    iget v1, p0, Lww1;->y:I

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    iput v2, p0, Lww1;->y:I

    .line 47
    .line 48
    aput p1, v0, v1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance p1, Lr92;

    .line 52
    .line 53
    invoke-virtual {p0}, Lww1;->R()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v0, "Nesting limit 255 reached"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lww1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lww1;->R()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final u0()C
    .locals 9

    .line 1
    iget v0, p0, Lww1;->p:I

    .line 2
    .line 3
    iget v1, p0, Lww1;->q:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Unterminated escape sequence"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v4}, Lww1;->F(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v3}, Lww1;->z0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v2

    .line 22
    :cond_1
    :goto_0
    iget v0, p0, Lww1;->p:I

    .line 23
    .line 24
    add-int/lit8 v1, v0, 0x1

    .line 25
    .line 26
    iput v1, p0, Lww1;->p:I

    .line 27
    .line 28
    iget-object v5, p0, Lww1;->o:[C

    .line 29
    .line 30
    aget-char v6, v5, v0

    .line 31
    .line 32
    const/4 v7, 0x3

    .line 33
    const/16 v8, 0xa

    .line 34
    .line 35
    if-eq v6, v8, :cond_e

    .line 36
    .line 37
    const/16 v1, 0x22

    .line 38
    .line 39
    if-eq v6, v1, :cond_10

    .line 40
    .line 41
    const/16 v1, 0x27

    .line 42
    .line 43
    if-eq v6, v1, :cond_f

    .line 44
    .line 45
    const/16 v1, 0x2f

    .line 46
    .line 47
    if-eq v6, v1, :cond_10

    .line 48
    .line 49
    const/16 v1, 0x5c

    .line 50
    .line 51
    if-eq v6, v1, :cond_10

    .line 52
    .line 53
    const/16 v1, 0x62

    .line 54
    .line 55
    if-eq v6, v1, :cond_d

    .line 56
    .line 57
    const/16 v1, 0x66

    .line 58
    .line 59
    if-eq v6, v1, :cond_c

    .line 60
    .line 61
    const/16 v4, 0x6e

    .line 62
    .line 63
    if-eq v6, v4, :cond_b

    .line 64
    .line 65
    const/16 v4, 0x72

    .line 66
    .line 67
    if-eq v6, v4, :cond_a

    .line 68
    .line 69
    const/16 v4, 0x74

    .line 70
    .line 71
    if-eq v6, v4, :cond_9

    .line 72
    .line 73
    const/16 v4, 0x75

    .line 74
    .line 75
    if-ne v6, v4, :cond_8

    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x5

    .line 78
    .line 79
    iget v4, p0, Lww1;->q:I

    .line 80
    .line 81
    const/4 v6, 0x4

    .line 82
    if-le v0, v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0, v6}, Lww1;->F(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0, v3}, Lww1;->z0(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v2

    .line 95
    :cond_3
    :goto_1
    iget v0, p0, Lww1;->p:I

    .line 96
    .line 97
    add-int/lit8 v3, v0, 0x4

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    :goto_2
    if-ge v0, v3, :cond_7

    .line 101
    .line 102
    aget-char v7, v5, v0

    .line 103
    .line 104
    shl-int/lit8 v4, v4, 0x4

    .line 105
    .line 106
    const/16 v8, 0x30

    .line 107
    .line 108
    if-lt v7, v8, :cond_4

    .line 109
    .line 110
    const/16 v8, 0x39

    .line 111
    .line 112
    if-gt v7, v8, :cond_4

    .line 113
    .line 114
    add-int/lit8 v7, v7, -0x30

    .line 115
    .line 116
    :goto_3
    add-int/2addr v7, v4

    .line 117
    move v4, v7

    .line 118
    goto :goto_4

    .line 119
    :cond_4
    const/16 v8, 0x61

    .line 120
    .line 121
    if-lt v7, v8, :cond_5

    .line 122
    .line 123
    if-gt v7, v1, :cond_5

    .line 124
    .line 125
    add-int/lit8 v7, v7, -0x57

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    const/16 v8, 0x41

    .line 129
    .line 130
    if-lt v7, v8, :cond_6

    .line 131
    .line 132
    const/16 v8, 0x46

    .line 133
    .line 134
    if-gt v7, v8, :cond_6

    .line 135
    .line 136
    add-int/lit8 v7, v7, -0x37

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    new-instance v0, Ljava/lang/String;

    .line 143
    .line 144
    iget v1, p0, Lww1;->p:I

    .line 145
    .line 146
    invoke-direct {v0, v5, v1, v6}, Ljava/lang/String;-><init>([CII)V

    .line 147
    .line 148
    .line 149
    const-string v1, "Malformed Unicode escape \\u"

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lww1;->z0(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v2

    .line 159
    :cond_7
    iget v0, p0, Lww1;->p:I

    .line 160
    .line 161
    add-int/2addr v0, v6

    .line 162
    iput v0, p0, Lww1;->p:I

    .line 163
    .line 164
    int-to-char p0, v4

    .line 165
    return p0

    .line 166
    :cond_8
    const-string v0, "Invalid escape sequence"

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Lww1;->z0(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v2

    .line 172
    :cond_9
    const/16 p0, 0x9

    .line 173
    .line 174
    return p0

    .line 175
    :cond_a
    const/16 p0, 0xd

    .line 176
    .line 177
    return p0

    .line 178
    :cond_b
    return v8

    .line 179
    :cond_c
    const/16 p0, 0xc

    .line 180
    .line 181
    return p0

    .line 182
    :cond_d
    const/16 p0, 0x8

    .line 183
    .line 184
    return p0

    .line 185
    :cond_e
    iget v0, p0, Lww1;->B:I

    .line 186
    .line 187
    if-eq v0, v7, :cond_12

    .line 188
    .line 189
    iget v0, p0, Lww1;->r:I

    .line 190
    .line 191
    add-int/2addr v0, v4

    .line 192
    iput v0, p0, Lww1;->r:I

    .line 193
    .line 194
    iput v1, p0, Lww1;->s:I

    .line 195
    .line 196
    :cond_f
    iget v0, p0, Lww1;->B:I

    .line 197
    .line 198
    if-eq v0, v7, :cond_11

    .line 199
    .line 200
    :cond_10
    return v6

    .line 201
    :cond_11
    const-string v0, "Invalid escaped character \"\'\" in strict mode"

    .line 202
    .line 203
    invoke-virtual {p0, v0}, Lww1;->z0(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v2

    .line 207
    :cond_12
    const-string v0, "Cannot escape a newline character in strict mode"

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Lww1;->z0(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v2
.end method

.method public final v0(C)V
    .locals 5

    .line 1
    :goto_0
    iget v0, p0, Lww1;->p:I

    .line 2
    .line 3
    iget v1, p0, Lww1;->q:I

    .line 4
    .line 5
    :goto_1
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_3

    .line 7
    .line 8
    add-int/lit8 v3, v0, 0x1

    .line 9
    .line 10
    iget-object v4, p0, Lww1;->o:[C

    .line 11
    .line 12
    aget-char v0, v4, v0

    .line 13
    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    iput v3, p0, Lww1;->p:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/16 v4, 0x5c

    .line 20
    .line 21
    if-ne v0, v4, :cond_1

    .line 22
    .line 23
    iput v3, p0, Lww1;->p:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lww1;->u0()C

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lww1;->p:I

    .line 29
    .line 30
    iget v1, p0, Lww1;->q:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v4, 0xa

    .line 34
    .line 35
    if-ne v0, v4, :cond_2

    .line 36
    .line 37
    iget v0, p0, Lww1;->r:I

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    iput v0, p0, Lww1;->r:I

    .line 41
    .line 42
    iput v3, p0, Lww1;->s:I

    .line 43
    .line 44
    :cond_2
    move v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iput v0, p0, Lww1;->p:I

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lww1;->F(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const-string p1, "Unterminated string"

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lww1;->z0(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    throw p0
.end method

.method public final w0()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lww1;->p:I

    .line 2
    .line 3
    iget v1, p0, Lww1;->q:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lww1;->F(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :cond_1
    iget v0, p0, Lww1;->p:I

    .line 15
    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    iput v1, p0, Lww1;->p:I

    .line 19
    .line 20
    iget-object v3, p0, Lww1;->o:[C

    .line 21
    .line 22
    aget-char v0, v3, v0

    .line 23
    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    if-ne v0, v3, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lww1;->r:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lww1;->r:I

    .line 32
    .line 33
    iput v1, p0, Lww1;->s:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/16 v1, 0xd

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public final x0()V
    .locals 3

    .line 1
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lww1;->p:I

    .line 3
    .line 4
    add-int/2addr v1, v0

    .line 5
    iget v2, p0, Lww1;->q:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_3

    .line 8
    .line 9
    iget-object v2, p0, Lww1;->o:[C

    .line 10
    .line 11
    aget-char v1, v2, v1

    .line 12
    .line 13
    const/16 v2, 0x9

    .line 14
    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    const/16 v2, 0xc

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const/16 v2, 0xd

    .line 26
    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const/16 v2, 0x20

    .line 30
    .line 31
    if-eq v1, v2, :cond_2

    .line 32
    .line 33
    const/16 v2, 0x23

    .line 34
    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    const/16 v2, 0x2c

    .line 38
    .line 39
    if-eq v1, v2, :cond_2

    .line 40
    .line 41
    const/16 v2, 0x2f

    .line 42
    .line 43
    if-eq v1, v2, :cond_1

    .line 44
    .line 45
    const/16 v2, 0x3d

    .line 46
    .line 47
    if-eq v1, v2, :cond_1

    .line 48
    .line 49
    const/16 v2, 0x7b

    .line 50
    .line 51
    if-eq v1, v2, :cond_2

    .line 52
    .line 53
    const/16 v2, 0x7d

    .line 54
    .line 55
    if-eq v1, v2, :cond_2

    .line 56
    .line 57
    const/16 v2, 0x3a

    .line 58
    .line 59
    if-eq v1, v2, :cond_2

    .line 60
    .line 61
    const/16 v2, 0x3b

    .line 62
    .line 63
    if-eq v1, v2, :cond_1

    .line 64
    .line 65
    packed-switch v1, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lww1;->r()V

    .line 72
    .line 73
    .line 74
    :cond_2
    :pswitch_1
    iget v1, p0, Lww1;->p:I

    .line 75
    .line 76
    add-int/2addr v1, v0

    .line 77
    iput v1, p0, Lww1;->p:I

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    iput v1, p0, Lww1;->p:I

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Lww1;->F(I)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final y0()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_0
    iget v2, p0, Lww1;->t:I

    .line 4
    .line 5
    if-nez v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lww1;->z()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :cond_1
    const/16 v3, 0x27

    .line 12
    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    const-string v5, "<skipped>"

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    :pswitch_0
    goto :goto_2

    .line 22
    :pswitch_1
    return-void

    .line 23
    :pswitch_2
    iget v2, p0, Lww1;->p:I

    .line 24
    .line 25
    iget v3, p0, Lww1;->v:I

    .line 26
    .line 27
    add-int/2addr v2, v3

    .line 28
    iput v2, p0, Lww1;->p:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :pswitch_3
    invoke-virtual {p0}, Lww1;->x0()V

    .line 32
    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lww1;->z:[Ljava/lang/String;

    .line 37
    .line 38
    iget v3, p0, Lww1;->y:I

    .line 39
    .line 40
    sub-int/2addr v3, v6

    .line 41
    aput-object v5, v2, v3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :pswitch_4
    invoke-virtual {p0, v4}, Lww1;->v0(C)V

    .line 45
    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget-object v2, p0, Lww1;->z:[Ljava/lang/String;

    .line 50
    .line 51
    iget v3, p0, Lww1;->y:I

    .line 52
    .line 53
    sub-int/2addr v3, v6

    .line 54
    aput-object v5, v2, v3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :pswitch_5
    invoke-virtual {p0, v3}, Lww1;->v0(C)V

    .line 58
    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lww1;->z:[Ljava/lang/String;

    .line 63
    .line 64
    iget v3, p0, Lww1;->y:I

    .line 65
    .line 66
    sub-int/2addr v3, v6

    .line 67
    aput-object v5, v2, v3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :pswitch_6
    invoke-virtual {p0}, Lww1;->x0()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_7
    invoke-virtual {p0, v4}, Lww1;->v0(C)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :pswitch_8
    invoke-virtual {p0, v3}, Lww1;->v0(C)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :pswitch_9
    iget v2, p0, Lww1;->y:I

    .line 83
    .line 84
    sub-int/2addr v2, v6

    .line 85
    iput v2, p0, Lww1;->y:I

    .line 86
    .line 87
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :pswitch_a
    invoke-virtual {p0, v6}, Lww1;->t0(I)V

    .line 91
    .line 92
    .line 93
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :pswitch_b
    if-nez v1, :cond_2

    .line 97
    .line 98
    iget-object v2, p0, Lww1;->z:[Ljava/lang/String;

    .line 99
    .line 100
    iget v3, p0, Lww1;->y:I

    .line 101
    .line 102
    sub-int/2addr v3, v6

    .line 103
    const/4 v4, 0x0

    .line 104
    aput-object v4, v2, v3

    .line 105
    .line 106
    :cond_2
    iget v2, p0, Lww1;->y:I

    .line 107
    .line 108
    sub-int/2addr v2, v6

    .line 109
    iput v2, p0, Lww1;->y:I

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_c
    const/4 v2, 0x3

    .line 113
    invoke-virtual {p0, v2}, Lww1;->t0(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    :goto_2
    iput v0, p0, Lww1;->t:I

    .line 118
    .line 119
    if-gtz v1, :cond_0

    .line 120
    .line 121
    iget-object v0, p0, Lww1;->A:[I

    .line 122
    .line 123
    iget p0, p0, Lww1;->y:I

    .line 124
    .line 125
    sub-int/2addr p0, v6

    .line 126
    aget v1, v0, p0

    .line 127
    .line 128
    add-int/2addr v1, v6

    .line 129
    aput v1, v0, p0

    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final z()I
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lww1;->x:[I

    .line 4
    .line 5
    iget v2, v0, Lww1;->y:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sub-int/2addr v2, v3

    .line 9
    aget v4, v1, v2

    .line 10
    .line 11
    const/16 v8, 0xa

    .line 12
    .line 13
    const/16 v10, 0x27

    .line 14
    .line 15
    const/4 v11, 0x6

    .line 16
    const/16 v12, 0x5d

    .line 17
    .line 18
    const/16 v13, 0x3b

    .line 19
    .line 20
    const/16 v14, 0x2c

    .line 21
    .line 22
    const/4 v15, 0x3

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    iget-object v6, v0, Lww1;->o:[C

    .line 26
    .line 27
    const/4 v7, 0x4

    .line 28
    const/4 v9, 0x5

    .line 29
    const/16 v20, 0x7

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    if-ne v4, v3, :cond_0

    .line 33
    .line 34
    aput v5, v1, v2

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    if-ne v4, v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lww1;->n0(Z)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eq v1, v14, :cond_f

    .line 45
    .line 46
    if-eq v1, v13, :cond_2

    .line 47
    .line 48
    if-ne v1, v12, :cond_1

    .line 49
    .line 50
    iput v7, v0, Lww1;->t:I

    .line 51
    .line 52
    return v7

    .line 53
    :cond_1
    const-string v1, "Unterminated array"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lww1;->z0(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v16

    .line 59
    :cond_2
    invoke-virtual {v0}, Lww1;->r()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_3
    const/16 v5, 0x7d

    .line 65
    .line 66
    if-eq v4, v15, :cond_4

    .line 67
    .line 68
    if-ne v4, v9, :cond_5

    .line 69
    .line 70
    :cond_4
    move/from16 v21, v7

    .line 71
    .line 72
    goto/16 :goto_1a

    .line 73
    .line 74
    :cond_5
    if-ne v4, v7, :cond_8

    .line 75
    .line 76
    aput v9, v1, v2

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Lww1;->n0(Z)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/16 v2, 0x3a

    .line 83
    .line 84
    if-eq v1, v2, :cond_f

    .line 85
    .line 86
    const/16 v2, 0x3d

    .line 87
    .line 88
    if-ne v1, v2, :cond_7

    .line 89
    .line 90
    invoke-virtual {v0}, Lww1;->r()V

    .line 91
    .line 92
    .line 93
    iget v1, v0, Lww1;->p:I

    .line 94
    .line 95
    iget v2, v0, Lww1;->q:I

    .line 96
    .line 97
    if-lt v1, v2, :cond_6

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lww1;->F(I)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_f

    .line 104
    .line 105
    :cond_6
    iget v1, v0, Lww1;->p:I

    .line 106
    .line 107
    aget-char v2, v6, v1

    .line 108
    .line 109
    const/16 v5, 0x3e

    .line 110
    .line 111
    if-ne v2, v5, :cond_f

    .line 112
    .line 113
    add-int/2addr v1, v3

    .line 114
    iput v1, v0, Lww1;->p:I

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_7
    const-string v1, "Expected \':\'"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lww1;->z0(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v16

    .line 124
    :cond_8
    if-ne v4, v11, :cond_c

    .line 125
    .line 126
    iget v1, v0, Lww1;->B:I

    .line 127
    .line 128
    if-ne v1, v3, :cond_b

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Lww1;->n0(Z)I

    .line 131
    .line 132
    .line 133
    iget v1, v0, Lww1;->p:I

    .line 134
    .line 135
    add-int/lit8 v2, v1, -0x1

    .line 136
    .line 137
    iput v2, v0, Lww1;->p:I

    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x4

    .line 140
    .line 141
    iget v2, v0, Lww1;->q:I

    .line 142
    .line 143
    if-le v1, v2, :cond_9

    .line 144
    .line 145
    invoke-virtual {v0, v9}, Lww1;->F(I)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_9

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_9
    iget v1, v0, Lww1;->p:I

    .line 153
    .line 154
    aget-char v2, v6, v1

    .line 155
    .line 156
    const/16 v7, 0x29

    .line 157
    .line 158
    if-ne v2, v7, :cond_b

    .line 159
    .line 160
    add-int/lit8 v2, v1, 0x1

    .line 161
    .line 162
    aget-char v2, v6, v2

    .line 163
    .line 164
    if-ne v2, v12, :cond_b

    .line 165
    .line 166
    add-int/lit8 v2, v1, 0x2

    .line 167
    .line 168
    aget-char v2, v6, v2

    .line 169
    .line 170
    if-ne v2, v5, :cond_b

    .line 171
    .line 172
    add-int/lit8 v2, v1, 0x3

    .line 173
    .line 174
    aget-char v2, v6, v2

    .line 175
    .line 176
    if-ne v2, v10, :cond_b

    .line 177
    .line 178
    add-int/lit8 v2, v1, 0x4

    .line 179
    .line 180
    aget-char v2, v6, v2

    .line 181
    .line 182
    if-eq v2, v8, :cond_a

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_a
    add-int/2addr v1, v9

    .line 186
    iput v1, v0, Lww1;->p:I

    .line 187
    .line 188
    :cond_b
    :goto_0
    iget-object v1, v0, Lww1;->x:[I

    .line 189
    .line 190
    iget v2, v0, Lww1;->y:I

    .line 191
    .line 192
    sub-int/2addr v2, v3

    .line 193
    aput v20, v1, v2

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_c
    move/from16 v1, v20

    .line 197
    .line 198
    if-ne v4, v1, :cond_e

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Lww1;->n0(Z)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    const/4 v1, -0x1

    .line 206
    if-ne v2, v1, :cond_d

    .line 207
    .line 208
    const/16 v1, 0x11

    .line 209
    .line 210
    iput v1, v0, Lww1;->t:I

    .line 211
    .line 212
    return v1

    .line 213
    :cond_d
    invoke-virtual {v0}, Lww1;->r()V

    .line 214
    .line 215
    .line 216
    iget v1, v0, Lww1;->p:I

    .line 217
    .line 218
    sub-int/2addr v1, v3

    .line 219
    iput v1, v0, Lww1;->p:I

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_e
    const/16 v1, 0x8

    .line 223
    .line 224
    if-eq v4, v1, :cond_43

    .line 225
    .line 226
    :cond_f
    :goto_1
    invoke-virtual {v0, v3}, Lww1;->n0(Z)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    const/16 v2, 0x22

    .line 231
    .line 232
    if-eq v1, v2, :cond_42

    .line 233
    .line 234
    if-eq v1, v10, :cond_41

    .line 235
    .line 236
    if-eq v1, v14, :cond_3d

    .line 237
    .line 238
    if-eq v1, v13, :cond_3d

    .line 239
    .line 240
    const/16 v2, 0x5b

    .line 241
    .line 242
    if-eq v1, v2, :cond_3c

    .line 243
    .line 244
    if-eq v1, v12, :cond_3b

    .line 245
    .line 246
    const/16 v2, 0x7b

    .line 247
    .line 248
    if-eq v1, v2, :cond_3a

    .line 249
    .line 250
    iget v1, v0, Lww1;->p:I

    .line 251
    .line 252
    sub-int/2addr v1, v3

    .line 253
    iput v1, v0, Lww1;->p:I

    .line 254
    .line 255
    aget-char v1, v6, v1

    .line 256
    .line 257
    const/16 v2, 0x74

    .line 258
    .line 259
    if-eq v1, v2, :cond_15

    .line 260
    .line 261
    const/16 v2, 0x54

    .line 262
    .line 263
    if-ne v1, v2, :cond_10

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_10
    const/16 v2, 0x66

    .line 267
    .line 268
    if-eq v1, v2, :cond_14

    .line 269
    .line 270
    const/16 v2, 0x46

    .line 271
    .line 272
    if-ne v1, v2, :cond_11

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_11
    const/16 v2, 0x6e

    .line 276
    .line 277
    if-eq v1, v2, :cond_13

    .line 278
    .line 279
    const/16 v2, 0x4e

    .line 280
    .line 281
    if-ne v1, v2, :cond_12

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_12
    :goto_2
    const/4 v1, 0x0

    .line 285
    goto/16 :goto_9

    .line 286
    .line 287
    :cond_13
    :goto_3
    const-string v1, "null"

    .line 288
    .line 289
    const-string v2, "NULL"

    .line 290
    .line 291
    const/4 v4, 0x7

    .line 292
    goto :goto_6

    .line 293
    :cond_14
    :goto_4
    const-string v1, "false"

    .line 294
    .line 295
    const-string v2, "FALSE"

    .line 296
    .line 297
    move v4, v11

    .line 298
    goto :goto_6

    .line 299
    :cond_15
    :goto_5
    const-string v1, "true"

    .line 300
    .line 301
    const-string v2, "TRUE"

    .line 302
    .line 303
    move v4, v9

    .line 304
    :goto_6
    iget v5, v0, Lww1;->B:I

    .line 305
    .line 306
    if-eq v5, v15, :cond_16

    .line 307
    .line 308
    move v5, v3

    .line 309
    goto :goto_7

    .line 310
    :cond_16
    const/4 v5, 0x0

    .line 311
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    const/4 v10, 0x0

    .line 316
    :goto_8
    iget v12, v0, Lww1;->p:I

    .line 317
    .line 318
    iget v13, v0, Lww1;->q:I

    .line 319
    .line 320
    if-ge v10, v7, :cond_19

    .line 321
    .line 322
    add-int/2addr v12, v10

    .line 323
    if-lt v12, v13, :cond_17

    .line 324
    .line 325
    add-int/lit8 v12, v10, 0x1

    .line 326
    .line 327
    invoke-virtual {v0, v12}, Lww1;->F(I)Z

    .line 328
    .line 329
    .line 330
    move-result v12

    .line 331
    if-nez v12, :cond_17

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_17
    iget v12, v0, Lww1;->p:I

    .line 335
    .line 336
    add-int/2addr v12, v10

    .line 337
    aget-char v12, v6, v12

    .line 338
    .line 339
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 340
    .line 341
    .line 342
    move-result v13

    .line 343
    if-eq v12, v13, :cond_18

    .line 344
    .line 345
    if-eqz v5, :cond_12

    .line 346
    .line 347
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    if-ne v12, v13, :cond_12

    .line 352
    .line 353
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_19
    add-int/2addr v12, v7

    .line 357
    if-lt v12, v13, :cond_1a

    .line 358
    .line 359
    add-int/lit8 v1, v7, 0x1

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Lww1;->F(I)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-eqz v1, :cond_1b

    .line 366
    .line 367
    :cond_1a
    iget v1, v0, Lww1;->p:I

    .line 368
    .line 369
    add-int/2addr v1, v7

    .line 370
    aget-char v1, v6, v1

    .line 371
    .line 372
    invoke-virtual {v0, v1}, Lww1;->N(C)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_1b

    .line 377
    .line 378
    goto :goto_2

    .line 379
    :cond_1b
    iget v1, v0, Lww1;->p:I

    .line 380
    .line 381
    add-int/2addr v1, v7

    .line 382
    iput v1, v0, Lww1;->p:I

    .line 383
    .line 384
    iput v4, v0, Lww1;->t:I

    .line 385
    .line 386
    move v1, v4

    .line 387
    :goto_9
    if-eqz v1, :cond_1c

    .line 388
    .line 389
    return v1

    .line 390
    :cond_1c
    iget v1, v0, Lww1;->p:I

    .line 391
    .line 392
    iget v2, v0, Lww1;->q:I

    .line 393
    .line 394
    move v10, v2

    .line 395
    move v13, v3

    .line 396
    const/4 v2, 0x0

    .line 397
    const-wide/16 v4, 0x0

    .line 398
    .line 399
    const/4 v7, 0x0

    .line 400
    const/4 v12, 0x0

    .line 401
    const-wide/16 v17, 0x0

    .line 402
    .line 403
    :goto_a
    add-int v14, v1, v2

    .line 404
    .line 405
    if-ne v14, v10, :cond_20

    .line 406
    .line 407
    array-length v1, v6

    .line 408
    if-ne v2, v1, :cond_1e

    .line 409
    .line 410
    :cond_1d
    :goto_b
    const/4 v9, 0x0

    .line 411
    goto/16 :goto_18

    .line 412
    .line 413
    :cond_1e
    add-int/lit8 v1, v2, 0x1

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Lww1;->F(I)Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v1, :cond_1f

    .line 420
    .line 421
    move-wide/from16 v24, v4

    .line 422
    .line 423
    :goto_c
    const/4 v8, 0x2

    .line 424
    goto/16 :goto_12

    .line 425
    .line 426
    :cond_1f
    iget v1, v0, Lww1;->p:I

    .line 427
    .line 428
    iget v10, v0, Lww1;->q:I

    .line 429
    .line 430
    :cond_20
    add-int v14, v1, v2

    .line 431
    .line 432
    aget-char v14, v6, v14

    .line 433
    .line 434
    const/16 v8, 0x2b

    .line 435
    .line 436
    if-eq v14, v8, :cond_37

    .line 437
    .line 438
    const/16 v8, 0x45

    .line 439
    .line 440
    if-eq v14, v8, :cond_35

    .line 441
    .line 442
    const/16 v8, 0x65

    .line 443
    .line 444
    if-eq v14, v8, :cond_35

    .line 445
    .line 446
    const/16 v8, 0x2d

    .line 447
    .line 448
    if-eq v14, v8, :cond_33

    .line 449
    .line 450
    const/16 v8, 0x2e

    .line 451
    .line 452
    if-eq v14, v8, :cond_32

    .line 453
    .line 454
    const/16 v8, 0x30

    .line 455
    .line 456
    if-lt v14, v8, :cond_21

    .line 457
    .line 458
    const/16 v8, 0x39

    .line 459
    .line 460
    if-le v14, v8, :cond_22

    .line 461
    .line 462
    :cond_21
    move-wide/from16 v24, v4

    .line 463
    .line 464
    goto :goto_11

    .line 465
    :cond_22
    if-eq v12, v3, :cond_2b

    .line 466
    .line 467
    if-nez v12, :cond_23

    .line 468
    .line 469
    goto :goto_10

    .line 470
    :cond_23
    const/4 v8, 0x2

    .line 471
    if-ne v12, v8, :cond_27

    .line 472
    .line 473
    cmp-long v8, v4, v17

    .line 474
    .line 475
    if-nez v8, :cond_24

    .line 476
    .line 477
    goto :goto_b

    .line 478
    :cond_24
    const-wide/16 v22, 0xa

    .line 479
    .line 480
    mul-long v22, v22, v4

    .line 481
    .line 482
    add-int/lit8 v14, v14, -0x30

    .line 483
    .line 484
    move-wide/from16 v24, v4

    .line 485
    .line 486
    int-to-long v3, v14

    .line 487
    sub-long v22, v22, v3

    .line 488
    .line 489
    const-wide v3, -0xcccccccccccccccL

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    cmp-long v3, v24, v3

    .line 495
    .line 496
    if-gtz v3, :cond_26

    .line 497
    .line 498
    if-nez v3, :cond_25

    .line 499
    .line 500
    cmp-long v3, v22, v24

    .line 501
    .line 502
    if-gez v3, :cond_25

    .line 503
    .line 504
    goto :goto_d

    .line 505
    :cond_25
    const/4 v3, 0x0

    .line 506
    goto :goto_e

    .line 507
    :cond_26
    :goto_d
    const/4 v3, 0x1

    .line 508
    :goto_e
    and-int/2addr v13, v3

    .line 509
    move-wide/from16 v4, v22

    .line 510
    .line 511
    goto/16 :goto_17

    .line 512
    .line 513
    :cond_27
    move-wide/from16 v24, v4

    .line 514
    .line 515
    if-ne v12, v15, :cond_28

    .line 516
    .line 517
    move-wide/from16 v4, v24

    .line 518
    .line 519
    const/4 v12, 0x4

    .line 520
    goto/16 :goto_17

    .line 521
    .line 522
    :cond_28
    if-eq v12, v9, :cond_2a

    .line 523
    .line 524
    if-ne v12, v11, :cond_29

    .line 525
    .line 526
    goto :goto_f

    .line 527
    :cond_29
    move-wide/from16 v4, v24

    .line 528
    .line 529
    goto/16 :goto_17

    .line 530
    .line 531
    :cond_2a
    :goto_f
    move-wide/from16 v4, v24

    .line 532
    .line 533
    const/4 v12, 0x7

    .line 534
    goto/16 :goto_17

    .line 535
    .line 536
    :cond_2b
    :goto_10
    add-int/lit8 v14, v14, -0x30

    .line 537
    .line 538
    neg-int v3, v14

    .line 539
    int-to-long v4, v3

    .line 540
    const/4 v12, 0x2

    .line 541
    goto/16 :goto_17

    .line 542
    .line 543
    :goto_11
    invoke-virtual {v0, v14}, Lww1;->N(C)Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-nez v1, :cond_1d

    .line 548
    .line 549
    goto :goto_c

    .line 550
    :goto_12
    if-ne v12, v8, :cond_30

    .line 551
    .line 552
    if-eqz v13, :cond_2c

    .line 553
    .line 554
    const-wide/high16 v3, -0x8000000000000000L

    .line 555
    .line 556
    cmp-long v1, v24, v3

    .line 557
    .line 558
    if-nez v1, :cond_2d

    .line 559
    .line 560
    if-eqz v7, :cond_2c

    .line 561
    .line 562
    goto :goto_13

    .line 563
    :cond_2c
    const/4 v8, 0x2

    .line 564
    goto :goto_15

    .line 565
    :cond_2d
    :goto_13
    cmp-long v1, v24, v17

    .line 566
    .line 567
    if-nez v1, :cond_2e

    .line 568
    .line 569
    if-nez v7, :cond_2c

    .line 570
    .line 571
    :cond_2e
    move-wide/from16 v4, v24

    .line 572
    .line 573
    if-eqz v7, :cond_2f

    .line 574
    .line 575
    goto :goto_14

    .line 576
    :cond_2f
    neg-long v4, v4

    .line 577
    :goto_14
    iput-wide v4, v0, Lww1;->u:J

    .line 578
    .line 579
    iget v1, v0, Lww1;->p:I

    .line 580
    .line 581
    add-int/2addr v1, v2

    .line 582
    iput v1, v0, Lww1;->p:I

    .line 583
    .line 584
    const/16 v9, 0xf

    .line 585
    .line 586
    iput v9, v0, Lww1;->t:I

    .line 587
    .line 588
    goto :goto_18

    .line 589
    :cond_30
    :goto_15
    if-eq v12, v8, :cond_31

    .line 590
    .line 591
    const/4 v1, 0x4

    .line 592
    if-eq v12, v1, :cond_31

    .line 593
    .line 594
    const/4 v1, 0x7

    .line 595
    if-ne v12, v1, :cond_1d

    .line 596
    .line 597
    :cond_31
    iput v2, v0, Lww1;->v:I

    .line 598
    .line 599
    const/16 v9, 0x10

    .line 600
    .line 601
    iput v9, v0, Lww1;->t:I

    .line 602
    .line 603
    goto :goto_18

    .line 604
    :cond_32
    const/4 v3, 0x2

    .line 605
    if-ne v12, v3, :cond_1d

    .line 606
    .line 607
    move v12, v15

    .line 608
    goto :goto_17

    .line 609
    :cond_33
    const/4 v3, 0x2

    .line 610
    if-nez v12, :cond_34

    .line 611
    .line 612
    const/4 v7, 0x1

    .line 613
    const/4 v12, 0x1

    .line 614
    goto :goto_17

    .line 615
    :cond_34
    if-ne v12, v9, :cond_1d

    .line 616
    .line 617
    :goto_16
    move v12, v11

    .line 618
    goto :goto_17

    .line 619
    :cond_35
    const/4 v3, 0x2

    .line 620
    if-eq v12, v3, :cond_36

    .line 621
    .line 622
    const/4 v3, 0x4

    .line 623
    if-ne v12, v3, :cond_1d

    .line 624
    .line 625
    :cond_36
    move v12, v9

    .line 626
    goto :goto_17

    .line 627
    :cond_37
    if-ne v12, v9, :cond_1d

    .line 628
    .line 629
    goto :goto_16

    .line 630
    :goto_17
    add-int/lit8 v2, v2, 0x1

    .line 631
    .line 632
    const/4 v3, 0x1

    .line 633
    const/16 v8, 0xa

    .line 634
    .line 635
    goto/16 :goto_a

    .line 636
    .line 637
    :goto_18
    if-eqz v9, :cond_38

    .line 638
    .line 639
    return v9

    .line 640
    :cond_38
    iget v1, v0, Lww1;->p:I

    .line 641
    .line 642
    aget-char v1, v6, v1

    .line 643
    .line 644
    invoke-virtual {v0, v1}, Lww1;->N(C)Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-eqz v1, :cond_39

    .line 649
    .line 650
    invoke-virtual {v0}, Lww1;->r()V

    .line 651
    .line 652
    .line 653
    const/16 v1, 0xa

    .line 654
    .line 655
    iput v1, v0, Lww1;->t:I

    .line 656
    .line 657
    return v1

    .line 658
    :cond_39
    const-string v1, "Expected value"

    .line 659
    .line 660
    invoke-virtual {v0, v1}, Lww1;->z0(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    throw v16

    .line 664
    :cond_3a
    move v8, v3

    .line 665
    iput v8, v0, Lww1;->t:I

    .line 666
    .line 667
    return v8

    .line 668
    :cond_3b
    move v8, v3

    .line 669
    if-ne v4, v8, :cond_3e

    .line 670
    .line 671
    const/4 v1, 0x4

    .line 672
    iput v1, v0, Lww1;->t:I

    .line 673
    .line 674
    return v1

    .line 675
    :cond_3c
    iput v15, v0, Lww1;->t:I

    .line 676
    .line 677
    return v15

    .line 678
    :cond_3d
    move v8, v3

    .line 679
    :cond_3e
    if-eq v4, v8, :cond_40

    .line 680
    .line 681
    const/4 v3, 0x2

    .line 682
    if-ne v4, v3, :cond_3f

    .line 683
    .line 684
    goto :goto_19

    .line 685
    :cond_3f
    const-string v1, "Unexpected value"

    .line 686
    .line 687
    invoke-virtual {v0, v1}, Lww1;->z0(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    throw v16

    .line 691
    :cond_40
    :goto_19
    invoke-virtual {v0}, Lww1;->r()V

    .line 692
    .line 693
    .line 694
    iget v1, v0, Lww1;->p:I

    .line 695
    .line 696
    sub-int/2addr v1, v8

    .line 697
    iput v1, v0, Lww1;->p:I

    .line 698
    .line 699
    const/4 v1, 0x7

    .line 700
    iput v1, v0, Lww1;->t:I

    .line 701
    .line 702
    return v1

    .line 703
    :cond_41
    invoke-virtual {v0}, Lww1;->r()V

    .line 704
    .line 705
    .line 706
    const/16 v1, 0x8

    .line 707
    .line 708
    iput v1, v0, Lww1;->t:I

    .line 709
    .line 710
    return v1

    .line 711
    :cond_42
    const/16 v1, 0x9

    .line 712
    .line 713
    iput v1, v0, Lww1;->t:I

    .line 714
    .line 715
    return v1

    .line 716
    :cond_43
    const-string v0, "JsonReader is closed"

    .line 717
    .line 718
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    const/16 v19, 0x0

    .line 722
    .line 723
    return v19

    .line 724
    :goto_1a
    aput v21, v1, v2

    .line 725
    .line 726
    if-ne v4, v9, :cond_46

    .line 727
    .line 728
    const/4 v8, 0x1

    .line 729
    invoke-virtual {v0, v8}, Lww1;->n0(Z)I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    if-eq v1, v14, :cond_46

    .line 734
    .line 735
    if-eq v1, v13, :cond_45

    .line 736
    .line 737
    if-ne v1, v5, :cond_44

    .line 738
    .line 739
    const/4 v8, 0x2

    .line 740
    iput v8, v0, Lww1;->t:I

    .line 741
    .line 742
    return v8

    .line 743
    :cond_44
    const-string v1, "Unterminated object"

    .line 744
    .line 745
    invoke-virtual {v0, v1}, Lww1;->z0(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    throw v16

    .line 749
    :cond_45
    invoke-virtual {v0}, Lww1;->r()V

    .line 750
    .line 751
    .line 752
    :cond_46
    const/4 v8, 0x1

    .line 753
    invoke-virtual {v0, v8}, Lww1;->n0(Z)I

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    const/16 v2, 0x22

    .line 758
    .line 759
    if-eq v1, v2, :cond_4b

    .line 760
    .line 761
    if-eq v1, v10, :cond_4a

    .line 762
    .line 763
    const-string v2, "Expected name"

    .line 764
    .line 765
    if-eq v1, v5, :cond_48

    .line 766
    .line 767
    invoke-virtual {v0}, Lww1;->r()V

    .line 768
    .line 769
    .line 770
    iget v3, v0, Lww1;->p:I

    .line 771
    .line 772
    sub-int/2addr v3, v8

    .line 773
    iput v3, v0, Lww1;->p:I

    .line 774
    .line 775
    int-to-char v1, v1

    .line 776
    invoke-virtual {v0, v1}, Lww1;->N(C)Z

    .line 777
    .line 778
    .line 779
    move-result v1

    .line 780
    if-eqz v1, :cond_47

    .line 781
    .line 782
    const/16 v1, 0xe

    .line 783
    .line 784
    iput v1, v0, Lww1;->t:I

    .line 785
    .line 786
    return v1

    .line 787
    :cond_47
    invoke-virtual {v0, v2}, Lww1;->z0(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    throw v16

    .line 791
    :cond_48
    if-eq v4, v9, :cond_49

    .line 792
    .line 793
    const/4 v8, 0x2

    .line 794
    iput v8, v0, Lww1;->t:I

    .line 795
    .line 796
    return v8

    .line 797
    :cond_49
    invoke-virtual {v0, v2}, Lww1;->z0(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    throw v16

    .line 801
    :cond_4a
    invoke-virtual {v0}, Lww1;->r()V

    .line 802
    .line 803
    .line 804
    const/16 v1, 0xc

    .line 805
    .line 806
    iput v1, v0, Lww1;->t:I

    .line 807
    .line 808
    return v1

    .line 809
    :cond_4b
    const/16 v1, 0xd

    .line 810
    .line 811
    iput v1, v0, Lww1;->t:I

    .line 812
    .line 813
    return v1
.end method

.method public final z0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lr92;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lww1;->R()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, "\nSee "

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "malformed-json"

    .line 24
    .line 25
    const-string p1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method
