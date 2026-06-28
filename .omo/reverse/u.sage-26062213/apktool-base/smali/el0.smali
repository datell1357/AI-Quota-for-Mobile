.class public final Lel0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lel0;->n:I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lel0;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfq3;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lel0;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lzg0;->a()Ldh1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lzg0;->b:Lah0;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, v1, Ldh1;->n:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lvg0;

    .line 19
    .line 20
    sget-object v2, Lch0;->a:Lsg0;

    .line 21
    .line 22
    const-string v2, "context"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lse0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v2, Lch0;->a:Lsg0;

    .line 28
    .line 29
    iget-object v3, v1, Lvg0;->a:Lku2;

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    new-instance v0, Liu2;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v0, v3, v2, p1}, Liu2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-interface {v3, v4, v0, v2, p1}, Lku2;->a(IILjava/lang/Object;Ljava/lang/Object;)Lku2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    new-instance p1, Lvg0;

    .line 49
    .line 50
    invoke-direct {p1, v1, v0}, Lvg0;-><init>(Lvg0;Lku2;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ldh1;

    .line 54
    .line 55
    sget-object v1, Ltg0;->a:Lug0;

    .line 56
    .line 57
    check-cast v1, Lky3;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object v1, Lky3;->b:Ljava/lang/ThreadLocal;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lvg0;

    .line 69
    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    sget-object v2, Lvg0;->d:Lvg0;

    .line 73
    .line 74
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    sget-object v2, Lvg0;->d:Lvg0;

    .line 80
    .line 81
    :cond_2
    invoke-direct {v0, v2}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lel0;->o:Ljava/lang/Object;

    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>(Lql1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lel0;->n:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel0;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    iget v0, p0, Lel0;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lel0;->o:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/zip/Inflater;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lql1;

    .line 15
    .line 16
    check-cast p0, Lax2;

    .line 17
    .line 18
    invoke-virtual {p0}, Lax2;->shutdown()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    invoke-static {}, Lzg0;->a()Ldh1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast p0, Ldh1;

    .line 27
    .line 28
    iget-object v0, v0, Ldh1;->n:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lvg0;

    .line 31
    .line 32
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lvg0;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    sget-object v1, Ltg0;->a:Lug0;

    .line 42
    .line 43
    check-cast v1, Lky3;

    .line 44
    .line 45
    sget-object v2, Lky3;->b:Ljava/lang/ThreadLocal;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lvg0;

    .line 55
    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    sget-object v1, Lvg0;->d:Lvg0;

    .line 59
    .line 60
    :cond_0
    if-eq v1, v0, :cond_1

    .line 61
    .line 62
    sget-object v0, Lky3;->a:Ljava/util/logging/Logger;

    .line 63
    .line 64
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/Throwable;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "Context was not attached when detaching"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    sget-object v0, Lvg0;->d:Lvg0;

    .line 81
    .line 82
    if-eq p0, v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/4 p0, 0x0

    .line 89
    invoke-virtual {v2, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const-string p0, "toAttach"

    .line 94
    .line 95
    invoke-static {p0}, Lq73;->r(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
