.class public abstract Lb93;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc0;

.field public static final b:Llc0;

.field public static final c:Ln93;

.field public static final d:Ln93;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lt52;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Llc0;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Llc0;-><init>(Lne1;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lb93;->a:Llc0;

    .line 14
    .line 15
    new-instance v0, Lz82;

    .line 16
    .line 17
    const/16 v1, 0x18

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lz82;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Llc0;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Llc0;-><init>(Lpe1;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lb93;->b:Llc0;

    .line 28
    .line 29
    new-instance v2, Ln93;

    .line 30
    .line 31
    sget-wide v5, Lt70;->f:J

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v3, 0x1

    .line 36
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 37
    .line 38
    invoke-direct/range {v2 .. v8}, Ln93;-><init>(ZFJLjl3;Z)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lb93;->c:Ln93;

    .line 42
    .line 43
    new-instance v3, Ln93;

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x1

    .line 47
    const/4 v4, 0x0

    .line 48
    move-wide v6, v5

    .line 49
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 50
    .line 51
    invoke-direct/range {v3 .. v9}, Ln93;-><init>(ZFJLjl3;Z)V

    .line 52
    .line 53
    .line 54
    sput-object v3, Lb93;->d:Ln93;

    .line 55
    .line 56
    return-void
.end method

.method public static a(FLjl3;I)Ln93;
    .locals 8

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :goto_0
    move v2, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    and-int/lit8 v0, p2, 0x2

    .line 11
    .line 12
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move v3, v1

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    move v3, p0

    .line 19
    :goto_2
    sget-wide v4, Lt70;->f:J

    .line 20
    .line 21
    and-int/lit8 p0, p2, 0x8

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :cond_2
    move-object v6, p1

    .line 27
    invoke-static {v3, v1}, Lcw0;->b(FF)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    invoke-static {v4, v5, v4, v5}, Lt70;->c(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_4

    .line 38
    .line 39
    if-nez v6, :cond_4

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    sget-object p0, Lb93;->c:Ln93;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    sget-object p0, Lb93;->d:Ln93;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_4
    new-instance v1, Ln93;

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    invoke-direct/range {v1 .. v7}, Ln93;-><init>(ZFJLjl3;Z)V

    .line 53
    .line 54
    .line 55
    return-object v1
.end method
