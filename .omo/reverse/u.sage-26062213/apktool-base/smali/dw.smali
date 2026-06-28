.class public abstract Ldw;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const-string v3, "0123456789abcdef"

    .line 8
    .line 9
    const/16 v4, 0x100

    .line 10
    .line 11
    if-ge v2, v4, :cond_0

    .line 12
    .line 13
    ushr-int/lit8 v4, v2, 0x4

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    aput-char v4, v0, v2

    .line 20
    .line 21
    or-int/lit16 v4, v2, 0x100

    .line 22
    .line 23
    and-int/lit8 v5, v2, 0xf

    .line 24
    .line 25
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    aput-char v3, v0, v4

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sput-object v0, Ldw;->a:[C

    .line 35
    .line 36
    const/16 v0, 0x80

    .line 37
    .line 38
    new-array v0, v0, [B

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 42
    .line 43
    .line 44
    :goto_1
    const/16 v2, 0x10

    .line 45
    .line 46
    if-ge v1, v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-byte v4, v1

    .line 53
    aput-byte v4, v0, v2

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method public static a(B[CI)V
    .locals 2

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 2
    .line 3
    sget-object v0, Ldw;->a:[C

    .line 4
    .line 5
    aget-char v1, v0, p0

    .line 6
    .line 7
    aput-char v1, p1, p2

    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    or-int/lit16 p0, p0, 0x100

    .line 12
    .line 13
    aget-char p0, v0, p0

    .line 14
    .line 15
    aput-char p0, p1, p2

    .line 16
    .line 17
    return-void
.end method

.method public static b([CI)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1}, Ldw;->a(B[CI)V

    .line 3
    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Ldw;->a(B[CI)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, p1, 0x4

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Ldw;->a(B[CI)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, p1, 0x6

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Ldw;->a(B[CI)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, p1, 0x8

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Ldw;->a(B[CI)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, p1, 0xa

    .line 26
    .line 27
    invoke-static {v0, p0, v1}, Ldw;->a(B[CI)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, p1, 0xc

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Ldw;->a(B[CI)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p1, p1, 0xe

    .line 36
    .line 37
    invoke-static {v0, p0, p1}, Ldw;->a(B[CI)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
