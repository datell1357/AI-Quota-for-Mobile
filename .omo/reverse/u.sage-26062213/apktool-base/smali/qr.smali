.class public abstract Lqr;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lrx2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx2;

    .line 2
    .line 3
    const-string v1, "a"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lqr;->a:Lrx2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract a()Llm0;
.end method

.method public final b(Ljava/lang/String;Lfh0;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lez3;->a:Lra3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lqr;->a()Llm0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lar;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v0, p1, v1, v2}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, p2}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object p1, Lri0;->n:Lri0;

    .line 28
    .line 29
    if-ne p0, p1, :cond_0

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 33
    .line 34
    return-object p0
.end method
