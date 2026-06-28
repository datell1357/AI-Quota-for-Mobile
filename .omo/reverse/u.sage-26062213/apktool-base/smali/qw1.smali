.class public final Lqw1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgi3;


# static fields
.field public static final b:Lqw1;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Ls32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqw1;

    .line 2
    .line 3
    invoke-direct {v0}, Lqw1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqw1;->b:Lqw1;

    .line 7
    .line 8
    const-string v0, "kotlinx.serialization.json.JsonObject"

    .line 9
    .line 10
    sput-object v0, Lqw1;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lys3;->a:Lys3;

    .line 5
    .line 6
    sget-object v0, Lbw1;->a:Lbw1;

    .line 7
    .line 8
    sget-object v1, Lys3;->a:Lys3;

    .line 9
    .line 10
    new-instance v1, Ls32;

    .line 11
    .line 12
    sget-object v2, Lys3;->b:Lpy2;

    .line 13
    .line 14
    invoke-interface {v0}, Llx1;->d()Lgi3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {v1, v2, v0}, Ls32;-><init>(Lgi3;Lgi3;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lqw1;->a:Ls32;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ls32;->a(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lqw1;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Ldm0;
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lit3;->R:Lit3;

    .line 7
    .line 8
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    return p0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lg01;->n:Lg01;

    .line 7
    .line 8
    return-object p0
.end method

.method public final h()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final i(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ls32;->i(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lg01;->n:Lg01;

    .line 7
    .line 8
    return-object p0
.end method

.method public final j(I)Lgi3;
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ls32;->j(I)Lgi3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final k(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqw1;->a:Ls32;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ls32;->k(I)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method
