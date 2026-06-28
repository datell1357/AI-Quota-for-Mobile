.class public final synthetic Lbd0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leh0;


# instance fields
.field public final synthetic n:Led0;

.field public final synthetic o:Low3;

.field public final synthetic p:Low3;

.field public final synthetic q:Ljava/util/Date;

.field public final synthetic r:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Led0;Lef5;Lef5;Ljava/util/Date;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbd0;->n:Led0;

    .line 5
    .line 6
    iput-object p2, p0, Lbd0;->o:Low3;

    .line 7
    .line 8
    iput-object p3, p0, Lbd0;->p:Low3;

    .line 9
    .line 10
    iput-object p4, p0, Lbd0;->q:Ljava/util/Date;

    .line 11
    .line 12
    iput-object p5, p0, Lbd0;->r:Ljava/util/HashMap;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final then(Low3;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p1, p0, Lbd0;->n:Led0;

    .line 2
    .line 3
    iget-object v0, p0, Lbd0;->q:Ljava/util/Date;

    .line 4
    .line 5
    iget-object v1, p0, Lbd0;->r:Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v2, p0, Lbd0;->o:Low3;

    .line 8
    .line 9
    invoke-virtual {v2}, Low3;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    new-instance p0, Lt61;

    .line 16
    .line 17
    const-string p1, "Firebase Installations failed to get installation ID for fetch."

    .line 18
    .line 19
    invoke-virtual {v2}, Low3;->f()Ljava/lang/Exception;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, p1, v0}, Lu61;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lmt1;->s(Ljava/lang/Exception;)Lef5;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    iget-object p0, p0, Lbd0;->p:Low3;

    .line 32
    .line 33
    invoke-virtual {p0}, Low3;->j()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    new-instance p1, Lt61;

    .line 40
    .line 41
    const-string v0, "Firebase Installations failed to get installation auth token for fetch."

    .line 42
    .line 43
    invoke-virtual {p0}, Low3;->f()Ljava/lang/Exception;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p1, v0, p0}, Lu61;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lmt1;->s(Ljava/lang/Exception;)Lef5;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    invoke-virtual {v2}, Low3;->g()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0}, Low3;->g()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Llo;

    .line 66
    .line 67
    iget-object p0, p0, Llo;->a:Ljava/lang/String;

    .line 68
    .line 69
    :try_start_0
    invoke-virtual {p1, v2, p0, v0, v1}, Led0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/HashMap;)Ldd0;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iget v0, p0, Ldd0;->a:I

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p1, Led0;->f:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lyc0;

    .line 85
    .line 86
    iget-object v1, p0, Ldd0;->b:Lad0;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lyc0;->d(Lad0;)Lef5;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object p1, p1, Led0;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 95
    .line 96
    new-instance v1, Lr6;

    .line 97
    .line 98
    const/4 v2, 0x3

    .line 99
    invoke-direct {v1, v2, p0}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1, v1}, Lef5;->l(Ljava/util/concurrent/Executor;Lwt3;)Lef5;

    .line 103
    .line 104
    .line 105
    move-result-object p0
    :try_end_0
    .catch Lu61; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p0

    .line 108
    invoke-static {p0}, Lmt1;->s(Ljava/lang/Exception;)Lef5;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :goto_0
    return-object p0
.end method
