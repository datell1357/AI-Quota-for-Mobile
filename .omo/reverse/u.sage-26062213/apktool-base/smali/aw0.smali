.class public final Law0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# static fields
.field public static final a:Law0;

.field public static final b:Lpy2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Law0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Law0;->a:Law0;

    .line 7
    .line 8
    new-instance v0, Lpy2;

    .line 9
    .line 10
    const-string v1, "kotlin.Double"

    .line 11
    .line 12
    sget-object v2, Lny2;->S:Lny2;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lpy2;-><init>(Ljava/lang/String;Lny2;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Law0;->b:Lpy2;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Lvn0;->B()D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1, v0, v1}, Lkotlinx/serialization/json/internal/b;->e(D)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Law0;->b:Lpy2;

    .line 2
    .line 3
    return-object p0
.end method
