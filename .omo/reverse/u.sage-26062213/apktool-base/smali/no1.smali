.class public abstract Lno1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Li3;

.field public static final b:Li3;

.field public static final c:Li3;

.field public static final d:Li3;

.field public static final e:Li3;

.field public static final f:Li3;

.field public static final g:Li3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li3;

    .line 2
    .line 3
    sget-object v1, Lxm2;->a:Lxm2;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Li3;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lno1;->a:Li3;

    .line 9
    .line 10
    new-instance v0, Li3;

    .line 11
    .line 12
    sget-object v1, Lo94;->b:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Li3;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lno1;->b:Li3;

    .line 18
    .line 19
    new-instance v0, Li3;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Li3;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lno1;->c:Li3;

    .line 26
    .line 27
    new-instance v0, Li3;

    .line 28
    .line 29
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Li3;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lno1;->d:Li3;

    .line 35
    .line 36
    new-instance v0, Li3;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Li3;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lno1;->e:Li3;

    .line 42
    .line 43
    new-instance v0, Li3;

    .line 44
    .line 45
    invoke-direct {v0, v2}, Li3;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lno1;->f:Li3;

    .line 49
    .line 50
    new-instance v0, Li3;

    .line 51
    .line 52
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Li3;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lno1;->g:Li3;

    .line 58
    .line 59
    return-void
.end method

.method public static final a(Ler2;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    sget-object v0, Lno1;->b:Li3;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    return-object p0
.end method
