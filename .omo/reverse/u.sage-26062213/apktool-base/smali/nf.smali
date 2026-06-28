.class public final Lnf;
.super Lps;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final r:Ly84;

.field public final s:Llm0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lps;-><init>(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ly84;->t:Ly84;

    .line 8
    .line 9
    iput-object v0, p0, Lnf;->r:Ly84;

    .line 10
    .line 11
    sget-object v0, Lo84;->d:Lqx2;

    .line 12
    .line 13
    sget-object v1, Lo84;->a:[Lkx1;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    aget-object v1, v1, v2

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Lqx2;->a(Ljava/lang/Object;Lkx1;)Lpx2;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lnf;->s:Llm0;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Llm0;
    .locals 0

    .line 1
    iget-object p0, p0, Lnf;->s:Llm0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Ly84;
    .locals 0

    .line 1
    iget-object p0, p0, Lnf;->r:Ly84;

    .line 2
    .line 3
    return-object p0
.end method
