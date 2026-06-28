.class public final Lf64;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# static fields
.field public static final a:Lf64;

.field public static final b:Lwq1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf64;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf64;->a:Lf64;

    .line 7
    .line 8
    const-string v0, "kotlin.UShort"

    .line 9
    .line 10
    sget-object v1, Lrm3;->a:Lrm3;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lk75;->c(Llx1;Ljava/lang/String;)Lwq1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lf64;->b:Lwq1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lf64;->b:Lwq1;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lvn0;->t(Lgi3;)Lvn0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lvn0;->w()S

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance p1, Lb64;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lb64;-><init>(S)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lb64;

    .line 2
    .line 3
    iget-short p0, p2, Lb64;->n:S

    .line 4
    .line 5
    sget-object p2, Lf64;->b:Lwq1;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lkotlinx/serialization/json/internal/b;->h(Lgi3;)Lkotlinx/serialization/json/internal/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->q(S)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Lf64;->b:Lwq1;

    .line 2
    .line 3
    return-object p0
.end method
