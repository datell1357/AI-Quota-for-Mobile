.class public abstract Lon3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lu51;

.field public static final b:Lu51;

.field public static final c:Ljh4;

.field public static final d:Ljh4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lu51;

    .line 2
    .line 3
    sget-object v1, Lju0;->o:Lju0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lu51;-><init>(Lju0;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lon3;->a:Lu51;

    .line 9
    .line 10
    new-instance v0, Lu51;

    .line 11
    .line 12
    sget-object v1, Lju0;->p:Lju0;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lu51;-><init>(Lju0;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lon3;->b:Lu51;

    .line 18
    .line 19
    sget-object v0, Lmj1;->s:Lcw;

    .line 20
    .line 21
    new-instance v2, Ljh4;

    .line 22
    .line 23
    new-instance v3, Lsp0;

    .line 24
    .line 25
    const/16 v4, 0x19

    .line 26
    .line 27
    invoke-direct {v3, v4, v0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v1, v3, v0}, Ljh4;-><init>(Lju0;Ldf1;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lon3;->c:Ljh4;

    .line 34
    .line 35
    sget-object v0, Lmj1;->o:Lcw;

    .line 36
    .line 37
    new-instance v2, Ljh4;

    .line 38
    .line 39
    new-instance v3, Lsp0;

    .line 40
    .line 41
    invoke-direct {v3, v4, v0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v1, v3, v0}, Ljh4;-><init>(Lju0;Ldf1;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sput-object v2, Lon3;->d:Ljh4;

    .line 48
    .line 49
    return-void
.end method

.method public static final a(Lnd2;FF)Lnd2;
    .locals 1

    .line 1
    new-instance v0, Lo74;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lo74;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final b(Lnd2;F)Lnd2;
    .locals 6

    .line 1
    new-instance v0, Lnn3;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v5, 0x5

    .line 5
    const/4 v1, 0x0

    .line 6
    move v4, p1

    .line 7
    move v2, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lnn3;-><init>(FFFFI)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final c(Lnd2;F)Lnd2;
    .locals 6

    .line 1
    new-instance v0, Lnn3;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move v2, p1

    .line 5
    move v3, p1

    .line 6
    move v4, p1

    .line 7
    move v1, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lnn3;-><init>(FFFFZ)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final d(Lnd2;FF)Lnd2;
    .locals 6

    .line 1
    new-instance v0, Lnn3;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move v3, p1

    .line 5
    move v4, p2

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lnn3;-><init>(FFFFZ)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static e(Lnd2;FFI)Lnd2;
    .locals 6

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 6
    .line 7
    :goto_0
    move v2, p3

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/high16 p3, 0x41c00000    # 24.0f

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    new-instance v0, Lnn3;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 16
    .line 17
    move v1, p1

    .line 18
    move v3, p2

    .line 19
    invoke-direct/range {v0 .. v5}, Lnn3;-><init>(FFFFZ)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final f(F)Lnd2;
    .locals 6

    .line 1
    new-instance v0, Lnn3;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/16 v5, 0xa

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, p0

    .line 8
    move v1, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lnn3;-><init>(FFFFI)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static g(F)Lnd2;
    .locals 6

    .line 1
    new-instance v0, Lnn3;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/16 v5, 0xa

    .line 5
    .line 6
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lnn3;-><init>(FFFFI)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static h(Lnd2;)Lnd2;
    .locals 4

    .line 1
    sget-object v0, Lmj1;->s:Lcw;

    .line 2
    .line 3
    invoke-virtual {v0, v0}, Lcw;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lon3;->c:Ljh4;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lmj1;->o:Lcw;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcw;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Lon3;->d:Ljh4;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Ljh4;

    .line 24
    .line 25
    new-instance v2, Lsp0;

    .line 26
    .line 27
    const/16 v3, 0x19

    .line 28
    .line 29
    invoke-direct {v2, v3, v0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v3, Lju0;->p:Lju0;

    .line 33
    .line 34
    invoke-direct {v1, v3, v2, v0}, Ljh4;-><init>(Lju0;Ldf1;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :goto_0
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
