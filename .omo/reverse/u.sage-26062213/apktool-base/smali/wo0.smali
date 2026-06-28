.class public final synthetic Lwo0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Laa0;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lz03;


# direct methods
.method public synthetic constructor <init>(Lz03;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwo0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lwo0;->o:Lz03;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(Lhg;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lwo0;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lwo0;->o:Lz03;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->a(Lz03;Lhg;)Ls53;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    new-instance v0, Lyo0;

    .line 14
    .line 15
    const-class v1, Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lhg;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/content/Context;

    .line 22
    .line 23
    const-class v2, Le61;

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lhg;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Le61;

    .line 30
    .line 31
    invoke-virtual {v2}, Le61;->c()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-class v3, Lmj1;

    .line 36
    .line 37
    invoke-static {v3}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p1, v3}, Lhg;->d(Lz03;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-class v4, Ltq0;

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Lhg;->g(Ljava/lang/Class;)Ln03;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p1, p0}, Lhg;->l(Lz03;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    move-object v5, p0

    .line 56
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    invoke-direct/range {v0 .. v5}, Lyo0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Ln03;Ljava/util/concurrent/Executor;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
