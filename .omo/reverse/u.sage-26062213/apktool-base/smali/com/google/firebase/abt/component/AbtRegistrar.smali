.class public Lcom/google/firebase/abt/component/AbtRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-abt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lhg;)Ll2;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/abt/component/AbtRegistrar;->lambda$getComponents$0(Lw90;)Ll2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lw90;)Ll2;
    .locals 3

    .line 1
    new-instance v0, Ll2;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lw90;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    const-class v2, Lg8;

    .line 12
    .line 13
    invoke-interface {p0, v2}, Lw90;->g(Ljava/lang/Class;)Ln03;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, v1, p0}, Ll2;-><init>(Landroid/content/Context;Ln03;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li90;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p0, Ll2;

    .line 2
    .line 3
    invoke-static {p0}, Li90;->b(Ljava/lang/Class;)Lh90;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "fire-abt"

    .line 8
    .line 9
    iput-object v0, p0, Lh90;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v1, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lfs0;->b(Ljava/lang/Class;)Lfs0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Lh90;->a(Lfs0;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lfs0;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    const-class v4, Lg8;

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v4}, Lfs0;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lh90;->a(Lfs0;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lk21;

    .line 33
    .line 34
    invoke-direct {v1, v3}, Lk21;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lh90;->f:Laa0;

    .line 38
    .line 39
    invoke-virtual {p0}, Lh90;->b()Li90;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v1, "21.1.1"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lht4;->l(Ljava/lang/String;Ljava/lang/String;)Li90;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    filled-new-array {p0, v0}, [Li90;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
