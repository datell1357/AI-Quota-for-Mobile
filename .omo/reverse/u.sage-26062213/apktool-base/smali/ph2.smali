.class public final Lph2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/security/SecureRandom;

.field public static final d:[B

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "UnicodeLittleUnmarked"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lph2;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    sget-object v0, Luf0;->b:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    sput-object v0, Lph2;->b:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    sput-object v0, Lph2;->c:Ljava/security/SecureRandom;

    .line 22
    .line 23
    const-string v0, "NTLMSSP"

    .line 24
    .line 25
    invoke-static {v0}, Lph2;->f(Ljava/lang/String;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lph2;->d:[B

    .line 30
    .line 31
    const-string v0, "session key to server-to-client signing key magic constant"

    .line 32
    .line 33
    invoke-static {v0}, Lph2;->f(Ljava/lang/String;)[B

    .line 34
    .line 35
    .line 36
    const-string v0, "session key to client-to-server signing key magic constant"

    .line 37
    .line 38
    invoke-static {v0}, Lph2;->f(Ljava/lang/String;)[B

    .line 39
    .line 40
    .line 41
    const-string v0, "session key to server-to-client sealing key magic constant"

    .line 42
    .line 43
    invoke-static {v0}, Lph2;->f(Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    const-string v0, "session key to client-to-server sealing key magic constant"

    .line 47
    .line 48
    invoke-static {v0}, Lph2;->f(Ljava/lang/String;)[B

    .line 49
    .line 50
    .line 51
    const-string v0, "tls-server-end-point:"

    .line 52
    .line 53
    sget-object v1, Luf0;->b:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    new-instance v0, Lmh2;

    .line 59
    .line 60
    invoke-direct {v0}, Lb70;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lb70;->h()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lph2;->e:Ljava/lang/String;

    .line 68
    .line 69
    return-void
.end method

.method public static a(III)I
    .locals 0

    .line 1
    and-int/2addr p1, p0

    .line 2
    not-int p0, p0

    .line 3
    and-int/2addr p0, p2

    .line 4
    or-int/2addr p0, p1

    .line 5
    return p0
.end method

.method public static b(III)I
    .locals 1

    .line 1
    or-int v0, p1, p2

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    and-int/2addr p1, p2

    .line 5
    or-int/2addr p0, p1

    .line 6
    return p0
.end method

.method public static c([B[B[B)[B
    .locals 2

    .line 1
    new-instance v0, Leh;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Leh;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Leh;->M([B)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Leh;->M([B)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Leh;->y()[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length p1, p0

    .line 17
    array-length v0, p2

    .line 18
    add-int/2addr p1, v0

    .line 19
    new-array p1, p1, [B

    .line 20
    .line 21
    array-length v0, p0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    array-length p0, p0

    .line 27
    array-length v0, p2

    .line 28
    invoke-static {p2, v1, p1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public static d(I[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 11

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, p0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    const/16 p0, 0x8

    .line 9
    .line 10
    new-array p1, p0, [B

    .line 11
    .line 12
    aget-byte v3, v1, v2

    .line 13
    .line 14
    aput-byte v3, p1, v2

    .line 15
    .line 16
    aget-byte v3, v1, v2

    .line 17
    .line 18
    shl-int/2addr v3, v0

    .line 19
    const/4 v4, 0x1

    .line 20
    aget-byte v5, v1, v4

    .line 21
    .line 22
    and-int/lit16 v5, v5, 0xff

    .line 23
    .line 24
    ushr-int/2addr v5, v4

    .line 25
    or-int/2addr v3, v5

    .line 26
    int-to-byte v3, v3

    .line 27
    aput-byte v3, p1, v4

    .line 28
    .line 29
    aget-byte v3, v1, v4

    .line 30
    .line 31
    const/4 v5, 0x6

    .line 32
    shl-int/2addr v3, v5

    .line 33
    const/4 v6, 0x2

    .line 34
    aget-byte v7, v1, v6

    .line 35
    .line 36
    and-int/lit16 v7, v7, 0xff

    .line 37
    .line 38
    ushr-int/2addr v7, v6

    .line 39
    or-int/2addr v3, v7

    .line 40
    int-to-byte v3, v3

    .line 41
    aput-byte v3, p1, v6

    .line 42
    .line 43
    aget-byte v3, v1, v6

    .line 44
    .line 45
    const/4 v7, 0x5

    .line 46
    shl-int/2addr v3, v7

    .line 47
    const/4 v8, 0x3

    .line 48
    aget-byte v9, v1, v8

    .line 49
    .line 50
    and-int/lit16 v9, v9, 0xff

    .line 51
    .line 52
    ushr-int/2addr v9, v8

    .line 53
    or-int/2addr v3, v9

    .line 54
    int-to-byte v3, v3

    .line 55
    aput-byte v3, p1, v8

    .line 56
    .line 57
    aget-byte v3, v1, v8

    .line 58
    .line 59
    const/4 v9, 0x4

    .line 60
    shl-int/2addr v3, v9

    .line 61
    aget-byte v10, v1, v9

    .line 62
    .line 63
    and-int/lit16 v10, v10, 0xff

    .line 64
    .line 65
    ushr-int/2addr v10, v9

    .line 66
    or-int/2addr v3, v10

    .line 67
    int-to-byte v3, v3

    .line 68
    aput-byte v3, p1, v9

    .line 69
    .line 70
    aget-byte v3, v1, v9

    .line 71
    .line 72
    shl-int/2addr v3, v8

    .line 73
    aget-byte v8, v1, v7

    .line 74
    .line 75
    and-int/lit16 v8, v8, 0xff

    .line 76
    .line 77
    ushr-int/2addr v8, v7

    .line 78
    or-int/2addr v3, v8

    .line 79
    int-to-byte v3, v3

    .line 80
    aput-byte v3, p1, v7

    .line 81
    .line 82
    aget-byte v3, v1, v7

    .line 83
    .line 84
    shl-int/2addr v3, v6

    .line 85
    aget-byte v6, v1, v5

    .line 86
    .line 87
    and-int/lit16 v6, v6, 0xff

    .line 88
    .line 89
    ushr-int/2addr v6, v5

    .line 90
    or-int/2addr v3, v6

    .line 91
    int-to-byte v3, v3

    .line 92
    aput-byte v3, p1, v5

    .line 93
    .line 94
    aget-byte v1, v1, v5

    .line 95
    .line 96
    shl-int/2addr v1, v4

    .line 97
    int-to-byte v1, v1

    .line 98
    aput-byte v1, p1, v0

    .line 99
    .line 100
    :goto_0
    if-ge v2, p0, :cond_1

    .line 101
    .line 102
    aget-byte v0, p1, v2

    .line 103
    .line 104
    ushr-int/lit8 v1, v0, 0x7

    .line 105
    .line 106
    ushr-int/lit8 v3, v0, 0x6

    .line 107
    .line 108
    xor-int/2addr v1, v3

    .line 109
    ushr-int/lit8 v3, v0, 0x5

    .line 110
    .line 111
    xor-int/2addr v1, v3

    .line 112
    ushr-int/lit8 v3, v0, 0x4

    .line 113
    .line 114
    xor-int/2addr v1, v3

    .line 115
    ushr-int/lit8 v3, v0, 0x3

    .line 116
    .line 117
    xor-int/2addr v1, v3

    .line 118
    ushr-int/lit8 v3, v0, 0x2

    .line 119
    .line 120
    xor-int/2addr v1, v3

    .line 121
    ushr-int/lit8 v3, v0, 0x1

    .line 122
    .line 123
    xor-int/2addr v1, v3

    .line 124
    and-int/2addr v1, v4

    .line 125
    if-nez v1, :cond_0

    .line 126
    .line 127
    or-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    int-to-byte v0, v0

    .line 130
    aput-byte v0, p1, v2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_0
    and-int/lit8 v0, v0, -0x2

    .line 134
    .line 135
    int-to-byte v0, v0

    .line 136
    aput-byte v0, p1, v2

    .line 137
    .line 138
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 142
    .line 143
    const-string v0, "DES"

    .line 144
    .line 145
    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method public static e()Ljava/security/MessageDigest;
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "MD5 message digest doesn\'t seem to exist - fatal error: "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 3

    .line 1
    sget-object v0, Luf0;->b:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    array-length p0, p0

    .line 18
    aput-byte v2, v0, p0

    .line 19
    .line 20
    return-object v0
.end method

.method public static g([B[B)[B
    .locals 6

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    :try_start_0
    new-array v0, v0, [B

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v0}, Lph2;->d(I[B)Ljavax/crypto/spec/SecretKeySpec;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v3, 0x7

    .line 16
    invoke-static {v3, v0}, Lph2;->d(I[B)Ljavax/crypto/spec/SecretKeySpec;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/16 v4, 0xe

    .line 21
    .line 22
    invoke-static {v4, v0}, Lph2;->d(I[B)Ljavax/crypto/spec/SecretKeySpec;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v4, "DES/ECB/NoPadding"

    .line 27
    .line 28
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-virtual {v4, v5, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/16 v0, 0x18

    .line 55
    .line 56
    new-array v0, v0, [B

    .line 57
    .line 58
    const/16 v4, 0x8

    .line 59
    .line 60
    invoke-static {p0, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v2, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Lkh2;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p1, v0, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public static h(I[B)I
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v1, p0, 0x4

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    aget-byte v0, p1, p0

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    add-int/lit8 v1, p0, 0x1

    .line 13
    .line 14
    aget-byte v1, p1, v1

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0xff

    .line 17
    .line 18
    shl-int/lit8 v1, v1, 0x8

    .line 19
    .line 20
    or-int/2addr v0, v1

    .line 21
    add-int/lit8 v1, p0, 0x2

    .line 22
    .line 23
    aget-byte v1, p1, v1

    .line 24
    .line 25
    and-int/lit16 v1, v1, 0xff

    .line 26
    .line 27
    shl-int/lit8 v1, v1, 0x10

    .line 28
    .line 29
    or-int/2addr v0, v1

    .line 30
    add-int/lit8 p0, p0, 0x3

    .line 31
    .line 32
    aget-byte p0, p1, p0

    .line 33
    .line 34
    and-int/lit16 p0, p0, 0xff

    .line 35
    .line 36
    shl-int/lit8 p0, p0, 0x18

    .line 37
    .line 38
    or-int/2addr p0, v0

    .line 39
    return p0
.end method

.method public static i(II)I
    .locals 1

    .line 1
    shl-int v0, p0, p1

    .line 2
    .line 3
    rsub-int/lit8 p1, p1, 0x20

    .line 4
    .line 5
    ushr-int/2addr p0, p1

    .line 6
    or-int/2addr p0, v0

    .line 7
    return p0
.end method

.method public static j([BII)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p2

    .line 5
    .line 6
    add-int/lit8 v0, p2, 0x1

    .line 7
    .line 8
    shr-int/lit8 v1, p1, 0x8

    .line 9
    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 11
    .line 12
    int-to-byte v1, v1

    .line 13
    aput-byte v1, p0, v0

    .line 14
    .line 15
    add-int/lit8 v0, p2, 0x2

    .line 16
    .line 17
    shr-int/lit8 v1, p1, 0x10

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    int-to-byte v1, v1

    .line 22
    aput-byte v1, p0, v0

    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x3

    .line 25
    .line 26
    shr-int/lit8 p1, p1, 0x18

    .line 27
    .line 28
    and-int/lit16 p1, p1, 0xff

    .line 29
    .line 30
    int-to-byte p1, p1

    .line 31
    aput-byte p1, p0, p2

    .line 32
    .line 33
    return-void
.end method
