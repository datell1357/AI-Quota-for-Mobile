.class public final Lbw1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# static fields
.field public static final a:Lbw1;

.field public static final b:Lii3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbw1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbw1;->a:Lbw1;

    .line 7
    .line 8
    sget-object v0, Liw2;->P:Liw2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Lgi3;

    .line 12
    .line 13
    new-instance v2, Lt3;

    .line 14
    .line 15
    const/16 v3, 0x19

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lt3;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-string v3, "kotlinx.serialization.json.JsonElement"

    .line 21
    .line 22
    invoke-static {v3, v0, v1, v2}, Lqj0;->v(Ljava/lang/String;Ldm0;[Lgi3;Lpe1;)Lii3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lbw1;->b:Lii3;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lgg4;->f(Lvn0;)Lkotlinx/serialization/json/internal/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->P0()Lxv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lxv1;

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
    instance-of p0, p2, Ltw1;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lvw1;->a:Lvw1;

    .line 14
    .line 15
    invoke-virtual {p1, p0, p2}, Lkotlinx/serialization/json/internal/b;->p(Llx1;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    instance-of p0, p2, Low1;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lrw1;->a:Lrw1;

    .line 24
    .line 25
    invoke-virtual {p1, p0, p2}, Lkotlinx/serialization/json/internal/b;->p(Llx1;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of p0, p2, Lkv1;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    sget-object p0, Lnv1;->a:Lnv1;

    .line 34
    .line 35
    invoke-virtual {p1, p0, p2}, Lkotlinx/serialization/json/internal/b;->p(Llx1;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-static {}, Lp61;->x()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Lbw1;->b:Lii3;

    .line 2
    .line 3
    return-object p0
.end method
