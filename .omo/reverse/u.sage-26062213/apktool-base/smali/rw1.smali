.class public final Lrw1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# static fields
.field public static final a:Lrw1;

.field public static final b:Lqw1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrw1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrw1;->a:Lrw1;

    .line 7
    .line 8
    sget-object v0, Lqw1;->b:Lqw1;

    .line 9
    .line 10
    sput-object v0, Lrw1;->b:Lqw1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lgg4;->f(Lvn0;)Lkotlinx/serialization/json/internal/a;

    .line 2
    .line 3
    .line 4
    new-instance p0, Low1;

    .line 5
    .line 6
    sget-object v0, Lys3;->a:Lys3;

    .line 7
    .line 8
    sget-object v0, Lbw1;->a:Lbw1;

    .line 9
    .line 10
    new-instance v1, Lt32;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lt32;-><init>(Llx1;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lx;->i(Lvn0;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/Map;

    .line 20
    .line 21
    invoke-direct {p0, p1}, Low1;-><init>(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Low1;

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
    sget-object p0, Lys3;->a:Lys3;

    .line 10
    .line 11
    sget-object p0, Lbw1;->a:Lbw1;

    .line 12
    .line 13
    new-instance v0, Lt32;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lt32;-><init>(Llx1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lt32;->c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Lrw1;->b:Lqw1;

    .line 2
    .line 3
    return-object p0
.end method
