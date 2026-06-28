.class public abstract Ldz0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgz0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ldz0;->a:I

    .line 6
    .line 7
    new-instance v0, Lvo0;

    .line 8
    .line 9
    invoke-direct {v0}, Lvo0;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ldz0;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Ldz0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Ldz0;->a:I

    .line 19
    iput-object p1, p0, Ldz0;->b:Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Ldz0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Ljb3;)V
.end method

.method public abstract b(Ljb3;)V
.end method

.method public abstract c(Ljb3;)V
.end method

.method public abstract d(Ljb3;)V
.end method

.method public abstract e(Ljb3;)V
.end method

.method public abstract f(Ljb3;)V
.end method

.method public abstract g(Ljb3;)Lf7;
.end method
