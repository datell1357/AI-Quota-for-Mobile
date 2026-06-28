.class public final Llh2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/Random;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:[B

.field public final g:[B

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:[B

.field public s:[B

.field public t:[B

.field public u:[B

.field public v:[B

.field public w:[B

.field public x:[B

.field public y:[B

.field public z:[B


# direct methods
.method public constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Llh2;->l:[B

    .line 6
    .line 7
    iput-object v0, p0, Llh2;->m:[B

    .line 8
    .line 9
    iput-object v0, p0, Llh2;->n:[B

    .line 10
    .line 11
    iput-object v0, p0, Llh2;->o:[B

    .line 12
    .line 13
    iput-object v0, p0, Llh2;->p:[B

    .line 14
    .line 15
    iput-object v0, p0, Llh2;->q:[B

    .line 16
    .line 17
    iput-object v0, p0, Llh2;->r:[B

    .line 18
    .line 19
    iput-object v0, p0, Llh2;->s:[B

    .line 20
    .line 21
    iput-object v0, p0, Llh2;->t:[B

    .line 22
    .line 23
    iput-object v0, p0, Llh2;->u:[B

    .line 24
    .line 25
    iput-object v0, p0, Llh2;->v:[B

    .line 26
    .line 27
    iput-object v0, p0, Llh2;->w:[B

    .line 28
    .line 29
    iput-object v0, p0, Llh2;->x:[B

    .line 30
    .line 31
    iput-object v0, p0, Llh2;->y:[B

    .line 32
    .line 33
    iput-object v0, p0, Llh2;->z:[B

    .line 34
    .line 35
    iput-object p1, p0, Llh2;->a:Ljava/util/Random;

    .line 36
    .line 37
    iput-wide p2, p0, Llh2;->b:J

    .line 38
    .line 39
    iput-object p4, p0, Llh2;->c:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p5, p0, Llh2;->d:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p6, p0, Llh2;->e:Ljava/lang/String;

    .line 44
    .line 45
    iput-object p7, p0, Llh2;->f:[B

    .line 46
    .line 47
    iput-object p8, p0, Llh2;->g:[B

    .line 48
    .line 49
    iput-object v0, p0, Llh2;->h:[B

    .line 50
    .line 51
    iput-object v0, p0, Llh2;->i:[B

    .line 52
    .line 53
    iput-object v0, p0, Llh2;->j:[B

    .line 54
    .line 55
    iput-object v0, p0, Llh2;->k:[B

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 6

    .line 1
    iget-object v0, p0, Llh2;->l:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Llh2;->e:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v1, Lph2;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Luf0;->b:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    array-length v2, v0

    .line 22
    const/16 v3, 0xe

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-array v3, v3, [B

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v3}, Lph2;->d(I[B)Ljavax/crypto/spec/SecretKeySpec;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x7

    .line 39
    invoke-static {v2, v3}, Lph2;->d(I[B)Ljavax/crypto/spec/SecretKeySpec;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "KGS!@#$%"

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v3, "DES/ECB/NoPadding"

    .line 50
    .line 51
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-virtual {v3, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v3, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/16 v2, 0x10

    .line 71
    .line 72
    new-array v2, v2, [B

    .line 73
    .line 74
    const/16 v3, 0x8

    .line 75
    .line 76
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v4, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Llh2;->l:[B

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    new-instance v0, Lkh2;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_0
    :goto_0
    iget-object p0, p0, Llh2;->l:[B

    .line 97
    .line 98
    return-object p0
.end method

.method public final b()[B
    .locals 2

    .line 1
    iget-object v0, p0, Llh2;->m:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Llh2;->a()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Llh2;->f:[B

    .line 10
    .line 11
    invoke-static {v0, v1}, Lph2;->g([B[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Llh2;->m:[B

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Llh2;->m:[B

    .line 18
    .line 19
    return-object p0
.end method

.method public final c()[B
    .locals 5

    .line 1
    iget-object v0, p0, Llh2;->q:[B

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Llh2;->p:[B

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Llh2;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Llh2;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Llh2;->g()[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lph2;->a:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    new-instance v4, Leh;

    .line 22
    .line 23
    invoke-direct {v4, v2}, Leh;-><init>([B)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v4, v1}, Leh;->M([B)V

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v4, v0}, Leh;->M([B)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {v4}, Leh;->y()[B

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Llh2;->p:[B

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance p0, Lkh2;

    .line 60
    .line 61
    const-string v0, "Unicode not supported"

    .line 62
    .line 63
    invoke-static {v0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Llh2;->p:[B

    .line 72
    .line 73
    iget-object v1, p0, Llh2;->f:[B

    .line 74
    .line 75
    iget-object v2, p0, Llh2;->h:[B

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    iget-object v2, p0, Llh2;->a:Ljava/util/Random;

    .line 80
    .line 81
    sget-object v3, Lph2;->a:Ljava/nio/charset/Charset;

    .line 82
    .line 83
    const/16 v3, 0x8

    .line 84
    .line 85
    new-array v3, v3, [B

    .line 86
    .line 87
    monitor-enter v2

    .line 88
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 89
    .line 90
    .line 91
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iput-object v3, p0, Llh2;->h:[B

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p0

    .line 98
    :cond_3
    :goto_1
    iget-object v2, p0, Llh2;->h:[B

    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Lph2;->c([B[B[B)[B

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Llh2;->q:[B

    .line 105
    .line 106
    :cond_4
    iget-object p0, p0, Llh2;->q:[B

    .line 107
    .line 108
    return-object p0
.end method

.method public final d()[B
    .locals 7

    .line 1
    const-string v0, "DES/ECB/NoPadding"

    .line 2
    .line 3
    iget-object v1, p0, Llh2;->z:[B

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0xe

    .line 8
    .line 9
    :try_start_0
    new-array v2, v1, [B

    .line 10
    .line 11
    invoke-virtual {p0}, Llh2;->a()[B

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    const/16 v3, -0x43

    .line 22
    .line 23
    invoke-static {v2, v4, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 24
    .line 25
    .line 26
    invoke-static {v5, v2}, Lph2;->d(I[B)Ljavax/crypto/spec/SecretKeySpec;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x7

    .line 31
    invoke-static {v3, v2}, Lph2;->d(I[B)Ljavax/crypto/spec/SecretKeySpec;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-array v3, v4, [B

    .line 36
    .line 37
    invoke-virtual {p0}, Llh2;->b()[B

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v6, 0x1

    .line 49
    invoke-virtual {v4, v6, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/16 v2, 0x10

    .line 68
    .line 69
    new-array v2, v2, [B

    .line 70
    .line 71
    iput-object v2, p0, Llh2;->z:[B

    .line 72
    .line 73
    array-length v3, v1

    .line 74
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Llh2;->z:[B

    .line 78
    .line 79
    array-length v1, v1

    .line 80
    array-length v3, v0

    .line 81
    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    new-instance v0, Lkh2;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_0
    :goto_0
    iget-object p0, p0, Llh2;->z:[B

    .line 97
    .line 98
    return-object p0
.end method

.method public final e()[B
    .locals 5

    .line 1
    iget-object v0, p0, Llh2;->t:[B

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Llh2;->g()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Llh2;->f:[B

    .line 10
    .line 11
    iget-object v2, p0, Llh2;->h:[B

    .line 12
    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Llh2;->a:Ljava/util/Random;

    .line 18
    .line 19
    sget-object v4, Lph2;->a:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    new-array v4, v3, [B

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 25
    .line 26
    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iput-object v4, p0, Llh2;->h:[B

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_0
    :goto_0
    iget-object v2, p0, Llh2;->h:[B

    .line 35
    .line 36
    :try_start_2
    invoke-static {}, Lph2;->e()Ljava/security/MessageDigest;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-array v2, v3, [B

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Lph2;->g([B[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    iput-object v0, p0, Llh2;->t:[B

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p0

    .line 64
    instance-of v0, p0, Lkh2;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    check-cast p0, Lkh2;

    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    new-instance v0, Lkh2;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_2
    :goto_1
    iget-object p0, p0, Llh2;->t:[B

    .line 82
    .line 83
    return-object p0
.end method

.method public final f()[B
    .locals 5

    .line 1
    iget-object v0, p0, Llh2;->f:[B

    .line 2
    .line 3
    iget-object v1, p0, Llh2;->y:[B

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Llh2;->u:[B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Llh2;->h:[B

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Llh2;->a:Ljava/util/Random;

    .line 17
    .line 18
    sget-object v3, Lph2;->a:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    new-array v3, v3, [B

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 26
    .line 27
    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iput-object v3, p0, Llh2;->h:[B

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    iget-object v1, p0, Llh2;->h:[B

    .line 36
    .line 37
    const/16 v3, 0x18

    .line 38
    .line 39
    new-array v3, v3, [B

    .line 40
    .line 41
    iput-object v3, p0, Llh2;->u:[B

    .line 42
    .line 43
    array-length v4, v1

    .line 44
    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Llh2;->u:[B

    .line 48
    .line 49
    array-length v1, v1

    .line 50
    array-length v4, v3

    .line 51
    invoke-static {v3, v1, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v1, p0, Llh2;->u:[B

    .line 55
    .line 56
    array-length v3, v0

    .line 57
    array-length v4, v1

    .line 58
    add-int/2addr v3, v4

    .line 59
    new-array v3, v3, [B

    .line 60
    .line 61
    array-length v4, v0

    .line 62
    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    array-length v0, v0

    .line 66
    array-length v4, v1

    .line 67
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Llh2;->w:[B

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    new-instance v0, Ls9;

    .line 75
    .line 76
    invoke-direct {v0}, Ls9;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Llh2;->g()[B

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ls9;->b([B)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ls9;->a()[B

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Llh2;->w:[B

    .line 91
    .line 92
    :cond_2
    iget-object v0, p0, Llh2;->w:[B

    .line 93
    .line 94
    sget-object v1, Lph2;->a:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    new-instance v1, Leh;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Leh;-><init>([B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Leh;->M([B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Leh;->y()[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Llh2;->y:[B

    .line 109
    .line 110
    :cond_3
    iget-object p0, p0, Llh2;->y:[B

    .line 111
    .line 112
    return-object p0
.end method

.method public final g()[B
    .locals 2

    .line 1
    iget-object v0, p0, Llh2;->n:[B

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lph2;->a:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Llh2;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ls9;

    .line 16
    .line 17
    invoke-direct {v1}, Ls9;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ls9;->b([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ls9;->a()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Llh2;->n:[B

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Lkh2;

    .line 31
    .line 32
    const-string v0, "Unicode not supported"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcm1;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    iget-object p0, p0, Llh2;->n:[B

    .line 39
    .line 40
    return-object p0
.end method

.method public final h()[B
    .locals 4

    .line 1
    iget-object v0, p0, Llh2;->o:[B

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Llh2;->g()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lph2;->a:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    new-instance v2, Leh;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Leh;-><init>([B)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 19
    .line 20
    iget-object v3, p0, Llh2;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Leh;->M([B)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Llh2;->c:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Leh;->M([B)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v2}, Leh;->y()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Llh2;->o:[B

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p0, Lkh2;

    .line 52
    .line 53
    const-string v0, "Unicode not supported"

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcm1;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    :goto_0
    iget-object p0, p0, Llh2;->o:[B

    .line 60
    .line 61
    return-object p0
.end method

.method public final i()[B
    .locals 14

    .line 1
    iget-object v0, p0, Llh2;->s:[B

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Llh2;->h()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Llh2;->f:[B

    .line 10
    .line 11
    iget-object v2, p0, Llh2;->r:[B

    .line 12
    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Llh2;->i:[B

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Llh2;->a:Ljava/util/Random;

    .line 22
    .line 23
    sget-object v4, Lph2;->a:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    new-array v4, v3, [B

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 29
    .line 30
    .line 31
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iput-object v4, p0, Llh2;->i:[B

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    :goto_0
    iget-object v2, p0, Llh2;->i:[B

    .line 39
    .line 40
    iget-object v4, p0, Llh2;->g:[B

    .line 41
    .line 42
    iget-object v5, p0, Llh2;->k:[B

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    iget-wide v7, p0, Llh2;->b:J

    .line 48
    .line 49
    const-wide v9, 0xa9730b66800L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    add-long/2addr v7, v9

    .line 55
    const-wide/16 v9, 0x2710

    .line 56
    .line 57
    mul-long/2addr v7, v9

    .line 58
    new-array v5, v3, [B

    .line 59
    .line 60
    iput-object v5, p0, Llh2;->k:[B

    .line 61
    .line 62
    move v5, v6

    .line 63
    :goto_1
    if-ge v5, v3, :cond_1

    .line 64
    .line 65
    iget-object v9, p0, Llh2;->k:[B

    .line 66
    .line 67
    long-to-int v10, v7

    .line 68
    int-to-byte v10, v10

    .line 69
    aput-byte v10, v9, v5

    .line 70
    .line 71
    ushr-long/2addr v7, v3

    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object v5, p0, Llh2;->k:[B

    .line 76
    .line 77
    sget-object v7, Lph2;->a:Ljava/nio/charset/Charset;

    .line 78
    .line 79
    const/4 v7, 0x4

    .line 80
    new-array v8, v7, [B

    .line 81
    .line 82
    fill-array-data v8, :array_0

    .line 83
    .line 84
    .line 85
    new-array v9, v7, [B

    .line 86
    .line 87
    fill-array-data v9, :array_1

    .line 88
    .line 89
    .line 90
    new-array v10, v7, [B

    .line 91
    .line 92
    fill-array-data v10, :array_2

    .line 93
    .line 94
    .line 95
    new-array v11, v7, [B

    .line 96
    .line 97
    fill-array-data v11, :array_3

    .line 98
    .line 99
    .line 100
    array-length v12, v5

    .line 101
    add-int/lit8 v12, v12, 0x14

    .line 102
    .line 103
    array-length v13, v4

    .line 104
    add-int/2addr v12, v13

    .line 105
    add-int/2addr v12, v7

    .line 106
    new-array v12, v12, [B

    .line 107
    .line 108
    invoke-static {v8, v6, v12, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    invoke-static {v9, v6, v12, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    array-length v8, v5

    .line 115
    invoke-static {v5, v6, v12, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    .line 117
    .line 118
    array-length v5, v5

    .line 119
    add-int v8, v3, v5

    .line 120
    .line 121
    invoke-static {v2, v6, v12, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v5, 0x10

    .line 125
    .line 126
    invoke-static {v10, v6, v12, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v5, v5, 0x14

    .line 130
    .line 131
    array-length v2, v4

    .line 132
    invoke-static {v4, v6, v12, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    array-length v2, v4

    .line 136
    add-int/2addr v5, v2

    .line 137
    invoke-static {v11, v6, v12, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    .line 139
    .line 140
    iput-object v12, p0, Llh2;->r:[B

    .line 141
    .line 142
    :cond_2
    iget-object v2, p0, Llh2;->r:[B

    .line 143
    .line 144
    invoke-static {v0, v1, v2}, Lph2;->c([B[B[B)[B

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Llh2;->s:[B

    .line 149
    .line 150
    :cond_3
    iget-object p0, p0, Llh2;->s:[B

    .line 151
    .line 152
    return-object p0

    .line 153
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
