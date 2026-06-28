.class public abstract Lzi3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lwr3;

.field public static final b:Lb23;

.field public static final c:Lqh3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ly84;->x:Lt11;

    .line 2
    .line 3
    invoke-static {v0}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lzi3;->a:Lwr3;

    .line 12
    .line 13
    new-instance v1, Lb23;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lb23;-><init>(Lwr3;)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lzi3;->b:Lb23;

    .line 19
    .line 20
    new-instance v0, Llh0;

    .line 21
    .line 22
    const/16 v1, 0x10

    .line 23
    .line 24
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lqh3;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-direct {v1, v0, v2}, Lqh3;-><init>(Ljava/util/Comparator;I)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lqh3;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v0, v1, v2}, Lqh3;-><init>(Ljava/util/Comparator;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lzi3;->c:Lqh3;

    .line 40
    .line 41
    return-void
.end method
