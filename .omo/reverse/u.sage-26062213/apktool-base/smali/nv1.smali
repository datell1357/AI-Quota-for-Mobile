.class public final Lnv1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# static fields
.field public static final a:Lnv1;

.field public static final b:Lmv1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnv1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnv1;->a:Lnv1;

    .line 7
    .line 8
    sget-object v0, Lmv1;->b:Lmv1;

    .line 9
    .line 10
    sput-object v0, Lnv1;->b:Lmv1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lgg4;->f(Lvn0;)Lkotlinx/serialization/json/internal/a;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lkv1;

    .line 5
    .line 6
    sget-object v0, Lbw1;->a:Lbw1;

    .line 7
    .line 8
    new-instance v0, Lxh;

    .line 9
    .line 10
    invoke-direct {v0}, Lxh;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lx;->i(Lvn0;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/List;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lkv1;-><init>(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lkv1;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lgg4;->e(Lkotlinx/serialization/json/internal/b;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lbw1;->a:Lbw1;

    .line 10
    .line 11
    new-instance v0, Lwh;

    .line 12
    .line 13
    sget-object v1, Lbw1;->b:Lii3;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Le42;-><init>(Lgi3;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p2, Lkv1;->n:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/b;->a(Lgi3;)Lkotlinx/serialization/json/internal/b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1, v0, v2, p0, v3}, Lkotlinx/serialization/json/internal/b;->o(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/b;->s(Lgi3;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Lnv1;->b:Lmv1;

    .line 2
    .line 3
    return-object p0
.end method
