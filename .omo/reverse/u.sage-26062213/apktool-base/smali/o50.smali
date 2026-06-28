.class public final Lo50;
.super Lqr;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final b:Llm0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lxe3;->b:Lqx2;

    .line 8
    .line 9
    sget-object v1, Lxe3;->a:[Lkx1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget-object v1, v1, v2

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lqx2;->a(Ljava/lang/Object;Lkx1;)Lpx2;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lo50;->b:Llm0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Llm0;
    .locals 0

    .line 1
    iget-object p0, p0, Lo50;->b:Llm0;

    .line 2
    .line 3
    return-object p0
.end method
